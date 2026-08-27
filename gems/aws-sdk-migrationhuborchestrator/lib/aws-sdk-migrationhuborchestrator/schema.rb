# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubOrchestrator
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403, "smithy.api#retryable" => {}})
    ApplicationConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#ApplicationConfigurationName", name: "ApplicationConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[-a-zA-Z0-9]*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#retryable" => {}})
    CreateTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateTemplateRequest", name: "CreateTemplateRequest")
    CreateTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateTemplateResponse", name: "CreateTemplateResponse")
    CreateWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateWorkflowInput", name: "CreateWorkflowInput")
    CreateWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateWorkflowOutput", name: "CreateWorkflowOutput")
    CreateWorkflowStepGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateWorkflowStepGroupInput", name: "CreateWorkflowStepGroupInput")
    CreateWorkflowStepGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateWorkflowStepGroupOutput", name: "CreateWorkflowStepGroupOutput")
    CreateWorkflowStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateWorkflowStepInput", name: "CreateWorkflowStepInput")
    CreateWorkflowStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#CreateWorkflowStepOutput", name: "CreateWorkflowStepOutput")
    DataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#DataType", name: "DataType", traits: {"smithy.api#enum" => [{"value" => "STRING", "name" => "STRING"}, {"value" => "INTEGER", "name" => "INTEGER"}, {"value" => "STRINGLIST", "name" => "STRINGLIST"}, {"value" => "STRINGMAP", "name" => "STRINGMAP"}]})
    DeleteTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteTemplateRequest", name: "DeleteTemplateRequest")
    DeleteTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteTemplateResponse", name: "DeleteTemplateResponse")
    DeleteWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteWorkflowInput", name: "DeleteWorkflowInput")
    DeleteWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteWorkflowOutput", name: "DeleteWorkflowOutput")
    DeleteWorkflowStepGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStepGroupInput", name: "DeleteWorkflowStepGroupInput")
    DeleteWorkflowStepGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStepGroupOutput", name: "DeleteWorkflowStepGroupOutput")
    DeleteWorkflowStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStepInput", name: "DeleteWorkflowStepInput")
    DeleteWorkflowStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStepOutput", name: "DeleteWorkflowStepOutput")
    GetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetTemplateInput", name: "GetTemplateInput")
    GetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetTemplateOutput", name: "GetTemplateOutput")
    GetTemplateStepGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetTemplateStepGroupInput", name: "GetTemplateStepGroupInput")
    GetTemplateStepGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetTemplateStepGroupOutput", name: "GetTemplateStepGroupOutput")
    GetTemplateStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetTemplateStepInput", name: "GetTemplateStepInput")
    GetTemplateStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetTemplateStepOutput", name: "GetTemplateStepOutput")
    GetWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetWorkflowInput", name: "GetWorkflowInput")
    GetWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetWorkflowOutput", name: "GetWorkflowOutput")
    GetWorkflowStepGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetWorkflowStepGroupInput", name: "GetWorkflowStepGroupInput")
    GetWorkflowStepGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetWorkflowStepGroupOutput", name: "GetWorkflowStepGroupOutput")
    GetWorkflowStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetWorkflowStepInput", name: "GetWorkflowStepInput")
    GetWorkflowStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#GetWorkflowStepOutput", name: "GetWorkflowStepOutput")
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#IPAddress", name: "IPAddress", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}, "smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListPluginsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListPluginsInput", name: "ListPluginsInput")
    ListPluginsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListPluginsOutput", name: "ListPluginsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTemplateStepGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTemplateStepGroupsInput", name: "ListTemplateStepGroupsInput")
    ListTemplateStepGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTemplateStepGroupsOutput", name: "ListTemplateStepGroupsOutput")
    ListTemplateStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTemplateStepsInput", name: "ListTemplateStepsInput")
    ListTemplateStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTemplateStepsOutput", name: "ListTemplateStepsOutput")
    ListTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTemplatesInput", name: "ListTemplatesInput")
    ListTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListTemplatesOutput", name: "ListTemplatesOutput")
    ListWorkflowStepGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListWorkflowStepGroupsInput", name: "ListWorkflowStepGroupsInput")
    ListWorkflowStepGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListWorkflowStepGroupsOutput", name: "ListWorkflowStepGroupsOutput")
    ListWorkflowStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListWorkflowStepsInput", name: "ListWorkflowStepsInput")
    ListWorkflowStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListWorkflowStepsOutput", name: "ListWorkflowStepsOutput")
    ListWorkflowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListWorkflowsInput", name: "ListWorkflowsInput")
    ListWorkflowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ListWorkflowsOutput", name: "ListWorkflowsOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhuborchestrator#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    MaxStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#MaxStringList", name: "MaxStringList")
    MaxStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#MaxStringValue", name: "MaxStringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    MigrationWorkflowDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#MigrationWorkflowDescription", name: "MigrationWorkflowDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+, ]*$"})
    MigrationWorkflowId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#MigrationWorkflowId", name: "MigrationWorkflowId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    MigrationWorkflowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#MigrationWorkflowName", name: "MigrationWorkflowName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    MigrationWorkflowStatusEnum = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#MigrationWorkflowStatusEnum", name: "MigrationWorkflowStatusEnum", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "CREATION_FAILED", "name" => "CREATION_FAILED"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "WORKFLOW_FAILED", "name" => "WORKFLOW_FAILED"}, {"value" => "PAUSED", "name" => "PAUSED"}, {"value" => "PAUSING", "name" => "PAUSING"}, {"value" => "PAUSING_FAILED", "name" => "PAUSING_FAILED"}, {"value" => "USER_ATTENTION_REQUIRED", "name" => "USER_ATTENTION_REQUIRED"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETION_FAILED", "name" => "DELETION_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}]})
    MigrationWorkflowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#MigrationWorkflowSummary", name: "MigrationWorkflowSummary")
    MigrationWorkflowSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#MigrationWorkflowSummaryList", name: "MigrationWorkflowSummaryList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*\\S.*"})
    Owner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#Owner", name: "Owner", traits: {"smithy.api#enum" => [{"value" => "AWS_MANAGED", "name" => "AWSManaged"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    PlatformCommand = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#PlatformCommand", name: "PlatformCommand")
    PlatformScriptKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#PlatformScriptKey", name: "PlatformScriptKey")
    PluginHealth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#PluginHealth", name: "PluginHealth", traits: {"smithy.api#enum" => [{"value" => "HEALTHY", "name" => "PLUGIN_HEALTHY"}, {"value" => "UNHEALTHY", "name" => "PLUGIN_UNHEALTHY"}]})
    PluginId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#PluginId", name: "PluginId", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => ".*\\S.*"})
    PluginSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#PluginSummaries", name: "PluginSummaries")
    PluginSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#PluginSummary", name: "PluginSummary")
    PluginVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#PluginVersion", name: "PluginVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:aws:migrationhub-orchestrator:[a-z0-9-]+:[0-9]+:(template|workflow)/[.]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryWorkflowStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#RetryWorkflowStepInput", name: "RetryWorkflowStepInput")
    RetryWorkflowStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#RetryWorkflowStepOutput", name: "RetryWorkflowStepOutput")
    RunEnvironment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#RunEnvironment", name: "RunEnvironment", traits: {"smithy.api#enum" => [{"value" => "AWS", "name" => "AWS"}, {"value" => "ONPREMISE", "name" => "ONPREMISE"}]})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    StartWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#StartWorkflowInput", name: "StartWorkflowInput")
    StartWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#StartWorkflowOutput", name: "StartWorkflowOutput")
    StepActionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepActionType", name: "StepActionType", traits: {"smithy.api#enum" => [{"value" => "MANUAL", "name" => "MANUAL"}, {"value" => "AUTOMATED", "name" => "AUTOMATED"}]})
    StepAutomationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#StepAutomationConfiguration", name: "StepAutomationConfiguration")
    StepDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepDescription", name: "StepDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+, ]*$"})
    StepGroupDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepGroupDescription", name: "StepGroupDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+, ]*$"})
    StepGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepGroupId", name: "StepGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    StepGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepGroupName", name: "StepGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    StepGroupStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepGroupStatus", name: "StepGroupStatus", traits: {"smithy.api#enum" => [{"value" => "AWAITING_DEPENDENCIES", "name" => "AWAITING_DEPENDENCIES"}, {"value" => "READY", "name" => "READY"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "PAUSED", "name" => "PAUSED"}, {"value" => "PAUSING", "name" => "PAUSING"}, {"value" => "USER_ATTENTION_REQUIRED", "name" => "USER_ATTENTION_REQUIRED"}]})
    StepId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepId", name: "StepId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    StepInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.migrationhuborchestrator#StepInput", name: "StepInput")
    StepInputParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.migrationhuborchestrator#StepInputParameters", name: "StepInputParameters", traits: {"smithy.api#sensitive" => {}})
    StepInputParametersKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepInputParametersKey", name: "StepInputParametersKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-_ ()]+$"})
    StepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepName", name: "StepName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    StepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#StepOutput", name: "StepOutput")
    StepOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#StepOutputList", name: "StepOutputList")
    StepStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StepStatus", name: "StepStatus", traits: {"smithy.api#enum" => [{"value" => "AWAITING_DEPENDENCIES", "name" => "AWAITING_DEPENDENCIES"}, {"value" => "SKIPPED", "name" => "SKIPPED"}, {"value" => "READY", "name" => "READY"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "PAUSED", "name" => "PAUSED"}, {"value" => "USER_ATTENTION_REQUIRED", "name" => "USER_ATTENTION_REQUIRED"}]})
    StopWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#StopWorkflowInput", name: "StopWorkflowInput")
    StopWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#StopWorkflowOutput", name: "StopWorkflowOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#StringList", name: "StringList")
    StringListMember = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StringListMember", name: "StringListMember", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.migrationhuborchestrator#StringMap", name: "StringMap")
    StringMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StringMapKey", name: "StringMapKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-_ ()]+$"})
    StringMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StringMapValue", name: "StringMapValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#StringValue", name: "StringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.migrationhuborchestrator#TagMap", name: "TagMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#TargetType", name: "TargetType", traits: {"smithy.api#enum" => [{"value" => "SINGLE", "name" => "SINGLE"}, {"value" => "ALL", "name" => "ALL"}, {"value" => "NONE", "name" => "NONE"}]})
    TemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateId", name: "TemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    TemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateInput", name: "TemplateInput")
    TemplateInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateInputList", name: "TemplateInputList")
    TemplateInputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateInputName", name: "TemplateInputName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    TemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateName", name: "TemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    TemplateSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateSource", name: "TemplateSource")
    TemplateStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateStatus", name: "TemplateStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "READY", "name" => "READY"}, {"value" => "PENDING_CREATION", "name" => "PENDING_CREATION"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "CREATION_FAILED", "name" => "CREATION_FAILED"}]})
    TemplateStepGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateStepGroupSummary", name: "TemplateStepGroupSummary")
    TemplateStepGroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateStepGroupSummaryList", name: "TemplateStepGroupSummaryList")
    TemplateStepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateStepSummary", name: "TemplateStepSummary")
    TemplateStepSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateStepSummaryList", name: "TemplateStepSummaryList")
    TemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateSummary", name: "TemplateSummary")
    TemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#TemplateSummaryList", name: "TemplateSummaryList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Tool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#Tool", name: "Tool")
    ToolsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#ToolsList", name: "ToolsList")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateTemplateRequest", name: "UpdateTemplateRequest")
    UpdateTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateTemplateResponse", name: "UpdateTemplateResponse")
    UpdateWorkflowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateWorkflowInput", name: "UpdateWorkflowInput")
    UpdateWorkflowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateWorkflowOutput", name: "UpdateWorkflowOutput")
    UpdateWorkflowStepGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStepGroupInput", name: "UpdateWorkflowStepGroupInput")
    UpdateWorkflowStepGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStepGroupOutput", name: "UpdateWorkflowStepGroupOutput")
    UpdateWorkflowStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStepInput", name: "UpdateWorkflowStepInput")
    UpdateWorkflowStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStepOutput", name: "UpdateWorkflowStepOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    WorkflowStepAutomationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepAutomationConfiguration", name: "WorkflowStepAutomationConfiguration")
    WorkflowStepGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepGroupSummary", name: "WorkflowStepGroupSummary")
    WorkflowStepGroupsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepGroupsSummaryList", name: "WorkflowStepGroupsSummaryList")
    WorkflowStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepOutput", name: "WorkflowStepOutput")
    WorkflowStepOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepOutputList", name: "WorkflowStepOutputList")
    WorkflowStepOutputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepOutputName", name: "WorkflowStepOutputName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"})
    WorkflowStepOutputUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepOutputUnion", name: "WorkflowStepOutputUnion")
    WorkflowStepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepSummary", name: "WorkflowStepSummary")
    WorkflowStepsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhuborchestrator#WorkflowStepsSummaryList", name: "WorkflowStepsSummaryList")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9]*$", "smithy.api#required" => {}}))
    CreateTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}, "smithy.api#pattern" => "^.*$"}))
    CreateTemplateRequest.add_member(:template_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSource, name: "templateSource", traits: {"smithy.api#required" => {}}))
    CreateTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateTemplateRequest.type = Types::CreateTemplateRequest
    CreateTemplateResponse.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    CreateTemplateResponse.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateArn"))
    CreateTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    CreateTemplateResponse.type = Types::CreateTemplateResponse
    CreateWorkflowInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$", "smithy.api#required" => {}}))
    CreateWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+, ]*$"}))
    CreateWorkflowInput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$", "smithy.api#required" => {}}))
    CreateWorkflowInput.add_member(:application_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "applicationConfigurationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]*$"}))
    CreateWorkflowInput.add_member(:input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StepInputParameters, name: "inputParameters", traits: {"smithy.api#required" => {}}))
    CreateWorkflowInput.add_member(:step_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stepTargets"))
    CreateWorkflowInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    CreateWorkflowInput.type = Types::CreateWorkflowInput
    CreateWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id"))
    CreateWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    CreateWorkflowOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    CreateWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateWorkflowOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    CreateWorkflowOutput.add_member(:ads_application_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adsApplicationConfigurationId"))
    CreateWorkflowOutput.add_member(:workflow_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: StepInputParameters, name: "workflowInputs"))
    CreateWorkflowOutput.add_member(:step_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stepTargets"))
    CreateWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status"))
    CreateWorkflowOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    CreateWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    CreateWorkflowOutput.type = Types::CreateWorkflowOutput
    CreateWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupDescription, name: "description"))
    CreateWorkflowStepGroupInput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    CreateWorkflowStepGroupInput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    CreateWorkflowStepGroupInput.type = Types::CreateWorkflowStepGroupInput
    CreateWorkflowStepGroupOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowId"))
    CreateWorkflowStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    CreateWorkflowStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    CreateWorkflowStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateWorkflowStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsList, name: "tools"))
    CreateWorkflowStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    CreateWorkflowStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    CreateWorkflowStepGroupOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    CreateWorkflowStepGroupOutput.type = Types::CreateWorkflowStepGroupOutput
    CreateWorkflowStepInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:step_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepActionType, name: "stepActionType", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowDescription, name: "description"))
    CreateWorkflowStepInput.add_member(:workflow_step_automation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAutomationConfiguration, name: "workflowStepAutomationConfiguration"))
    CreateWorkflowStepInput.add_member(:step_target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stepTarget"))
    CreateWorkflowStepInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputList, name: "outputs"))
    CreateWorkflowStepInput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    CreateWorkflowStepInput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    CreateWorkflowStepInput.type = Types::CreateWorkflowStepInput
    CreateWorkflowStepOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    CreateWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stepGroupId"))
    CreateWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowId"))
    CreateWorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    CreateWorkflowStepOutput.type = Types::CreateWorkflowStepOutput
    DeleteTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateRequest.type = Types::DeleteTemplateRequest
    DeleteTemplateResponse.type = Types::DeleteTemplateResponse
    DeleteWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowInput.type = Types::DeleteWorkflowInput
    DeleteWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id"))
    DeleteWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    DeleteWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status"))
    DeleteWorkflowOutput.type = Types::DeleteWorkflowOutput
    DeleteWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    DeleteWorkflowStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowStepGroupInput.type = Types::DeleteWorkflowStepGroupInput
    DeleteWorkflowStepGroupOutput.type = Types::DeleteWorkflowStepGroupOutput
    DeleteWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    DeleteWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    DeleteWorkflowStepInput.type = Types::DeleteWorkflowStepInput
    DeleteWorkflowStepOutput.type = Types::DeleteWorkflowStepOutput
    GetTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateInput.type = Types::GetTemplateInput
    GetTemplateOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    GetTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateArn"))
    GetTemplateOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GetTemplateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetTemplateOutput.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateInputList, name: "inputs"))
    GetTemplateOutput.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsList, name: "tools"))
    GetTemplateOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    GetTemplateOutput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "owner"))
    GetTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStatus, name: "status"))
    GetTemplateOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    GetTemplateOutput.add_member(:template_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateClass"))
    GetTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    GetTemplateOutput.type = Types::GetTemplateOutput
    GetTemplateStepGroupInput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateStepGroupInput.type = Types::GetTemplateStepGroupInput
    GetTemplateStepGroupOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    GetTemplateStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    GetTemplateStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GetTemplateStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetTemplateStepGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupStatus, name: "status"))
    GetTemplateStepGroupOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    GetTemplateStepGroupOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime"))
    GetTemplateStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsList, name: "tools"))
    GetTemplateStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    GetTemplateStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    GetTemplateStepGroupOutput.type = Types::GetTemplateStepGroupOutput
    GetTemplateStepInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateStepInput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#httpQuery" => "templateId", "smithy.api#required" => {}}))
    GetTemplateStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    GetTemplateStepInput.type = Types::GetTemplateStepInput
    GetTemplateStepOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "id"))
    GetTemplateStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId"))
    GetTemplateStepOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId"))
    GetTemplateStepOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GetTemplateStepOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetTemplateStepOutput.add_member(:step_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepActionType, name: "stepActionType"))
    GetTemplateStepOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "creationTime"))
    GetTemplateStepOutput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    GetTemplateStepOutput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    GetTemplateStepOutput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: StepOutputList, name: "outputs"))
    GetTemplateStepOutput.add_member(:step_automation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAutomationConfiguration, name: "stepAutomationConfiguration"))
    GetTemplateStepOutput.type = Types::GetTemplateStepOutput
    GetWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowInput.type = Types::GetWorkflowInput
    GetWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id"))
    GetWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    GetWorkflowOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GetWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetWorkflowOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    GetWorkflowOutput.add_member(:ads_application_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adsApplicationConfigurationId"))
    GetWorkflowOutput.add_member(:ads_application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adsApplicationName"))
    GetWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status"))
    GetWorkflowOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    GetWorkflowOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    GetWorkflowOutput.add_member(:last_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastStartTime"))
    GetWorkflowOutput.add_member(:last_stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastStopTime"))
    GetWorkflowOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime"))
    GetWorkflowOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    GetWorkflowOutput.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsList, name: "tools"))
    GetWorkflowOutput.add_member(:total_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalSteps"))
    GetWorkflowOutput.add_member(:completed_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "completedSteps"))
    GetWorkflowOutput.add_member(:workflow_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: StepInputParameters, name: "workflowInputs"))
    GetWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    GetWorkflowOutput.add_member(:workflow_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowBucket"))
    GetWorkflowOutput.type = Types::GetWorkflowOutput
    GetWorkflowStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    GetWorkflowStepGroupInput.type = Types::GetWorkflowStepGroupInput
    GetWorkflowStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "id"))
    GetWorkflowStepGroupOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowId"))
    GetWorkflowStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GetWorkflowStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetWorkflowStepGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupStatus, name: "status"))
    GetWorkflowStepGroupOutput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "owner"))
    GetWorkflowStepGroupOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    GetWorkflowStepGroupOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime"))
    GetWorkflowStepGroupOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    GetWorkflowStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsList, name: "tools"))
    GetWorkflowStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    GetWorkflowStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    GetWorkflowStepGroupOutput.type = Types::GetWorkflowStepGroupOutput
    GetWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    GetWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    GetWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowStepInput.type = Types::GetWorkflowStepInput
    GetWorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GetWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stepGroupId"))
    GetWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowId"))
    GetWorkflowStepOutput.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stepId"))
    GetWorkflowStepOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetWorkflowStepOutput.add_member(:step_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepActionType, name: "stepActionType"))
    GetWorkflowStepOutput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "owner"))
    GetWorkflowStepOutput.add_member(:workflow_step_automation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAutomationConfiguration, name: "workflowStepAutomationConfiguration"))
    GetWorkflowStepOutput.add_member(:step_target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stepTarget"))
    GetWorkflowStepOutput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputList, name: "outputs", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}}))
    GetWorkflowStepOutput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    GetWorkflowStepOutput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    GetWorkflowStepOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "status"))
    GetWorkflowStepOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    GetWorkflowStepOutput.add_member(:script_output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scriptOutputLocation"))
    GetWorkflowStepOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    GetWorkflowStepOutput.add_member(:last_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastStartTime"))
    GetWorkflowStepOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    GetWorkflowStepOutput.add_member(:no_of_srv_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "noOfSrvCompleted"))
    GetWorkflowStepOutput.add_member(:no_of_srv_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "noOfSrvFailed"))
    GetWorkflowStepOutput.add_member(:total_no_of_srv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalNoOfSrv"))
    GetWorkflowStepOutput.type = Types::GetWorkflowStepOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListPluginsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListPluginsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPluginsInput.type = Types::ListPluginsInput
    ListPluginsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPluginsOutput.add_member(:plugins, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginSummaries, name: "plugins"))
    ListPluginsOutput.type = Types::ListPluginsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplateStepGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTemplateStepGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplateStepGroupsInput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateStepGroupsInput.type = Types::ListTemplateStepGroupsInput
    ListTemplateStepGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTemplateStepGroupsOutput.add_member(:template_step_group_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStepGroupSummaryList, name: "templateStepGroupSummary", traits: {"smithy.api#required" => {}}))
    ListTemplateStepGroupsOutput.type = Types::ListTemplateStepGroupsOutput
    ListTemplateStepsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTemplateStepsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplateStepsInput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#httpQuery" => "templateId", "smithy.api#required" => {}}))
    ListTemplateStepsInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    ListTemplateStepsInput.type = Types::ListTemplateStepsInput
    ListTemplateStepsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTemplateStepsOutput.add_member(:template_step_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStepSummaryList, name: "templateStepSummaryList"))
    ListTemplateStepsOutput.type = Types::ListTemplateStepsOutput
    ListTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplatesInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListTemplatesInput.type = Types::ListTemplatesInput
    ListTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTemplatesOutput.add_member(:template_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummaryList, name: "templateSummary", traits: {"smithy.api#required" => {}}))
    ListTemplatesOutput.type = Types::ListTemplatesOutput
    ListWorkflowStepGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowStepGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowStepGroupsInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    ListWorkflowStepGroupsInput.type = Types::ListWorkflowStepGroupsInput
    ListWorkflowStepGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWorkflowStepGroupsOutput.add_member(:workflow_step_groups_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepGroupsSummaryList, name: "workflowStepGroupsSummary", traits: {"smithy.api#required" => {}}))
    ListWorkflowStepGroupsOutput.type = Types::ListWorkflowStepGroupsOutput
    ListWorkflowStepsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowStepsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowStepsInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowStepsInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowStepsInput.type = Types::ListWorkflowStepsInput
    ListWorkflowStepsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWorkflowStepsOutput.add_member(:workflow_steps_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepsSummaryList, name: "workflowStepsSummary", traits: {"smithy.api#required" => {}}))
    ListWorkflowStepsOutput.type = Types::ListWorkflowStepsOutput
    ListWorkflowsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowsInput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#httpQuery" => "templateId"}))
    ListWorkflowsInput.add_member(:ads_application_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfigurationName, name: "adsApplicationConfigurationName", traits: {"smithy.api#httpQuery" => "adsApplicationConfigurationName"}))
    ListWorkflowsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListWorkflowsInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListWorkflowsInput.type = Types::ListWorkflowsInput
    ListWorkflowsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWorkflowsOutput.add_member(:migration_workflow_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowSummaryList, name: "migrationWorkflowSummary", traits: {"smithy.api#required" => {}}))
    ListWorkflowsOutput.type = Types::ListWorkflowsOutput
    MaxStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MaxStringValue, name: "member")
    MigrationWorkflowSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id"))
    MigrationWorkflowSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    MigrationWorkflowSummary.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    MigrationWorkflowSummary.add_member(:ads_application_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adsApplicationConfigurationName"))
    MigrationWorkflowSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status"))
    MigrationWorkflowSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    MigrationWorkflowSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    MigrationWorkflowSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    MigrationWorkflowSummary.add_member(:completed_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "completedSteps"))
    MigrationWorkflowSummary.add_member(:total_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalSteps"))
    MigrationWorkflowSummary.type = Types::MigrationWorkflowSummary
    MigrationWorkflowSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowSummary, name: "member")
    PlatformCommand.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "linux"))
    PlatformCommand.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "windows"))
    PlatformCommand.type = Types::PlatformCommand
    PlatformScriptKey.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "linux"))
    PlatformScriptKey.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "windows"))
    PlatformScriptKey.type = Types::PlatformScriptKey
    PluginSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PluginSummary, name: "member")
    PluginSummary.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, name: "pluginId"))
    PluginSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostname"))
    PluginSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginHealth, name: "status"))
    PluginSummary.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "ipAddress"))
    PluginSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginVersion, name: "version"))
    PluginSummary.add_member(:registered_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "registeredTime"))
    PluginSummary.type = Types::PluginSummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    RetryWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    RetryWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RetryWorkflowStepInput.type = Types::RetryWorkflowStepInput
    RetryWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stepGroupId"))
    RetryWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowId"))
    RetryWorkflowStepOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    RetryWorkflowStepOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "status"))
    RetryWorkflowStepOutput.type = Types::RetryWorkflowStepOutput
    StartWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartWorkflowInput.type = Types::StartWorkflowInput
    StartWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id"))
    StartWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    StartWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status"))
    StartWorkflowOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    StartWorkflowOutput.add_member(:last_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastStartTime"))
    StartWorkflowOutput.type = Types::StartWorkflowOutput
    StepAutomationConfiguration.add_member(:script_location_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scriptLocationS3Bucket"))
    StepAutomationConfiguration.add_member(:script_location_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformScriptKey, name: "scriptLocationS3Key"))
    StepAutomationConfiguration.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformCommand, name: "command"))
    StepAutomationConfiguration.add_member(:run_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RunEnvironment, name: "runEnvironment"))
    StepAutomationConfiguration.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "targetType"))
    StepAutomationConfiguration.type = Types::StepAutomationConfiguration
    StepInput.add_member(:integer_value, Types::StepInput::IntegerValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "integerValue"))
    StepInput.add_member(:string_value, Types::StepInput::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue, name: "stringValue"))
    StepInput.add_member(:list_of_strings_value, Types::StepInput::ListOfStringsValue, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "listOfStringsValue"))
    StepInput.add_member(:map_of_string_value, Types::StepInput::MapOfStringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "mapOfStringValue"))
    StepInput.add_member(:unknown, Types::StepInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StepInput.type = Types::StepInput
    StepInputParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: StepInputParametersKey, name: "key")
    StepInputParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StepInput, name: "value")
    StepOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    StepOutput.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataType, name: "dataType"))
    StepOutput.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required"))
    StepOutput.type = Types::StepOutput
    StepOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepOutput, name: "member")
    StopWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopWorkflowInput.type = Types::StopWorkflowInput
    StopWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id"))
    StopWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    StopWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status"))
    StopWorkflowOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    StopWorkflowOutput.add_member(:last_stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastStopTime"))
    StopWorkflowOutput.type = Types::StopWorkflowOutput
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringListMember, name: "member")
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapKey, name: "key")
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapValue, name: "value")
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateInput.add_member(:input_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateInputName, name: "inputName"))
    TemplateInput.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataType, name: "dataType"))
    TemplateInput.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required"))
    TemplateInput.type = Types::TemplateInput
    TemplateInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateInput, name: "member")
    TemplateSource.add_member(:workflow_id, Types::TemplateSource::WorkflowId, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId"))
    TemplateSource.add_member(:unknown, Types::TemplateSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TemplateSource.type = Types::TemplateSource
    TemplateStepGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    TemplateStepGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    TemplateStepGroupSummary.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    TemplateStepGroupSummary.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    TemplateStepGroupSummary.type = Types::TemplateStepGroupSummary
    TemplateStepGroupSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStepGroupSummary, name: "member")
    TemplateStepSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    TemplateStepSummary.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stepGroupId"))
    TemplateStepSummary.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    TemplateStepSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    TemplateStepSummary.add_member(:step_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepActionType, name: "stepActionType"))
    TemplateStepSummary.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "targetType"))
    TemplateStepSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "owner"))
    TemplateStepSummary.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    TemplateStepSummary.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    TemplateStepSummary.type = Types::TemplateStepSummary
    TemplateStepSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateStepSummary, name: "member")
    TemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    TemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    TemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    TemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummary, name: "member")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Tool.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    Tool.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    Tool.type = Types::Tool
    ToolsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tool, name: "member")
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9]*$"}))
    UpdateTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}, "smithy.api#pattern" => "^.*$"}))
    UpdateTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateTemplateRequest.type = Types::UpdateTemplateRequest
    UpdateTemplateResponse.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    UpdateTemplateResponse.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateArn"))
    UpdateTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    UpdateTemplateResponse.type = Types::UpdateTemplateResponse
    UpdateWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"}))
    UpdateWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+, ]*$"}))
    UpdateWorkflowInput.add_member(:input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StepInputParameters, name: "inputParameters"))
    UpdateWorkflowInput.add_member(:step_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stepTargets"))
    UpdateWorkflowInput.type = Types::UpdateWorkflowInput
    UpdateWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "id"))
    UpdateWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    UpdateWorkflowOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    UpdateWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateWorkflowOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateId"))
    UpdateWorkflowOutput.add_member(:ads_application_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adsApplicationConfigurationId"))
    UpdateWorkflowOutput.add_member(:workflow_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: StepInputParameters, name: "workflowInputs"))
    UpdateWorkflowOutput.add_member(:step_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stepTargets"))
    UpdateWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowStatusEnum, name: "status"))
    UpdateWorkflowOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    UpdateWorkflowOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime"))
    UpdateWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    UpdateWorkflowOutput.type = Types::UpdateWorkflowOutput
    UpdateWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    UpdateWorkflowStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowStepGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupName, name: "name"))
    UpdateWorkflowStepGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupDescription, name: "description"))
    UpdateWorkflowStepGroupInput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    UpdateWorkflowStepGroupInput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    UpdateWorkflowStepGroupInput.type = Types::UpdateWorkflowStepGroupInput
    UpdateWorkflowStepGroupOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowId"))
    UpdateWorkflowStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    UpdateWorkflowStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    UpdateWorkflowStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateWorkflowStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsList, name: "tools"))
    UpdateWorkflowStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    UpdateWorkflowStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    UpdateWorkflowStepGroupOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime"))
    UpdateWorkflowStepGroupOutput.type = Types::UpdateWorkflowStepGroupOutput
    UpdateWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupId, name: "stepGroupId", traits: {"smithy.api#required" => {}}))
    UpdateWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationWorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    UpdateWorkflowStepInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, name: "name"))
    UpdateWorkflowStepInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDescription, name: "description"))
    UpdateWorkflowStepInput.add_member(:step_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepActionType, name: "stepActionType"))
    UpdateWorkflowStepInput.add_member(:workflow_step_automation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAutomationConfiguration, name: "workflowStepAutomationConfiguration"))
    UpdateWorkflowStepInput.add_member(:step_target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stepTarget"))
    UpdateWorkflowStepInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputList, name: "outputs"))
    UpdateWorkflowStepInput.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    UpdateWorkflowStepInput.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    UpdateWorkflowStepInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "status"))
    UpdateWorkflowStepInput.type = Types::UpdateWorkflowStepInput
    UpdateWorkflowStepOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "id"))
    UpdateWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stepGroupId"))
    UpdateWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workflowId"))
    UpdateWorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    UpdateWorkflowStepOutput.type = Types::UpdateWorkflowStepOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WorkflowStepAutomationConfiguration.add_member(:script_location_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "scriptLocationS3Bucket"))
    WorkflowStepAutomationConfiguration.add_member(:script_location_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformScriptKey, name: "scriptLocationS3Key"))
    WorkflowStepAutomationConfiguration.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformCommand, name: "command"))
    WorkflowStepAutomationConfiguration.add_member(:run_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RunEnvironment, name: "runEnvironment"))
    WorkflowStepAutomationConfiguration.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "targetType"))
    WorkflowStepAutomationConfiguration.type = Types::WorkflowStepAutomationConfiguration
    WorkflowStepGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    WorkflowStepGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    WorkflowStepGroupSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "owner"))
    WorkflowStepGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepGroupStatus, name: "status"))
    WorkflowStepGroupSummary.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    WorkflowStepGroupSummary.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    WorkflowStepGroupSummary.type = Types::WorkflowStepGroupSummary
    WorkflowStepGroupsSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepGroupSummary, name: "member")
    WorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputName, name: "name"))
    WorkflowStepOutput.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataType, name: "dataType"))
    WorkflowStepOutput.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required"))
    WorkflowStepOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputUnion, name: "value"))
    WorkflowStepOutput.type = Types::WorkflowStepOutput
    WorkflowStepOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutput, name: "member")
    WorkflowStepOutputUnion.add_member(:integer_value, Types::WorkflowStepOutputUnion::IntegerValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "integerValue"))
    WorkflowStepOutputUnion.add_member(:string_value, Types::WorkflowStepOutputUnion::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxStringValue, name: "stringValue"))
    WorkflowStepOutputUnion.add_member(:list_of_string_value, Types::WorkflowStepOutputUnion::ListOfStringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxStringList, name: "listOfStringValue"))
    WorkflowStepOutputUnion.add_member(:unknown, Types::WorkflowStepOutputUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    WorkflowStepOutputUnion.type = Types::WorkflowStepOutputUnion
    WorkflowStepSummary.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stepId"))
    WorkflowStepSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    WorkflowStepSummary.add_member(:step_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepActionType, name: "stepActionType"))
    WorkflowStepSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "owner"))
    WorkflowStepSummary.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "previous"))
    WorkflowStepSummary.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "next"))
    WorkflowStepSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "status"))
    WorkflowStepSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    WorkflowStepSummary.add_member(:no_of_srv_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "noOfSrvCompleted"))
    WorkflowStepSummary.add_member(:no_of_srv_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "noOfSrvFailed"))
    WorkflowStepSummary.add_member(:total_no_of_srv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalNoOfSrv"))
    WorkflowStepSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    WorkflowStepSummary.add_member(:script_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scriptLocation"))
    WorkflowStepSummary.type = Types::WorkflowStepSummary
    WorkflowStepsSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepSummary, name: "member")

    AWSMigrationHubOrchestrator = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhuborchestrator#AWSMigrationHubOrchestrator"
      service.name = "AWSMigrationHubOrchestrator"
      service.version = "2021-08-28"
      service.traits = {"aws.api#service" => {"sdkId" => "MigrationHubOrchestrator", "arnNamespace" => "migrationhub-orchestrator", "endpointPrefix" => "migrationhub-orchestrator", "cloudTrailEventSource" => "migrationhub-orchestrator.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "migrationhub-orchestrator"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "AWS Migration Hub Orchestrator"}
      service.add_operation(:create_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateTemplate"
        operation.name = "CreateTemplate"
        operation.input = CreateTemplateRequest
        operation.output = CreateTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/template", "code" => 200}}
      end)
      service.add_operation(:create_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateWorkflow"
        operation.name = "CreateWorkflow"
        operation.input = CreateWorkflowInput
        operation.output = CreateWorkflowOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/", "code" => 200}}
      end)
      service.add_operation(:create_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateWorkflowStep"
        operation.name = "CreateWorkflowStep"
        operation.input = CreateWorkflowStepInput
        operation.output = CreateWorkflowStepOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflowstep", "code" => 200}}
      end)
      service.add_operation(:create_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateWorkflowStepGroup"
        operation.name = "CreateWorkflowStepGroup"
        operation.input = CreateWorkflowStepGroupInput
        operation.output = CreateWorkflowStepGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflowstepgroups", "code" => 200}}
      end)
      service.add_operation(:delete_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteTemplate"
        operation.name = "DeleteTemplate"
        operation.input = DeleteTemplateRequest
        operation.output = DeleteTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/template/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = DeleteWorkflowInput
        operation.output = DeleteWorkflowOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/migrationworkflow/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStep"
        operation.name = "DeleteWorkflowStep"
        operation.input = DeleteWorkflowStepInput
        operation.output = DeleteWorkflowStepOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflowstep/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStepGroup"
        operation.name = "DeleteWorkflowStepGroup"
        operation.input = DeleteWorkflowStepGroupInput
        operation.output = DeleteWorkflowStepGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflowstepgroup/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = GetTemplateInput
        operation.output = GetTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflowtemplate/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetTemplateStep"
        operation.name = "GetTemplateStep"
        operation.input = GetTemplateStepInput
        operation.output = GetTemplateStepOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templatestep/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetTemplateStepGroup"
        operation.name = "GetTemplateStepGroup"
        operation.input = GetTemplateStepGroupInput
        operation.output = GetTemplateStepGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/{templateId}/stepgroups/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = GetWorkflowInput
        operation.output = GetWorkflowOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflow/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetWorkflowStep"
        operation.name = "GetWorkflowStep"
        operation.input = GetWorkflowStepInput
        operation.output = GetWorkflowStepOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflowstep/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetWorkflowStepGroup"
        operation.name = "GetWorkflowStepGroup"
        operation.input = GetWorkflowStepGroupInput
        operation.output = GetWorkflowStepGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflowstepgroup/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_plugins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListPlugins"
        operation.name = "ListPlugins"
        operation.input = ListPluginsInput
        operation.output = ListPluginsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/plugins", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlugins.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_template_step_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTemplateStepGroups"
        operation.name = "ListTemplateStepGroups"
        operation.input = ListTemplateStepGroupsInput
        operation.output = ListTemplateStepGroupsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templatestepgroups/{templateId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateStepGroups.new
      end)
      service.add_operation(:list_template_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTemplateSteps"
        operation.name = "ListTemplateSteps"
        operation.input = ListTemplateStepsInput
        operation.output = ListTemplateStepsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templatesteps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateSteps.new
      end)
      service.add_operation(:list_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = ListTemplatesInput
        operation.output = ListTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflowtemplates", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplates.new
      end)
      service.add_operation(:list_workflow_step_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListWorkflowStepGroups"
        operation.name = "ListWorkflowStepGroups"
        operation.input = ListWorkflowStepGroupsInput
        operation.output = ListWorkflowStepGroupsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflowstepgroups", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowStepGroups.new
      end)
      service.add_operation(:list_workflow_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListWorkflowSteps"
        operation.name = "ListWorkflowSteps"
        operation.input = ListWorkflowStepsInput
        operation.output = ListWorkflowStepsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{workflowId}/workflowstepgroups/{stepGroupId}/workflowsteps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowSteps.new
      end)
      service.add_operation(:list_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = ListWorkflowsInput
        operation.output = ListWorkflowsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflows", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:retry_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#RetryWorkflowStep"
        operation.name = "RetryWorkflowStep"
        operation.input = RetryWorkflowStepInput
        operation.output = RetryWorkflowStepOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/retryworkflowstep/{id}", "code" => 200}}
      end)
      service.add_operation(:start_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#StartWorkflow"
        operation.name = "StartWorkflow"
        operation.input = StartWorkflowInput
        operation.output = StartWorkflowOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/{id}/start", "code" => 200}}
      end)
      service.add_operation(:stop_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#StopWorkflow"
        operation.name = "StopWorkflow"
        operation.input = StopWorkflowInput
        operation.output = StopWorkflowOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/{id}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateTemplate"
        operation.name = "UpdateTemplate"
        operation.input = UpdateTemplateRequest
        operation.output = UpdateTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/template/{id}", "code" => 200}}
      end)
      service.add_operation(:update_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateWorkflow"
        operation.name = "UpdateWorkflow"
        operation.input = UpdateWorkflowInput
        operation.output = UpdateWorkflowOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/{id}", "code" => 200}}
      end)
      service.add_operation(:update_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStep"
        operation.name = "UpdateWorkflowStep"
        operation.input = UpdateWorkflowStepInput
        operation.output = UpdateWorkflowStepOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflowstep/{id}", "code" => 200}}
      end)
      service.add_operation(:update_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStepGroup"
        operation.name = "UpdateWorkflowStepGroup"
        operation.input = UpdateWorkflowStepGroupInput
        operation.output = UpdateWorkflowStepGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflowstepgroup/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
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
