# frozen_string_literal: true

# This is generated code!

module Aws::Amp
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AlertManagerDefinitionData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionData', name: 'AlertManagerDefinitionData')
    AlertManagerDefinitionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionDescription', name: 'AlertManagerDefinitionDescription')
    AlertManagerDefinitionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionStatus', name: 'AlertManagerDefinitionStatus')
    AlertManagerDefinitionStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionStatusCode', name: 'AlertManagerDefinitionStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Definition is being created. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Definition has been created/updated. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Definition is being updated. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Definition is being deleting. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Definition creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Definition update failed."}]})
    AmpConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AmpConfiguration', name: 'AmpConfiguration')
    CloudWatchLogDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CloudWatchLogDestination', name: 'CloudWatchLogDestination')
    ClusterArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ClusterArn', name: 'ClusterArn', traits: {"aws.api#arnReference" => {"type" => "AWS::EKS::Cluster"}, "smithy.api#pattern" => "^arn:aws[-a-z]*:eks:[-a-z0-9]+:[0-9]{12}:cluster/.+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAlertManagerDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateAlertManagerDefinitionInput', name: 'CreateAlertManagerDefinitionInput')
    CreateAlertManagerDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateAlertManagerDefinitionOutput', name: 'CreateAlertManagerDefinitionOutput')
    CreateLoggingConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateLoggingConfigurationInput', name: 'CreateLoggingConfigurationInput')
    CreateLoggingConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateLoggingConfigurationOutput', name: 'CreateLoggingConfigurationOutput')
    CreateQueryLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateQueryLoggingConfigurationRequest', name: 'CreateQueryLoggingConfigurationRequest')
    CreateQueryLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateQueryLoggingConfigurationResponse', name: 'CreateQueryLoggingConfigurationResponse')
    CreateRuleGroupsNamespaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateRuleGroupsNamespaceInput', name: 'CreateRuleGroupsNamespaceInput')
    CreateRuleGroupsNamespaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateRuleGroupsNamespaceOutput', name: 'CreateRuleGroupsNamespaceOutput')
    CreateScraperRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateScraperRequest', name: 'CreateScraperRequest')
    CreateScraperResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateScraperResponse', name: 'CreateScraperResponse')
    CreateWorkspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateWorkspaceInput', name: 'CreateWorkspaceInput')
    CreateWorkspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateWorkspaceOutput', name: 'CreateWorkspaceOutput')
    DeleteAlertManagerDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteAlertManagerDefinitionInput', name: 'DeleteAlertManagerDefinitionInput')
    DeleteLoggingConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteLoggingConfigurationInput', name: 'DeleteLoggingConfigurationInput')
    DeleteQueryLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteQueryLoggingConfigurationRequest', name: 'DeleteQueryLoggingConfigurationRequest')
    DeleteRuleGroupsNamespaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteRuleGroupsNamespaceInput', name: 'DeleteRuleGroupsNamespaceInput')
    DeleteScraperRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteScraperRequest', name: 'DeleteScraperRequest')
    DeleteScraperResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteScraperResponse', name: 'DeleteScraperResponse')
    DeleteWorkspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteWorkspaceInput', name: 'DeleteWorkspaceInput')
    DescribeAlertManagerDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeAlertManagerDefinitionInput', name: 'DescribeAlertManagerDefinitionInput')
    DescribeAlertManagerDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeAlertManagerDefinitionOutput', name: 'DescribeAlertManagerDefinitionOutput')
    DescribeLoggingConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeLoggingConfigurationInput', name: 'DescribeLoggingConfigurationInput')
    DescribeLoggingConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeLoggingConfigurationOutput', name: 'DescribeLoggingConfigurationOutput')
    DescribeQueryLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeQueryLoggingConfigurationRequest', name: 'DescribeQueryLoggingConfigurationRequest')
    DescribeQueryLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeQueryLoggingConfigurationResponse', name: 'DescribeQueryLoggingConfigurationResponse')
    DescribeRuleGroupsNamespaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeRuleGroupsNamespaceInput', name: 'DescribeRuleGroupsNamespaceInput')
    DescribeRuleGroupsNamespaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeRuleGroupsNamespaceOutput', name: 'DescribeRuleGroupsNamespaceOutput')
    DescribeScraperRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeScraperRequest', name: 'DescribeScraperRequest')
    DescribeScraperResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeScraperResponse', name: 'DescribeScraperResponse')
    DescribeWorkspaceConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceConfigurationRequest', name: 'DescribeWorkspaceConfigurationRequest')
    DescribeWorkspaceConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceConfigurationResponse', name: 'DescribeWorkspaceConfigurationResponse')
    DescribeWorkspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceInput', name: 'DescribeWorkspaceInput')
    DescribeWorkspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceOutput', name: 'DescribeWorkspaceOutput')
    Destination = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amp#Destination', name: 'Destination')
    EksConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#EksConfiguration', name: 'EksConfiguration')
    FilterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#FilterKey', name: 'FilterKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#FilterValues', name: 'FilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GetDefaultScraperConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#GetDefaultScraperConfigurationRequest', name: 'GetDefaultScraperConfigurationRequest')
    GetDefaultScraperConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#GetDefaultScraperConfigurationResponse', name: 'GetDefaultScraperConfigurationResponse')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#IamRoleArn', name: 'IamRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#pattern" => "^arn:aws[-a-z]*:iam::[0-9]{12}:role/.+$"})
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#KmsKeyArn', name: 'KmsKeyArn', traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:kms:[-a-z0-9]+:[0-9]{12}:key/[-a-f0-9]+$"})
    LabelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LabelName', name: 'LabelName', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z0-9_]*$"})
    LabelSet = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amp#LabelSet', name: 'LabelSet')
    LabelValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LabelValue', name: 'LabelValue', traits: {"smithy.api#length" => {"min" => 1}})
    LimitsPerLabelSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LimitsPerLabelSet', name: 'LimitsPerLabelSet')
    LimitsPerLabelSetEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LimitsPerLabelSetEntry', name: 'LimitsPerLabelSetEntry')
    LimitsPerLabelSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#LimitsPerLabelSetList', name: 'LimitsPerLabelSetList')
    ListRuleGroupsNamespacesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListRuleGroupsNamespacesInput', name: 'ListRuleGroupsNamespacesInput')
    ListRuleGroupsNamespacesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListRuleGroupsNamespacesOutput', name: 'ListRuleGroupsNamespacesOutput')
    ListScrapersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListScrapersRequest', name: 'ListScrapersRequest')
    ListScrapersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListScrapersResponse', name: 'ListScrapersResponse')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWorkspacesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListWorkspacesInput', name: 'ListWorkspacesInput')
    ListWorkspacesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListWorkspacesOutput', name: 'ListWorkspacesOutput')
    LogGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LogGroupArn', name: 'LogGroupArn', traits: {"aws.api#arnReference" => {"type" => "AWS::Logs::LogGroup"}, "smithy.api#pattern" => "^arn:aws[-a-z]*:logs:[-a-z0-9]+:[0-9]{12}:log-group:[A-Za-z0-9\\.\\-\\_\\#/]{1,512}\\:\\*$"})
    LoggingConfigurationMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingConfigurationMetadata', name: 'LoggingConfigurationMetadata')
    LoggingConfigurationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingConfigurationStatus', name: 'LoggingConfigurationStatus')
    LoggingConfigurationStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LoggingConfigurationStatusCode', name: 'LoggingConfigurationStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Logging configuration is being created. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Logging configuration has been created/updated. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Logging configuration is being updated. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Logging configuration is being deleting. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Logging configuration creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Logging configuration update failed."}]})
    LoggingDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingDestination', name: 'LoggingDestination')
    LoggingDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#LoggingDestinations', name: 'LoggingDestinations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LoggingFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingFilter', name: 'LoggingFilter')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"max" => 1000}})
    PutAlertManagerDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutAlertManagerDefinitionInput', name: 'PutAlertManagerDefinitionInput')
    PutAlertManagerDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutAlertManagerDefinitionOutput', name: 'PutAlertManagerDefinitionOutput')
    PutRuleGroupsNamespaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutRuleGroupsNamespaceInput', name: 'PutRuleGroupsNamespaceInput')
    PutRuleGroupsNamespaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutRuleGroupsNamespaceOutput', name: 'PutRuleGroupsNamespaceOutput')
    QueryLoggingConfigurationMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#QueryLoggingConfigurationMetadata', name: 'QueryLoggingConfigurationMetadata')
    QueryLoggingConfigurationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#QueryLoggingConfigurationStatus', name: 'QueryLoggingConfigurationStatus')
    QueryLoggingConfigurationStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#QueryLoggingConfigurationStatusCode', name: 'QueryLoggingConfigurationStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Query logging configuration is being created."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Query logging configuration is active."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Query logging configuration is being updated."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Query logging configuration is being deleted."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Query logging configuration creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Query logging configuration update failed."}]})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RoleConfiguration', name: 'RoleConfiguration')
    RuleGroupsNamespaceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceArn', name: 'RuleGroupsNamespaceArn', traits: {"aws.api#arnReference" => {"type" => "AWS::APS::RuleGroupsNamespace", "service" => "ManagedPrometheusCP", "resource" => "RuleGroupsNamespace"}})
    RuleGroupsNamespaceData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceData', name: 'RuleGroupsNamespaceData')
    RuleGroupsNamespaceDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceDescription', name: 'RuleGroupsNamespaceDescription')
    RuleGroupsNamespaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceName', name: 'RuleGroupsNamespaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[0-9A-Za-z][-.0-9A-Z_a-z]*"})
    RuleGroupsNamespaceStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceStatus', name: 'RuleGroupsNamespaceStatus')
    RuleGroupsNamespaceStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceStatusCode', name: 'RuleGroupsNamespaceStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Namespace is being created. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Namespace has been created/updated. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Namespace is being updated. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Namespace is being deleting. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Namespace creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Namespace update failed."}]})
    RuleGroupsNamespaceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceSummary', name: 'RuleGroupsNamespaceSummary')
    RuleGroupsNamespaceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceSummaryList', name: 'RuleGroupsNamespaceSummaryList')
    ScrapeConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amp#ScrapeConfiguration', name: 'ScrapeConfiguration')
    ScraperAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperAlias', name: 'ScraperAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][-.0-9A-Z_a-z]*$"})
    ScraperArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperArn', name: 'ScraperArn', traits: {"aws.api#arnReference" => {"type" => "AWS::APS::Scraper", "service" => "ManagedPrometheusCP", "resource" => "Scraper"}})
    ScraperDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ScraperDescription', name: 'ScraperDescription', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Scraper"}]})
    ScraperFilters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amp#ScraperFilters', name: 'ScraperFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    ScraperId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperId', name: 'ScraperId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z][-.0-9A-Z_a-z]*$"})
    ScraperStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ScraperStatus', name: 'ScraperStatus')
    ScraperStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperStatusCode', name: 'ScraperStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Scraper is being created. Deletion is disallowed until status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Scraper is being updated. Deletion is disallowed until status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Scraper has been created and is usable."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Scraper is being deleted. Deletions are allowed only when status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Scraper creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Scraper update failed."}, {"name" => "DELETION_FAILED", "value" => "DELETION_FAILED", "documentation" => "Scraper deletion failed."}]})
    ScraperSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ScraperSummary', name: 'ScraperSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Scraper"}]})
    ScraperSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#ScraperSummaryList', name: 'ScraperSummaryList')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^sg-[0-9a-z]+$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Source = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amp#Source', name: 'Source')
    StatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#StatusReason', name: 'StatusReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^subnet-[0-9a-z]+$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#TagKeys', name: 'TagKeys')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amp#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateLoggingConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateLoggingConfigurationInput', name: 'UpdateLoggingConfigurationInput')
    UpdateLoggingConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateLoggingConfigurationOutput', name: 'UpdateLoggingConfigurationOutput')
    UpdateQueryLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateQueryLoggingConfigurationRequest', name: 'UpdateQueryLoggingConfigurationRequest')
    UpdateQueryLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateQueryLoggingConfigurationResponse', name: 'UpdateQueryLoggingConfigurationResponse')
    UpdateScraperRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateScraperRequest', name: 'UpdateScraperRequest')
    UpdateScraperResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateScraperResponse', name: 'UpdateScraperResponse')
    UpdateWorkspaceAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateWorkspaceAliasInput', name: 'UpdateWorkspaceAliasInput')
    UpdateWorkspaceConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateWorkspaceConfigurationRequest', name: 'UpdateWorkspaceConfigurationRequest')
    UpdateWorkspaceConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateWorkspaceConfigurationResponse', name: 'UpdateWorkspaceConfigurationResponse')
    Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"name" => "UNKNOWN_OPERATION", "value" => "UNKNOWN_OPERATION"}, {"name" => "CANNOT_PARSE", "value" => "CANNOT_PARSE"}, {"name" => "FIELD_VALIDATION_FAILED", "value" => "FIELD_VALIDATION_FAILED"}, {"name" => "OTHER", "value" => "OTHER"}]})
    WorkspaceAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceAlias', name: 'WorkspaceAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WorkspaceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceArn', name: 'WorkspaceArn', traits: {"aws.api#arnReference" => {"type" => "AWS::APS::Workspace", "service" => "ManagedPrometheusCP", "resource" => "Workspace"}, "smithy.api#pattern" => "^arn:aws[-a-z]*:aps:[-a-z0-9]+:[0-9]{12}:workspace/.+$"})
    WorkspaceConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceConfigurationDescription', name: 'WorkspaceConfigurationDescription')
    WorkspaceConfigurationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceConfigurationStatus', name: 'WorkspaceConfigurationStatus')
    WorkspaceConfigurationStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceConfigurationStatusCode', name: 'WorkspaceConfigurationStatusCode', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Workspace configuration has been updated. Update is disallowed until workspace configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Workspace configuration is being updated. Update is disallowed until workspace configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Workspace configuration update failed."}]})
    WorkspaceDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceDescription', name: 'WorkspaceDescription', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Workspace"}]})
    WorkspaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceId', name: 'WorkspaceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[0-9A-Za-z][-.0-9A-Z_a-z]*"})
    WorkspaceStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceStatus', name: 'WorkspaceStatus')
    WorkspaceStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceStatusCode', name: 'WorkspaceStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Workspace is being created. Deletion is disallowed until status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Workspace has been created and is usable."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Workspace is being updated. Updates are allowed only when status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Workspace is being deleted. Deletions are allowed only when status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Workspace creation failed. Refer to WorkspaceStatus.failureReason for more details."}]})
    WorkspaceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceSummary', name: 'WorkspaceSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Workspace"}]})
    WorkspaceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#WorkspaceSummaryList', name: 'WorkspaceSummaryList')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AlertManagerDefinitionDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that displays the current status of the alert manager definition..</p>", "smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The actual alert manager definition.</p> <p>For details about the alert manager definition, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html\">AlertManagedDefinitionData</a>.</p>", "smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the alert manager definition was created.</p>", "smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the alert manager definition was most recently changed.</p>", "smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.type = Types::AlertManagerDefinitionDescription
    AlertManagerDefinitionStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The current status of the alert manager. </p>", "smithy.api#required" => {}}))
    AlertManagerDefinitionStatus.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>If there is a failure, the reason for the failure.</p>"}))
    AlertManagerDefinitionStatus.type = Types::AlertManagerDefinitionStatus
    AmpConfiguration.add_member(:workspace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'workspaceArn', traits: {"smithy.api#documentation" => "<p>ARN of the Amazon Managed Service for Prometheus workspace.</p>", "smithy.api#required" => {}}))
    AmpConfiguration.type = Types::AmpConfiguration
    CloudWatchLogDestination.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist prior to calling this operation.</p>", "smithy.api#required" => {}}))
    CloudWatchLogDestination.type = Types::CloudWatchLogDestination
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Type of the resource affected.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAlertManagerDefinitionInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to add the alert manager definition to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAlertManagerDefinitionInput.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The alert manager definition to add. A base64-encoded version of the YAML alert manager definition file.</p> <p>For details about the alert manager definition, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html\">AlertManagedDefinitionData</a>.</p>", "smithy.api#required" => {}}))
    CreateAlertManagerDefinitionInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAlertManagerDefinitionInput.type = Types::CreateAlertManagerDefinitionInput
    CreateAlertManagerDefinitionOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that displays the current status of the alert manager definition.</p>", "smithy.api#required" => {}}))
    CreateAlertManagerDefinitionOutput.type = Types::CreateAlertManagerDefinitionOutput
    CreateLoggingConfigurationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to create the logging configuration for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLoggingConfigurationInput.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist prior to calling this operation.</p>", "smithy.api#required" => {}}))
    CreateLoggingConfigurationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateLoggingConfigurationInput.type = Types::CreateLoggingConfigurationInput
    CreateLoggingConfigurationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that displays the current status of the logging configuration.</p>", "smithy.api#required" => {}}))
    CreateLoggingConfigurationOutput.type = Types::CreateLoggingConfigurationOutput
    CreateQueryLoggingConfigurationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace for which to create the query logging configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueryLoggingConfigurationRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestinations, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>The destinations where query logs will be sent. Only CloudWatch Logs destination is supported. The list must contain exactly one element.</p>", "smithy.api#required" => {}}))
    CreateQueryLoggingConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateQueryLoggingConfigurationRequest.type = Types::CreateQueryLoggingConfigurationRequest
    CreateQueryLoggingConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the query logging configuration.</p>", "smithy.api#required" => {}}))
    CreateQueryLoggingConfigurationResponse.type = Types::CreateQueryLoggingConfigurationResponse
    CreateRuleGroupsNamespaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to add the rule groups namespace.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the new rule groups namespace.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The rules file to use in the new namespace.</p> <p>Contains the base64-encoded version of the YAML rules file.</p> <p>For details about the rule groups namespace structure, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html\">RuleGroupsNamespaceData</a>.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values to associate with the rule groups namespace.</p>"}))
    CreateRuleGroupsNamespaceInput.type = Types::CreateRuleGroupsNamespaceInput
    CreateRuleGroupsNamespaceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the new rule groups namespace.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new rule groups namespace.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that returns the current status of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the namespace.</p>"}))
    CreateRuleGroupsNamespaceOutput.type = Types::CreateRuleGroupsNamespaceOutput
    CreateScraperRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>(optional) An alias to associate with the scraper. This is for your use, and does not need to be unique.</p>"}))
    CreateScraperRequest.add_member(:scrape_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScrapeConfiguration, location_name: 'scrapeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration file to use in the new scraper. For more information, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration\">Scraper configuration</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateScraperRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The Amazon EKS cluster from which the scraper will collect metrics.</p>", "smithy.api#required" => {}}))
    CreateScraperRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon Managed Service for Prometheus workspace to send metrics to.</p>", "smithy.api#required" => {}}))
    CreateScraperRequest.add_member(:role_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure to enable cross-account access, so that you can use a target account to access Prometheus metrics from source accounts.</p>"}))
    CreateScraperRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateScraperRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>(Optional) The list of tag keys and values to associate with the scraper.</p>"}))
    CreateScraperRequest.type = Types::CreateScraperRequest
    CreateScraperResponse.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the new scraper.</p>", "smithy.api#required" => {}}))
    CreateScraperResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new scraper.</p>", "smithy.api#required" => {}}))
    CreateScraperResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that displays the current status of the scraper.</p>", "smithy.api#required" => {}}))
    CreateScraperResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the scraper.</p>"}))
    CreateScraperResponse.type = Types::CreateScraperResponse
    CreateWorkspaceInput.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>An alias that you assign to this workspace to help you identify it. It does not need to be unique.</p> <p>Blank spaces at the beginning or end of the alias that you specify will be trimmed from the value used.</p>"}))
    CreateWorkspaceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateWorkspaceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values to associate with the workspace.</p>"}))
    CreateWorkspaceInput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>(optional) The ARN for a customer managed KMS key to use for encrypting data within your workspace. For more information about using your own key in your workspace, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html\">Encryption at rest</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>"}))
    CreateWorkspaceInput.type = Types::CreateWorkspaceInput
    CreateWorkspaceOutput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The unique ID for the new workspace.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN for the new workspace.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the new workspace. Immediately after you create the workspace, the status is usually <code>CREATING</code>.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the workspace.</p>"}))
    CreateWorkspaceOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>(optional) If the workspace was created with a customer managed KMS key, the ARN for the key used.</p>"}))
    CreateWorkspaceOutput.type = Types::CreateWorkspaceOutput
    DeleteAlertManagerDefinitionInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to delete the alert manager definition from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAlertManagerDefinitionInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAlertManagerDefinitionInput.type = Types::DeleteAlertManagerDefinitionInput
    DeleteLoggingConfigurationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace containing the logging configuration to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLoggingConfigurationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteLoggingConfigurationInput.type = Types::DeleteLoggingConfigurationInput
    DeleteQueryLoggingConfigurationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace from which to delete the query logging configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueryLoggingConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteQueryLoggingConfigurationRequest.type = Types::DeleteQueryLoggingConfigurationRequest
    DeleteRuleGroupsNamespaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace containing the rule groups namespace and definition to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleGroupsNamespaceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule groups namespace to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleGroupsNamespaceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteRuleGroupsNamespaceInput.type = Types::DeleteRuleGroupsNamespaceInput
    DeleteScraperRequest.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the scraper to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteScraperRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteScraperRequest.type = Types::DeleteScraperRequest
    DeleteScraperResponse.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the scraper to delete.</p>", "smithy.api#required" => {}}))
    DeleteScraperResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the scraper.</p>", "smithy.api#required" => {}}))
    DeleteScraperResponse.type = Types::DeleteScraperResponse
    DeleteWorkspaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteWorkspaceInput.type = Types::DeleteWorkspaceInput
    DescribeAlertManagerDefinitionInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to retrieve the alert manager definition from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAlertManagerDefinitionInput.type = Types::DescribeAlertManagerDefinitionInput
    DescribeAlertManagerDefinitionOutput.add_member(:alert_manager_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionDescription, location_name: 'alertManagerDefinition', traits: {"smithy.api#documentation" => "<p>The alert manager definition.</p>", "smithy.api#required" => {}}))
    DescribeAlertManagerDefinitionOutput.type = Types::DescribeAlertManagerDefinitionOutput
    DescribeLoggingConfigurationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to describe the logging configuration for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLoggingConfigurationInput.type = Types::DescribeLoggingConfigurationInput
    DescribeLoggingConfigurationOutput.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationMetadata, location_name: 'loggingConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that displays the information about the logging configuration.</p>", "smithy.api#required" => {}}))
    DescribeLoggingConfigurationOutput.type = Types::DescribeLoggingConfigurationOutput
    DescribeQueryLoggingConfigurationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace for which to retrieve the query logging configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeQueryLoggingConfigurationRequest.type = Types::DescribeQueryLoggingConfigurationRequest
    DescribeQueryLoggingConfigurationResponse.add_member(:query_logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationMetadata, location_name: 'queryLoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The detailed information about the query logging configuration for the specified workspace.</p>", "smithy.api#required" => {}}))
    DescribeQueryLoggingConfigurationResponse.type = Types::DescribeQueryLoggingConfigurationResponse
    DescribeRuleGroupsNamespaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace containing the rule groups namespace.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRuleGroupsNamespaceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule groups namespace that you want information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRuleGroupsNamespaceInput.type = Types::DescribeRuleGroupsNamespaceInput
    DescribeRuleGroupsNamespaceOutput.add_member(:rule_groups_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceDescription, location_name: 'ruleGroupsNamespace', traits: {"smithy.api#documentation" => "<p>The information about the rule groups namespace.</p>", "smithy.api#required" => {}}))
    DescribeRuleGroupsNamespaceOutput.type = Types::DescribeRuleGroupsNamespaceOutput
    DescribeScraperRequest.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the scraper to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeScraperRequest.type = Types::DescribeScraperRequest
    DescribeScraperResponse.add_member(:scraper, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperDescription, location_name: 'scraper', traits: {"smithy.api#documentation" => "<p>Contains details about the scraper.</p>", "smithy.api#required" => {}}))
    DescribeScraperResponse.type = Types::DescribeScraperResponse
    DescribeWorkspaceConfigurationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace that you want to retrieve information for. To find the IDs of your workspaces, use the <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm\">ListWorkspaces</a> operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationRequest.type = Types::DescribeWorkspaceConfigurationRequest
    DescribeWorkspaceConfigurationResponse.add_member(:workspace_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationDescription, location_name: 'workspaceConfiguration', traits: {"smithy.api#documentation" => "<p>This structure contains the information about the workspace configuration.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationResponse.type = Types::DescribeWorkspaceConfigurationResponse
    DescribeWorkspaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceInput.type = Types::DescribeWorkspaceInput
    DescribeWorkspaceOutput.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the workspace.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceOutput.type = Types::DescribeWorkspaceOutput
    Destination.add_member(:amp_configuration, Types::Destination::AmpConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: AmpConfiguration, location_name: 'ampConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon Managed Service for Prometheus workspace to send metrics to.</p>"}))
    Destination.add_member(:unknown, Types::Destination::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Destination.type = Types::Destination
    EksConfiguration.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>ARN of the Amazon EKS cluster.</p>", "smithy.api#required" => {}}))
    EksConfiguration.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of the security group IDs for the Amazon EKS cluster VPC configuration.</p>"}))
    EksConfiguration.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet IDs for the Amazon EKS cluster VPC configuration.</p>", "smithy.api#required" => {}}))
    EksConfiguration.type = Types::EksConfiguration
    FilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    GetDefaultScraperConfigurationRequest.type = Types::GetDefaultScraperConfigurationRequest
    GetDefaultScraperConfigurationResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration file. Base 64 encoded. For more information, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration\">Scraper configuration</a>in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>", "smithy.api#required" => {}}))
    GetDefaultScraperConfigurationResponse.type = Types::GetDefaultScraperConfigurationResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>", "smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Advice to clients on when the call can be safely retried.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    LabelSet.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelName)
    LabelSet.value = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelValue)
    LimitsPerLabelSet.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSetEntry, location_name: 'limits', traits: {"smithy.api#documentation" => "<p>This structure contains the information about the limits that apply to time series that match this label set.</p>", "smithy.api#required" => {}}))
    LimitsPerLabelSet.add_member(:label_set, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelSet, location_name: 'labelSet', traits: {"smithy.api#documentation" => "<p>This defines one label set that will have an enforced active time series limit. </p> <p>Label values accept ASCII characters and must contain at least one character that isn't whitespace. ASCII control characters are not accepted. If the label name is metric name label <code>__<i>name</i>__</code>, then the <i>metric</i> part of the name must conform to the following pattern: <code>[a-zA-Z_:][a-zA-Z0-9_:]*</code> </p>", "smithy.api#required" => {}}))
    LimitsPerLabelSet.type = Types::LimitsPerLabelSet
    LimitsPerLabelSetEntry.add_member(:max_series, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'maxSeries', traits: {"smithy.api#documentation" => "<p>The maximum number of active series that can be ingested that match this label set. </p> <p>Setting this to 0 causes no label set limit to be enforced, but it does cause Amazon Managed Service for Prometheus to vend label set metrics to CloudWatch</p>", "smithy.api#range" => {"min" => 0}}))
    LimitsPerLabelSetEntry.type = Types::LimitsPerLabelSetEntry
    LimitsPerLabelSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSet)
    ListRuleGroupsNamespacesInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace containing the rule groups namespaces.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRuleGroupsNamespacesInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Use this parameter to filter the rule groups namespaces that are returned. Only the namespaces with names that begin with the value that you specify are returned.</p>", "smithy.api#httpQuery" => "name"}))
    ListRuleGroupsNamespacesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. You receive this token from a previous call, and use it to get the next page of results. The other parameters must be the same as the initial call.</p> <p>For example, if your initial request has <code>maxResults</code> of 10, and there are 12 rule groups namespaces to return, then your initial request will return 10 and a <code>nextToken</code>. Using the next token in a subsequent call will return the remaining 2 namespaces.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRuleGroupsNamespacesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return. The default is 100.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListRuleGroupsNamespacesInput.type = Types::ListRuleGroupsNamespacesInput
    ListRuleGroupsNamespacesOutput.add_member(:rule_groups_namespaces, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummaryList, location_name: 'ruleGroupsNamespaces', traits: {"smithy.api#documentation" => "<p>The returned list of rule groups namespaces.</p>", "smithy.api#required" => {}}))
    ListRuleGroupsNamespacesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are more results to retrieve. You can use this token as part of your next <code>ListRuleGroupsNamespaces</code> request to retrieve those results.</p>"}))
    ListRuleGroupsNamespacesOutput.type = Types::ListRuleGroupsNamespacesOutput
    ListScrapersRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>(Optional) A list of key-value pairs to filter the list of scrapers returned. Keys include <code>status</code>, <code>sourceArn</code>, <code>destinationArn</code>, and <code>alias</code>.</p> <p>Filters on the same key are <code>OR</code>'d together, and filters on different keys are <code>AND</code>'d together. For example, <code>status=ACTIVE&amp;status=CREATING&amp;alias=Test</code>, will return all scrapers that have the alias Test, and are either in status ACTIVE or CREATING.</p> <p>To find all active scrapers that are sending metrics to a specific Amazon Managed Service for Prometheus workspace, you would use the ARN of the workspace in a query:</p> <p> <code>status=ACTIVE&amp;destinationArn=arn:aws:aps:us-east-1:123456789012:workspace/ws-example1-1234-abcd-56ef-123456789012</code> </p> <p>If this is included, it filters the results to only the scrapers that match the filter.</p>", "smithy.api#httpQueryParams" => {}}))
    ListScrapersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListScrapersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Optional) The maximum number of scrapers to return in one <code>ListScrapers</code> operation. The range is 1-1000.</p> <p>If you omit this parameter, the default of 100 is used.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListScrapersRequest.type = Types::ListScrapersRequest
    ListScrapersResponse.add_member(:scrapers, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperSummaryList, location_name: 'scrapers', traits: {"smithy.api#documentation" => "<p>A list of <code>ScraperSummary</code> structures giving information about scrapers in the account that match the filters provided.</p>", "smithy.api#required" => {}}))
    ListScrapersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are more results to retrieve. You can use this token as part of your next <code>ListScrapers</code> operation to retrieve those results.</p>"}))
    ListScrapersResponse.type = Types::ListScrapersResponse
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to list tages for. Must be a workspace, scraper, or rule groups namespace resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkspacesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. You receive this token from a previous call, and use it to get the next page of results. The other parameters must be the same as the initial call.</p> <p>For example, if your initial request has <code>maxResults</code> of 10, and there are 12 workspaces to return, then your initial request will return 10 and a <code>nextToken</code>. Using the next token in a subsequent call will return the remaining 2 workspaces.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspacesInput.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>If this is included, it filters the results to only the workspaces with names that start with the value that you specify here.</p> <p>Amazon Managed Service for Prometheus will automatically strip any blank spaces from the beginning and end of the alias that you specify.</p>", "smithy.api#httpQuery" => "alias"}))
    ListWorkspacesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of workspaces to return per request. The default is 100.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListWorkspacesInput.type = Types::ListWorkspacesInput
    ListWorkspacesOutput.add_member(:workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummaryList, location_name: 'workspaces', traits: {"smithy.api#documentation" => "<p>An array of <code>WorkspaceSummary</code> structures containing information about the workspaces requested.</p>", "smithy.api#required" => {}}))
    ListWorkspacesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are more results to retrieve. You can use this token as part of your next <code>ListWorkspaces</code> request to retrieve those results.</p>"}))
    ListWorkspacesOutput.type = Types::ListWorkspacesOutput
    LoggingConfigurationMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the logging configuration.</p>", "smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>The ID of the workspace the logging configuration is for.</p>", "smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch log group to which the vended log data will be published.</p>", "smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the logging configuration was created.</p>", "smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the logging configuration was most recently changed.</p>", "smithy.api#required" => {}}))
    LoggingConfigurationMetadata.type = Types::LoggingConfigurationMetadata
    LoggingConfigurationStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The current status of the current rules and alerting logging configuration.</p> <note> <p>These logging configurations are only for rules and alerting logs.</p> </note>", "smithy.api#required" => {}}))
    LoggingConfigurationStatus.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>If failed, the reason for the failure.</p>"}))
    LoggingConfigurationStatus.type = Types::LoggingConfigurationStatus
    LoggingDestination.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogDestination, location_name: 'cloudWatchLogs', traits: {"smithy.api#documentation" => "<p>Configuration details for logging to CloudWatch Logs.</p>", "smithy.api#required" => {}}))
    LoggingDestination.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingFilter, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Filtering criteria that determine which queries are logged.</p>", "smithy.api#required" => {}}))
    LoggingDestination.type = Types::LoggingDestination
    LoggingDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestination)
    LoggingFilter.add_member(:qsp_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'qspThreshold', traits: {"smithy.api#documentation" => "<p>The Query Samples Processed (QSP) threshold above which queries will be logged. Queries processing more samples than this threshold will be captured in logs.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    LoggingFilter.type = Types::LoggingFilter
    PutAlertManagerDefinitionInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to update the alert manager definition in.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAlertManagerDefinitionInput.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The alert manager definition to use. A base64-encoded version of the YAML alert manager definition file.</p> <p>For details about the alert manager definition, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html\">AlertManagedDefinitionData</a>.</p>", "smithy.api#required" => {}}))
    PutAlertManagerDefinitionInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    PutAlertManagerDefinitionInput.type = Types::PutAlertManagerDefinitionInput
    PutAlertManagerDefinitionOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that returns the current status of the alert manager definition.</p>", "smithy.api#required" => {}}))
    PutAlertManagerDefinitionOutput.type = Types::PutAlertManagerDefinitionOutput
    PutRuleGroupsNamespaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace where you are updating the rule groups namespace.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule groups namespace that you are updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceInput.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The new rules file to use in the namespace. A base64-encoded version of the YAML rule groups file.</p> <p>For details about the rule groups namespace structure, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html\">RuleGroupsNamespaceData</a>.</p>", "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    PutRuleGroupsNamespaceInput.type = Types::PutRuleGroupsNamespaceInput
    PutRuleGroupsNamespaceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule groups namespace that was updated.</p>", "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that includes the current status of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the namespace.</p>"}))
    PutRuleGroupsNamespaceOutput.type = Types::PutRuleGroupsNamespaceOutput
    QueryLoggingConfigurationMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the query logging configuration.</p>", "smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>The ID of the workspace associated with this query logging configuration.</p>", "smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestinations, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>The configured destinations for the query logging configuration.</p>", "smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the query logging configuration was created.</p>", "smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the query logging configuration was last modified.</p>", "smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.type = Types::QueryLoggingConfigurationMetadata
    QueryLoggingConfigurationStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The current status of the query logging configuration.</p>", "smithy.api#required" => {}}))
    QueryLoggingConfigurationStatus.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>If there is a failure, the reason for the failure.</p>"}))
    QueryLoggingConfigurationStatus.type = Types::QueryLoggingConfigurationStatus
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Type of the resource affected.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleConfiguration.add_member(:source_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'sourceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role used in the source account to enable cross-account scraping. For information about the contents of this policy, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#cross-account-remote-write\">Cross-account setup</a>.</p>"}))
    RoleConfiguration.add_member(:target_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'targetRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role used in the target account to enable cross-account scraping. For information about the contents of this policy, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#cross-account-remote-write\">Cross-account setup</a>.</p>"}))
    RoleConfiguration.type = Types::RoleConfiguration
    RuleGroupsNamespaceDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the rule groups namespace. For example, <code>arn:aws:aps:&lt;region&gt;:123456789012:rulegroupsnamespace/ws-example1-1234-abcd-5678-ef90abcd1234/rulesfile1</code>.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The rule groups file used in the namespace.</p> <p>For details about the rule groups namespace structure, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html\">RuleGroupsNamespaceData</a>.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the rule groups namespace was created.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the rule groups namespace was most recently changed.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the rule groups namespace.</p>"}))
    RuleGroupsNamespaceDescription.type = Types::RuleGroupsNamespaceDescription
    RuleGroupsNamespaceStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The current status of the namespace.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceStatus.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the failure, if any.</p>"}))
    RuleGroupsNamespaceStatus.type = Types::RuleGroupsNamespaceStatus
    RuleGroupsNamespaceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that displays the current status of the rule groups namespace.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the rule groups namespace was created.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the rule groups namespace was most recently changed.</p>", "smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the rule groups namespace.</p>"}))
    RuleGroupsNamespaceSummary.type = Types::RuleGroupsNamespaceSummary
    RuleGroupsNamespaceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummary)
    ScrapeConfiguration.add_member(:configuration_blob, Types::ScrapeConfiguration::ConfigurationBlob, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'configurationBlob', traits: {"smithy.api#documentation" => "<p>The base 64 encoded scrape configuration file.</p>"}))
    ScrapeConfiguration.add_member(:unknown, Types::ScrapeConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ScrapeConfiguration.type = Types::ScrapeConfiguration
    ScraperDescription.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>(Optional) A name associated with the scraper.</p>"}))
    ScraperDescription.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the scraper. For example, <code>s-example1-1234-abcd-5678-ef9012abcd34</code>.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scraper. For example, <code>arn:aws:aps:&lt;region&gt;:123456798012:scraper/s-example1-1234-abcd-5678-ef9012abcd34</code>.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover and collect metrics on your behalf.</p> <p>For example, <code>arn:aws:iam::123456789012:role/service-role/AmazonGrafanaServiceRole-12example</code>.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that contains the current status of the scraper.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the scraper was created.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the scraper was last modified.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>(Optional) The list of tag keys and values associated with the scraper.</p>"}))
    ScraperDescription.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>If there is a failure, the reason for the failure.</p>"}))
    ScraperDescription.add_member(:scrape_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScrapeConfiguration, location_name: 'scrapeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration in use by the scraper.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The Amazon EKS cluster from which the scraper collects metrics.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon Managed Service for Prometheus workspace the scraper sends metrics to.</p>", "smithy.api#required" => {}}))
    ScraperDescription.add_member(:role_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration', traits: {"smithy.api#documentation" => "<p>This structure displays information about the IAM roles used for cross-account scraping configuration.</p>"}))
    ScraperDescription.type = Types::ScraperDescription
    ScraperFilters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterKey, traits: {"smithy.api#documentation" => "<p>The name of the key to filter by. Currently supported filter keys are <code>status</code>, <code>sourceArn</code>, <code>destinationArn</code>, and <code>alias</code>.</p>"})
    ScraperFilters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, traits: {"smithy.api#documentation" => "<p>The values of the given key by which to filter.</p>"})
    ScraperStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The current status of the scraper.</p>", "smithy.api#required" => {}}))
    ScraperStatus.type = Types::ScraperStatus
    ScraperSummary.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>(Optional) A name associated with the scraper.</p>"}))
    ScraperSummary.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the scraper.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scraper.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover and collect metrics on your behalf.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that contains the current status of the scraper.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the scraper was created.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the scraper was last modified.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>(Optional) The list of tag keys and values associated with the scraper.</p>"}))
    ScraperSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>If there is a failure, the reason for the failure.</p>"}))
    ScraperSummary.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The Amazon EKS cluster from which the scraper collects metrics.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon Managed Service for Prometheus workspace the scraper sends metrics to.</p>", "smithy.api#required" => {}}))
    ScraperSummary.add_member(:role_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration', traits: {"smithy.api#documentation" => "<p>This structure displays information about the IAM roles used for cross-account scraping configuration.</p>"}))
    ScraperSummary.type = Types::ScraperSummary
    ScraperSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperSummary)
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Type of the resource affected.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Service quotas code for the originating service.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Service quotas code of the originating quota.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Source.add_member(:eks_configuration, Types::Source::EksConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: EksConfiguration, location_name: 'eksConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon EKS cluster from which a scraper collects metrics.</p>"}))
    Source.add_member(:unknown, Types::Source::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Source.type = Types::Source
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, traits: {"smithy.api#documentation" => "<p>The key of the tag. Must not begin with <code>aws:</code>.</p>"})
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>"})
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to apply tags to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values to associate with the resource.</p> <p>Keys must not begin with <code>aws:</code>.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Service quotas code for the originating service.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Service quotas code for the originating quota.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Advice to clients on when the call can be safely retried.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource from which to remove a tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLoggingConfigurationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to update the logging configuration for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLoggingConfigurationInput.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch log group to which the vended log data will be published.</p>", "smithy.api#required" => {}}))
    UpdateLoggingConfigurationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateLoggingConfigurationInput.type = Types::UpdateLoggingConfigurationInput
    UpdateLoggingConfigurationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that contains the current status of the logging configuration.</p>", "smithy.api#required" => {}}))
    UpdateLoggingConfigurationOutput.type = Types::UpdateLoggingConfigurationOutput
    UpdateQueryLoggingConfigurationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace for which to update the query logging configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueryLoggingConfigurationRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestinations, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>The destinations where query logs will be sent. Only CloudWatch Logs destination is supported. The list must contain exactly one element.</p>", "smithy.api#required" => {}}))
    UpdateQueryLoggingConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateQueryLoggingConfigurationRequest.type = Types::UpdateQueryLoggingConfigurationRequest
    UpdateQueryLoggingConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the query logging configuration.</p>", "smithy.api#required" => {}}))
    UpdateQueryLoggingConfigurationResponse.type = Types::UpdateQueryLoggingConfigurationResponse
    UpdateScraperRequest.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the scraper to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScraperRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The new alias of the scraper.</p>"}))
    UpdateScraperRequest.add_member(:scrape_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScrapeConfiguration, location_name: 'scrapeConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the base-64 encoded YAML configuration for the scraper.</p> <note> <p>For more information about configuring a scraper, see <a href=\"https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html\">Using an Amazon Web Services managed collector</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p> </note>"}))
    UpdateScraperRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The new Amazon Managed Service for Prometheus workspace to send metrics to.</p>"}))
    UpdateScraperRequest.add_member(:role_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure to enable cross-account access, so that you can use a target account to access Prometheus metrics from source accounts.</p>"}))
    UpdateScraperRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateScraperRequest.type = Types::UpdateScraperRequest
    UpdateScraperResponse.add_member(:scraper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#documentation" => "<p>The ID of the updated scraper.</p>", "smithy.api#required" => {}}))
    UpdateScraperResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated scraper.</p>", "smithy.api#required" => {}}))
    UpdateScraperResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A structure that displays the current status of the scraper.</p>", "smithy.api#required" => {}}))
    UpdateScraperResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the scraper.</p>"}))
    UpdateScraperResponse.type = Types::UpdateScraperResponse
    UpdateWorkspaceAliasInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceAliasInput.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The new alias for the workspace. It does not need to be unique.</p> <p>Amazon Managed Service for Prometheus will automatically strip any blank spaces from the beginning and end of the alias that you specify.</p>"}))
    UpdateWorkspaceAliasInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateWorkspaceAliasInput.type = Types::UpdateWorkspaceAliasInput
    UpdateWorkspaceConfigurationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace that you want to update. To find the IDs of your workspaces, use the <a href=\"https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm\">ListWorkspaces</a> operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>You can include a token in your operation to make it an idempotent opeartion. </p>", "smithy.api#idempotencyToken" => {}}))
    UpdateWorkspaceConfigurationRequest.add_member(:limits_per_label_set, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSetList, location_name: 'limitsPerLabelSet', traits: {"smithy.api#documentation" => "<p>This is an array of structures, where each structure defines a label set for the workspace, and defines the active time series limit for each of those label sets. Each label name in a label set must be unique.</p>"}))
    UpdateWorkspaceConfigurationRequest.add_member(:retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>Specifies how many days that metrics will be retained in the workspace.</p>", "smithy.api#range" => {"min" => 1}}))
    UpdateWorkspaceConfigurationRequest.type = Types::UpdateWorkspaceConfigurationRequest
    UpdateWorkspaceConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the workspace configuration.</p>", "smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationResponse.type = Types::UpdateWorkspaceConfigurationResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Reason the request failed validation.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>The field that caused the error, if applicable.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field that caused an exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing why the field caused an exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    WorkspaceConfigurationDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure displays the current status of the workspace configuration, and might also contain a reason for that status.</p>", "smithy.api#required" => {}}))
    WorkspaceConfigurationDescription.add_member(:limits_per_label_set, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSetList, location_name: 'limitsPerLabelSet', traits: {"smithy.api#documentation" => "<p>This is an array of structures, where each structure displays one label sets for the workspace and the limits for that label set.</p>"}))
    WorkspaceConfigurationDescription.add_member(:retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>This field displays how many days that metrics are retained in the workspace.</p>", "smithy.api#range" => {"min" => 1}}))
    WorkspaceConfigurationDescription.type = Types::WorkspaceConfigurationDescription
    WorkspaceConfigurationStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The current status of the workspace configuration.</p>", "smithy.api#required" => {}}))
    WorkspaceConfigurationStatus.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the current status, if a reason is available.</p>"}))
    WorkspaceConfigurationStatus.type = Types::WorkspaceConfigurationStatus
    WorkspaceDescription.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The unique ID for the workspace. For example, <code>ws-example1-1234-abcd-5678-ef90abcd1234</code>.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that is assigned to this workspace to help identify it. It does not need to be unique.</p>"}))
    WorkspaceDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the workspace. For example, <code>arn:aws:aps:&lt;region&gt;:123456789012:workspace/ws-example1-1234-abcd-5678-ef90abcd1234</code>.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:prometheus_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'prometheusEndpoint', traits: {"smithy.api#documentation" => "<p>The Prometheus endpoint available for this workspace. For example, <code>https://aps-workspaces.&lt;region&gt;.amazonaws.com/workspaces/ws-example1-1234-abcd-5678-ef90abcd1234/api/v1/</code>.</p>"}))
    WorkspaceDescription.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the workspace was created.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the workspace.</p>"}))
    WorkspaceDescription.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>(optional) If the workspace was created with a customer managed KMS key, the ARN for the key used.</p>"}))
    WorkspaceDescription.type = Types::WorkspaceDescription
    WorkspaceStatus.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The current status of the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceStatus.type = Types::WorkspaceStatus
    WorkspaceSummary.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The unique ID for the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that is assigned to this workspace to help identify it. It does not need to be unique.</p>"}))
    WorkspaceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the workspace was created.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values that are associated with the workspace.</p>"}))
    WorkspaceSummary.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>(optional) If the workspace was created with a customer managed KMS key, the ARN for the key used.</p>"}))
    WorkspaceSummary.type = Types::WorkspaceSummary
    WorkspaceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummary)

    AmazonPrometheusService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.amp#AmazonPrometheusService"
      service.name = "AmazonPrometheusService"
      service.version = "2020-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "amp", "arnNamespace" => "aps", "cloudTrailEventSource" => "CLOUDTRAIL_PLACEHOLDER_REPLACED_BY_CDK"}, "aws.auth#sigv4" => {"name" => "aps"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "X-Amz-Security-Token", "X-Amz-Target"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-errormessage", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Prometheus Service"}
      service.add_operation(:create_alert_manager_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateAlertManagerDefinition"
        operation.name = "CreateAlertManagerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateLoggingConfiguration"
        operation.name = "CreateLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggingConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggingConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_query_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateQueryLoggingConfiguration"
        operation.name = "CreateQueryLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule_groups_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateRuleGroupsNamespace"
        operation.name = "CreateRuleGroupsNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scraper, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateScraper"
        operation.name = "CreateScraper"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScraperRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScraperResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/scrapers"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateWorkspace"
        operation.name = "CreateWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_alert_manager_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteAlertManagerDefinition"
        operation.name = "DeleteAlertManagerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlertManagerDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_query_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteQueryLoggingConfiguration"
        operation.name = "DeleteQueryLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueryLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rule_groups_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteRuleGroupsNamespace"
        operation.name = "DeleteRuleGroupsNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupsNamespaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_scraper, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteScraper"
        operation.name = "DeleteScraper"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScraperRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScraperResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/scrapers/{scraperId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteWorkspace"
        operation.name = "DeleteWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_alert_manager_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeAlertManagerDefinition"
        operation.name = "DescribeAlertManagerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeLoggingConfiguration"
        operation.name = "DescribeLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_query_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeQueryLoggingConfiguration"
        operation.name = "DescribeQueryLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_rule_groups_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeRuleGroupsNamespace"
        operation.name = "DescribeRuleGroupsNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_scraper, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeScraper"
        operation.name = "DescribeScraper"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScraperRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScraperResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scrapers/{scraperId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeWorkspace"
        operation.name = "DescribeWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeWorkspaceConfiguration"
        operation.name = "DescribeWorkspaceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/configuration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_default_scraper_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#GetDefaultScraperConfiguration"
        operation.name = "GetDefaultScraperConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultScraperConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultScraperConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scraperconfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_rule_groups_namespaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListRuleGroupsNamespaces"
        operation.name = "ListRuleGroupsNamespaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRuleGroupsNamespaces.new
      end)
      service.add_operation(:list_scrapers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListScrapers"
        operation.name = "ListScrapers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScrapersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScrapersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scrapers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScrapers.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListWorkspaces"
        operation.name = "ListWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaces.new
      end)
      service.add_operation(:put_alert_manager_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#PutAlertManagerDefinition"
        operation.name = "PutAlertManagerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_rule_groups_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#PutRuleGroupsNamespace"
        operation.name = "PutRuleGroupsNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateLoggingConfiguration"
        operation.name = "UpdateLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_query_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateQueryLoggingConfiguration"
        operation.name = "UpdateQueryLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueryLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueryLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_scraper, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateScraper"
        operation.name = "UpdateScraper"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScraperRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScraperResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/scrapers/{scraperId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_workspace_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateWorkspaceAlias"
        operation.name = "UpdateWorkspaceAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/workspaces/{workspaceId}/alias"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_workspace_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateWorkspaceConfiguration"
        operation.name = "UpdateWorkspaceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PATCH", "uri" => "/workspaces/{workspaceId}/configuration"}, "smithy.api#idempotent" => {}}
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
