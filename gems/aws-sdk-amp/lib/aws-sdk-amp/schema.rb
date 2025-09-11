# frozen_string_literal: true

# This is generated code!

module Aws::Amp
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AlertManagerDefinitionData = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionData', name: 'AlertManagerDefinitionData')
    AlertManagerDefinitionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionDescription', name: 'AlertManagerDefinitionDescription')
    AlertManagerDefinitionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionStatus', name: 'AlertManagerDefinitionStatus')
    AlertManagerDefinitionStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#AlertManagerDefinitionStatusCode', name: 'AlertManagerDefinitionStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Definition is being created. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Definition has been created/updated. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Definition is being updated. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Definition is being deleting. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Definition creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Definition update failed."}]})
    AmpConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#AmpConfiguration', name: 'AmpConfiguration')
    CloudWatchLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CloudWatchLogDestination', name: 'CloudWatchLogDestination')
    ClusterArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ClusterArn', name: 'ClusterArn', traits: {"aws.api#arnReference" => {"type" => "AWS::EKS::Cluster"}, "smithy.api#pattern" => "^arn:aws[-a-z]*:eks:[-a-z0-9]+:[0-9]{12}:cluster/.+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAlertManagerDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateAlertManagerDefinitionInput', name: 'CreateAlertManagerDefinitionInput')
    CreateAlertManagerDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateAlertManagerDefinitionOutput', name: 'CreateAlertManagerDefinitionOutput')
    CreateLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateLoggingConfigurationInput', name: 'CreateLoggingConfigurationInput')
    CreateLoggingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateLoggingConfigurationOutput', name: 'CreateLoggingConfigurationOutput')
    CreateQueryLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateQueryLoggingConfigurationRequest', name: 'CreateQueryLoggingConfigurationRequest')
    CreateQueryLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateQueryLoggingConfigurationResponse', name: 'CreateQueryLoggingConfigurationResponse')
    CreateRuleGroupsNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateRuleGroupsNamespaceInput', name: 'CreateRuleGroupsNamespaceInput')
    CreateRuleGroupsNamespaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateRuleGroupsNamespaceOutput', name: 'CreateRuleGroupsNamespaceOutput')
    CreateScraperRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateScraperRequest', name: 'CreateScraperRequest')
    CreateScraperResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateScraperResponse', name: 'CreateScraperResponse')
    CreateWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateWorkspaceInput', name: 'CreateWorkspaceInput')
    CreateWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#CreateWorkspaceOutput', name: 'CreateWorkspaceOutput')
    DeleteAlertManagerDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteAlertManagerDefinitionInput', name: 'DeleteAlertManagerDefinitionInput')
    DeleteLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteLoggingConfigurationInput', name: 'DeleteLoggingConfigurationInput')
    DeleteQueryLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteQueryLoggingConfigurationRequest', name: 'DeleteQueryLoggingConfigurationRequest')
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteRuleGroupsNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteRuleGroupsNamespaceInput', name: 'DeleteRuleGroupsNamespaceInput')
    DeleteScraperRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteScraperRequest', name: 'DeleteScraperRequest')
    DeleteScraperResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteScraperResponse', name: 'DeleteScraperResponse')
    DeleteWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DeleteWorkspaceInput', name: 'DeleteWorkspaceInput')
    DescribeAlertManagerDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeAlertManagerDefinitionInput', name: 'DescribeAlertManagerDefinitionInput')
    DescribeAlertManagerDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeAlertManagerDefinitionOutput', name: 'DescribeAlertManagerDefinitionOutput')
    DescribeLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeLoggingConfigurationInput', name: 'DescribeLoggingConfigurationInput')
    DescribeLoggingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeLoggingConfigurationOutput', name: 'DescribeLoggingConfigurationOutput')
    DescribeQueryLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeQueryLoggingConfigurationRequest', name: 'DescribeQueryLoggingConfigurationRequest')
    DescribeQueryLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeQueryLoggingConfigurationResponse', name: 'DescribeQueryLoggingConfigurationResponse')
    DescribeResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeResourcePolicyRequest', name: 'DescribeResourcePolicyRequest')
    DescribeResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeResourcePolicyResponse', name: 'DescribeResourcePolicyResponse')
    DescribeRuleGroupsNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeRuleGroupsNamespaceInput', name: 'DescribeRuleGroupsNamespaceInput')
    DescribeRuleGroupsNamespaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeRuleGroupsNamespaceOutput', name: 'DescribeRuleGroupsNamespaceOutput')
    DescribeScraperRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeScraperRequest', name: 'DescribeScraperRequest')
    DescribeScraperResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeScraperResponse', name: 'DescribeScraperResponse')
    DescribeWorkspaceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceConfigurationRequest', name: 'DescribeWorkspaceConfigurationRequest')
    DescribeWorkspaceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceConfigurationResponse', name: 'DescribeWorkspaceConfigurationResponse')
    DescribeWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceInput', name: 'DescribeWorkspaceInput')
    DescribeWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#DescribeWorkspaceOutput', name: 'DescribeWorkspaceOutput')
    Destination = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amp#Destination', name: 'Destination')
    EksConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#EksConfiguration', name: 'EksConfiguration')
    FilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#FilterKey', name: 'FilterKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#FilterValues', name: 'FilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GetDefaultScraperConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#GetDefaultScraperConfigurationRequest', name: 'GetDefaultScraperConfigurationRequest')
    GetDefaultScraperConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#GetDefaultScraperConfigurationResponse', name: 'GetDefaultScraperConfigurationResponse')
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#IamRoleArn', name: 'IamRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#pattern" => "^arn:aws[-a-z]*:iam::[0-9]{12}:role/.+$"})
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#KmsKeyArn', name: 'KmsKeyArn', traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:kms:[-a-z0-9]+:[0-9]{12}:key/[-a-f0-9]+$"})
    LabelName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LabelName', name: 'LabelName', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z0-9_]*$"})
    LabelSet = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amp#LabelSet', name: 'LabelSet')
    LabelValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LabelValue', name: 'LabelValue', traits: {"smithy.api#length" => {"min" => 1}})
    LimitsPerLabelSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LimitsPerLabelSet', name: 'LimitsPerLabelSet')
    LimitsPerLabelSetEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LimitsPerLabelSetEntry', name: 'LimitsPerLabelSetEntry')
    LimitsPerLabelSetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#LimitsPerLabelSetList', name: 'LimitsPerLabelSetList')
    ListRuleGroupsNamespacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListRuleGroupsNamespacesInput', name: 'ListRuleGroupsNamespacesInput')
    ListRuleGroupsNamespacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListRuleGroupsNamespacesOutput', name: 'ListRuleGroupsNamespacesOutput')
    ListScrapersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListScrapersRequest', name: 'ListScrapersRequest')
    ListScrapersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListScrapersResponse', name: 'ListScrapersResponse')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWorkspacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListWorkspacesInput', name: 'ListWorkspacesInput')
    ListWorkspacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ListWorkspacesOutput', name: 'ListWorkspacesOutput')
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LogGroupArn', name: 'LogGroupArn', traits: {"aws.api#arnReference" => {"type" => "AWS::Logs::LogGroup"}, "smithy.api#pattern" => "^arn:aws[a-z0-9-]*:logs:[a-z0-9-]+:[0-9]{12}:log-group:[A-Za-z0-9\\.\\-\\_\\#/]{1,512}\\:\\*$"})
    LoggingConfigurationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingConfigurationMetadata', name: 'LoggingConfigurationMetadata')
    LoggingConfigurationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingConfigurationStatus', name: 'LoggingConfigurationStatus')
    LoggingConfigurationStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#LoggingConfigurationStatusCode', name: 'LoggingConfigurationStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Logging configuration is being created. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Logging configuration has been created/updated. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Logging configuration is being updated. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Logging configuration is being deleting. Update/Deletion is disallowed until logging configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Logging configuration creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Logging configuration update failed."}]})
    LoggingDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingDestination', name: 'LoggingDestination')
    LoggingDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#LoggingDestinations', name: 'LoggingDestinations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LoggingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#LoggingFilter', name: 'LoggingFilter')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"max" => 1000}})
    PutAlertManagerDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutAlertManagerDefinitionInput', name: 'PutAlertManagerDefinitionInput')
    PutAlertManagerDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutAlertManagerDefinitionOutput', name: 'PutAlertManagerDefinitionOutput')
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    PutRuleGroupsNamespaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutRuleGroupsNamespaceInput', name: 'PutRuleGroupsNamespaceInput')
    PutRuleGroupsNamespaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#PutRuleGroupsNamespaceOutput', name: 'PutRuleGroupsNamespaceOutput')
    QueryLoggingConfigurationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#QueryLoggingConfigurationMetadata', name: 'QueryLoggingConfigurationMetadata')
    QueryLoggingConfigurationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#QueryLoggingConfigurationStatus', name: 'QueryLoggingConfigurationStatus')
    QueryLoggingConfigurationStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#QueryLoggingConfigurationStatusCode', name: 'QueryLoggingConfigurationStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Query logging configuration is being created."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Query logging configuration is active."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Query logging configuration is being updated."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Query logging configuration is being deleted."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Query logging configuration creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Query logging configuration update failed."}]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RoleConfiguration', name: 'RoleConfiguration')
    RuleGroupsNamespaceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceArn', name: 'RuleGroupsNamespaceArn', traits: {"aws.api#arnReference" => {"type" => "AWS::APS::RuleGroupsNamespace", "service" => "ManagedPrometheusCP", "resource" => "RuleGroupsNamespace"}})
    RuleGroupsNamespaceData = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceData', name: 'RuleGroupsNamespaceData')
    RuleGroupsNamespaceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceDescription', name: 'RuleGroupsNamespaceDescription')
    RuleGroupsNamespaceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceName', name: 'RuleGroupsNamespaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[0-9A-Za-z][-.0-9A-Z_a-z]*"})
    RuleGroupsNamespaceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceStatus', name: 'RuleGroupsNamespaceStatus')
    RuleGroupsNamespaceStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceStatusCode', name: 'RuleGroupsNamespaceStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Namespace is being created. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Namespace has been created/updated. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Namespace is being updated. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Namespace is being deleting. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Namespace creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Namespace update failed."}]})
    RuleGroupsNamespaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceSummary', name: 'RuleGroupsNamespaceSummary')
    RuleGroupsNamespaceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#RuleGroupsNamespaceSummaryList', name: 'RuleGroupsNamespaceSummaryList')
    ScrapeConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amp#ScrapeConfiguration', name: 'ScrapeConfiguration')
    ScraperAlias = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperAlias', name: 'ScraperAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][-.0-9A-Z_a-z]*$"})
    ScraperArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperArn', name: 'ScraperArn', traits: {"aws.api#arnReference" => {"type" => "AWS::APS::Scraper", "service" => "ManagedPrometheusCP", "resource" => "Scraper"}})
    ScraperDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ScraperDescription', name: 'ScraperDescription', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Scraper"}]})
    ScraperFilters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amp#ScraperFilters', name: 'ScraperFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    ScraperId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperId', name: 'ScraperId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z][-.0-9A-Z_a-z]*$"})
    ScraperStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ScraperStatus', name: 'ScraperStatus')
    ScraperStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ScraperStatusCode', name: 'ScraperStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Scraper is being created. Deletion is disallowed until status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Scraper is being updated. Deletion is disallowed until status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Scraper has been created and is usable."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Scraper is being deleted. Deletions are allowed only when status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Scraper creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Scraper update failed."}, {"name" => "DELETION_FAILED", "value" => "DELETION_FAILED", "documentation" => "Scraper deletion failed."}]})
    ScraperSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ScraperSummary', name: 'ScraperSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Scraper"}]})
    ScraperSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#ScraperSummaryList', name: 'ScraperSummaryList')
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^sg-[0-9a-z]+$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Source = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amp#Source', name: 'Source')
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#StatusReason', name: 'StatusReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^subnet-[0-9a-z]+$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#TagKeys', name: 'TagKeys')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amp#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateLoggingConfigurationInput', name: 'UpdateLoggingConfigurationInput')
    UpdateLoggingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateLoggingConfigurationOutput', name: 'UpdateLoggingConfigurationOutput')
    UpdateQueryLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateQueryLoggingConfigurationRequest', name: 'UpdateQueryLoggingConfigurationRequest')
    UpdateQueryLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateQueryLoggingConfigurationResponse', name: 'UpdateQueryLoggingConfigurationResponse')
    UpdateScraperRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateScraperRequest', name: 'UpdateScraperRequest')
    UpdateScraperResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateScraperResponse', name: 'UpdateScraperResponse')
    UpdateWorkspaceAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateWorkspaceAliasInput', name: 'UpdateWorkspaceAliasInput')
    UpdateWorkspaceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateWorkspaceConfigurationRequest', name: 'UpdateWorkspaceConfigurationRequest')
    UpdateWorkspaceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#UpdateWorkspaceConfigurationResponse', name: 'UpdateWorkspaceConfigurationResponse')
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"name" => "UNKNOWN_OPERATION", "value" => "UNKNOWN_OPERATION"}, {"name" => "CANNOT_PARSE", "value" => "CANNOT_PARSE"}, {"name" => "FIELD_VALIDATION_FAILED", "value" => "FIELD_VALIDATION_FAILED"}, {"name" => "OTHER", "value" => "OTHER"}]})
    WorkspaceAlias = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceAlias', name: 'WorkspaceAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WorkspaceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceArn', name: 'WorkspaceArn', traits: {"aws.api#arnReference" => {"type" => "AWS::APS::Workspace", "service" => "ManagedPrometheusCP", "resource" => "Workspace"}, "smithy.api#pattern" => "^arn:aws[-a-z]*:aps:[-a-z0-9]+:[0-9]{12}:workspace/.+$"})
    WorkspaceConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceConfigurationDescription', name: 'WorkspaceConfigurationDescription')
    WorkspaceConfigurationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceConfigurationStatus', name: 'WorkspaceConfigurationStatus')
    WorkspaceConfigurationStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceConfigurationStatusCode', name: 'WorkspaceConfigurationStatusCode', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Workspace configuration has been updated. Update is disallowed until workspace configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Workspace configuration is being updated. Update is disallowed until workspace configuration is ACTIVE and workspace status is ACTIVE."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Workspace configuration update failed."}]})
    WorkspaceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceDescription', name: 'WorkspaceDescription', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Workspace"}]})
    WorkspaceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceId', name: 'WorkspaceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[0-9A-Za-z][-.0-9A-Z_a-z]*"})
    WorkspacePolicyStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspacePolicyStatusCode', name: 'WorkspacePolicyStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Resource-based Policy is being created. Update/Deletion is disallowed until Resource-based Policy is ACTIVE and Workspace is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Resource-based Policy has been created/updated. Update/Deletion is disallowed until Resource-based Policy is ACTIVE and Workspace is ACTIVE."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Resource-based Policy is being updated. Update/Deletion is disallowed until Resource-based Policy is ACTIVE and Workspace is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Resource-based Policy is being deleting. Update/Deletion is disallowed until Resource-based Policy is ACTIVE and Workspace is ACTIVE."}]})
    WorkspaceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceStatus', name: 'WorkspaceStatus')
    WorkspaceStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amp#WorkspaceStatusCode', name: 'WorkspaceStatusCode', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Workspace is being created. Deletion is disallowed until status is ACTIVE."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Workspace has been created and is usable."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Workspace is being updated. Updates are allowed only when status is ACTIVE."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Workspace is being deleted. Deletions are allowed only when status is ACTIVE."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Workspace creation failed. Refer to WorkspaceStatus.failureReason for more details."}]})
    WorkspaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amp#WorkspaceSummary', name: 'WorkspaceSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amp#Workspace"}]})
    WorkspaceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amp#WorkspaceSummaryList', name: 'WorkspaceSummaryList')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AlertManagerDefinitionDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}}))
    AlertManagerDefinitionDescription.type = Types::AlertManagerDefinitionDescription
    AlertManagerDefinitionStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatusCode, location_name: 'statusCode', traits: {"smithy.api#required" => {}}))
    AlertManagerDefinitionStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    AlertManagerDefinitionStatus.type = Types::AlertManagerDefinitionStatus
    AmpConfiguration.add_member(:workspace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'workspaceArn', traits: {"smithy.api#required" => {}}))
    AmpConfiguration.type = Types::AmpConfiguration
    CloudWatchLogDestination.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#required" => {}}))
    CloudWatchLogDestination.type = Types::CloudWatchLogDestination
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAlertManagerDefinitionInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAlertManagerDefinitionInput.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    CreateAlertManagerDefinitionInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAlertManagerDefinitionInput.type = Types::CreateAlertManagerDefinitionInput
    CreateAlertManagerDefinitionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateAlertManagerDefinitionOutput.type = Types::CreateAlertManagerDefinitionOutput
    CreateLoggingConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLoggingConfigurationInput.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#required" => {}}))
    CreateLoggingConfigurationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateLoggingConfigurationInput.type = Types::CreateLoggingConfigurationInput
    CreateLoggingConfigurationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateLoggingConfigurationOutput.type = Types::CreateLoggingConfigurationOutput
    CreateQueryLoggingConfigurationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueryLoggingConfigurationRequest.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestinations, location_name: 'destinations', traits: {"smithy.api#required" => {}}))
    CreateQueryLoggingConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateQueryLoggingConfigurationRequest.type = Types::CreateQueryLoggingConfigurationRequest
    CreateQueryLoggingConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateQueryLoggingConfigurationResponse.type = Types::CreateQueryLoggingConfigurationResponse
    CreateRuleGroupsNamespaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRuleGroupsNamespaceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateRuleGroupsNamespaceInput.type = Types::CreateRuleGroupsNamespaceInput
    CreateRuleGroupsNamespaceOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateRuleGroupsNamespaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateRuleGroupsNamespaceOutput.type = Types::CreateRuleGroupsNamespaceOutput
    CreateScraperRequest.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias'))
    CreateScraperRequest.add_member(:scrape_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScrapeConfiguration, location_name: 'scrapeConfiguration', traits: {"smithy.api#required" => {}}))
    CreateScraperRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    CreateScraperRequest.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    CreateScraperRequest.add_member(:role_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration'))
    CreateScraperRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScraperRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateScraperRequest.type = Types::CreateScraperRequest
    CreateScraperResponse.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#required" => {}}))
    CreateScraperResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateScraperResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateScraperResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateScraperResponse.type = Types::CreateScraperResponse
    CreateWorkspaceInput.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias'))
    CreateWorkspaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkspaceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorkspaceInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateWorkspaceInput.type = Types::CreateWorkspaceInput
    CreateWorkspaceOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorkspaceOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateWorkspaceOutput.type = Types::CreateWorkspaceOutput
    DeleteAlertManagerDefinitionInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAlertManagerDefinitionInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAlertManagerDefinitionInput.type = Types::DeleteAlertManagerDefinitionInput
    DeleteLoggingConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLoggingConfigurationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteLoggingConfigurationInput.type = Types::DeleteLoggingConfigurationInput
    DeleteQueryLoggingConfigurationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueryLoggingConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteQueryLoggingConfigurationRequest.type = Types::DeleteQueryLoggingConfigurationRequest
    DeleteResourcePolicyRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteResourcePolicyRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'revisionId', traits: {"smithy.api#httpQuery" => "revisionId"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteRuleGroupsNamespaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleGroupsNamespaceInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleGroupsNamespaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteRuleGroupsNamespaceInput.type = Types::DeleteRuleGroupsNamespaceInput
    DeleteScraperRequest.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteScraperRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteScraperRequest.type = Types::DeleteScraperRequest
    DeleteScraperResponse.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#required" => {}}))
    DeleteScraperResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeleteScraperResponse.type = Types::DeleteScraperResponse
    DeleteWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteWorkspaceInput.type = Types::DeleteWorkspaceInput
    DescribeAlertManagerDefinitionInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAlertManagerDefinitionInput.type = Types::DescribeAlertManagerDefinitionInput
    DescribeAlertManagerDefinitionOutput.add_member(:alert_manager_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionDescription, location_name: 'alertManagerDefinition', traits: {"smithy.api#required" => {}}))
    DescribeAlertManagerDefinitionOutput.type = Types::DescribeAlertManagerDefinitionOutput
    DescribeLoggingConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLoggingConfigurationInput.type = Types::DescribeLoggingConfigurationInput
    DescribeLoggingConfigurationOutput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationMetadata, location_name: 'loggingConfiguration', traits: {"smithy.api#required" => {}}))
    DescribeLoggingConfigurationOutput.type = Types::DescribeLoggingConfigurationOutput
    DescribeQueryLoggingConfigurationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeQueryLoggingConfigurationRequest.type = Types::DescribeQueryLoggingConfigurationRequest
    DescribeQueryLoggingConfigurationResponse.add_member(:query_logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationMetadata, location_name: 'queryLoggingConfiguration', traits: {"smithy.api#required" => {}}))
    DescribeQueryLoggingConfigurationResponse.type = Types::DescribeQueryLoggingConfigurationResponse
    DescribeResourcePolicyRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'policyDocument', traits: {"smithy.api#required" => {}}))
    DescribeResourcePolicyResponse.add_member(:policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacePolicyStatusCode, location_name: 'policyStatus', traits: {"smithy.api#required" => {}}))
    DescribeResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'revisionId', traits: {"smithy.api#required" => {}}))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeRuleGroupsNamespaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRuleGroupsNamespaceInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRuleGroupsNamespaceInput.type = Types::DescribeRuleGroupsNamespaceInput
    DescribeRuleGroupsNamespaceOutput.add_member(:rule_groups_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceDescription, location_name: 'ruleGroupsNamespace', traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupsNamespaceOutput.type = Types::DescribeRuleGroupsNamespaceOutput
    DescribeScraperRequest.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeScraperRequest.type = Types::DescribeScraperRequest
    DescribeScraperResponse.add_member(:scraper, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperDescription, location_name: 'scraper', traits: {"smithy.api#required" => {}}))
    DescribeScraperResponse.type = Types::DescribeScraperResponse
    DescribeWorkspaceConfigurationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationRequest.type = Types::DescribeWorkspaceConfigurationRequest
    DescribeWorkspaceConfigurationResponse.add_member(:workspace_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationDescription, location_name: 'workspaceConfiguration', traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationResponse.type = Types::DescribeWorkspaceConfigurationResponse
    DescribeWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceInput.type = Types::DescribeWorkspaceInput
    DescribeWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceOutput.type = Types::DescribeWorkspaceOutput
    Destination.add_member(:amp_configuration, Types::Destination::AmpConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmpConfiguration, location_name: 'ampConfiguration'))
    Destination.add_member(:unknown, Types::Destination::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Destination.type = Types::Destination
    EksConfiguration.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn, location_name: 'clusterArn', traits: {"smithy.api#required" => {}}))
    EksConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds'))
    EksConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    EksConfiguration.type = Types::EksConfiguration
    FilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    GetDefaultScraperConfigurationRequest.type = Types::GetDefaultScraperConfigurationRequest
    GetDefaultScraperConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    GetDefaultScraperConfigurationResponse.type = Types::GetDefaultScraperConfigurationResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    LabelSet.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelName)
    LabelSet.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelValue)
    LimitsPerLabelSet.add_member(:limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSetEntry, location_name: 'limits', traits: {"smithy.api#required" => {}}))
    LimitsPerLabelSet.add_member(:label_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelSet, location_name: 'labelSet', traits: {"smithy.api#required" => {}}))
    LimitsPerLabelSet.type = Types::LimitsPerLabelSet
    LimitsPerLabelSetEntry.add_member(:max_series, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'maxSeries', traits: {"smithy.api#range" => {"min" => 0}}))
    LimitsPerLabelSetEntry.type = Types::LimitsPerLabelSetEntry
    LimitsPerLabelSetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSet)
    ListRuleGroupsNamespacesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRuleGroupsNamespacesInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#httpQuery" => "name"}))
    ListRuleGroupsNamespacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRuleGroupsNamespacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListRuleGroupsNamespacesInput.type = Types::ListRuleGroupsNamespacesInput
    ListRuleGroupsNamespacesOutput.add_member(:rule_groups_namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummaryList, location_name: 'ruleGroupsNamespaces', traits: {"smithy.api#required" => {}}))
    ListRuleGroupsNamespacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRuleGroupsNamespacesOutput.type = Types::ListRuleGroupsNamespacesOutput
    ListScrapersRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperFilters, location_name: 'filters', traits: {"smithy.api#httpQueryParams" => {}}))
    ListScrapersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListScrapersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListScrapersRequest.type = Types::ListScrapersRequest
    ListScrapersResponse.add_member(:scrapers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperSummaryList, location_name: 'scrapers', traits: {"smithy.api#required" => {}}))
    ListScrapersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListScrapersResponse.type = Types::ListScrapersResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkspacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkspacesInput.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias', traits: {"smithy.api#httpQuery" => "alias"}))
    ListWorkspacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListWorkspacesInput.type = Types::ListWorkspacesInput
    ListWorkspacesOutput.add_member(:workspaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummaryList, location_name: 'workspaces', traits: {"smithy.api#required" => {}}))
    ListWorkspacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorkspacesOutput.type = Types::ListWorkspacesOutput
    LoggingConfigurationMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    LoggingConfigurationMetadata.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}}))
    LoggingConfigurationMetadata.type = Types::LoggingConfigurationMetadata
    LoggingConfigurationStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatusCode, location_name: 'statusCode', traits: {"smithy.api#required" => {}}))
    LoggingConfigurationStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    LoggingConfigurationStatus.type = Types::LoggingConfigurationStatus
    LoggingDestination.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogDestination, location_name: 'cloudWatchLogs', traits: {"smithy.api#required" => {}}))
    LoggingDestination.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingFilter, location_name: 'filters', traits: {"smithy.api#required" => {}}))
    LoggingDestination.type = Types::LoggingDestination
    LoggingDestinations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestination)
    LoggingFilter.add_member(:qsp_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'qspThreshold', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    LoggingFilter.type = Types::LoggingFilter
    PutAlertManagerDefinitionInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAlertManagerDefinitionInput.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    PutAlertManagerDefinitionInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    PutAlertManagerDefinitionInput.type = Types::PutAlertManagerDefinitionInput
    PutAlertManagerDefinitionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    PutAlertManagerDefinitionOutput.type = Types::PutAlertManagerDefinitionOutput
    PutResourcePolicyRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'policyDocument', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    PutResourcePolicyRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'revisionId'))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacePolicyStatusCode, location_name: 'policyStatus', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'revisionId', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutRuleGroupsNamespaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRuleGroupsNamespaceInput.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    PutRuleGroupsNamespaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    PutRuleGroupsNamespaceInput.type = Types::PutRuleGroupsNamespaceInput
    PutRuleGroupsNamespaceOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    PutRuleGroupsNamespaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    PutRuleGroupsNamespaceOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    PutRuleGroupsNamespaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    PutRuleGroupsNamespaceOutput.type = Types::PutRuleGroupsNamespaceOutput
    QueryLoggingConfigurationMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestinations, location_name: 'destinations', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfigurationMetadata.type = Types::QueryLoggingConfigurationMetadata
    QueryLoggingConfigurationStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatusCode, location_name: 'statusCode', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfigurationStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    QueryLoggingConfigurationStatus.type = Types::QueryLoggingConfigurationStatus
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleConfiguration.add_member(:source_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'sourceRoleArn'))
    RoleConfiguration.add_member(:target_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'targetRoleArn'))
    RoleConfiguration.type = Types::RoleConfiguration
    RuleGroupsNamespaceDescription.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceDescription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    RuleGroupsNamespaceDescription.type = Types::RuleGroupsNamespaceDescription
    RuleGroupsNamespaceStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatusCode, location_name: 'statusCode', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    RuleGroupsNamespaceStatus.type = Types::RuleGroupsNamespaceStatus
    RuleGroupsNamespaceSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}}))
    RuleGroupsNamespaceSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    RuleGroupsNamespaceSummary.type = Types::RuleGroupsNamespaceSummary
    RuleGroupsNamespaceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummary)
    ScrapeConfiguration.add_member(:configuration_blob, Types::ScrapeConfiguration::ConfigurationBlob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'configurationBlob'))
    ScrapeConfiguration.add_member(:unknown, Types::ScrapeConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ScrapeConfiguration.type = Types::ScrapeConfiguration
    ScraperDescription.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias'))
    ScraperDescription.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ScraperDescription.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason'))
    ScraperDescription.add_member(:scrape_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScrapeConfiguration, location_name: 'scrapeConfiguration', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    ScraperDescription.add_member(:role_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration'))
    ScraperDescription.type = Types::ScraperDescription
    ScraperFilters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterKey)
    ScraperFilters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues)
    ScraperStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatusCode, location_name: 'statusCode', traits: {"smithy.api#required" => {}}))
    ScraperStatus.type = Types::ScraperStatus
    ScraperSummary.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias'))
    ScraperSummary.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ScraperSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason'))
    ScraperSummary.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    ScraperSummary.add_member(:role_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration'))
    ScraperSummary.type = Types::ScraperSummary
    ScraperSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperSummary)
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Source.add_member(:eks_configuration, Types::Source::EksConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksConfiguration, location_name: 'eksConfiguration'))
    Source.add_member(:unknown, Types::Source::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Source.type = Types::Source
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLoggingConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLoggingConfigurationInput.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#required" => {}}))
    UpdateLoggingConfigurationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateLoggingConfigurationInput.type = Types::UpdateLoggingConfigurationInput
    UpdateLoggingConfigurationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateLoggingConfigurationOutput.type = Types::UpdateLoggingConfigurationOutput
    UpdateQueryLoggingConfigurationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueryLoggingConfigurationRequest.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingDestinations, location_name: 'destinations', traits: {"smithy.api#required" => {}}))
    UpdateQueryLoggingConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateQueryLoggingConfigurationRequest.type = Types::UpdateQueryLoggingConfigurationRequest
    UpdateQueryLoggingConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateQueryLoggingConfigurationResponse.type = Types::UpdateQueryLoggingConfigurationResponse
    UpdateScraperRequest.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScraperRequest.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperAlias, location_name: 'alias'))
    UpdateScraperRequest.add_member(:scrape_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScrapeConfiguration, location_name: 'scrapeConfiguration'))
    UpdateScraperRequest.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination'))
    UpdateScraperRequest.add_member(:role_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: 'roleConfiguration'))
    UpdateScraperRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateScraperRequest.type = Types::UpdateScraperRequest
    UpdateScraperResponse.add_member(:scraper_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperId, location_name: 'scraperId', traits: {"smithy.api#required" => {}}))
    UpdateScraperResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateScraperResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScraperStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateScraperResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    UpdateScraperResponse.type = Types::UpdateScraperResponse
    UpdateWorkspaceAliasInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceAliasInput.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias'))
    UpdateWorkspaceAliasInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateWorkspaceAliasInput.type = Types::UpdateWorkspaceAliasInput
    UpdateWorkspaceConfigurationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateWorkspaceConfigurationRequest.add_member(:limits_per_label_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSetList, location_name: 'limitsPerLabelSet'))
    UpdateWorkspaceConfigurationRequest.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriodInDays', traits: {"smithy.api#range" => {"min" => 1}}))
    UpdateWorkspaceConfigurationRequest.type = Types::UpdateWorkspaceConfigurationRequest
    UpdateWorkspaceConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationResponse.type = Types::UpdateWorkspaceConfigurationResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    WorkspaceConfigurationDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    WorkspaceConfigurationDescription.add_member(:limits_per_label_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsPerLabelSetList, location_name: 'limitsPerLabelSet'))
    WorkspaceConfigurationDescription.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriodInDays', traits: {"smithy.api#range" => {"min" => 1}}))
    WorkspaceConfigurationDescription.type = Types::WorkspaceConfigurationDescription
    WorkspaceConfigurationStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatusCode, location_name: 'statusCode', traits: {"smithy.api#required" => {}}))
    WorkspaceConfigurationStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    WorkspaceConfigurationStatus.type = Types::WorkspaceConfigurationStatus
    WorkspaceDescription.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias'))
    WorkspaceDescription.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:prometheus_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'prometheusEndpoint'))
    WorkspaceDescription.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    WorkspaceDescription.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    WorkspaceDescription.type = Types::WorkspaceDescription
    WorkspaceStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatusCode, location_name: 'statusCode', traits: {"smithy.api#required" => {}}))
    WorkspaceStatus.type = Types::WorkspaceStatus
    WorkspaceSummary.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: 'alias'))
    WorkspaceSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    WorkspaceSummary.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    WorkspaceSummary.type = Types::WorkspaceSummary
    WorkspaceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummary)

    AmazonPrometheusService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.amp#AmazonPrometheusService"
      service.name = "AmazonPrometheusService"
      service.version = "2020-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "amp", "arnNamespace" => "aps", "cloudTrailEventSource" => "CLOUDTRAIL_PLACEHOLDER_REPLACED_BY_CDK"}, "aws.auth#sigv4" => {"name" => "aps"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "X-Amz-Security-Token", "X-Amz-Target"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-errormessage", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Prometheus Service"}
      service.add_operation(:create_alert_manager_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateAlertManagerDefinition"
        operation.name = "CreateAlertManagerDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateLoggingConfiguration"
        operation.name = "CreateLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_query_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateQueryLoggingConfiguration"
        operation.name = "CreateQueryLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule_groups_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateRuleGroupsNamespace"
        operation.name = "CreateRuleGroupsNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scraper, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateScraper"
        operation.name = "CreateScraper"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScraperRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScraperResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/scrapers"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#CreateWorkspace"
        operation.name = "CreateWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_alert_manager_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteAlertManagerDefinition"
        operation.name = "DeleteAlertManagerDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlertManagerDefinitionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_query_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteQueryLoggingConfiguration"
        operation.name = "DeleteQueryLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueryLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rule_groups_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteRuleGroupsNamespace"
        operation.name = "DeleteRuleGroupsNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupsNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_scraper, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteScraper"
        operation.name = "DeleteScraper"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScraperRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScraperResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/scrapers/{scraperId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DeleteWorkspace"
        operation.name = "DeleteWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_alert_manager_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeAlertManagerDefinition"
        operation.name = "DescribeAlertManagerDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeLoggingConfiguration"
        operation.name = "DescribeLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_query_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeQueryLoggingConfiguration"
        operation.name = "DescribeQueryLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_rule_groups_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeRuleGroupsNamespace"
        operation.name = "DescribeRuleGroupsNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_scraper, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeScraper"
        operation.name = "DescribeScraper"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScraperRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScraperResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scrapers/{scraperId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeWorkspace"
        operation.name = "DescribeWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#DescribeWorkspaceConfiguration"
        operation.name = "DescribeWorkspaceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/configuration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_default_scraper_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#GetDefaultScraperConfiguration"
        operation.name = "GetDefaultScraperConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultScraperConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultScraperConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scraperconfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_rule_groups_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListRuleGroupsNamespaces"
        operation.name = "ListRuleGroupsNamespaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRuleGroupsNamespaces.new
      end)
      service.add_operation(:list_scrapers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListScrapers"
        operation.name = "ListScrapers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScrapersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScrapersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/scrapers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScrapers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#ListWorkspaces"
        operation.name = "ListWorkspaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaces.new
      end)
      service.add_operation(:put_alert_manager_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#PutAlertManagerDefinition"
        operation.name = "PutAlertManagerDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/alertmanager/definition"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_rule_groups_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#PutRuleGroupsNamespace"
        operation.name = "PutRuleGroupsNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateLoggingConfiguration"
        operation.name = "UpdateLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/logging"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_query_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateQueryLoggingConfiguration"
        operation.name = "UpdateQueryLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueryLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueryLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/logging/query"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_scraper, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateScraper"
        operation.name = "UpdateScraper"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScraperRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScraperResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/scrapers/{scraperId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_workspace_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateWorkspaceAlias"
        operation.name = "UpdateWorkspaceAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceAliasInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/workspaces/{workspaceId}/alias"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_workspace_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amp#UpdateWorkspaceConfiguration"
        operation.name = "UpdateWorkspaceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PATCH", "uri" => "/workspaces/{workspaceId}/configuration"}, "smithy.api#idempotent" => {}}
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
