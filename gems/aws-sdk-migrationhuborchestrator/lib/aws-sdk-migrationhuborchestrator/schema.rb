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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9]*$", "smithy.api#required" => {}}))
    CreateTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}, "smithy.api#pattern" => "^.*$"}))
    CreateTemplateRequest.add_member(:template_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSource, location_name: "templateSource", traits: {"smithy.api#required" => {}}))
    CreateTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTemplateRequest.type = Types::CreateTemplateRequest
    CreateTemplateResponse.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    CreateTemplateResponse.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateArn"))
    CreateTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    CreateTemplateResponse.type = Types::CreateTemplateResponse
    CreateWorkflowInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$", "smithy.api#required" => {}}))
    CreateWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+, ]*$"}))
    CreateWorkflowInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$", "smithy.api#required" => {}}))
    CreateWorkflowInput.add_member(:application_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "applicationConfigurationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]*$"}))
    CreateWorkflowInput.add_member(:input_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "inputParameters", traits: {"smithy.api#required" => {}}))
    CreateWorkflowInput.add_member(:step_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    CreateWorkflowInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    CreateWorkflowInput.type = Types::CreateWorkflowInput
    CreateWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    CreateWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    CreateWorkflowOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    CreateWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    CreateWorkflowOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    CreateWorkflowOutput.add_member(:ads_application_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adsApplicationConfigurationId"))
    CreateWorkflowOutput.add_member(:workflow_inputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "workflowInputs"))
    CreateWorkflowOutput.add_member(:step_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    CreateWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    CreateWorkflowOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    CreateWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    CreateWorkflowOutput.type = Types::CreateWorkflowOutput
    CreateWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepGroupInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepGroupInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupDescription, location_name: "description"))
    CreateWorkflowStepGroupInput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    CreateWorkflowStepGroupInput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    CreateWorkflowStepGroupInput.type = Types::CreateWorkflowStepGroupInput
    CreateWorkflowStepGroupOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowId"))
    CreateWorkflowStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    CreateWorkflowStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    CreateWorkflowStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    CreateWorkflowStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    CreateWorkflowStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    CreateWorkflowStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    CreateWorkflowStepGroupOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    CreateWorkflowStepGroupOutput.type = Types::CreateWorkflowStepGroupOutput
    CreateWorkflowStepInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:step_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType", traits: {"smithy.api#required" => {}}))
    CreateWorkflowStepInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowDescription, location_name: "description"))
    CreateWorkflowStepInput.add_member(:workflow_step_automation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepAutomationConfiguration, location_name: "workflowStepAutomationConfiguration"))
    CreateWorkflowStepInput.add_member(:step_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "stepTarget"))
    CreateWorkflowStepInput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepOutputList, location_name: "outputs"))
    CreateWorkflowStepInput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    CreateWorkflowStepInput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    CreateWorkflowStepInput.type = Types::CreateWorkflowStepInput
    CreateWorkflowStepOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    CreateWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stepGroupId"))
    CreateWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowId"))
    CreateWorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    CreateWorkflowStepOutput.type = Types::CreateWorkflowStepOutput
    DeleteTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateRequest.type = Types::DeleteTemplateRequest
    DeleteTemplateResponse.type = Types::DeleteTemplateResponse
    DeleteWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowInput.type = Types::DeleteWorkflowInput
    DeleteWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    DeleteWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    DeleteWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    DeleteWorkflowOutput.type = Types::DeleteWorkflowOutput
    DeleteWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    DeleteWorkflowStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowStepGroupInput.type = Types::DeleteWorkflowStepGroupInput
    DeleteWorkflowStepGroupOutput.type = Types::DeleteWorkflowStepGroupOutput
    DeleteWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    DeleteWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    DeleteWorkflowStepInput.type = Types::DeleteWorkflowStepInput
    DeleteWorkflowStepOutput.type = Types::DeleteWorkflowStepOutput
    GetTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateInput.type = Types::GetTemplateInput
    GetTemplateOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    GetTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateArn"))
    GetTemplateOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    GetTemplateOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetTemplateOutput.add_member(:inputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateInputList, location_name: "inputs"))
    GetTemplateOutput.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetTemplateOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    GetTemplateOutput.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "owner"))
    GetTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus, location_name: "status"))
    GetTemplateOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    GetTemplateOutput.add_member(:template_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateClass"))
    GetTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    GetTemplateOutput.type = Types::GetTemplateOutput
    GetTemplateStepGroupInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "templateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateStepGroupInput.type = Types::GetTemplateStepGroupInput
    GetTemplateStepGroupOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    GetTemplateStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    GetTemplateStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    GetTemplateStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetTemplateStepGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupStatus, location_name: "status"))
    GetTemplateStepGroupOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    GetTemplateStepGroupOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime"))
    GetTemplateStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetTemplateStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetTemplateStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetTemplateStepGroupOutput.type = Types::GetTemplateStepGroupOutput
    GetTemplateStepInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateStepInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "templateId", traits: {"smithy.api#httpQuery" => "templateId", "smithy.api#required" => {}}))
    GetTemplateStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    GetTemplateStepInput.type = Types::GetTemplateStepInput
    GetTemplateStepOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: "id"))
    GetTemplateStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId"))
    GetTemplateStepOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "templateId"))
    GetTemplateStepOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    GetTemplateStepOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetTemplateStepOutput.add_member(:step_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    GetTemplateStepOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "creationTime"))
    GetTemplateStepOutput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetTemplateStepOutput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetTemplateStepOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepOutputList, location_name: "outputs"))
    GetTemplateStepOutput.add_member(:step_automation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepAutomationConfiguration, location_name: "stepAutomationConfiguration"))
    GetTemplateStepOutput.type = Types::GetTemplateStepOutput
    GetWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowInput.type = Types::GetWorkflowInput
    GetWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    GetWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    GetWorkflowOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    GetWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetWorkflowOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    GetWorkflowOutput.add_member(:ads_application_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adsApplicationConfigurationId"))
    GetWorkflowOutput.add_member(:ads_application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adsApplicationName"))
    GetWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    GetWorkflowOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    GetWorkflowOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    GetWorkflowOutput.add_member(:last_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastStartTime"))
    GetWorkflowOutput.add_member(:last_stop_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastStopTime"))
    GetWorkflowOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime"))
    GetWorkflowOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime"))
    GetWorkflowOutput.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetWorkflowOutput.add_member(:total_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalSteps"))
    GetWorkflowOutput.add_member(:completed_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "completedSteps"))
    GetWorkflowOutput.add_member(:workflow_inputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "workflowInputs"))
    GetWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    GetWorkflowOutput.add_member(:workflow_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowBucket"))
    GetWorkflowOutput.type = Types::GetWorkflowOutput
    GetWorkflowStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    GetWorkflowStepGroupInput.type = Types::GetWorkflowStepGroupInput
    GetWorkflowStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "id"))
    GetWorkflowStepGroupOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowId"))
    GetWorkflowStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    GetWorkflowStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetWorkflowStepGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupStatus, location_name: "status"))
    GetWorkflowStepGroupOutput.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    GetWorkflowStepGroupOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    GetWorkflowStepGroupOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime"))
    GetWorkflowStepGroupOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime"))
    GetWorkflowStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetWorkflowStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetWorkflowStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetWorkflowStepGroupOutput.type = Types::GetWorkflowStepGroupOutput
    GetWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    GetWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    GetWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowStepInput.type = Types::GetWorkflowStepInput
    GetWorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    GetWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stepGroupId"))
    GetWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowId"))
    GetWorkflowStepOutput.add_member(:step_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stepId"))
    GetWorkflowStepOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetWorkflowStepOutput.add_member(:step_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    GetWorkflowStepOutput.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    GetWorkflowStepOutput.add_member(:workflow_step_automation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepAutomationConfiguration, location_name: "workflowStepAutomationConfiguration"))
    GetWorkflowStepOutput.add_member(:step_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "stepTarget"))
    GetWorkflowStepOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepOutputList, location_name: "outputs", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}}))
    GetWorkflowStepOutput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetWorkflowStepOutput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetWorkflowStepOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    GetWorkflowStepOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    GetWorkflowStepOutput.add_member(:script_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scriptOutputLocation"))
    GetWorkflowStepOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    GetWorkflowStepOutput.add_member(:last_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastStartTime"))
    GetWorkflowStepOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime"))
    GetWorkflowStepOutput.add_member(:no_of_srv_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "noOfSrvCompleted"))
    GetWorkflowStepOutput.add_member(:no_of_srv_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "noOfSrvFailed"))
    GetWorkflowStepOutput.add_member(:total_no_of_srv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalNoOfSrv"))
    GetWorkflowStepOutput.type = Types::GetWorkflowStepOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListPluginsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListPluginsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPluginsInput.type = Types::ListPluginsInput
    ListPluginsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPluginsOutput.add_member(:plugins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginSummaries, location_name: "plugins"))
    ListPluginsOutput.type = Types::ListPluginsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplateStepGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTemplateStepGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplateStepGroupsInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "templateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateStepGroupsInput.type = Types::ListTemplateStepGroupsInput
    ListTemplateStepGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplateStepGroupsOutput.add_member(:template_step_group_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStepGroupSummaryList, location_name: "templateStepGroupSummary", traits: {"smithy.api#required" => {}}))
    ListTemplateStepGroupsOutput.type = Types::ListTemplateStepGroupsOutput
    ListTemplateStepsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTemplateStepsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplateStepsInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "templateId", traits: {"smithy.api#httpQuery" => "templateId", "smithy.api#required" => {}}))
    ListTemplateStepsInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    ListTemplateStepsInput.type = Types::ListTemplateStepsInput
    ListTemplateStepsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplateStepsOutput.add_member(:template_step_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStepSummaryList, location_name: "templateStepSummaryList"))
    ListTemplateStepsOutput.type = Types::ListTemplateStepsOutput
    ListTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplatesInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListTemplatesInput.type = Types::ListTemplatesInput
    ListTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplatesOutput.add_member(:template_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummaryList, location_name: "templateSummary", traits: {"smithy.api#required" => {}}))
    ListTemplatesOutput.type = Types::ListTemplatesOutput
    ListWorkflowStepGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowStepGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowStepGroupsInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    ListWorkflowStepGroupsInput.type = Types::ListWorkflowStepGroupsInput
    ListWorkflowStepGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkflowStepGroupsOutput.add_member(:workflow_step_groups_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepGroupsSummaryList, location_name: "workflowStepGroupsSummary", traits: {"smithy.api#required" => {}}))
    ListWorkflowStepGroupsOutput.type = Types::ListWorkflowStepGroupsOutput
    ListWorkflowStepsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowStepsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowStepsInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowStepsInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowStepsInput.type = Types::ListWorkflowStepsInput
    ListWorkflowStepsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkflowStepsOutput.add_member(:workflow_steps_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepsSummaryList, location_name: "workflowStepsSummary", traits: {"smithy.api#required" => {}}))
    ListWorkflowStepsOutput.type = Types::ListWorkflowStepsOutput
    ListWorkflowsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowsInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "templateId", traits: {"smithy.api#httpQuery" => "templateId"}))
    ListWorkflowsInput.add_member(:ads_application_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationConfigurationName, location_name: "adsApplicationConfigurationName", traits: {"smithy.api#httpQuery" => "adsApplicationConfigurationName"}))
    ListWorkflowsInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListWorkflowsInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListWorkflowsInput.type = Types::ListWorkflowsInput
    ListWorkflowsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkflowsOutput.add_member(:migration_workflow_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowSummaryList, location_name: "migrationWorkflowSummary", traits: {"smithy.api#required" => {}}))
    ListWorkflowsOutput.type = Types::ListWorkflowsOutput
    MaxStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStringValue)
    MigrationWorkflowSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    MigrationWorkflowSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    MigrationWorkflowSummary.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    MigrationWorkflowSummary.add_member(:ads_application_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adsApplicationConfigurationName"))
    MigrationWorkflowSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    MigrationWorkflowSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    MigrationWorkflowSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime"))
    MigrationWorkflowSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    MigrationWorkflowSummary.add_member(:completed_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "completedSteps"))
    MigrationWorkflowSummary.add_member(:total_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalSteps"))
    MigrationWorkflowSummary.type = Types::MigrationWorkflowSummary
    MigrationWorkflowSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowSummary)
    PlatformCommand.add_member(:linux, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "linux"))
    PlatformCommand.add_member(:windows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "windows"))
    PlatformCommand.type = Types::PlatformCommand
    PlatformScriptKey.add_member(:linux, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: "linux"))
    PlatformScriptKey.add_member(:windows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: "windows"))
    PlatformScriptKey.type = Types::PlatformScriptKey
    PluginSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginSummary)
    PluginSummary.add_member(:plugin_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    PluginSummary.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname"))
    PluginSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginHealth, location_name: "status"))
    PluginSummary.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: "ipAddress"))
    PluginSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginVersion, location_name: "version"))
    PluginSummary.add_member(:registered_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "registeredTime"))
    PluginSummary.type = Types::PluginSummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    RetryWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#httpQuery" => "stepGroupId", "smithy.api#required" => {}}))
    RetryWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RetryWorkflowStepInput.type = Types::RetryWorkflowStepInput
    RetryWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stepGroupId"))
    RetryWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowId"))
    RetryWorkflowStepOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    RetryWorkflowStepOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    RetryWorkflowStepOutput.type = Types::RetryWorkflowStepOutput
    StartWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartWorkflowInput.type = Types::StartWorkflowInput
    StartWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    StartWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    StartWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    StartWorkflowOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    StartWorkflowOutput.add_member(:last_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastStartTime"))
    StartWorkflowOutput.type = Types::StartWorkflowOutput
    StepAutomationConfiguration.add_member(:script_location_s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scriptLocationS3Bucket"))
    StepAutomationConfiguration.add_member(:script_location_s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformScriptKey, location_name: "scriptLocationS3Key"))
    StepAutomationConfiguration.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCommand, location_name: "command"))
    StepAutomationConfiguration.add_member(:run_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunEnvironment, location_name: "runEnvironment"))
    StepAutomationConfiguration.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    StepAutomationConfiguration.type = Types::StepAutomationConfiguration
    StepInput.add_member(:integer_value, Types::StepInput::IntegerValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "integerValue"))
    StepInput.add_member(:string_value, Types::StepInput::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue, location_name: "stringValue"))
    StepInput.add_member(:list_of_strings_value, Types::StepInput::ListOfStringsValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "listOfStringsValue"))
    StepInput.add_member(:map_of_string_value, Types::StepInput::MapOfStringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "mapOfStringValue"))
    StepInput.add_member(:unknown, Types::StepInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    StepInput.type = Types::StepInput
    StepInputParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepInputParametersKey)
    StepInputParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepInput)
    StepOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    StepOutput.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    StepOutput.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "required"))
    StepOutput.type = Types::StepOutput
    StepOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepOutput)
    StopWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopWorkflowInput.type = Types::StopWorkflowInput
    StopWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    StopWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    StopWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    StopWorkflowOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    StopWorkflowOutput.add_member(:last_stop_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastStopTime"))
    StopWorkflowOutput.type = Types::StopWorkflowOutput
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListMember)
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapKey)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapValue)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateInput.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateInputName, location_name: "inputName"))
    TemplateInput.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    TemplateInput.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "required"))
    TemplateInput.type = Types::TemplateInput
    TemplateInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateInput)
    TemplateSource.add_member(:workflow_id, Types::TemplateSource::WorkflowId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId"))
    TemplateSource.add_member(:unknown, Types::TemplateSource::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TemplateSource.type = Types::TemplateSource
    TemplateStepGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    TemplateStepGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    TemplateStepGroupSummary.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    TemplateStepGroupSummary.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    TemplateStepGroupSummary.type = Types::TemplateStepGroupSummary
    TemplateStepGroupSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStepGroupSummary)
    TemplateStepSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    TemplateStepSummary.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stepGroupId"))
    TemplateStepSummary.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    TemplateStepSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    TemplateStepSummary.add_member(:step_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    TemplateStepSummary.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    TemplateStepSummary.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    TemplateStepSummary.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    TemplateStepSummary.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    TemplateStepSummary.type = Types::TemplateStepSummary
    TemplateStepSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStepSummary)
    TemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    TemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    TemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    TemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummary)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Tool.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    Tool.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "url"))
    Tool.type = Types::Tool
    ToolsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tool)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9]*$"}))
    UpdateTemplateRequest.add_member(:template_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}, "smithy.api#pattern" => "^.*$"}))
    UpdateTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateTemplateRequest.type = Types::UpdateTemplateRequest
    UpdateTemplateResponse.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    UpdateTemplateResponse.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateArn"))
    UpdateTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    UpdateTemplateResponse.type = Types::UpdateTemplateResponse
    UpdateWorkflowInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+]+[-a-zA-Z0-9_.+ ]*$"}))
    UpdateWorkflowInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.+, ]*$"}))
    UpdateWorkflowInput.add_member(:input_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "inputParameters"))
    UpdateWorkflowInput.add_member(:step_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    UpdateWorkflowInput.type = Types::UpdateWorkflowInput
    UpdateWorkflowOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    UpdateWorkflowOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    UpdateWorkflowOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    UpdateWorkflowOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    UpdateWorkflowOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateId"))
    UpdateWorkflowOutput.add_member(:ads_application_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adsApplicationConfigurationId"))
    UpdateWorkflowOutput.add_member(:workflow_inputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "workflowInputs"))
    UpdateWorkflowOutput.add_member(:step_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    UpdateWorkflowOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    UpdateWorkflowOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime"))
    UpdateWorkflowOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime"))
    UpdateWorkflowOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    UpdateWorkflowOutput.type = Types::UpdateWorkflowOutput
    UpdateWorkflowStepGroupInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    UpdateWorkflowStepGroupInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowStepGroupInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupName, location_name: "name"))
    UpdateWorkflowStepGroupInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupDescription, location_name: "description"))
    UpdateWorkflowStepGroupInput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    UpdateWorkflowStepGroupInput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    UpdateWorkflowStepGroupInput.type = Types::UpdateWorkflowStepGroupInput
    UpdateWorkflowStepGroupOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowId"))
    UpdateWorkflowStepGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    UpdateWorkflowStepGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    UpdateWorkflowStepGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    UpdateWorkflowStepGroupOutput.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    UpdateWorkflowStepGroupOutput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    UpdateWorkflowStepGroupOutput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    UpdateWorkflowStepGroupOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime"))
    UpdateWorkflowStepGroupOutput.type = Types::UpdateWorkflowStepGroupOutput
    UpdateWorkflowStepInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowStepInput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId", traits: {"smithy.api#required" => {}}))
    UpdateWorkflowStepInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "workflowId", traits: {"smithy.api#required" => {}}))
    UpdateWorkflowStepInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: "name"))
    UpdateWorkflowStepInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepDescription, location_name: "description"))
    UpdateWorkflowStepInput.add_member(:step_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    UpdateWorkflowStepInput.add_member(:workflow_step_automation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepAutomationConfiguration, location_name: "workflowStepAutomationConfiguration"))
    UpdateWorkflowStepInput.add_member(:step_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "stepTarget"))
    UpdateWorkflowStepInput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepOutputList, location_name: "outputs"))
    UpdateWorkflowStepInput.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    UpdateWorkflowStepInput.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    UpdateWorkflowStepInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    UpdateWorkflowStepInput.type = Types::UpdateWorkflowStepInput
    UpdateWorkflowStepOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: "id"))
    UpdateWorkflowStepOutput.add_member(:step_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stepGroupId"))
    UpdateWorkflowStepOutput.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "workflowId"))
    UpdateWorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    UpdateWorkflowStepOutput.type = Types::UpdateWorkflowStepOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WorkflowStepAutomationConfiguration.add_member(:script_location_s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "scriptLocationS3Bucket"))
    WorkflowStepAutomationConfiguration.add_member(:script_location_s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformScriptKey, location_name: "scriptLocationS3Key"))
    WorkflowStepAutomationConfiguration.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCommand, location_name: "command"))
    WorkflowStepAutomationConfiguration.add_member(:run_environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunEnvironment, location_name: "runEnvironment"))
    WorkflowStepAutomationConfiguration.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    WorkflowStepAutomationConfiguration.type = Types::WorkflowStepAutomationConfiguration
    WorkflowStepGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    WorkflowStepGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    WorkflowStepGroupSummary.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    WorkflowStepGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepGroupStatus, location_name: "status"))
    WorkflowStepGroupSummary.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    WorkflowStepGroupSummary.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    WorkflowStepGroupSummary.type = Types::WorkflowStepGroupSummary
    WorkflowStepGroupsSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepGroupSummary)
    WorkflowStepOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepOutputName, location_name: "name"))
    WorkflowStepOutput.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    WorkflowStepOutput.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "required"))
    WorkflowStepOutput.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepOutputUnion, location_name: "value"))
    WorkflowStepOutput.type = Types::WorkflowStepOutput
    WorkflowStepOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepOutput)
    WorkflowStepOutputUnion.add_member(:integer_value, Types::WorkflowStepOutputUnion::IntegerValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "integerValue"))
    WorkflowStepOutputUnion.add_member(:string_value, Types::WorkflowStepOutputUnion::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStringValue, location_name: "stringValue"))
    WorkflowStepOutputUnion.add_member(:list_of_string_value, Types::WorkflowStepOutputUnion::ListOfStringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStringList, location_name: "listOfStringValue"))
    WorkflowStepOutputUnion.add_member(:unknown, Types::WorkflowStepOutputUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    WorkflowStepOutputUnion.type = Types::WorkflowStepOutputUnion
    WorkflowStepSummary.add_member(:step_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stepId"))
    WorkflowStepSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    WorkflowStepSummary.add_member(:step_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    WorkflowStepSummary.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    WorkflowStepSummary.add_member(:previous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    WorkflowStepSummary.add_member(:next, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    WorkflowStepSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    WorkflowStepSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    WorkflowStepSummary.add_member(:no_of_srv_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "noOfSrvCompleted"))
    WorkflowStepSummary.add_member(:no_of_srv_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "noOfSrvFailed"))
    WorkflowStepSummary.add_member(:total_no_of_srv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalNoOfSrv"))
    WorkflowStepSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    WorkflowStepSummary.add_member(:script_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scriptLocation"))
    WorkflowStepSummary.type = Types::WorkflowStepSummary
    WorkflowStepsSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepSummary)

    AWSMigrationHubOrchestrator = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhuborchestrator#AWSMigrationHubOrchestrator"
      service.name = "AWSMigrationHubOrchestrator"
      service.version = "2021-08-28"
      service.traits = {"aws.api#service" => {"sdkId" => "MigrationHubOrchestrator", "arnNamespace" => "migrationhub-orchestrator", "endpointPrefix" => "migrationhub-orchestrator", "cloudTrailEventSource" => "migrationhub-orchestrator.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "migrationhub-orchestrator"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "AWS Migration Hub Orchestrator"}
      service.add_operation(:create_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateTemplate"
        operation.name = "CreateTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/template", "code" => 200}}
      end)
      service.add_operation(:create_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateWorkflow"
        operation.name = "CreateWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/", "code" => 200}}
      end)
      service.add_operation(:create_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateWorkflowStep"
        operation.name = "CreateWorkflowStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowStepInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowStepOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflowstep", "code" => 200}}
      end)
      service.add_operation(:create_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#CreateWorkflowStepGroup"
        operation.name = "CreateWorkflowStepGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowStepGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowStepGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflowstepgroups", "code" => 200}}
      end)
      service.add_operation(:delete_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteTemplate"
        operation.name = "DeleteTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/template/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/migrationworkflow/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStep"
        operation.name = "DeleteWorkflowStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowStepInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowStepOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflowstep/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#DeleteWorkflowStepGroup"
        operation.name = "DeleteWorkflowStepGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowStepGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowStepGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflowstepgroup/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflowtemplate/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetTemplateStep"
        operation.name = "GetTemplateStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateStepInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateStepOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templatestep/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetTemplateStepGroup"
        operation.name = "GetTemplateStepGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateStepGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateStepGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/{templateId}/stepgroups/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflow/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetWorkflowStep"
        operation.name = "GetWorkflowStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowStepInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowStepOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflowstep/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#GetWorkflowStepGroup"
        operation.name = "GetWorkflowStepGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowStepGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowStepGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflowstepgroup/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_plugins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListPlugins"
        operation.name = "ListPlugins"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/plugins", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlugins.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_template_step_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTemplateStepGroups"
        operation.name = "ListTemplateStepGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateStepGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateStepGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templatestepgroups/{templateId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateStepGroups.new
      end)
      service.add_operation(:list_template_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTemplateSteps"
        operation.name = "ListTemplateSteps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateStepsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateStepsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templatesteps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateSteps.new
      end)
      service.add_operation(:list_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflowtemplates", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplates.new
      end)
      service.add_operation(:list_workflow_step_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListWorkflowStepGroups"
        operation.name = "ListWorkflowStepGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowStepGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowStepGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflowstepgroups", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowStepGroups.new
      end)
      service.add_operation(:list_workflow_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListWorkflowSteps"
        operation.name = "ListWorkflowSteps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowStepsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowStepsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{workflowId}/workflowstepgroups/{stepGroupId}/workflowsteps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowSteps.new
      end)
      service.add_operation(:list_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/migrationworkflows", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:retry_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#RetryWorkflowStep"
        operation.name = "RetryWorkflowStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryWorkflowStepInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryWorkflowStepOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/retryworkflowstep/{id}", "code" => 200}}
      end)
      service.add_operation(:start_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#StartWorkflow"
        operation.name = "StartWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/{id}/start", "code" => 200}}
      end)
      service.add_operation(:stop_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#StopWorkflow"
        operation.name = "StopWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/{id}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateTemplate"
        operation.name = "UpdateTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/template/{id}", "code" => 200}}
      end)
      service.add_operation(:update_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateWorkflow"
        operation.name = "UpdateWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/migrationworkflow/{id}", "code" => 200}}
      end)
      service.add_operation(:update_workflow_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStep"
        operation.name = "UpdateWorkflowStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowStepInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowStepOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflowstep/{id}", "code" => 200}}
      end)
      service.add_operation(:update_workflow_step_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhuborchestrator#UpdateWorkflowStepGroup"
        operation.name = "UpdateWorkflowStepGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowStepGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowStepGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
