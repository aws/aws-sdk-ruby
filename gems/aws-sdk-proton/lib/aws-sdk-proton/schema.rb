# frozen_string_literal: true

# This is generated code!

module Aws::Proton
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptEnvironmentAccountConnectionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AcceptEnvironmentAccountConnectionOperationInput', name: 'AcceptEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    AcceptEnvironmentAccountConnectionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AcceptEnvironmentAccountConnectionOperationOutput', name: 'AcceptEnvironmentAccountConnectionOperationOutput')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AccountSettings', name: 'AccountSettings')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):[a-zA-Z0-9-]+:[a-zA-Z0-9-]*:\\d{12}:([\\w+=,.@-]+[/:])*[\\w+=,.@-]+$"})
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    BlockerStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#BlockerStatus', name: 'BlockerStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "RESOLVED", "name" => "RESOLVED"}]})
    BlockerType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#BlockerType', name: 'BlockerType', traits: {"smithy.api#enum" => [{"value" => "AUTOMATED", "name" => "AUTOMATED"}]})
    CancelComponentDeploymentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelComponentDeploymentOperationInput', name: 'CancelComponentDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource", "ids" => {"name" => "componentName"}}]})
    CancelComponentDeploymentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelComponentDeploymentOperationOutput', name: 'CancelComponentDeploymentOperationOutput')
    CancelEnvironmentDeploymentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelEnvironmentDeploymentOperationInput', name: 'CancelEnvironmentDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource", "ids" => {"name" => "environmentName"}}]})
    CancelEnvironmentDeploymentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelEnvironmentDeploymentOperationOutput', name: 'CancelEnvironmentDeploymentOperationOutput')
    CancelServiceInstanceDeploymentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServiceInstanceDeploymentOperationInput', name: 'CancelServiceInstanceDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceInstanceResource", "ids" => {"name" => "serviceInstanceName", "serviceName" => "serviceName"}}]})
    CancelServiceInstanceDeploymentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServiceInstanceDeploymentOperationOutput', name: 'CancelServiceInstanceDeploymentOperationOutput')
    CancelServicePipelineDeploymentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServicePipelineDeploymentOperationInput', name: 'CancelServicePipelineDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource", "ids" => {"name" => "serviceName"}}]})
    CancelServicePipelineDeploymentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServicePipelineDeploymentOperationOutput', name: 'CancelServicePipelineDeploymentOperationOutput')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[!-~]*$"})
    CompatibleEnvironmentTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplate', name: 'CompatibleEnvironmentTemplate')
    CompatibleEnvironmentTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplateInput', name: 'CompatibleEnvironmentTemplateInput')
    CompatibleEnvironmentTemplateInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplateInputList', name: 'CompatibleEnvironmentTemplateInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CompatibleEnvironmentTemplateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplateList', name: 'CompatibleEnvironmentTemplateList')
    Component = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Component', name: 'Component')
    ComponentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ComponentArn', name: 'ComponentArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ComponentResource"}})
    ComponentDeploymentIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ComponentDeploymentIdList', name: 'ComponentDeploymentIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ComponentDeploymentUpdateType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ComponentDeploymentUpdateType', name: 'ComponentDeploymentUpdateType', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "CURRENT_VERSION", "name" => "CURRENT_VERSION"}]})
    ComponentState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ComponentState', name: 'ComponentState')
    ComponentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ComponentSummary', name: 'ComponentSummary')
    ComponentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ComponentSummaryList', name: 'ComponentSummaryList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CountsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CountsSummary', name: 'CountsSummary')
    CreateComponentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateComponentOperationInput', name: 'CreateComponentOperationInput')
    CreateComponentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateComponentOperationOutput', name: 'CreateComponentOperationOutput')
    CreateEnvironmentAccountConnectionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentAccountConnectionOperationInput', name: 'CreateEnvironmentAccountConnectionOperationInput')
    CreateEnvironmentAccountConnectionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentAccountConnectionOperationOutput', name: 'CreateEnvironmentAccountConnectionOperationOutput')
    CreateEnvironmentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentOperationInput', name: 'CreateEnvironmentOperationInput')
    CreateEnvironmentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentOperationOutput', name: 'CreateEnvironmentOperationOutput')
    CreateEnvironmentTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateOperationInput', name: 'CreateEnvironmentTemplateOperationInput')
    CreateEnvironmentTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateOperationOutput', name: 'CreateEnvironmentTemplateOperationOutput')
    CreateEnvironmentTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateVersionOperationInput', name: 'CreateEnvironmentTemplateVersionOperationInput')
    CreateEnvironmentTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateVersionOperationOutput', name: 'CreateEnvironmentTemplateVersionOperationOutput')
    CreateRepositoryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateRepositoryOperationInput', name: 'CreateRepositoryOperationInput')
    CreateRepositoryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateRepositoryOperationOutput', name: 'CreateRepositoryOperationOutput')
    CreateServiceInstanceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceInstanceOperationInput', name: 'CreateServiceInstanceOperationInput')
    CreateServiceInstanceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceInstanceOperationOutput', name: 'CreateServiceInstanceOperationOutput')
    CreateServiceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceOperationInput', name: 'CreateServiceOperationInput')
    CreateServiceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceOperationOutput', name: 'CreateServiceOperationOutput')
    CreateServiceSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceSyncConfigOperationInput', name: 'CreateServiceSyncConfigOperationInput')
    CreateServiceSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceSyncConfigOperationOutput', name: 'CreateServiceSyncConfigOperationOutput')
    CreateServiceTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateOperationInput', name: 'CreateServiceTemplateOperationInput')
    CreateServiceTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateOperationOutput', name: 'CreateServiceTemplateOperationOutput')
    CreateServiceTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateVersionOperationInput', name: 'CreateServiceTemplateVersionOperationInput')
    CreateServiceTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateVersionOperationOutput', name: 'CreateServiceTemplateVersionOperationOutput')
    CreateTemplateSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateTemplateSyncConfigOperationInput', name: 'CreateTemplateSyncConfigOperationInput')
    CreateTemplateSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateTemplateSyncConfigOperationOutput', name: 'CreateTemplateSyncConfigOperationOutput')
    DeleteComponentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteComponentOperationInput', name: 'DeleteComponentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource"}]})
    DeleteComponentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteComponentOperationOutput', name: 'DeleteComponentOperationOutput')
    DeleteDeploymentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteDeploymentInput', name: 'DeleteDeploymentInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#DeploymentResource"}]})
    DeleteDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteDeploymentOutput', name: 'DeleteDeploymentOutput')
    DeleteEnvironmentAccountConnectionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentAccountConnectionOperationInput', name: 'DeleteEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    DeleteEnvironmentAccountConnectionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentAccountConnectionOperationOutput', name: 'DeleteEnvironmentAccountConnectionOperationOutput')
    DeleteEnvironmentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentOperationInput', name: 'DeleteEnvironmentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource"}]})
    DeleteEnvironmentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentOperationOutput', name: 'DeleteEnvironmentOperationOutput')
    DeleteEnvironmentTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateOperationInput', name: 'DeleteEnvironmentTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateResource"}]})
    DeleteEnvironmentTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateOperationOutput', name: 'DeleteEnvironmentTemplateOperationOutput')
    DeleteEnvironmentTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateVersionOperationInput', name: 'DeleteEnvironmentTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateVersionResource"}]})
    DeleteEnvironmentTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateVersionOperationOutput', name: 'DeleteEnvironmentTemplateVersionOperationOutput')
    DeleteRepositoryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteRepositoryOperationInput', name: 'DeleteRepositoryOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#RepositoryResource"}]})
    DeleteRepositoryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteRepositoryOperationOutput', name: 'DeleteRepositoryOperationOutput')
    DeleteServiceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceOperationInput', name: 'DeleteServiceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    DeleteServiceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceOperationOutput', name: 'DeleteServiceOperationOutput')
    DeleteServiceSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceSyncConfigOperationInput', name: 'DeleteServiceSyncConfigOperationInput')
    DeleteServiceSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceSyncConfigOperationOutput', name: 'DeleteServiceSyncConfigOperationOutput')
    DeleteServiceTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateOperationInput', name: 'DeleteServiceTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateResource"}]})
    DeleteServiceTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateOperationOutput', name: 'DeleteServiceTemplateOperationOutput')
    DeleteServiceTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateVersionOperationInput', name: 'DeleteServiceTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateVersionResource"}]})
    DeleteServiceTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateVersionOperationOutput', name: 'DeleteServiceTemplateVersionOperationOutput')
    DeleteTemplateSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteTemplateSyncConfigOperationInput', name: 'DeleteTemplateSyncConfigOperationInput')
    DeleteTemplateSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteTemplateSyncConfigOperationOutput', name: 'DeleteTemplateSyncConfigOperationOutput')
    Deployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Deployment', name: 'Deployment')
    DeploymentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentArn', name: 'DeploymentArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#DeploymentResource"}})
    DeploymentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentId', name: 'DeploymentId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    DeploymentState = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.proton#DeploymentState', name: 'DeploymentState')
    DeploymentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentStatus', name: 'DeploymentStatus', traits: {"smithy.api#enum" => [{"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED"}, {"name" => "DELETE_COMPLETE", "value" => "DELETE_COMPLETE"}, {"name" => "CANCELLING", "value" => "CANCELLING"}, {"name" => "CANCELLED", "value" => "CANCELLED"}]})
    DeploymentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeploymentSummary', name: 'DeploymentSummary')
    DeploymentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#DeploymentSummaryList', name: 'DeploymentSummaryList')
    DeploymentTargetResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentTargetResourceType', name: 'DeploymentTargetResourceType', traits: {"smithy.api#enum" => [{"name" => "ENVIRONMENT", "value" => "ENVIRONMENT"}, {"name" => "SERVICE_PIPELINE", "value" => "SERVICE_PIPELINE"}, {"name" => "SERVICE_INSTANCE", "value" => "SERVICE_INSTANCE"}, {"name" => "COMPONENT", "value" => "COMPONENT"}]})
    DeploymentUpdateType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentUpdateType', name: 'DeploymentUpdateType', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "CURRENT_VERSION", "name" => "CURRENT_VERSION"}, {"value" => "MINOR_VERSION", "name" => "MINOR_VERSION"}, {"value" => "MAJOR_VERSION", "name" => "MAJOR_VERSION"}]})
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#sensitive" => {}})
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    EmptyNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EmptyNextToken', name: 'EmptyNextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 0}})
    Environment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Environment', name: 'Environment')
    EnvironmentAccountConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnection', name: 'EnvironmentAccountConnection')
    EnvironmentAccountConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionArn', name: 'EnvironmentAccountConnectionArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}})
    EnvironmentAccountConnectionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionId', name: 'EnvironmentAccountConnectionId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    EnvironmentAccountConnectionRequesterAccountType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionRequesterAccountType', name: 'EnvironmentAccountConnectionRequesterAccountType', traits: {"smithy.api#enum" => [{"value" => "MANAGEMENT_ACCOUNT", "name" => "MANAGEMENT_ACCOUNT"}, {"value" => "ENVIRONMENT_ACCOUNT", "name" => "ENVIRONMENT_ACCOUNT"}]})
    EnvironmentAccountConnectionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionStatus', name: 'EnvironmentAccountConnectionStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "CONNECTED", "name" => "CONNECTED"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    EnvironmentAccountConnectionStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionStatusList', name: 'EnvironmentAccountConnectionStatusList')
    EnvironmentAccountConnectionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionSummary', name: 'EnvironmentAccountConnectionSummary')
    EnvironmentAccountConnectionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionSummaryList', name: 'EnvironmentAccountConnectionSummaryList')
    EnvironmentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentArn', name: 'EnvironmentArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentResource"}})
    EnvironmentState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentState', name: 'EnvironmentState')
    EnvironmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentSummary', name: 'EnvironmentSummary')
    EnvironmentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentSummaryList', name: 'EnvironmentSummaryList')
    EnvironmentTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplate', name: 'EnvironmentTemplate')
    EnvironmentTemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateArn', name: 'EnvironmentTemplateArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentTemplateResource"}})
    EnvironmentTemplateFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateFilter', name: 'EnvironmentTemplateFilter')
    EnvironmentTemplateFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateFilterList', name: 'EnvironmentTemplateFilterList')
    EnvironmentTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateSummary', name: 'EnvironmentTemplateSummary')
    EnvironmentTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateSummaryList', name: 'EnvironmentTemplateSummaryList')
    EnvironmentTemplateVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersion', name: 'EnvironmentTemplateVersion')
    EnvironmentTemplateVersionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersionArn', name: 'EnvironmentTemplateVersionArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentTemplateVersion"}})
    EnvironmentTemplateVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersionSummary', name: 'EnvironmentTemplateVersionSummary')
    EnvironmentTemplateVersionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersionSummaryList', name: 'EnvironmentTemplateVersionSummaryList')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#sensitive" => {}})
    FullTemplateVersionNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#FullTemplateVersionNumber', name: 'FullTemplateVersionNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(0|([1-9]{1}\\d*)).(0|([1-9]{1}\\d*))$"})
    GetAccountSettingsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetAccountSettingsOperationInput', name: 'GetAccountSettingsOperationInput')
    GetAccountSettingsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetAccountSettingsOperationOutput', name: 'GetAccountSettingsOperationOutput')
    GetComponentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetComponentOperationInput', name: 'GetComponentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource"}]})
    GetComponentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetComponentOperationOutput', name: 'GetComponentOperationOutput')
    GetDeploymentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetDeploymentInput', name: 'GetDeploymentInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#DeploymentResource"}]})
    GetDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetDeploymentOutput', name: 'GetDeploymentOutput')
    GetEnvironmentAccountConnectionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentAccountConnectionOperationInput', name: 'GetEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    GetEnvironmentAccountConnectionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentAccountConnectionOperationOutput', name: 'GetEnvironmentAccountConnectionOperationOutput')
    GetEnvironmentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentOperationInput', name: 'GetEnvironmentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource"}]})
    GetEnvironmentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentOperationOutput', name: 'GetEnvironmentOperationOutput')
    GetEnvironmentTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateOperationInput', name: 'GetEnvironmentTemplateOperationInput')
    GetEnvironmentTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateOperationOutput', name: 'GetEnvironmentTemplateOperationOutput')
    GetEnvironmentTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateVersionOperationInput', name: 'GetEnvironmentTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateVersionResource"}]})
    GetEnvironmentTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateVersionOperationOutput', name: 'GetEnvironmentTemplateVersionOperationOutput')
    GetRepositoryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositoryOperationInput', name: 'GetRepositoryOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#RepositoryResource"}]})
    GetRepositoryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositoryOperationOutput', name: 'GetRepositoryOperationOutput')
    GetRepositorySyncStatusOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositorySyncStatusOperationInput', name: 'GetRepositorySyncStatusOperationInput')
    GetRepositorySyncStatusOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositorySyncStatusOperationOutput', name: 'GetRepositorySyncStatusOperationOutput')
    GetResourcesSummaryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetResourcesSummaryOperationInput', name: 'GetResourcesSummaryOperationInput')
    GetResourcesSummaryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetResourcesSummaryOperationOutput', name: 'GetResourcesSummaryOperationOutput')
    GetServiceInstanceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceOperationInput', name: 'GetServiceInstanceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceInstanceResource"}]})
    GetServiceInstanceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceOperationOutput', name: 'GetServiceInstanceOperationOutput')
    GetServiceInstanceSyncStatusOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceSyncStatusOperationInput', name: 'GetServiceInstanceSyncStatusOperationInput')
    GetServiceInstanceSyncStatusOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceSyncStatusOperationOutput', name: 'GetServiceInstanceSyncStatusOperationOutput')
    GetServiceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceOperationInput', name: 'GetServiceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    GetServiceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceOperationOutput', name: 'GetServiceOperationOutput')
    GetServiceSyncBlockerSummaryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncBlockerSummaryOperationInput', name: 'GetServiceSyncBlockerSummaryOperationInput')
    GetServiceSyncBlockerSummaryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncBlockerSummaryOperationOutput', name: 'GetServiceSyncBlockerSummaryOperationOutput')
    GetServiceSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncConfigOperationInput', name: 'GetServiceSyncConfigOperationInput')
    GetServiceSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncConfigOperationOutput', name: 'GetServiceSyncConfigOperationOutput')
    GetServiceTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateOperationInput', name: 'GetServiceTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateResource"}]})
    GetServiceTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateOperationOutput', name: 'GetServiceTemplateOperationOutput')
    GetServiceTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateVersionOperationInput', name: 'GetServiceTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateVersionResource"}]})
    GetServiceTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateVersionOperationOutput', name: 'GetServiceTemplateVersionOperationOutput')
    GetTemplateSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncConfigOperationInput', name: 'GetTemplateSyncConfigOperationInput')
    GetTemplateSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncConfigOperationOutput', name: 'GetTemplateSyncConfigOperationOutput')
    GetTemplateSyncStatusOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncStatusOperationInput', name: 'GetTemplateSyncStatusOperationInput')
    GetTemplateSyncStatusOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncStatusOperationOutput', name: 'GetTemplateSyncStatusOperationOutput')
    GitBranchName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#GitBranchName', name: 'GitBranchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LatestSyncBlockers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#LatestSyncBlockers', name: 'LatestSyncBlockers')
    ListComponentOutputsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentOutputsOperationInput', name: 'ListComponentOutputsOperationInput')
    ListComponentOutputsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentOutputsOperationOutput', name: 'ListComponentOutputsOperationOutput')
    ListComponentProvisionedResourcesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentProvisionedResourcesOperationInput', name: 'ListComponentProvisionedResourcesOperationInput')
    ListComponentProvisionedResourcesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentProvisionedResourcesOperationOutput', name: 'ListComponentProvisionedResourcesOperationOutput')
    ListComponentsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentsOperationInput', name: 'ListComponentsOperationInput')
    ListComponentsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentsOperationOutput', name: 'ListComponentsOperationOutput')
    ListDeploymentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListDeploymentsInput', name: 'ListDeploymentsInput')
    ListDeploymentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListDeploymentsOutput', name: 'ListDeploymentsOutput')
    ListEnvironmentAccountConnectionsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentAccountConnectionsOperationInput', name: 'ListEnvironmentAccountConnectionsOperationInput')
    ListEnvironmentAccountConnectionsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentAccountConnectionsOperationOutput', name: 'ListEnvironmentAccountConnectionsOperationOutput')
    ListEnvironmentOutputsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentOutputsOperationInput', name: 'ListEnvironmentOutputsOperationInput')
    ListEnvironmentOutputsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentOutputsOperationOutput', name: 'ListEnvironmentOutputsOperationOutput')
    ListEnvironmentProvisionedResourcesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentProvisionedResourcesOperationInput', name: 'ListEnvironmentProvisionedResourcesOperationInput')
    ListEnvironmentProvisionedResourcesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentProvisionedResourcesOperationOutput', name: 'ListEnvironmentProvisionedResourcesOperationOutput')
    ListEnvironmentTemplateVersionsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplateVersionsOperationInput', name: 'ListEnvironmentTemplateVersionsOperationInput')
    ListEnvironmentTemplateVersionsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplateVersionsOperationOutput', name: 'ListEnvironmentTemplateVersionsOperationOutput')
    ListEnvironmentTemplatesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplatesOperationInput', name: 'ListEnvironmentTemplatesOperationInput')
    ListEnvironmentTemplatesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplatesOperationOutput', name: 'ListEnvironmentTemplatesOperationOutput')
    ListEnvironmentsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentsOperationInput', name: 'ListEnvironmentsOperationInput')
    ListEnvironmentsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentsOperationOutput', name: 'ListEnvironmentsOperationOutput')
    ListRepositoriesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositoriesOperationInput', name: 'ListRepositoriesOperationInput')
    ListRepositoriesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositoriesOperationOutput', name: 'ListRepositoriesOperationOutput')
    ListRepositorySyncDefinitionsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositorySyncDefinitionsOperationInput', name: 'ListRepositorySyncDefinitionsOperationInput')
    ListRepositorySyncDefinitionsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositorySyncDefinitionsOperationOutput', name: 'ListRepositorySyncDefinitionsOperationOutput')
    ListServiceInstanceOutputsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceOutputsOperationInput', name: 'ListServiceInstanceOutputsOperationInput')
    ListServiceInstanceOutputsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceOutputsOperationOutput', name: 'ListServiceInstanceOutputsOperationOutput')
    ListServiceInstanceProvisionedResourcesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceProvisionedResourcesOperationInput', name: 'ListServiceInstanceProvisionedResourcesOperationInput')
    ListServiceInstanceProvisionedResourcesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceProvisionedResourcesOperationOutput', name: 'ListServiceInstanceProvisionedResourcesOperationOutput')
    ListServiceInstancesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilter', name: 'ListServiceInstancesFilter')
    ListServiceInstancesFilterBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilterBy', name: 'ListServiceInstancesFilterBy', traits: {"smithy.api#enum" => [{"value" => "name", "name" => "NAME"}, {"value" => "deploymentStatus", "name" => "DEPLOYMENT_STATUS"}, {"value" => "templateName", "name" => "TEMPLATE_NAME"}, {"value" => "serviceName", "name" => "SERVICE_NAME"}, {"value" => "deployedTemplateVersionStatus", "name" => "DEPLOYED_TEMPLATE_VERSION_STATUS"}, {"value" => "environmentName", "name" => "ENVIRONMENT_NAME"}, {"value" => "lastDeploymentAttemptedAtBefore", "name" => "LAST_DEPLOYMENT_ATTEMPTED_AT_BEFORE"}, {"value" => "lastDeploymentAttemptedAtAfter", "name" => "LAST_DEPLOYMENT_ATTEMPTED_AT_AFTER"}, {"value" => "createdAtBefore", "name" => "CREATED_AT_BEFORE"}, {"value" => "createdAtAfter", "name" => "CREATED_AT_AFTER"}]})
    ListServiceInstancesFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilterList', name: 'ListServiceInstancesFilterList')
    ListServiceInstancesFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilterValue', name: 'ListServiceInstancesFilterValue')
    ListServiceInstancesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstancesOperationInput', name: 'ListServiceInstancesOperationInput')
    ListServiceInstancesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstancesOperationOutput', name: 'ListServiceInstancesOperationOutput')
    ListServiceInstancesSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ListServiceInstancesSortBy', name: 'ListServiceInstancesSortBy', traits: {"smithy.api#enum" => [{"value" => "name", "name" => "NAME"}, {"value" => "deploymentStatus", "name" => "DEPLOYMENT_STATUS"}, {"value" => "templateName", "name" => "TEMPLATE_NAME"}, {"value" => "serviceName", "name" => "SERVICE_NAME"}, {"value" => "environmentName", "name" => "ENVIRONMENT_NAME"}, {"value" => "lastDeploymentAttemptedAt", "name" => "LAST_DEPLOYMENT_ATTEMPTED_AT"}, {"value" => "createdAt", "name" => "CREATED_AT"}]})
    ListServicePipelineOutputsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineOutputsOperationInput', name: 'ListServicePipelineOutputsOperationInput')
    ListServicePipelineOutputsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineOutputsOperationOutput', name: 'ListServicePipelineOutputsOperationOutput')
    ListServicePipelineProvisionedResourcesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineProvisionedResourcesOperationInput', name: 'ListServicePipelineProvisionedResourcesOperationInput')
    ListServicePipelineProvisionedResourcesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineProvisionedResourcesOperationOutput', name: 'ListServicePipelineProvisionedResourcesOperationOutput')
    ListServiceTemplateVersionsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplateVersionsOperationInput', name: 'ListServiceTemplateVersionsOperationInput')
    ListServiceTemplateVersionsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplateVersionsOperationOutput', name: 'ListServiceTemplateVersionsOperationOutput')
    ListServiceTemplatesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplatesOperationInput', name: 'ListServiceTemplatesOperationInput')
    ListServiceTemplatesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplatesOperationOutput', name: 'ListServiceTemplatesOperationOutput')
    ListServicesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicesOperationInput', name: 'ListServicesOperationInput')
    ListServicesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicesOperationOutput', name: 'ListServicesOperationOutput')
    ListTagsForResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    MaxPageResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.proton#MaxPageResults', name: 'MaxPageResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^[A-Za-z0-9+=/]+$"})
    NotifyResourceDeploymentStatusChangeOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#NotifyResourceDeploymentStatusChangeOperationInput', name: 'NotifyResourceDeploymentStatusChangeOperationInput')
    NotifyResourceDeploymentStatusChangeOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#NotifyResourceDeploymentStatusChangeOperationOutput', name: 'NotifyResourceDeploymentStatusChangeOperationOutput')
    OpsFilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#OpsFilePath', name: 'OpsFilePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Output = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Output', name: 'Output', traits: {"smithy.api#sensitive" => {}})
    OutputKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#OutputKey', name: 'OutputKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    OutputValueString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#OutputValueString', name: 'OutputValueString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    OutputsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#OutputsList', name: 'OutputsList')
    ProvisionedResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ProvisionedResource', name: 'ProvisionedResource')
    ProvisionedResourceEngine = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ProvisionedResourceEngine', name: 'ProvisionedResourceEngine', traits: {"smithy.api#enum" => [{"name" => "CLOUDFORMATION", "value" => "CLOUDFORMATION"}, {"name" => "TERRAFORM", "value" => "TERRAFORM"}]})
    ProvisionedResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ProvisionedResourceIdentifier', name: 'ProvisionedResourceIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ProvisionedResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ProvisionedResourceList', name: 'ProvisionedResourceList')
    ProvisionedResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ProvisionedResourceName', name: 'ProvisionedResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    Provisioning = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Provisioning', name: 'Provisioning', traits: {"smithy.api#enum" => [{"value" => "CUSTOMER_MANAGED", "name" => "CUSTOMER_MANAGED"}]})
    RejectEnvironmentAccountConnectionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RejectEnvironmentAccountConnectionOperationInput', name: 'RejectEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    RejectEnvironmentAccountConnectionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RejectEnvironmentAccountConnectionOperationOutput', name: 'RejectEnvironmentAccountConnectionOperationOutput')
    Repository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Repository', name: 'Repository')
    RepositoryArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryArn', name: 'RepositoryArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#RepositoryResource"}})
    RepositoryBranch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositoryBranch', name: 'RepositoryBranch')
    RepositoryBranchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositoryBranchInput', name: 'RepositoryBranchInput')
    RepositoryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryId', name: 'RepositoryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RepositoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryName', name: 'RepositoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "[A-Za-z0-9_.-].*/[A-Za-z0-9_.-].*"})
    RepositoryProvider = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryProvider', name: 'RepositoryProvider', traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITHUB_ENTERPRISE", "name" => "GITHUB_ENTERPRISE"}, {"value" => "BITBUCKET", "name" => "BITBUCKET"}]})
    RepositorySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySummary', name: 'RepositorySummary')
    RepositorySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#RepositorySummaryList', name: 'RepositorySummaryList')
    RepositorySyncAttempt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySyncAttempt', name: 'RepositorySyncAttempt')
    RepositorySyncDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySyncDefinition', name: 'RepositorySyncDefinition')
    RepositorySyncDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#RepositorySyncDefinitionList', name: 'RepositorySyncDefinitionList')
    RepositorySyncEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySyncEvent', name: 'RepositorySyncEvent')
    RepositorySyncEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#RepositorySyncEvents', name: 'RepositorySyncEvents')
    RepositorySyncStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositorySyncStatus', name: 'RepositorySyncStatus', traits: {"smithy.api#enum" => [{"value" => "INITIATED", "name" => "INITIATED", "documentation" => "   A repository sync attempt has been created and will begin soon.\n"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "    A repository sync attempt has started and work is being done to reconcile the branch.\n"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED", "documentation" => "    The repository sync attempt has completed successfully.\n"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "    The repository sync attempt has failed.\n"}, {"value" => "QUEUED", "name" => "QUEUED", "documentation" => "    The repository sync attempt didn't execute and was queued.\n"}]})
    ResourceCountsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceCountsSummary', name: 'ResourceCountsSummary')
    ResourceDeploymentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceDeploymentStatus', name: 'ResourceDeploymentStatus', traits: {"smithy.api#enum" => [{"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}]})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z]+[0-9A-Za-z_\\-]*$"})
    ResourceNameOrEmpty = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceNameOrEmpty', name: 'ResourceNameOrEmpty', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "(^$)|^[0-9A-Za-z]+[0-9A-Za-z_\\-]*$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSyncAttempt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceSyncAttempt', name: 'ResourceSyncAttempt')
    ResourceSyncEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceSyncEvent', name: 'ResourceSyncEvent')
    ResourceSyncEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ResourceSyncEvents', name: 'ResourceSyncEvents')
    ResourceSyncStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceSyncStatus', name: 'ResourceSyncStatus', traits: {"smithy.api#enum" => [{"value" => "INITIATED", "name" => "INITIATED", "documentation" => "   A sync attempt has been created and will begin soon.\n"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "    Syncing has started and work is being done to reconcile state.\n"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED", "documentation" => "    Syncing has completed successfully.\n"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "    Syncing has failed.\n"}]})
    Revision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Revision', name: 'Revision')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/([\\w+=,.@-]{1,512}[/:])*([\\w+=,.@-]{1,64})$"})
    RoleArnOrEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RoleArnOrEmptyString', name: 'RoleArnOrEmptyString', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^$)|(^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/([\\w+=,.@-]{1,512}[/:])*([\\w+=,.@-]{1,64})$)"})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+[a-z0-9-\\.]+[a-z0-9]+$"})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3ObjectSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#S3ObjectSource', name: 'S3ObjectSource')
    SHA = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SHA', name: 'SHA', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Service = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Service', name: 'Service')
    ServiceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceArn', name: 'ServiceArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceResource"}})
    ServiceInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceInstance', name: 'ServiceInstance', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    ServiceInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceInstanceArn', name: 'ServiceInstanceArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceInstanceResource"}})
    ServiceInstanceState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceInstanceState', name: 'ServiceInstanceState')
    ServiceInstanceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceInstanceSummary', name: 'ServiceInstanceSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    ServiceInstanceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceInstanceSummaryList', name: 'ServiceInstanceSummaryList')
    ServicePipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServicePipeline', name: 'ServicePipeline')
    ServicePipelineState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServicePipelineState', name: 'ServicePipelineState')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceStatus', name: 'ServiceStatus', traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS"}, {"name" => "CREATE_FAILED_CLEANUP_IN_PROGRESS", "value" => "CREATE_FAILED_CLEANUP_IN_PROGRESS"}, {"name" => "CREATE_FAILED_CLEANUP_COMPLETE", "value" => "CREATE_FAILED_CLEANUP_COMPLETE"}, {"name" => "CREATE_FAILED_CLEANUP_FAILED", "value" => "CREATE_FAILED_CLEANUP_FAILED"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED"}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS"}, {"name" => "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "value" => "UPDATE_FAILED_CLEANUP_IN_PROGRESS"}, {"name" => "UPDATE_FAILED_CLEANUP_COMPLETE", "value" => "UPDATE_FAILED_CLEANUP_COMPLETE"}, {"name" => "UPDATE_FAILED_CLEANUP_FAILED", "value" => "UPDATE_FAILED_CLEANUP_FAILED"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED"}, {"name" => "UPDATE_COMPLETE_CLEANUP_FAILED", "value" => "UPDATE_COMPLETE_CLEANUP_FAILED"}]})
    ServiceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceSummary', name: 'ServiceSummary')
    ServiceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceSummaryList', name: 'ServiceSummaryList')
    ServiceSyncBlockerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceSyncBlockerSummary', name: 'ServiceSyncBlockerSummary')
    ServiceSyncConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceSyncConfig', name: 'ServiceSyncConfig')
    ServiceTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplate', name: 'ServiceTemplate')
    ServiceTemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceTemplateArn', name: 'ServiceTemplateArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceTemplateResource"}})
    ServiceTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplateSummary', name: 'ServiceTemplateSummary')
    ServiceTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceTemplateSummaryList', name: 'ServiceTemplateSummaryList')
    ServiceTemplateSupportedComponentSourceInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceTemplateSupportedComponentSourceInputList', name: 'ServiceTemplateSupportedComponentSourceInputList')
    ServiceTemplateSupportedComponentSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceTemplateSupportedComponentSourceType', name: 'ServiceTemplateSupportedComponentSourceType', traits: {"smithy.api#enum" => [{"value" => "DIRECTLY_DEFINED", "name" => "DIRECTLY_DEFINED"}]})
    ServiceTemplateVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersion', name: 'ServiceTemplateVersion')
    ServiceTemplateVersionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersionArn', name: 'ServiceTemplateVersionArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceTemplateVersion"}})
    ServiceTemplateVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersionSummary', name: 'ServiceTemplateVersionSummary')
    ServiceTemplateVersionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersionSummaryList', name: 'ServiceTemplateVersionSummaryList')
    SortOrder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING"}, {"value" => "DESCENDING", "name" => "DESCENDING"}]})
    SpecContents = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SpecContents', name: 'SpecContents', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#sensitive" => {}})
    Subdirectory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Subdirectory', name: 'Subdirectory', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    SyncBlocker = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#SyncBlocker', name: 'SyncBlocker')
    SyncBlockerContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#SyncBlockerContext', name: 'SyncBlockerContext')
    SyncBlockerContexts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#SyncBlockerContexts', name: 'SyncBlockerContexts')
    SyncType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SyncType', name: 'SyncType', traits: {"smithy.api#enum" => [{"value" => "TEMPLATE_SYNC", "name" => "TEMPLATE_SYNC", "documentation" => "    Syncs environment and service templates to Proton.\n"}, {"value" => "SERVICE_SYNC", "name" => "SERVICE_SYNC", "documentation" => "    Syncs services and service instances to Proton.\n"}]})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TagResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateFileContents = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateFileContents', name: 'TemplateFileContents', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    TemplateManifestContents = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateManifestContents', name: 'TemplateManifestContents', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    TemplateSchema = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateSchema', name: 'TemplateSchema', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    TemplateSyncConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#TemplateSyncConfig', name: 'TemplateSyncConfig')
    TemplateType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateType', name: 'TemplateType', traits: {"smithy.api#enum" => [{"name" => "ENVIRONMENT", "value" => "ENVIRONMENT"}, {"name" => "SERVICE", "value" => "SERVICE"}]})
    TemplateVersionPart = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateVersionPart', name: 'TemplateVersionPart', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^(0|([1-9]{1}\\d*))$"})
    TemplateVersionSourceInput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.proton#TemplateVersionSourceInput', name: 'TemplateVersionSourceInput')
    TemplateVersionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateVersionStatus', name: 'TemplateVersionStatus', traits: {"smithy.api#enum" => [{"name" => "REGISTRATION_IN_PROGRESS", "value" => "REGISTRATION_IN_PROGRESS"}, {"name" => "REGISTRATION_FAILED", "value" => "REGISTRATION_FAILED"}, {"name" => "DRAFT", "value" => "DRAFT"}, {"name" => "PUBLISHED", "value" => "PUBLISHED"}]})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    UntagResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateAccountSettingsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateAccountSettingsOperationInput', name: 'UpdateAccountSettingsOperationInput')
    UpdateAccountSettingsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateAccountSettingsOperationOutput', name: 'UpdateAccountSettingsOperationOutput')
    UpdateComponentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateComponentOperationInput', name: 'UpdateComponentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource"}]})
    UpdateComponentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateComponentOperationOutput', name: 'UpdateComponentOperationOutput')
    UpdateEnvironmentAccountConnectionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentAccountConnectionOperationInput', name: 'UpdateEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    UpdateEnvironmentAccountConnectionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentAccountConnectionOperationOutput', name: 'UpdateEnvironmentAccountConnectionOperationOutput')
    UpdateEnvironmentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentOperationInput', name: 'UpdateEnvironmentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource"}]})
    UpdateEnvironmentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentOperationOutput', name: 'UpdateEnvironmentOperationOutput')
    UpdateEnvironmentTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateOperationInput', name: 'UpdateEnvironmentTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateResource"}]})
    UpdateEnvironmentTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateOperationOutput', name: 'UpdateEnvironmentTemplateOperationOutput')
    UpdateEnvironmentTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateVersionOperationInput', name: 'UpdateEnvironmentTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateVersionResource"}]})
    UpdateEnvironmentTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateVersionOperationOutput', name: 'UpdateEnvironmentTemplateVersionOperationOutput')
    UpdateServiceInstanceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceInstanceOperationInput', name: 'UpdateServiceInstanceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceInstanceResource"}]})
    UpdateServiceInstanceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceInstanceOperationOutput', name: 'UpdateServiceInstanceOperationOutput')
    UpdateServiceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceOperationInput', name: 'UpdateServiceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    UpdateServiceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceOperationOutput', name: 'UpdateServiceOperationOutput')
    UpdateServicePipelineOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServicePipelineOperationInput', name: 'UpdateServicePipelineOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource", "ids" => {"name" => "serviceName"}}]})
    UpdateServicePipelineOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServicePipelineOperationOutput', name: 'UpdateServicePipelineOperationOutput')
    UpdateServiceSyncBlockerOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncBlockerOperationInput', name: 'UpdateServiceSyncBlockerOperationInput')
    UpdateServiceSyncBlockerOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncBlockerOperationOutput', name: 'UpdateServiceSyncBlockerOperationOutput')
    UpdateServiceSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncConfigOperationInput', name: 'UpdateServiceSyncConfigOperationInput')
    UpdateServiceSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncConfigOperationOutput', name: 'UpdateServiceSyncConfigOperationOutput')
    UpdateServiceTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateOperationInput', name: 'UpdateServiceTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateResource"}]})
    UpdateServiceTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateOperationOutput', name: 'UpdateServiceTemplateOperationOutput')
    UpdateServiceTemplateVersionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateVersionOperationInput', name: 'UpdateServiceTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateVersionResource"}]})
    UpdateServiceTemplateVersionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateVersionOperationOutput', name: 'UpdateServiceTemplateVersionOperationOutput')
    UpdateTemplateSyncConfigOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateTemplateSyncConfigOperationInput', name: 'UpdateTemplateSyncConfigOperationInput')
    UpdateTemplateSyncConfigOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateTemplateSyncConfigOperationOutput', name: 'UpdateTemplateSyncConfigOperationOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AcceptEnvironmentAccountConnectionOperationInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection.</p>", "smithy.api#required" => {}}))
    AcceptEnvironmentAccountConnectionOperationInput.type = Types::AcceptEnvironmentAccountConnectionOperationInput
    AcceptEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#documentation" => "<p>The environment account connection data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    AcceptEnvironmentAccountConnectionOperationOutput.type = Types::AcceptEnvironmentAccountConnectionOperationOutput
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountSettings.add_member(:pipeline_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed provisioning, and by\n      customer-owned automation for self-managed provisioning.</p>"}))
    AccountSettings.add_member(:pipeline_provisioning_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: 'pipelineProvisioningRepository', traits: {"smithy.api#documentation" => "<p>The linked repository for pipeline provisioning. Required if you have environments configured for self-managed provisioning with services that include\n      pipelines. A linked repository is a repository that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>"}))
    AccountSettings.add_member(:pipeline_codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineCodebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role that Proton uses for provisioning pipelines. Proton assumes this role for CodeBuild-based\n      provisioning.</p>"}))
    AccountSettings.type = Types::AccountSettings
    CancelComponentDeploymentOperationInput.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component with the deployment to cancel.</p>", "smithy.api#required" => {}}))
    CancelComponentDeploymentOperationInput.type = Types::CancelComponentDeploymentOperationInput
    CancelComponentDeploymentOperationOutput.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#documentation" => "<p>The detailed data of the component with the deployment that is being canceled.</p>", "smithy.api#required" => {}}))
    CancelComponentDeploymentOperationOutput.type = Types::CancelComponentDeploymentOperationOutput
    CancelEnvironmentDeploymentOperationInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment with the deployment to cancel.</p>", "smithy.api#required" => {}}))
    CancelEnvironmentDeploymentOperationInput.type = Types::CancelEnvironmentDeploymentOperationInput
    CancelEnvironmentDeploymentOperationOutput.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The environment summary data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CancelEnvironmentDeploymentOperationOutput.type = Types::CancelEnvironmentDeploymentOperationOutput
    CancelServiceInstanceDeploymentOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance with the deployment to cancel.</p>", "smithy.api#required" => {}}))
    CancelServiceInstanceDeploymentOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service with the service instance deployment to cancel.</p>", "smithy.api#required" => {}}))
    CancelServiceInstanceDeploymentOperationInput.type = Types::CancelServiceInstanceDeploymentOperationInput
    CancelServiceInstanceDeploymentOperationOutput.add_member(:service_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#documentation" => "<p>The service instance summary data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CancelServiceInstanceDeploymentOperationOutput.type = Types::CancelServiceInstanceDeploymentOperationOutput
    CancelServicePipelineDeploymentOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service with the service pipeline deployment to cancel.</p>", "smithy.api#required" => {}}))
    CancelServicePipelineDeploymentOperationInput.type = Types::CancelServicePipelineDeploymentOperationInput
    CancelServicePipelineDeploymentOperationOutput.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipeline, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>The service pipeline detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CancelServicePipelineDeploymentOperationOutput.type = Types::CancelServicePipelineDeploymentOperationOutput
    CompatibleEnvironmentTemplate.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The compatible environment template name.</p>", "smithy.api#required" => {}}))
    CompatibleEnvironmentTemplate.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the compatible environment template.</p>", "smithy.api#required" => {}}))
    CompatibleEnvironmentTemplate.type = Types::CompatibleEnvironmentTemplate
    CompatibleEnvironmentTemplateInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The compatible environment template name.</p>", "smithy.api#required" => {}}))
    CompatibleEnvironmentTemplateInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the compatible environment template.</p>", "smithy.api#required" => {}}))
    CompatibleEnvironmentTemplateInput.type = Types::CompatibleEnvironmentTemplateInput
    CompatibleEnvironmentTemplateInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInput)
    CompatibleEnvironmentTemplateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplate)
    Component.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    Component.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the component.</p>"}))
    Component.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the component.</p>", "smithy.api#required" => {}}))
    Component.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the Proton environment that this component is associated with.</p>", "smithy.api#required" => {}}))
    Component.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>"}))
    Component.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>"}))
    Component.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the component was created.</p>", "smithy.api#required" => {}}))
    Component.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the component was last modified.</p>", "smithy.api#required" => {}}))
    Component.add_member(:last_deployment_attempted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#documentation" => "<p>The time when a deployment of the component was last attempted.</p>"}))
    Component.add_member(:last_deployment_succeeded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#documentation" => "<p>The time when the component was last deployed successfully.</p>"}))
    Component.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The component deployment status.</p>", "smithy.api#required" => {}}))
    Component.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the component deployment status.</p>"}))
    Component.add_member(:service_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec', traits: {"smithy.api#documentation" => "<p>The service spec that the component uses to access service inputs. Provided when a component is attached to a service instance.</p>"}))
    Component.add_member(:last_client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'lastClientRequestToken', traits: {"smithy.api#documentation" => "<p>The last token the client requested.</p>"}))
    Component.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment of this component.</p>"}))
    Component.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment of this component.</p>"}))
    Component.type = Types::Component
    ComponentDeploymentIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId)
    ComponentState.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>"}))
    ComponentState.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>"}))
    ComponentState.add_member(:service_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec', traits: {"smithy.api#documentation" => "<p>The service spec that the component uses to access service inputs. Provided when a component is attached to a service instance.</p>"}))
    ComponentState.add_member(:template_file, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: 'templateFile', traits: {"smithy.api#documentation" => "<p>The template file used.</p>"}))
    ComponentState.type = Types::ComponentState
    ComponentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the component.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the Proton environment that this component is associated with.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>"}))
    ComponentSummary.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>"}))
    ComponentSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the component was created.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the component was last modified.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:last_deployment_attempted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#documentation" => "<p>The time when a deployment of the component was last attempted.</p>"}))
    ComponentSummary.add_member(:last_deployment_succeeded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#documentation" => "<p>The time when the component was last deployed successfully.</p>"}))
    ComponentSummary.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The component deployment status.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the component deployment status.</p>"}))
    ComponentSummary.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment of this component.</p>"}))
    ComponentSummary.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment of this component.</p>"}))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummary)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CountsSummary.add_member(:components, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'components', traits: {"smithy.api#documentation" => "<p>The total number of components in the Amazon Web Services account.</p>\n         <p>The semantics of the <code>components</code> field are different from the semantics of results for other\n   infrastructure-provisioning resources. That's because at this time components don't have associated templates,\n   therefore they don't have the concept of staleness. The <code>components</code> object will only contain\n    <code>total</code> and <code>failed</code> members.</p>"}))
    CountsSummary.add_member(:environments, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'environments', traits: {"smithy.api#documentation" => "<p>The staleness counts for Proton environments in the Amazon Web Services account. The <code>environments</code> object will only\n   contain <code>total</code> members.</p>"}))
    CountsSummary.add_member(:environment_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'environmentTemplates', traits: {"smithy.api#documentation" => "<p>The total number of environment templates in the Amazon Web Services account. The <code>environmentTemplates</code> object\n   will only contain <code>total</code> members.</p>"}))
    CountsSummary.add_member(:service_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'serviceInstances', traits: {"smithy.api#documentation" => "<p>The staleness counts for Proton service instances in the Amazon Web Services account.</p>"}))
    CountsSummary.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'services', traits: {"smithy.api#documentation" => "<p>The staleness counts for Proton services in the Amazon Web Services account.</p>"}))
    CountsSummary.add_member(:service_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'serviceTemplates', traits: {"smithy.api#documentation" => "<p>The total number of service templates in the Amazon Web Services account. The <code>serviceTemplates</code> object will only\n   contain <code>total</code> members.</p>"}))
    CountsSummary.add_member(:pipelines, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'pipelines', traits: {"smithy.api#documentation" => "<p>The staleness counts for Proton pipelines in the Amazon Web Services account.</p>"}))
    CountsSummary.type = Types::CountsSummary
    CreateComponentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The customer-provided name of the component.</p>", "smithy.api#required" => {}}))
    CreateComponentOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional customer-provided description of the component.</p>"}))
    CreateComponentOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that <code>serviceInstanceName</code> is associated with. If you don't specify this, the component isn't attached to any\n      service instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>"}))
    CreateComponentOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that you want to attach this component to. If you don't specify this, the component isn't attached to any service\n      instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>"}))
    CreateComponentOperationInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the Proton environment that you want to associate this component with. You must specify this when you don't specify\n        <code>serviceInstanceName</code> and <code>serviceName</code>.</p>"}))
    CreateComponentOperationInput.add_member(:template_file, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: 'templateFile', traits: {"smithy.api#documentation" => "<p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>\n         <note>\n            <p>Components support a single IaC file, even if you use Terraform as your template language.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateComponentOperationInput.add_member(:manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateManifestContents, location_name: 'manifest', traits: {"smithy.api#documentation" => "<p>A path to a manifest file that lists the Infrastructure as Code (IaC) file, template language, and rendering engine for infrastructure that a custom\n      component provisions.</p>", "smithy.api#required" => {}}))
    CreateComponentOperationInput.add_member(:service_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec', traits: {"smithy.api#documentation" => "<p>The service spec that you want the component to use to access service inputs. Set this only when you attach the component to a service\n      instance.</p>"}))
    CreateComponentOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton component. A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateComponentOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token for the created component.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateComponentOperationInput.type = Types::CreateComponentOperationInput
    CreateComponentOperationOutput.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#documentation" => "<p>The detailed data of the created component.</p>", "smithy.api#required" => {}}))
    CreateComponentOperationOutput.type = Types::CreateComponentOperationOutput
    CreateEnvironmentAccountConnectionOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>When included, if two identical requests are made with the same client token, Proton returns the environment account connection that the first\n      request created.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:management_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'managementAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the management account that accepts or rejects the environment account connection. You create and manage the Proton environment in this\n      account. If the management account accepts the environment account connection, Proton can use the associated IAM role to provision environment\n      infrastructure resources in the associated environment account.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that's created in the environment account. Proton uses this role to provision infrastructure\n      resources in the associated environment account.</p>"}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the Proton environment that's created in the associated management account.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton environment account connection. A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated\n      environment account. It determines the scope of infrastructure that a component can provision in the account.</p>\n         <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with any environments running in this\n      account.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources\n      using CodeBuild-based provisioning in the associated environment account.</p>"}))
    CreateEnvironmentAccountConnectionOperationInput.type = Types::CreateEnvironmentAccountConnectionOperationInput
    CreateEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#documentation" => "<p>The environment account connection detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentAccountConnectionOperationOutput.type = Types::CreateEnvironmentAccountConnectionOperationOutput
    CreateEnvironmentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html\">Environment Templates</a> in the <i>Proton User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the environment template.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the environment template.</p>"}))
    CreateEnvironmentOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the environment that's being created and deployed.</p>"}))
    CreateEnvironmentOperationInput.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>A YAML formatted string that provides inputs as defined in the environment template bundle schema file. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html\">Environments</a> in the <i>Proton User\n      Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:proton_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>\n         <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or\n        <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>"}))
    CreateEnvironmentOperationInput.add_member(:environment_account_connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection that you provide if you're provisioning your environment infrastructure resources to an environment\n      account. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html\">Environment account\n        connections</a> in the <i>Proton User guide</i>.</p>\n         <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or\n        <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>"}))
    CreateEnvironmentOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton environment. A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateEnvironmentOperationInput.add_member(:provisioning_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: 'provisioningRepository', traits: {"smithy.api#documentation" => "<p>The linked repository that you use to host your rendered infrastructure templates for self-managed provisioning. A linked repository is a repository\n      that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>\n         <p>To use self-managed provisioning for the environment, specify this parameter and omit the <code>environmentAccountConnectionId</code> and\n        <code>protonServiceRoleArn</code> parameters.</p>"}))
    CreateEnvironmentOperationInput.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It\n      determines the scope of infrastructure that a component can provision.</p>\n         <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with this environment.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    CreateEnvironmentOperationInput.add_member(:codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your\n      behalf.</p>\n         <p>To use CodeBuild-based provisioning for the environment or for any service instance running in the environment, specify either the\n      <code>environmentAccountConnectionId</code> or <code>codebuildRoleArn</code> parameter.</p>"}))
    CreateEnvironmentOperationInput.type = Types::CreateEnvironmentOperationInput
    CreateEnvironmentOperationOutput.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The environment detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentOperationOutput.type = Types::CreateEnvironmentOperationOutput
    CreateEnvironmentTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentTemplateOperationInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The environment template name as displayed in the developer interface.</p>"}))
    CreateEnvironmentTemplateOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the environment template.</p>"}))
    CreateEnvironmentTemplateOperationInput.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>A customer provided encryption key that Proton uses to encrypt data.</p>"}))
    CreateEnvironmentTemplateOperationInput.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning', traits: {"smithy.api#documentation" => "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"}))
    CreateEnvironmentTemplateOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton environment template. A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateEnvironmentTemplateOperationInput.type = Types::CreateEnvironmentTemplateOperationInput
    CreateEnvironmentTemplateOperationOutput.add_member(:environment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate', traits: {"smithy.api#documentation" => "<p>The environment template detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentTemplateOperationOutput.type = Types::CreateEnvironmentTemplateOperationOutput
    CreateEnvironmentTemplateVersionOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>When included, if two identical requests are made with the same client token, Proton returns the environment template version that the first\n      request created.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the new version of an environment template.</p>"}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To create a new minor version of the environment template, include <code>major Version</code>.</p>\n         <p>To create a new major and minor version of the environment template, exclude <code>major Version</code>.</p>"}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionSourceInput, location_name: 'source', traits: {"smithy.api#documentation" => "<p>An object that includes the template bundle S3 bucket path and name for the new version of an template.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton environment template version. A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateEnvironmentTemplateVersionOperationInput.type = Types::CreateEnvironmentTemplateVersionOperationInput
    CreateEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion', traits: {"smithy.api#documentation" => "<p>The environment template detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentTemplateVersionOperationOutput.type = Types::CreateEnvironmentTemplateVersionOperationOutput
    CreateRepositoryOperationInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    CreateRepositoryOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The repository name (for example, <code>myrepos/myrepo</code>).</p>", "smithy.api#required" => {}}))
    CreateRepositoryOperationInput.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of your AWS CodeStar connection that connects Proton to your repository provider account. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html\">Setting up for Proton</a> in the <i>Proton User\n        Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateRepositoryOperationInput.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>The ARN of your customer Amazon Web Services Key Management Service (Amazon Web Services KMS) key.</p>"}))
    CreateRepositoryOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton repository. A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateRepositoryOperationInput.type = Types::CreateRepositoryOperationInput
    CreateRepositoryOperationOutput.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The repository link's detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateRepositoryOperationOutput.type = Types::CreateRepositoryOperationOutput
    CreateServiceInstanceOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service instance to create.</p>", "smithy.api#required" => {}}))
    CreateServiceInstanceOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service the service instance is added to.</p>", "smithy.api#required" => {}}))
    CreateServiceInstanceOperationInput.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The spec for the service instance you want to create.</p>", "smithy.api#required" => {}}))
    CreateServiceInstanceOperationInput.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>To create a new major and minor version of the service template,\n        <i>exclude</i>\n            <code>major Version</code>.</p>"}))
    CreateServiceInstanceOperationInput.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>To create a new minor version of the service template, include a <code>major\n        Version</code>.</p>"}))
    CreateServiceInstanceOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton service instance.\n      A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateServiceInstanceOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token of the service instance to create.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceInstanceOperationInput.type = Types::CreateServiceInstanceOperationInput
    CreateServiceInstanceOperationOutput.add_member(:service_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#documentation" => "<p>The detailed data of the service instance being created.</p>", "smithy.api#required" => {}}))
    CreateServiceInstanceOperationOutput.type = Types::CreateServiceInstanceOperationOutput
    CreateServiceOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The service name.</p>", "smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the Proton service.</p>"}))
    CreateServiceOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template that's used to create the service.</p>", "smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the service template that was used to create the service.</p>", "smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the service template that was used to create the service.</p>"}))
    CreateServiceOperationInput.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>A link to a spec file that provides inputs as defined in the service template bundle\n      schema file. The spec file is in YAML format. <i>Don’t</i> include pipeline\n      inputs in the spec if your service template <i>doesn’t</i> include a service\n      pipeline. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-create-svc.html\">Create a service</a> in the\n        <i>Proton User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:repository_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'repositoryConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the repository connection. For more information, see\n        <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html#setting-up-vcontrol\">Setting up an\n        AWS CodeStar connection</a> in the <i>Proton User Guide</i>.\n        <i>Don't</i> include this parameter if your service template\n        <i>doesn't</i> include a service pipeline.</p>"}))
    CreateServiceOperationInput.add_member(:repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId', traits: {"smithy.api#documentation" => "<p>The ID of the code repository. <i>Don't</i> include this parameter if your\n      service template <i>doesn't</i> include a service pipeline.</p>"}))
    CreateServiceOperationInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the code repository branch that holds the code that's deployed in Proton.\n        <i>Don't</i> include this parameter if your service template\n        <i>doesn't</i> include a service pipeline.</p>"}))
    CreateServiceOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton service. A tag is\n      a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateServiceOperationInput.type = Types::CreateServiceOperationInput
    CreateServiceOperationOutput.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The service detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateServiceOperationOutput.type = Types::CreateServiceOperationOutput
    CreateServiceSyncConfigOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service the Proton Ops file is for.</p>", "smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The provider type for your repository.</p>", "smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch for your Proton Ops file.</p>", "smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsFilePath, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The path to the Proton Ops file.</p>", "smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.type = Types::CreateServiceSyncConfigOperationInput
    CreateServiceSyncConfigOperationOutput.add_member(:service_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig', traits: {"smithy.api#documentation" => "<p>The detailed data of the Proton Ops file.</p>"}))
    CreateServiceSyncConfigOperationOutput.type = Types::CreateServiceSyncConfigOperationOutput
    CreateServiceTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    CreateServiceTemplateOperationInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the service template as displayed in the developer interface.</p>"}))
    CreateServiceTemplateOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the service template.</p>"}))
    CreateServiceTemplateOperationInput.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>A customer provided encryption key that's used to encrypt data.</p>"}))
    CreateServiceTemplateOperationInput.add_member(:pipeline_provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'pipelineProvisioning', traits: {"smithy.api#documentation" => "<p>By default, Proton provides a service pipeline for your service. When this parameter is\n      included, it indicates that an Proton service pipeline <i>isn't</i> provided\n      for your service. After it's included, it <i>can't</i> be changed. For more\n      information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles\">Template\n        bundles</a> in the <i>Proton User Guide</i>.</p>"}))
    CreateServiceTemplateOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton service template.\n      A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateServiceTemplateOperationInput.type = Types::CreateServiceTemplateOperationInput
    CreateServiceTemplateOperationOutput.add_member(:service_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate', traits: {"smithy.api#documentation" => "<p>The service template detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateServiceTemplateOperationOutput.type = Types::CreateServiceTemplateOperationOutput
    CreateServiceTemplateVersionOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>When included, if two identical requests are made with the same client token, Proton\n      returns the service template version that the first request created.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the new version of a service template.</p>"}))
    CreateServiceTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To create a new minor version of the service template, include a <code>major\n        Version</code>.</p>\n         <p>To create a new major and minor version of the service template,\n        <i>exclude</i>\n            <code>major Version</code>.</p>"}))
    CreateServiceTemplateVersionOperationInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionSourceInput, location_name: 'source', traits: {"smithy.api#documentation" => "<p>An object that includes the template bundle S3 bucket path and name for the new version of\n      a service template.</p>", "smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:compatible_environment_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInputList, location_name: 'compatibleEnvironmentTemplates', traits: {"smithy.api#documentation" => "<p>An array of environment template objects that are compatible with the new service template\n      version. A service instance based on this service template version can run in environments\n      based on compatible templates.</p>", "smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of metadata items that you can associate with the Proton service template\n      version. A tag is a key-value pair.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton resources and tagging</a> in the\n        <i>Proton User Guide</i>.</p>"}))
    CreateServiceTemplateVersionOperationInput.add_member(:supported_component_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: 'supportedComponentSources', traits: {"smithy.api#documentation" => "<p>An array of supported component sources. Components with supported sources can be attached\n      to service instances based on this service template version.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    CreateServiceTemplateVersionOperationInput.type = Types::CreateServiceTemplateVersionOperationInput
    CreateServiceTemplateVersionOperationOutput.add_member(:service_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion', traits: {"smithy.api#documentation" => "<p>The service template version summary of detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationOutput.type = Types::CreateServiceTemplateVersionOperationOutput
    CreateTemplateSyncConfigOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of your registered template.</p>", "smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The type of the registered template.</p>", "smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The provider type for your repository.</p>", "smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name (for example, <code>myrepos/myrepo</code>).</p>", "smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch for your template.</p>", "smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:subdirectory, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdirectory, location_name: 'subdirectory', traits: {"smithy.api#documentation" => "<p>A repository subdirectory path to your template bundle directory. When included, Proton limits the template bundle search to this\n   repository directory.</p>"}))
    CreateTemplateSyncConfigOperationInput.type = Types::CreateTemplateSyncConfigOperationInput
    CreateTemplateSyncConfigOperationOutput.add_member(:template_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig', traits: {"smithy.api#documentation" => "<p>The template sync configuration detail data that's returned by Proton.</p>"}))
    CreateTemplateSyncConfigOperationOutput.type = Types::CreateTemplateSyncConfigOperationOutput
    DeleteComponentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component to delete.</p>", "smithy.api#required" => {}}))
    DeleteComponentOperationInput.type = Types::DeleteComponentOperationInput
    DeleteComponentOperationOutput.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#documentation" => "<p>The detailed data of the component being deleted.</p>"}))
    DeleteComponentOperationOutput.type = Types::DeleteComponentOperationOutput
    DeleteDeploymentInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the deployment to delete.</p>", "smithy.api#required" => {}}))
    DeleteDeploymentInput.type = Types::DeleteDeploymentInput
    DeleteDeploymentOutput.add_member(:deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment, location_name: 'deployment', traits: {"smithy.api#documentation" => "<p>The detailed data of the deployment being deleted.</p>"}))
    DeleteDeploymentOutput.type = Types::DeleteDeploymentOutput
    DeleteEnvironmentAccountConnectionOperationInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection to delete.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentAccountConnectionOperationInput.type = Types::DeleteEnvironmentAccountConnectionOperationInput
    DeleteEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#documentation" => "<p>The detailed data of the environment account connection being deleted.</p>"}))
    DeleteEnvironmentAccountConnectionOperationOutput.type = Types::DeleteEnvironmentAccountConnectionOperationOutput
    DeleteEnvironmentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment to delete.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentOperationInput.type = Types::DeleteEnvironmentOperationInput
    DeleteEnvironmentOperationOutput.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The detailed data of the environment being deleted.</p>"}))
    DeleteEnvironmentOperationOutput.type = Types::DeleteEnvironmentOperationOutput
    DeleteEnvironmentTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment template to delete.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentTemplateOperationInput.type = Types::DeleteEnvironmentTemplateOperationInput
    DeleteEnvironmentTemplateOperationOutput.add_member(:environment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate', traits: {"smithy.api#documentation" => "<p>The detailed data of the environment template being deleted.</p>"}))
    DeleteEnvironmentTemplateOperationOutput.type = Types::DeleteEnvironmentTemplateOperationOutput
    DeleteEnvironmentTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The environment template major version to delete.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentTemplateVersionOperationInput.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>The environment template minor version to delete.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentTemplateVersionOperationInput.type = Types::DeleteEnvironmentTemplateVersionOperationInput
    DeleteEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion', traits: {"smithy.api#documentation" => "<p>The detailed data of the environment template version being deleted.</p>"}))
    DeleteEnvironmentTemplateVersionOperationOutput.type = Types::DeleteEnvironmentTemplateVersionOperationOutput
    DeleteRepositoryOperationInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    DeleteRepositoryOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    DeleteRepositoryOperationInput.type = Types::DeleteRepositoryOperationInput
    DeleteRepositoryOperationOutput.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The deleted repository link's detail data that's returned by Proton.</p>"}))
    DeleteRepositoryOperationOutput.type = Types::DeleteRepositoryOperationOutput
    DeleteServiceOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service to delete.</p>", "smithy.api#required" => {}}))
    DeleteServiceOperationInput.type = Types::DeleteServiceOperationInput
    DeleteServiceOperationOutput.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The detailed data of the service being deleted.</p>"}))
    DeleteServiceOperationOutput.type = Types::DeleteServiceOperationOutput
    DeleteServiceSyncConfigOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that you want to delete the service sync configuration for.</p>", "smithy.api#required" => {}}))
    DeleteServiceSyncConfigOperationInput.type = Types::DeleteServiceSyncConfigOperationInput
    DeleteServiceSyncConfigOperationOutput.add_member(:service_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig', traits: {"smithy.api#documentation" => "<p>The detailed data for the service sync config.</p>"}))
    DeleteServiceSyncConfigOperationOutput.type = Types::DeleteServiceSyncConfigOperationOutput
    DeleteServiceTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service template to delete.</p>", "smithy.api#required" => {}}))
    DeleteServiceTemplateOperationInput.type = Types::DeleteServiceTemplateOperationInput
    DeleteServiceTemplateOperationOutput.add_member(:service_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate', traits: {"smithy.api#documentation" => "<p>The detailed data of the service template being deleted.</p>"}))
    DeleteServiceTemplateOperationOutput.type = Types::DeleteServiceTemplateOperationOutput
    DeleteServiceTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    DeleteServiceTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The service template major version to delete.</p>", "smithy.api#required" => {}}))
    DeleteServiceTemplateVersionOperationInput.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>The service template minor version to delete.</p>", "smithy.api#required" => {}}))
    DeleteServiceTemplateVersionOperationInput.type = Types::DeleteServiceTemplateVersionOperationInput
    DeleteServiceTemplateVersionOperationOutput.add_member(:service_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion', traits: {"smithy.api#documentation" => "<p>The detailed data of the service template version being deleted.</p>"}))
    DeleteServiceTemplateVersionOperationOutput.type = Types::DeleteServiceTemplateVersionOperationOutput
    DeleteTemplateSyncConfigOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The template name.</p>", "smithy.api#required" => {}}))
    DeleteTemplateSyncConfigOperationInput.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The template type.</p>", "smithy.api#required" => {}}))
    DeleteTemplateSyncConfigOperationInput.type = Types::DeleteTemplateSyncConfigOperationInput
    DeleteTemplateSyncConfigOperationOutput.add_member(:template_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig', traits: {"smithy.api#documentation" => "<p>The template sync configuration detail data that's returned by Proton.</p>"}))
    DeleteTemplateSyncConfigOperationOutput.type = Types::DeleteTemplateSyncConfigOperationOutput
    Deployment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployment.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target of the deployment.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:target_resource_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'targetResourceCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the depoyment target was created.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:target_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetResourceType, location_name: 'targetResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the deployment target. It can be an environment, service, service instance, or component.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment associated with this deployment.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service in this deployment.</p>"}))
    Deployment.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the deployment's service instance.</p>"}))
    Deployment.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component associated with this deployment.</p>"}))
    Deployment.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The status of the deployment.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>The deployment status message.</p>"}))
    Deployment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the deployment was created.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the deployment was last modified.</p>", "smithy.api#required" => {}}))
    Deployment.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completedAt', traits: {"smithy.api#documentation" => "<p>The date and time the deployment was completed.</p>"}))
    Deployment.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment.</p>"}))
    Deployment.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment.</p>"}))
    Deployment.add_member(:initial_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'initialState', traits: {"smithy.api#documentation" => "<p>The initial state of the target resource at the time of the deployment.</p>"}))
    Deployment.add_member(:target_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'targetState', traits: {"smithy.api#documentation" => "<p>The target state of the target resource at the time of the deployment.</p>"}))
    Deployment.type = Types::Deployment
    DeploymentState.add_member(:service_instance, Types::DeploymentState::ServiceInstance, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceState, location_name: 'serviceInstance', traits: {"smithy.api#documentation" => "<p>The state of the service instance associated with the deployment.</p>"}))
    DeploymentState.add_member(:environment, Types::DeploymentState::Environment, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The state of the environment associated with the deployment.</p>"}))
    DeploymentState.add_member(:service_pipeline, Types::DeploymentState::ServicePipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipelineState, location_name: 'servicePipeline', traits: {"smithy.api#documentation" => "<p>The state of the service pipeline associated with the deployment.</p>"}))
    DeploymentState.add_member(:component, Types::DeploymentState::Component, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentState, location_name: 'component', traits: {"smithy.api#documentation" => "<p>The state of the component associated with the deployment.</p>"}))
    DeploymentState.add_member(:unknown, Types::DeploymentState::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DeploymentState.type = Types::DeploymentState
    DeploymentSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployment.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target of the deployment.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:target_resource_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'targetResourceCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the target resource was created.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:target_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetResourceType, location_name: 'targetResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the deployment target. It can be an environment, service, service instance, or component.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the deployment was created.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the deployment was last modified.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completedAt', traits: {"smithy.api#documentation" => "<p>The date and time the deployment was completed.</p>"}))
    DeploymentSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment associated with the deployment.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service associated with the deployment.</p>"}))
    DeploymentSummary.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance associated with the deployment.</p>"}))
    DeploymentSummary.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component associated with the deployment.</p>"}))
    DeploymentSummary.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment.</p>"}))
    DeploymentSummary.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment.</p>"}))
    DeploymentSummary.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The current status of the deployment.</p>", "smithy.api#required" => {}}))
    DeploymentSummary.type = Types::DeploymentSummary
    DeploymentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSummary)
    Environment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the environment.</p>"}))
    Environment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the environment was created.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:last_deployment_attempted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#documentation" => "<p>The time when a deployment of the environment was last attempted.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:last_deployment_succeeded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#documentation" => "<p>The time when the environment was last deployed successfully.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment template.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the environment template.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the environment template.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The environment deployment status.</p>", "smithy.api#required" => {}}))
    Environment.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>An environment deployment status message.</p>"}))
    Environment.add_member(:proton_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>"}))
    Environment.add_member(:environment_account_connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection that's used to provision infrastructure resources in an environment account.</p>"}))
    Environment.add_member(:environment_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>"}))
    Environment.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The environment spec.</p>"}))
    Environment.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning', traits: {"smithy.api#documentation" => "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"}))
    Environment.add_member(:provisioning_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: 'provisioningRepository', traits: {"smithy.api#documentation" => "<p>The linked repository that you use to host your rendered infrastructure templates for self-managed\n   provisioning. A linked repository is a repository that has been registered with Proton. For more information, see\n    <a href=\"https://docs.aws.amazon.com/proton/latest/APIReference/API_CreateRepository.html\">CreateRepository</a>.</p>"}))
    Environment.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It\n      determines the scope of infrastructure that a component can provision.</p>\n         <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    Environment.add_member(:codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your\n      behalf.</p>"}))
    Environment.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment of this environment.</p>"}))
    Environment.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment of this environment.</p>"}))
    Environment.type = Types::Environment
    EnvironmentAccountConnection.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:management_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'managementAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the management account that's connected to the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:environment_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId', traits: {"smithy.api#documentation" => "<p>The environment account that's connected to the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM service role that's associated with the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment that's associated with the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:requested_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'requestedAt', traits: {"smithy.api#documentation" => "<p>The time when the environment account connection request was made.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the environment account connection was last modified.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated\n      environment account. It determines the scope of infrastructure that a component can provision in the account.</p>\n         <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any\n      environments running in the account.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    EnvironmentAccountConnection.add_member(:codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources\n      using CodeBuild-based provisioning in the associated environment account.</p>"}))
    EnvironmentAccountConnection.type = Types::EnvironmentAccountConnection
    EnvironmentAccountConnectionStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus)
    EnvironmentAccountConnectionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:management_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'managementAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the management account that's connected to the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:environment_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the environment account that's connected to the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM service role that's associated with the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment that's associated with the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:requested_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'requestedAt', traits: {"smithy.api#documentation" => "<p>The time when the environment account connection request was made.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the environment account connection was last modified.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the environment account connection.</p>", "smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated\n      environment account. It determines the scope of infrastructure that a component can provision in the account.</p>\n         <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any\n      environments running in the account.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    EnvironmentAccountConnectionSummary.type = Types::EnvironmentAccountConnectionSummary
    EnvironmentAccountConnectionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionSummary)
    EnvironmentState.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The environment spec that was used to create the environment.</p>"}))
    EnvironmentState.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template that was used to create the environment.</p>", "smithy.api#required" => {}}))
    EnvironmentState.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the environment template that was used to create the environment.</p>", "smithy.api#required" => {}}))
    EnvironmentState.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the environment template that was used to create the environment.</p>", "smithy.api#required" => {}}))
    EnvironmentState.type = Types::EnvironmentState
    EnvironmentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the environment.</p>"}))
    EnvironmentSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the environment was created.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:last_deployment_attempted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#documentation" => "<p>The time when a deployment of the environment was last attempted.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:last_deployment_succeeded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#documentation" => "<p>The time when the environment was last deployed successfully.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The environment deployment status.</p>", "smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>An environment deployment status message.</p>"}))
    EnvironmentSummary.add_member(:proton_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>"}))
    EnvironmentSummary.add_member(:environment_account_connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection that the environment is associated with.</p>"}))
    EnvironmentSummary.add_member(:environment_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>"}))
    EnvironmentSummary.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning', traits: {"smithy.api#documentation" => "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"}))
    EnvironmentSummary.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It\n      determines the scope of infrastructure that a component can provision.</p>\n         <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    EnvironmentSummary.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment of this environment.</p>"}))
    EnvironmentSummary.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment of this environment.</p>"}))
    EnvironmentSummary.type = Types::EnvironmentSummary
    EnvironmentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary)
    EnvironmentTemplate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the environment template was created.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the environment template was last modified.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the environment template as displayed in the developer interface.</p>"}))
    EnvironmentTemplate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the environment template.</p>"}))
    EnvironmentTemplate.add_member(:recommended_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion', traits: {"smithy.api#documentation" => "<p>The ID of the recommended version of the environment template.</p>"}))
    EnvironmentTemplate.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>The customer provided encryption key for the environment template.</p>"}))
    EnvironmentTemplate.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning', traits: {"smithy.api#documentation" => "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"}))
    EnvironmentTemplate.type = Types::EnvironmentTemplate
    EnvironmentTemplateFilter.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>Include <code>templateName</code> to filter search for a template name.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateFilter.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>Include <code>majorVersion</code> to filter search for a major version.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateFilter.type = Types::EnvironmentTemplateFilter
    EnvironmentTemplateFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateFilter)
    EnvironmentTemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the environment template was created.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the environment template was last modified.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the environment template as displayed in the developer interface.</p>"}))
    EnvironmentTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the environment template.</p>"}))
    EnvironmentTemplateSummary.add_member(:recommended_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion', traits: {"smithy.api#documentation" => "<p>The recommended version of the environment template.</p>"}))
    EnvironmentTemplateSummary.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning', traits: {"smithy.api#documentation" => "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"}))
    EnvironmentTemplateSummary.type = Types::EnvironmentTemplateSummary
    EnvironmentTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateSummary)
    EnvironmentTemplateVersion.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The latest major version that's associated with the version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:recommended_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion', traits: {"smithy.api#documentation" => "<p>The recommended minor version of the environment template.</p>"}))
    EnvironmentTemplateVersion.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the version of an environment template.</p>"}))
    EnvironmentTemplateVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the minor version of an environment template.</p>"}))
    EnvironmentTemplateVersion.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the version of an environment template was created.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the version of an environment template was last modified.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema of the version of an environment template.</p>"}))
    EnvironmentTemplateVersion.type = Types::EnvironmentTemplateVersion
    EnvironmentTemplateVersionSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The latest major version that's associated with the version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>The version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:recommended_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion', traits: {"smithy.api#documentation" => "<p>The recommended minor version of the environment template.</p>"}))
    EnvironmentTemplateVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the version of an environment template.</p>"}))
    EnvironmentTemplateVersionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the version of an environment template.</p>"}))
    EnvironmentTemplateVersionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the version of an environment template.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the version of an environment template was created.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the version of an environment template was last modified.</p>", "smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.type = Types::EnvironmentTemplateVersionSummary
    EnvironmentTemplateVersionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionSummary)
    GetAccountSettingsOperationInput.type = Types::GetAccountSettingsOperationInput
    GetAccountSettingsOperationOutput.add_member(:account_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'accountSettings', traits: {"smithy.api#documentation" => "<p>The Proton pipeline service role detail data that's returned by Proton.</p>"}))
    GetAccountSettingsOperationOutput.type = Types::GetAccountSettingsOperationOutput
    GetComponentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component that you want to get the detailed data for.</p>", "smithy.api#required" => {}}))
    GetComponentOperationInput.type = Types::GetComponentOperationInput
    GetComponentOperationOutput.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested component.</p>"}))
    GetComponentOperationOutput.type = Types::GetComponentOperationOutput
    GetDeploymentInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the deployment that you want to get the detailed data for.</p>", "smithy.api#required" => {}}))
    GetDeploymentInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of a environment that you want to get the detailed data for.</p>"}))
    GetDeploymentInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service associated with the given deployment ID.</p>"}))
    GetDeploymentInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance associated with the given deployment ID. <code>serviceName</code> must be specified to identify the service\n   instance.</p>"}))
    GetDeploymentInput.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of a component that you want to get the detailed data for.</p>"}))
    GetDeploymentInput.type = Types::GetDeploymentInput
    GetDeploymentOutput.add_member(:deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment, location_name: 'deployment', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested deployment.</p>"}))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetEnvironmentAccountConnectionOperationInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection that you want to get the detailed data for.</p>", "smithy.api#required" => {}}))
    GetEnvironmentAccountConnectionOperationInput.type = Types::GetEnvironmentAccountConnectionOperationInput
    GetEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested environment account connection.</p>", "smithy.api#required" => {}}))
    GetEnvironmentAccountConnectionOperationOutput.type = Types::GetEnvironmentAccountConnectionOperationOutput
    GetEnvironmentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment that you want to get the detailed data for.</p>", "smithy.api#required" => {}}))
    GetEnvironmentOperationInput.type = Types::GetEnvironmentOperationInput
    GetEnvironmentOperationOutput.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested environment.</p>", "smithy.api#required" => {}}))
    GetEnvironmentOperationOutput.type = Types::GetEnvironmentOperationOutput
    GetEnvironmentTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment template that you want to get the detailed data for.</p>", "smithy.api#required" => {}}))
    GetEnvironmentTemplateOperationInput.type = Types::GetEnvironmentTemplateOperationInput
    GetEnvironmentTemplateOperationOutput.add_member(:environment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested environment template.</p>", "smithy.api#required" => {}}))
    GetEnvironmentTemplateOperationOutput.type = Types::GetEnvironmentTemplateOperationOutput
    GetEnvironmentTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template a version of which you want to get detailed data for.</p>", "smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To get environment template major version detail data, include <code>major Version</code>.</p>", "smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationInput.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>To get environment template minor version detail data, include <code>minorVersion</code>.</p>", "smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationInput.type = Types::GetEnvironmentTemplateVersionOperationInput
    GetEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested environment template version.</p>", "smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationOutput.type = Types::GetEnvironmentTemplateVersionOperationOutput
    GetRepositoryOperationInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    GetRepositoryOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The repository name, for example <code>myrepos/myrepo</code>.</p>", "smithy.api#required" => {}}))
    GetRepositoryOperationInput.type = Types::GetRepositoryOperationInput
    GetRepositoryOperationOutput.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The repository link's detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    GetRepositoryOperationOutput.type = Types::GetRepositoryOperationOutput
    GetRepositorySyncStatusOperationInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncType, location_name: 'syncType', traits: {"smithy.api#documentation" => "<p>The repository sync type.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.type = Types::GetRepositorySyncStatusOperationInput
    GetRepositorySyncStatusOperationOutput.add_member(:latest_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncAttempt, location_name: 'latestSync', traits: {"smithy.api#documentation" => "<p>The repository sync status detail data that's returned by Proton.</p>"}))
    GetRepositorySyncStatusOperationOutput.type = Types::GetRepositorySyncStatusOperationOutput
    GetResourcesSummaryOperationInput.type = Types::GetResourcesSummaryOperationInput
    GetResourcesSummaryOperationOutput.add_member(:counts, Smithy::Schema::Shapes::ShapeRef.new(shape: CountsSummary, location_name: 'counts', traits: {"smithy.api#documentation" => "<p>Summary counts of each Proton resource type.</p>", "smithy.api#required" => {}}))
    GetResourcesSummaryOperationOutput.type = Types::GetResourcesSummaryOperationOutput
    GetServiceInstanceOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a service instance that you want to get the detailed data for.</p>", "smithy.api#required" => {}}))
    GetServiceInstanceOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that you want the service instance input for.</p>", "smithy.api#required" => {}}))
    GetServiceInstanceOperationInput.type = Types::GetServiceInstanceOperationInput
    GetServiceInstanceOperationOutput.add_member(:service_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested service instance.</p>", "smithy.api#required" => {}}))
    GetServiceInstanceOperationOutput.type = Types::GetServiceInstanceOperationOutput
    GetServiceInstanceSyncStatusOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that the service instance belongs to.</p>", "smithy.api#required" => {}}))
    GetServiceInstanceSyncStatusOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that you want the sync status input for.</p>", "smithy.api#required" => {}}))
    GetServiceInstanceSyncStatusOperationInput.type = Types::GetServiceInstanceSyncStatusOperationInput
    GetServiceInstanceSyncStatusOperationOutput.add_member(:latest_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSync', traits: {"smithy.api#documentation" => "<p>The detailed data of the latest sync with the service instance.</p>"}))
    GetServiceInstanceSyncStatusOperationOutput.add_member(:latest_successful_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSuccessfulSync', traits: {"smithy.api#documentation" => "<p>The detailed data of the latest successful sync with the service instance.</p>"}))
    GetServiceInstanceSyncStatusOperationOutput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'desiredState', traits: {"smithy.api#documentation" => "<p>The service instance sync desired state that's returned by Proton</p>"}))
    GetServiceInstanceSyncStatusOperationOutput.type = Types::GetServiceInstanceSyncStatusOperationOutput
    GetServiceOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service that you want to get the detailed data for.</p>", "smithy.api#required" => {}}))
    GetServiceOperationInput.type = Types::GetServiceOperationInput
    GetServiceOperationOutput.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested service.</p>"}))
    GetServiceOperationOutput.type = Types::GetServiceOperationOutput
    GetServiceSyncBlockerSummaryOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that you want to get the service sync blocker summary for. If\n      given only the service name, all instances are blocked.</p>", "smithy.api#required" => {}}))
    GetServiceSyncBlockerSummaryOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that you want to get the service sync blocker summary\n      for. If given bothe the instance name and the service name, only the instance is\n      blocked.</p>"}))
    GetServiceSyncBlockerSummaryOperationInput.type = Types::GetServiceSyncBlockerSummaryOperationInput
    GetServiceSyncBlockerSummaryOperationOutput.add_member(:service_sync_blocker_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncBlockerSummary, location_name: 'serviceSyncBlockerSummary', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested service sync blocker summary.</p>"}))
    GetServiceSyncBlockerSummaryOperationOutput.type = Types::GetServiceSyncBlockerSummaryOperationOutput
    GetServiceSyncConfigOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that you want to get the service sync configuration for.</p>", "smithy.api#required" => {}}))
    GetServiceSyncConfigOperationInput.type = Types::GetServiceSyncConfigOperationInput
    GetServiceSyncConfigOperationOutput.add_member(:service_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested service sync configuration.</p>"}))
    GetServiceSyncConfigOperationOutput.type = Types::GetServiceSyncConfigOperationOutput
    GetServiceTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service template that you want to get detailed data for.</p>", "smithy.api#required" => {}}))
    GetServiceTemplateOperationInput.type = Types::GetServiceTemplateOperationInput
    GetServiceTemplateOperationOutput.add_member(:service_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested service template.</p>", "smithy.api#required" => {}}))
    GetServiceTemplateOperationOutput.type = Types::GetServiceTemplateOperationOutput
    GetServiceTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template a version of which you want to get detailed data\n      for.</p>", "smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To get service template major version detail data, include <code>major\n      Version</code>.</p>", "smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationInput.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>To get service template minor version detail data, include\n      <code>minorVersion</code>.</p>", "smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationInput.type = Types::GetServiceTemplateVersionOperationInput
    GetServiceTemplateVersionOperationOutput.add_member(:service_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion', traits: {"smithy.api#documentation" => "<p>The detailed data of the requested service template version.</p>", "smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationOutput.type = Types::GetServiceTemplateVersionOperationOutput
    GetTemplateSyncConfigOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The template name.</p>", "smithy.api#required" => {}}))
    GetTemplateSyncConfigOperationInput.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The template type.</p>", "smithy.api#required" => {}}))
    GetTemplateSyncConfigOperationInput.type = Types::GetTemplateSyncConfigOperationInput
    GetTemplateSyncConfigOperationOutput.add_member(:template_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig', traits: {"smithy.api#documentation" => "<p>The template sync configuration detail data that's returned by Proton.</p>"}))
    GetTemplateSyncConfigOperationOutput.type = Types::GetTemplateSyncConfigOperationOutput
    GetTemplateSyncStatusOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The template name.</p>", "smithy.api#required" => {}}))
    GetTemplateSyncStatusOperationInput.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The template type.</p>", "smithy.api#required" => {}}))
    GetTemplateSyncStatusOperationInput.add_member(:template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateVersion', traits: {"smithy.api#documentation" => "<p>The template major version.</p>", "smithy.api#required" => {}}))
    GetTemplateSyncStatusOperationInput.type = Types::GetTemplateSyncStatusOperationInput
    GetTemplateSyncStatusOperationOutput.add_member(:latest_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSync', traits: {"smithy.api#documentation" => "<p>The details of the last sync that's returned by Proton.</p>"}))
    GetTemplateSyncStatusOperationOutput.add_member(:latest_successful_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSuccessfulSync', traits: {"smithy.api#documentation" => "<p>The details of the last successful sync that's returned by Proton.</p>"}))
    GetTemplateSyncStatusOperationOutput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'desiredState', traits: {"smithy.api#documentation" => "<p>The template sync desired state that's returned by Proton.</p>"}))
    GetTemplateSyncStatusOperationOutput.type = Types::GetTemplateSyncStatusOperationOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LatestSyncBlockers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker)
    ListComponentOutputsOperationInput.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component whose outputs you want.</p>", "smithy.api#required" => {}}))
    ListComponentOutputsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>"}))
    ListComponentOutputsOperationInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment whose outputs you want.</p>"}))
    ListComponentOutputsOperationInput.type = Types::ListComponentOutputsOperationInput
    ListComponentOutputsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>"}))
    ListComponentOutputsOperationOutput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>An array of component Infrastructure as Code (IaC) outputs.</p>", "smithy.api#required" => {}}))
    ListComponentOutputsOperationOutput.type = Types::ListComponentOutputsOperationOutput
    ListComponentProvisionedResourcesOperationInput.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component whose provisioned resources you want.</p>", "smithy.api#required" => {}}))
    ListComponentProvisionedResourcesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources\n      that was previously requested.</p>"}))
    ListComponentProvisionedResourcesOperationInput.type = Types::ListComponentProvisionedResourcesOperationInput
    ListComponentProvisionedResourcesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the current requested list of\n      provisioned resources.</p>"}))
    ListComponentProvisionedResourcesOperationOutput.add_member(:provisioned_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#documentation" => "<p>An array of provisioned resources for a component.</p>", "smithy.api#required" => {}}))
    ListComponentProvisionedResourcesOperationOutput.type = Types::ListComponentProvisionedResourcesOperationOutput
    ListComponentsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next component in the array of components, after the list of components that was previously\n      requested.</p>"}))
    ListComponentsOperationInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of an environment for result list filtering. Proton returns components associated with the environment or attached to service instances\n      running in it.</p>"}))
    ListComponentsOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of a service for result list filtering. Proton returns components attached to service instances of the service.</p>"}))
    ListComponentsOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of a service instance for result list filtering. Proton returns the component attached to the service instance, if any.</p>"}))
    ListComponentsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of components to list.</p>"}))
    ListComponentsOperationInput.type = Types::ListComponentsOperationInput
    ListComponentsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next component in the array of components, after the current requested list of components.</p>"}))
    ListComponentsOperationOutput.add_member(:components, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: 'components', traits: {"smithy.api#documentation" => "<p>An array of components with summary data.</p>", "smithy.api#required" => {}}))
    ListComponentsOperationOutput.type = Types::ListComponentsOperationOutput
    ListDeploymentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next deployment in the array of deployment, after the list of deployment that was previously\n   requested.</p>"}))
    ListDeploymentsInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of an environment for result list filtering. Proton returns deployments associated with the environment.</p>"}))
    ListDeploymentsInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of a service for result list filtering. Proton returns deployments associated with service instances of the service.</p>"}))
    ListDeploymentsInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of a service instance for result list filtering. Proton returns the deployments associated with the service instance.</p>"}))
    ListDeploymentsInput.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of a component for result list filtering. Proton returns deployments associated with that component.</p>"}))
    ListDeploymentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of deployments to list.</p>"}))
    ListDeploymentsInput.type = Types::ListDeploymentsInput
    ListDeploymentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next deployment in the array of deployment, after the current requested list of deployment.</p>"}))
    ListDeploymentsOutput.add_member(:deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSummaryList, location_name: 'deployments', traits: {"smithy.api#documentation" => "<p>An array of deployment with summary data.</p>", "smithy.api#required" => {}}))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListEnvironmentAccountConnectionsOperationInput.add_member(:requested_by, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionRequesterAccountType, location_name: 'requestedBy', traits: {"smithy.api#documentation" => "<p>The type of account making the <code>ListEnvironmentAccountConnections</code> request.</p>", "smithy.api#required" => {}}))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The environment name that's associated with each listed environment account connection.</p>"}))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatusList, location_name: 'statuses', traits: {"smithy.api#documentation" => "<p>The status details for each listed environment account connection.</p>"}))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the list of\n      environment account connections that was previously requested.</p>"}))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of environment account connections to list.</p>"}))
    ListEnvironmentAccountConnectionsOperationInput.type = Types::ListEnvironmentAccountConnectionsOperationInput
    ListEnvironmentAccountConnectionsOperationOutput.add_member(:environment_account_connections, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionSummaryList, location_name: 'environmentAccountConnections', traits: {"smithy.api#documentation" => "<p>An array of environment account connections with details that's returned by Proton. </p>", "smithy.api#required" => {}}))
    ListEnvironmentAccountConnectionsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the current\n      requested list of environment account connections.</p>"}))
    ListEnvironmentAccountConnectionsOperationOutput.type = Types::ListEnvironmentAccountConnectionsOperationOutput
    ListEnvironmentOutputsOperationInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The environment name.</p>", "smithy.api#required" => {}}))
    ListEnvironmentOutputsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment output in the array of environment outputs, after the list of environment outputs that was\n      previously requested.</p>"}))
    ListEnvironmentOutputsOperationInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment whose outputs you want.</p>"}))
    ListEnvironmentOutputsOperationInput.type = Types::ListEnvironmentOutputsOperationInput
    ListEnvironmentOutputsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment output in the array of environment outputs, after the current requested list of\n      environment outputs.</p>"}))
    ListEnvironmentOutputsOperationOutput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>An array of environment outputs with detail data.</p>", "smithy.api#required" => {}}))
    ListEnvironmentOutputsOperationOutput.type = Types::ListEnvironmentOutputsOperationOutput
    ListEnvironmentProvisionedResourcesOperationInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The environment name.</p>", "smithy.api#required" => {}}))
    ListEnvironmentProvisionedResourcesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment provisioned resource in the array of environment provisioned resources, after the list of\n      environment provisioned resources that was previously requested.</p>"}))
    ListEnvironmentProvisionedResourcesOperationInput.type = Types::ListEnvironmentProvisionedResourcesOperationInput
    ListEnvironmentProvisionedResourcesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment provisioned resource in the array of provisioned resources, after the current requested\n      list of environment provisioned resources.</p>"}))
    ListEnvironmentProvisionedResourcesOperationOutput.add_member(:provisioned_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#documentation" => "<p>An array of environment provisioned resources.</p>", "smithy.api#required" => {}}))
    ListEnvironmentProvisionedResourcesOperationOutput.type = Types::ListEnvironmentProvisionedResourcesOperationOutput
    ListEnvironmentTemplateVersionsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the\n      list of major or minor versions that was previously requested.</p>"}))
    ListEnvironmentTemplateVersionsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of major or minor versions of an environment template to list.</p>"}))
    ListEnvironmentTemplateVersionsOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    ListEnvironmentTemplateVersionsOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To view a list of minor of versions under a major version of an environment template, include <code>major Version</code>.</p>\n         <p>To view a list of major versions of an environment template, <i>exclude</i>\n            <code>major Version</code>.</p>"}))
    ListEnvironmentTemplateVersionsOperationInput.type = Types::ListEnvironmentTemplateVersionsOperationInput
    ListEnvironmentTemplateVersionsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the\n      list of major or minor versions that was previously requested.</p>"}))
    ListEnvironmentTemplateVersionsOperationOutput.add_member(:template_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionSummaryList, location_name: 'templateVersions', traits: {"smithy.api#documentation" => "<p>An array of major or minor versions of an environment template detail data.</p>", "smithy.api#required" => {}}))
    ListEnvironmentTemplateVersionsOperationOutput.type = Types::ListEnvironmentTemplateVersionsOperationOutput
    ListEnvironmentTemplatesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment template in the array of environment templates, after the list of environment templates\n      that was previously requested.</p>"}))
    ListEnvironmentTemplatesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of environment templates to list.</p>"}))
    ListEnvironmentTemplatesOperationInput.type = Types::ListEnvironmentTemplatesOperationInput
    ListEnvironmentTemplatesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment template in the array of environment templates, after the current requested list of\n      environment templates.</p>"}))
    ListEnvironmentTemplatesOperationOutput.add_member(:templates, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateSummaryList, location_name: 'templates', traits: {"smithy.api#documentation" => "<p>An array of environment templates with detail data.</p>", "smithy.api#required" => {}}))
    ListEnvironmentTemplatesOperationOutput.type = Types::ListEnvironmentTemplatesOperationOutput
    ListEnvironmentsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment in the array of environments, after the list of environments that was previously\n      requested.</p>"}))
    ListEnvironmentsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of environments to list.</p>"}))
    ListEnvironmentsOperationInput.add_member(:environment_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateFilterList, location_name: 'environmentTemplates', traits: {"smithy.api#documentation" => "<p>An array of the versions of the environment template.</p>"}))
    ListEnvironmentsOperationInput.type = Types::ListEnvironmentsOperationInput
    ListEnvironmentsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next environment in the array of environments, after the current requested list of environments.</p>"}))
    ListEnvironmentsOperationOutput.add_member(:environments, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummaryList, location_name: 'environments', traits: {"smithy.api#documentation" => "<p>An array of environment detail data summaries.</p>", "smithy.api#required" => {}}))
    ListEnvironmentsOperationOutput.type = Types::ListEnvironmentsOperationOutput
    ListRepositoriesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next repository in the array of repositories, after the list of repositories previously requested.</p>"}))
    ListRepositoriesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of repositories to list.</p>"}))
    ListRepositoriesOperationInput.type = Types::ListRepositoriesOperationInput
    ListRepositoriesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next repository in the array of repositories, after the current requested list of repositories. </p>"}))
    ListRepositoriesOperationOutput.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySummaryList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>An array of repository links.</p>", "smithy.api#required" => {}}))
    ListRepositoriesOperationOutput.type = Types::ListRepositoriesOperationOutput
    ListRepositorySyncDefinitionsOperationInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationInput.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncType, location_name: 'syncType', traits: {"smithy.api#documentation" => "<p>The sync type. The only supported value is <code>TEMPLATE_SYNC</code>.</p>", "smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the list of repository\n      sync definitions previously requested.</p>"}))
    ListRepositorySyncDefinitionsOperationInput.type = Types::ListRepositorySyncDefinitionsOperationInput
    ListRepositorySyncDefinitionsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the current requested\n      list of repository sync definitions.</p>"}))
    ListRepositorySyncDefinitionsOperationOutput.add_member(:sync_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinitionList, location_name: 'syncDefinitions', traits: {"smithy.api#documentation" => "<p>An array of repository sync definitions.</p>", "smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationOutput.type = Types::ListRepositorySyncDefinitionsOperationOutput
    ListServiceInstanceOutputsOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance whose outputs you want.</p>", "smithy.api#required" => {}}))
    ListServiceInstanceOutputsOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>", "smithy.api#required" => {}}))
    ListServiceInstanceOutputsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next output in the array of outputs, after the\n      list of outputs that was previously requested.</p>"}))
    ListServiceInstanceOutputsOperationInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment whose outputs you want.</p>"}))
    ListServiceInstanceOutputsOperationInput.type = Types::ListServiceInstanceOutputsOperationInput
    ListServiceInstanceOutputsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next output in the array of outputs, after the\n      current requested list of outputs.</p>"}))
    ListServiceInstanceOutputsOperationOutput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>An array of service instance Infrastructure as Code (IaC) outputs.</p>", "smithy.api#required" => {}}))
    ListServiceInstanceOutputsOperationOutput.type = Types::ListServiceInstanceOutputsOperationOutput
    ListServiceInstanceProvisionedResourcesOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>", "smithy.api#required" => {}}))
    ListServiceInstanceProvisionedResourcesOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance whose provisioned resources you want.</p>", "smithy.api#required" => {}}))
    ListServiceInstanceProvisionedResourcesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next provisioned resource in the array of\n      provisioned resources, after the list of provisioned resources that was previously\n      requested.</p>"}))
    ListServiceInstanceProvisionedResourcesOperationInput.type = Types::ListServiceInstanceProvisionedResourcesOperationInput
    ListServiceInstanceProvisionedResourcesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next provisioned resource in the array of\n      provisioned resources, after the current requested list of provisioned resources.</p>"}))
    ListServiceInstanceProvisionedResourcesOperationOutput.add_member(:provisioned_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#documentation" => "<p>An array of provisioned resources for a service instance.</p>", "smithy.api#required" => {}}))
    ListServiceInstanceProvisionedResourcesOperationOutput.type = Types::ListServiceInstanceProvisionedResourcesOperationOutput
    ListServiceInstancesFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilterBy, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The name of a filtering criterion.</p>"}))
    ListServiceInstancesFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilterValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>A value to filter by.</p>\n         <p>With the date/time keys (<code>*At{Before,After}</code>), the value is a valid <a href=\"https://datatracker.ietf.org/doc/html/rfc3339.html\">RFC 3339</a> string with no UTC\n      offset and with an optional fractional precision (for example,\n        <code>1985-04-12T23:20:50.52Z</code>).</p>"}))
    ListServiceInstancesFilter.type = Types::ListServiceInstancesFilter
    ListServiceInstancesFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilter)
    ListServiceInstancesOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that the service instance belongs to.</p>"}))
    ListServiceInstancesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next service in the array of service instances,\n      after the list of service instances that was previously requested.</p>"}))
    ListServiceInstancesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of service instances to list.</p>"}))
    ListServiceInstancesOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>An array of filtering criteria that scope down the result list. By default, all service\n      instances in the Amazon Web Services account are returned.</p>"}))
    ListServiceInstancesOperationInput.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The field that the result list is sorted by.</p>\n         <p>When you choose to sort by <code>serviceName</code>, service instances within each service\n      are sorted by service instance name.</p>\n         <p>Default: <code>serviceName</code>\n         </p>"}))
    ListServiceInstancesOperationInput.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>Result list sort order.</p>\n         <p>Default: <code>ASCENDING</code>\n         </p>"}))
    ListServiceInstancesOperationInput.type = Types::ListServiceInstancesOperationInput
    ListServiceInstancesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next service instance in the array of service\n      instances, after the current requested list of service instances.</p>"}))
    ListServiceInstancesOperationOutput.add_member(:service_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceSummaryList, location_name: 'serviceInstances', traits: {"smithy.api#documentation" => "<p>An array of service instances with summary data.</p>", "smithy.api#required" => {}}))
    ListServiceInstancesOperationOutput.type = Types::ListServiceInstancesOperationOutput
    ListServicePipelineOutputsOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service whose pipeline's outputs you want.</p>", "smithy.api#required" => {}}))
    ListServicePipelineOutputsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next output in the array of outputs, after the\n      list of outputs that was previously requested.</p>"}))
    ListServicePipelineOutputsOperationInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment you want the outputs for.</p>"}))
    ListServicePipelineOutputsOperationInput.type = Types::ListServicePipelineOutputsOperationInput
    ListServicePipelineOutputsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next output in the array of outputs, after the\n      current requested list of outputs.</p>"}))
    ListServicePipelineOutputsOperationOutput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>An array of service pipeline Infrastructure as Code (IaC) outputs.</p>", "smithy.api#required" => {}}))
    ListServicePipelineOutputsOperationOutput.type = Types::ListServicePipelineOutputsOperationOutput
    ListServicePipelineProvisionedResourcesOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service whose pipeline's provisioned resources you want.</p>", "smithy.api#required" => {}}))
    ListServicePipelineProvisionedResourcesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next provisioned resource in the array of\n      provisioned resources, after the list of provisioned resources that was previously\n      requested.</p>"}))
    ListServicePipelineProvisionedResourcesOperationInput.type = Types::ListServicePipelineProvisionedResourcesOperationInput
    ListServicePipelineProvisionedResourcesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next provisioned resource in the array of\n      provisioned resources, after the current requested list of provisioned resources.</p>"}))
    ListServicePipelineProvisionedResourcesOperationOutput.add_member(:provisioned_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#documentation" => "<p>An array of provisioned resources for a service and pipeline.</p>", "smithy.api#required" => {}}))
    ListServicePipelineProvisionedResourcesOperationOutput.type = Types::ListServicePipelineProvisionedResourcesOperationOutput
    ListServiceTemplateVersionsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next major or minor version in the array of\n      major or minor versions of a service template, after the list of major or minor versions that\n      was previously requested.</p>"}))
    ListServiceTemplateVersionsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of major or minor versions of a service template to list.</p>"}))
    ListServiceTemplateVersionsOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    ListServiceTemplateVersionsOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To view a list of minor of versions under a major version of a service template, include\n        <code>major Version</code>.</p>\n         <p>To view a list of major versions of a service template, <i>exclude</i>\n            <code>major Version</code>.</p>"}))
    ListServiceTemplateVersionsOperationInput.type = Types::ListServiceTemplateVersionsOperationInput
    ListServiceTemplateVersionsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next major or minor version in the array of\n      major or minor versions of a service template, after the current requested list of service\n      major or minor versions.</p>"}))
    ListServiceTemplateVersionsOperationOutput.add_member(:template_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionSummaryList, location_name: 'templateVersions', traits: {"smithy.api#documentation" => "<p>An array of major or minor versions of a service template with detail data.</p>", "smithy.api#required" => {}}))
    ListServiceTemplateVersionsOperationOutput.type = Types::ListServiceTemplateVersionsOperationOutput
    ListServiceTemplatesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next service template in the array of service\n      templates, after the list of service templates previously requested.</p>"}))
    ListServiceTemplatesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of service templates to list.</p>"}))
    ListServiceTemplatesOperationInput.type = Types::ListServiceTemplatesOperationInput
    ListServiceTemplatesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next service template in the array of service\n      templates, after the current requested list of service templates.</p>"}))
    ListServiceTemplatesOperationOutput.add_member(:templates, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSummaryList, location_name: 'templates', traits: {"smithy.api#documentation" => "<p>An array of service templates with detail data.</p>", "smithy.api#required" => {}}))
    ListServiceTemplatesOperationOutput.type = Types::ListServiceTemplatesOperationOutput
    ListServicesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next service in the array of services, after\n      the list of services that was previously requested.</p>"}))
    ListServicesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of services to list.</p>"}))
    ListServicesOperationInput.type = Types::ListServicesOperationInput
    ListServicesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next service in the array of services, after\n      the current requested list of services.</p>"}))
    ListServicesOperationOutput.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummaryList, location_name: 'services', traits: {"smithy.api#documentation" => "<p>An array of services with summaries of detail data.</p>", "smithy.api#required" => {}}))
    ListServicesOperationOutput.type = Types::ListServicesOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for the listed tags.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next resource tag in the array of resource tags, after the list of resource tags that was\n   previously requested.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTagsForResourceOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of tags to list.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of resource tags with detail data.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates the location of the next resource tag in the array of resource tags, after the current requested list of resource\n   tags.</p>"}))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The provisioned resource Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDeploymentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of your provisioned resource.</p>"}))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>The provisioned resource state change detail data that's returned by Proton.</p>", "smithy.api#length" => {"min" => 0, "max" => 50}}))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The deployment ID for your provisioned resource.</p>"}))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The deployment status message for your provisioned resource.</p>", "smithy.api#length" => {"min" => 0, "max" => 5000}}))
    NotifyResourceDeploymentStatusChangeOperationInput.type = Types::NotifyResourceDeploymentStatusChangeOperationInput
    NotifyResourceDeploymentStatusChangeOperationOutput.type = Types::NotifyResourceDeploymentStatusChangeOperationOutput
    Output.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The output key.</p>"}))
    Output.add_member(:value_string, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputValueString, location_name: 'valueString', traits: {"smithy.api#documentation" => "<p>The output value.</p>"}))
    Output.type = Types::Output
    OutputsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Output)
    ProvisionedResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The provisioned resource name.</p>"}))
    ProvisionedResource.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>The provisioned resource identifier.</p>"}))
    ProvisionedResource.add_member(:provisioning_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceEngine, location_name: 'provisioningEngine', traits: {"smithy.api#documentation" => "<p>The resource provisioning engine. At this time, <code>CLOUDFORMATION</code> can be used for Amazon Web Services-managed provisioning, and <code>TERRAFORM</code> can\n      be used for self-managed provisioning.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self\">Self-managed provisioning</a> in the <i>Proton User Guide</i>.</p>"}))
    ProvisionedResource.type = Types::ProvisionedResource
    ProvisionedResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResource)
    RejectEnvironmentAccountConnectionOperationInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection to reject.</p>", "smithy.api#required" => {}}))
    RejectEnvironmentAccountConnectionOperationInput.type = Types::RejectEnvironmentAccountConnectionOperationInput
    RejectEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#documentation" => "<p>The environment connection account detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    RejectEnvironmentAccountConnectionOperationOutput.type = Types::RejectEnvironmentAccountConnectionOperationOutput
    Repository.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the linked repository.</p>", "smithy.api#required" => {}}))
    Repository.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    Repository.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    Repository.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of your AWS CodeStar connection that connects Proton to your repository provider account.</p>", "smithy.api#required" => {}}))
    Repository.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>Your customer Amazon Web Services KMS encryption key.</p>"}))
    Repository.type = Types::Repository
    RepositoryBranch.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the linked repository.</p>", "smithy.api#required" => {}}))
    RepositoryBranch.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    RepositoryBranch.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    RepositoryBranch.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch.</p>", "smithy.api#required" => {}}))
    RepositoryBranch.type = Types::RepositoryBranch
    RepositoryBranchInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    RepositoryBranchInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    RepositoryBranchInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch.</p>", "smithy.api#required" => {}}))
    RepositoryBranchInput.type = Types::RepositoryBranchInput
    RepositorySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the linked repository.</p>", "smithy.api#required" => {}}))
    RepositorySummary.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    RepositorySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    RepositorySummary.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the of your connection that connects Proton to your repository.</p>", "smithy.api#required" => {}}))
    RepositorySummary.type = Types::RepositorySummary
    RepositorySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySummary)
    RepositorySyncAttempt.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time when the sync attempt started.</p>", "smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The sync attempt status.</p>", "smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>Detail data for sync attempt events.</p>", "smithy.api#required" => {}}))
    RepositorySyncAttempt.type = Types::RepositorySyncAttempt
    RepositorySyncDefinition.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The resource that is synced to.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:parent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'parent', traits: {"smithy.api#documentation" => "<p>The resource that is synced from.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'directory', traits: {"smithy.api#documentation" => "<p>The directory in the repository.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.type = Types::RepositorySyncDefinition
    RepositorySyncDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinition)
    RepositorySyncEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of event.</p>", "smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the sync event.</p>"}))
    RepositorySyncEvent.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'time', traits: {"smithy.api#documentation" => "<p>The time that the sync event occurred.</p>", "smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'event', traits: {"smithy.api#documentation" => "<p>Event detail for a repository sync attempt.</p>", "smithy.api#required" => {}}))
    RepositorySyncEvent.type = Types::RepositorySyncEvent
    RepositorySyncEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEvent)
    ResourceCountsSummary.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'total', traits: {"smithy.api#documentation" => "<p>The total number of resources of this type in the Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    ResourceCountsSummary.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'failed', traits: {"smithy.api#documentation" => "<p>The number of resources of this type in the Amazon Web Services account that failed to deploy.</p>"}))
    ResourceCountsSummary.add_member(:up_to_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'upToDate', traits: {"smithy.api#documentation" => "<p>The number of resources of this type in the Amazon Web Services account that are up-to-date with their template.</p>"}))
    ResourceCountsSummary.add_member(:behind_major, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'behindMajor', traits: {"smithy.api#documentation" => "<p>The number of resources of this type in the Amazon Web Services account that need a major template version update.</p>"}))
    ResourceCountsSummary.add_member(:behind_minor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'behindMinor', traits: {"smithy.api#documentation" => "<p>The number of resources of this type in the Amazon Web Services account that need a minor template version update.</p>"}))
    ResourceCountsSummary.type = Types::ResourceCountsSummary
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSyncAttempt.add_member(:initial_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'initialRevision', traits: {"smithy.api#documentation" => "<p>Detail data for the initial repository commit, path and push.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'targetRevision', traits: {"smithy.api#documentation" => "<p>Detail data for the target revision.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The resource that is synced to.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time when the sync attempt started.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the sync attempt.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>An array of events with detail data.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.type = Types::ResourceSyncAttempt
    ResourceSyncEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of event.</p>", "smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID for the event.</p>"}))
    ResourceSyncEvent.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'time', traits: {"smithy.api#documentation" => "<p>The time when the event occurred.</p>", "smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'event', traits: {"smithy.api#documentation" => "<p>A resource sync event.</p>", "smithy.api#required" => {}}))
    ResourceSyncEvent.type = Types::ResourceSyncEvent
    ResourceSyncEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEvent)
    Revision.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:sha, Smithy::Schema::Shapes::ShapeRef.new(shape: SHA, location_name: 'sha', traits: {"smithy.api#documentation" => "<p>The secure hash algorithm (SHA) hash for the revision.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'directory', traits: {"smithy.api#documentation" => "<p>The repository directory changed by a commit and push that activated the sync attempt.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch.</p>", "smithy.api#required" => {}}))
    Revision.type = Types::Revision
    S3ObjectSource.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket that contains a template bundle.</p>", "smithy.api#required" => {}}))
    S3ObjectSource.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The path to the S3 bucket that contains a template bundle.</p>", "smithy.api#required" => {}}))
    S3ObjectSource.type = Types::S3ObjectSource
    Service.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the service.</p>"}))
    Service.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    Service.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the service was created.</p>", "smithy.api#required" => {}}))
    Service.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the service was last modified.</p>", "smithy.api#required" => {}}))
    Service.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A service status message.</p>"}))
    Service.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The formatted specification that defines the service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipeline, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>The service pipeline detail data.</p>"}))
    Service.add_member(:repository_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'repositoryConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the repository connection. For more information, see\n        <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html#setting-up-vcontrol\">Setting up an\n        AWS CodeStar connection</a> in the <i>Proton User Guide</i>.</p>"}))
    Service.add_member(:repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId', traits: {"smithy.api#documentation" => "<p>The ID of the source code repository.</p>"}))
    Service.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the code repository branch that holds the code that's deployed in\n      Proton.</p>"}))
    Service.type = Types::Service
    ServiceInstance.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service instance.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service instance.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the service instance was created.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:last_deployment_attempted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#documentation" => "<p>The time when a deployment of the service instance was last attempted.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:last_deployment_succeeded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#documentation" => "<p>The time when the service instance was last deployed successfully.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that the service instance belongs to.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment that the service instance was deployed into.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template that was used to create the service instance.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the service template that was used to create the service\n      instance.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the service template that was used to create the service\n      instance.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The service instance deployment status.</p>", "smithy.api#required" => {}}))
    ServiceInstance.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the service instance deployment status.</p>"}))
    ServiceInstance.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The service spec that was used to create the service instance.</p>"}))
    ServiceInstance.add_member(:last_client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'lastClientRequestToken', traits: {"smithy.api#documentation" => "<p>The last client request token received.</p>"}))
    ServiceInstance.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment of this service instance.</p>"}))
    ServiceInstance.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment of this service instance.</p>"}))
    ServiceInstance.type = Types::ServiceInstance
    ServiceInstanceState.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The service spec that was used to create the service instance.</p>", "smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template that was used to create the service instance.</p>", "smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the service template that was used to create the service\n      pipeline.</p>", "smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the service template that was used to create the service\n      pipeline.</p>", "smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:last_successful_component_deployment_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentIdList, location_name: 'lastSuccessfulComponentDeploymentIds', traits: {"smithy.api#documentation" => "<p>The IDs for the last successful components deployed for this service instance.</p>"}))
    ServiceInstanceState.add_member(:last_successful_environment_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSuccessfulEnvironmentDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID for the last successful environment deployed for this service instance.</p>"}))
    ServiceInstanceState.add_member(:last_successful_service_pipeline_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSuccessfulServicePipelineDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID for the last successful service pipeline deployed for this service instance.</p>"}))
    ServiceInstanceState.type = Types::ServiceInstanceState
    ServiceInstanceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service instance.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service instance.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the service instance was created.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:last_deployment_attempted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#documentation" => "<p>The time when a deployment of the service was last attempted.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:last_deployment_succeeded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#documentation" => "<p>The time when the service was last deployed successfully.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that the service instance belongs to.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment that the service instance was deployed into.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The service instance template major version.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The service instance template minor version.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The service instance deployment status.</p>", "smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>A service instance deployment status message.</p>"}))
    ServiceInstanceSummary.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment of this service instance.</p>"}))
    ServiceInstanceSummary.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment of this service instance.</p>"}))
    ServiceInstanceSummary.type = Types::ServiceInstanceSummary
    ServiceInstanceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceSummary)
    ServicePipeline.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the service pipeline was created.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:last_deployment_attempted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#documentation" => "<p>The time when a deployment of the service pipeline was last attempted.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:last_deployment_succeeded_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#documentation" => "<p>The time when the service pipeline was last deployed successfully.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template that was used to create the service pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the service template that was used to create the service\n      pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the service template that was used to create the service\n      pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The deployment status of the service pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipeline.add_member(:deployment_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage', traits: {"smithy.api#documentation" => "<p>A service pipeline deployment status message.</p>"}))
    ServicePipeline.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The service spec that was used to create the service pipeline.</p>"}))
    ServicePipeline.add_member(:last_attempted_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last attempted deployment of this service pipeline.</p>"}))
    ServicePipeline.add_member(:last_succeeded_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the last successful deployment of this service pipeline.</p>"}))
    ServicePipeline.type = Types::ServicePipeline
    ServicePipelineState.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The service spec that was used to create the service pipeline.</p>"}))
    ServicePipelineState.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template that was used to create the service pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipelineState.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the service template that was used to create the service\n      pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipelineState.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the service template that was used to create the service\n      pipeline.</p>", "smithy.api#required" => {}}))
    ServicePipelineState.type = Types::ServicePipelineState
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>", "smithy.api#required" => {}}))
    ServiceSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the service.</p>"}))
    ServiceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>", "smithy.api#required" => {}}))
    ServiceSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    ServiceSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the service was created.</p>", "smithy.api#required" => {}}))
    ServiceSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the service was last modified.</p>", "smithy.api#required" => {}}))
    ServiceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the service.</p>", "smithy.api#required" => {}}))
    ServiceSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A service status message.</p>"}))
    ServiceSummary.type = Types::ServiceSummary
    ServiceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummary)
    ServiceSyncBlockerSummary.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that you want to get the sync blocker summary for. If given a\n      service instance name and a service name, it will return the blockers only applying to the\n      instance that is blocked.</p>\n         <p>If given only a service name, it will return the blockers that apply to all of the\n      instances. In order to get the blockers for a single instance, you will need to make two\n      distinct calls, one to get the sync blocker summary for the service and the other to get the\n      sync blocker for the service instance.</p>", "smithy.api#required" => {}}))
    ServiceSyncBlockerSummary.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that you want sync your service configuration\n      with.</p>"}))
    ServiceSyncBlockerSummary.add_member(:latest_blockers, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestSyncBlockers, location_name: 'latestBlockers', traits: {"smithy.api#documentation" => "<p>The latest active blockers for the synced service.</p>"}))
    ServiceSyncBlockerSummary.type = Types::ServiceSyncBlockerSummary
    ServiceSyncConfig.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that the service instance is added to.</p>", "smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The name of the repository provider that holds the repository Proton will sync\n      with.</p>", "smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the code repository that holds the service code Proton will sync\n      with.</p>", "smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The name of the code repository branch that holds the service code Proton will sync\n      with.</p>", "smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsFilePath, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The file path to the service sync configuration file.</p>", "smithy.api#required" => {}}))
    ServiceSyncConfig.type = Types::ServiceSyncConfig
    ServiceTemplate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplate.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the service template was created.</p>", "smithy.api#required" => {}}))
    ServiceTemplate.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the service template was last modified.</p>", "smithy.api#required" => {}}))
    ServiceTemplate.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The service template name as displayed in the developer interface.</p>"}))
    ServiceTemplate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the service template.</p>"}))
    ServiceTemplate.add_member(:recommended_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion', traits: {"smithy.api#documentation" => "<p>The recommended version of the service template.</p>"}))
    ServiceTemplate.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>The customer provided service template encryption key that's used to encrypt data.</p>"}))
    ServiceTemplate.add_member(:pipeline_provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'pipelineProvisioning', traits: {"smithy.api#documentation" => "<p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included\n      in the service template. Otherwise, a service pipeline <i>isn't</i> included in\n      the service template.</p>"}))
    ServiceTemplate.type = Types::ServiceTemplate
    ServiceTemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the service template was created.</p>", "smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the service template was last modified.</p>", "smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The service template name as displayed in the developer interface.</p>"}))
    ServiceTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the service template.</p>"}))
    ServiceTemplateSummary.add_member(:recommended_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion', traits: {"smithy.api#documentation" => "<p>The recommended version of the service template.</p>"}))
    ServiceTemplateSummary.add_member(:pipeline_provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'pipelineProvisioning', traits: {"smithy.api#documentation" => "<p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included\n      in the service template, otherwise a service pipeline <i>isn't</i> included in\n      the service template.</p>"}))
    ServiceTemplateSummary.type = Types::ServiceTemplateSummary
    ServiceTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSummary)
    ServiceTemplateSupportedComponentSourceInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceType)
    ServiceTemplateVersion.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the version of a service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The latest major version that's associated with the version of a service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of a service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:recommended_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion', traits: {"smithy.api#documentation" => "<p>The recommended minor version of the service template.</p>"}))
    ServiceTemplateVersion.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The service template version status.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A service template version status message.</p>"}))
    ServiceTemplateVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the version of a service template.</p>"}))
    ServiceTemplateVersion.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the version of a service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the version of a service template was created.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the version of a service template was last modified.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:compatible_environment_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateList, location_name: 'compatibleEnvironmentTemplates', traits: {"smithy.api#documentation" => "<p>An array of compatible environment template names for the major version of a service\n      template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema of the version of a service template.</p>"}))
    ServiceTemplateVersion.add_member(:supported_component_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: 'supportedComponentSources', traits: {"smithy.api#documentation" => "<p>An array of supported component sources. Components with supported sources can be attached\n      to service instances based on this service template version.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    ServiceTemplateVersion.type = Types::ServiceTemplateVersion
    ServiceTemplateVersionSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>The latest major version that's associated with the version of a service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of a service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:recommended_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion', traits: {"smithy.api#documentation" => "<p>The recommended minor version of the service template.</p>"}))
    ServiceTemplateVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The service template minor version status.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A service template minor version status message.</p>"}))
    ServiceTemplateVersionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the version of a service template.</p>"}))
    ServiceTemplateVersionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the version of a service template.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the version of a service template was created.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The time when the version of a service template was last modified.</p>", "smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.type = Types::ServiceTemplateVersionSummary
    ServiceTemplateVersionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionSummary)
    SyncBlocker.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'createdReason', traits: {"smithy.api#documentation" => "<p>The reason why the sync blocker was created.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the sync blocker was created.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContexts, location_name: 'contexts', traits: {"smithy.api#documentation" => "<p>The contexts for the sync blocker.</p>"}))
    SyncBlocker.add_member(:resolved_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resolvedReason', traits: {"smithy.api#documentation" => "<p>The reason the sync blocker was resolved.</p>"}))
    SyncBlocker.add_member(:resolved_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'resolvedAt', traits: {"smithy.api#documentation" => "<p>The time the sync blocker was resolved.</p>"}))
    SyncBlocker.type = Types::SyncBlocker
    SyncBlockerContext.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key for the sync blocker context.</p>", "smithy.api#required" => {}}))
    SyncBlockerContext.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the sync blocker context.</p>", "smithy.api#required" => {}}))
    SyncBlockerContext.type = Types::SyncBlockerContext
    SyncBlockerContexts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContext)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the resource tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the resource tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Proton resource to apply customer tags to.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of customer tags to apply to the Proton resource.</p>", "smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    TemplateSyncConfig.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The template name.</p>", "smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The template type.</p>", "smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name (for example, <code>myrepos/myrepo</code>).</p>", "smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch.</p>", "smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:subdirectory, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdirectory, location_name: 'subdirectory', traits: {"smithy.api#documentation" => "<p>A subdirectory path to your template bundle version.</p>"}))
    TemplateSyncConfig.type = Types::TemplateSyncConfig
    TemplateVersionSourceInput.add_member(:s3, Types::TemplateVersionSourceInput::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectSource, location_name: 's3', traits: {"smithy.api#documentation" => "<p>An S3 source object that includes the template bundle S3 path and name for a template minor version.</p>"}))
    TemplateVersionSourceInput.add_member(:unknown, Types::TemplateVersionSourceInput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TemplateVersionSourceInput.type = Types::TemplateVersionSourceInput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to remove customer tags from.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of customer tag keys that indicate the customer tags to be removed from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateAccountSettingsOperationInput.add_member(:pipeline_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed\n   provisioning, and by customer-owned automation for self-managed provisioning.</p>\n         <p>To remove a previously configured ARN, specify an empty string.</p>"}))
    UpdateAccountSettingsOperationInput.add_member(:pipeline_provisioning_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: 'pipelineProvisioningRepository', traits: {"smithy.api#documentation" => "<p>A linked repository for pipeline provisioning. Specify it if you have environments configured for self-managed provisioning with services that\n   include pipelines. A linked repository is a repository that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>\n         <p>To remove a previously configured repository, set <code>deletePipelineProvisioningRepository</code> to <code>true</code>, and don't set\n    <code>pipelineProvisioningRepository</code>.</p>"}))
    UpdateAccountSettingsOperationInput.add_member(:delete_pipeline_provisioning_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletePipelineProvisioningRepository', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to remove a configured pipeline repository from the account settings. Don't set this field if you are updating the\n   configured pipeline repository.</p>"}))
    UpdateAccountSettingsOperationInput.add_member(:pipeline_codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineCodebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Proton assumes this role for CodeBuild-based\n   provisioning.</p>"}))
    UpdateAccountSettingsOperationInput.type = Types::UpdateAccountSettingsOperationInput
    UpdateAccountSettingsOperationOutput.add_member(:account_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'accountSettings', traits: {"smithy.api#documentation" => "<p>The Proton pipeline service role and repository data shared across the Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    UpdateAccountSettingsOperationOutput.type = Types::UpdateAccountSettingsOperationOutput
    UpdateComponentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component to update.</p>", "smithy.api#required" => {}}))
    UpdateComponentOperationInput.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#documentation" => "<p>The deployment type. It defines the mode for updating a component, as follows:</p>\n         <dl>\n            <dt/>\n            <dd>\n               <p>\n                  <code>NONE</code>\n               </p>\n               <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated. You can only specify\n              <code>description</code> in this mode.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>CURRENT_VERSION</code>\n               </p>\n               <p>In this mode, the component is deployed and updated with the new <code>serviceSpec</code>, <code>templateSource</code>, and/or <code>type</code>\n            that you provide. Only requested parameters are updated.</p>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    UpdateComponentOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional customer-provided description of the component.</p>"}))
    UpdateComponentOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that <code>serviceInstanceName</code> is associated with. Don't specify to keep the component's current service instance\n      attachment. Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both\n        <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>"}))
    UpdateComponentOperationInput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that you want to attach this component to. Don't specify to keep the component's current service instance attachment.\n      Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both\n        <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>"}))
    UpdateComponentOperationInput.add_member(:service_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec', traits: {"smithy.api#documentation" => "<p>The service spec that you want the component to use to access service inputs. Set this only when the component is attached to a service\n      instance.</p>"}))
    UpdateComponentOperationInput.add_member(:template_file, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: 'templateFile', traits: {"smithy.api#documentation" => "<p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>\n         <note>\n            <p>Components support a single IaC file, even if you use Terraform as your template language.</p>\n         </note>"}))
    UpdateComponentOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token for the updated component.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateComponentOperationInput.type = Types::UpdateComponentOperationInput
    UpdateComponentOperationOutput.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#documentation" => "<p>The detailed data of the updated component.</p>", "smithy.api#required" => {}}))
    UpdateComponentOperationOutput.type = Types::UpdateComponentOperationOutput
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection to update.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that's associated with the environment account connection to update.</p>"}))
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated\n      environment account. It determines the scope of infrastructure that a component can provision in the account.</p>\n         <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any\n      environments running in the account.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources\n      using CodeBuild-based provisioning in the associated environment account.</p>"}))
    UpdateEnvironmentAccountConnectionOperationInput.type = Types::UpdateEnvironmentAccountConnectionOperationInput
    UpdateEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#documentation" => "<p>The environment account connection detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentAccountConnectionOperationOutput.type = Types::UpdateEnvironmentAccountConnectionOperationOutput
    UpdateEnvironmentOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment to update.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the environment update.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The formatted specification that defines the update.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the environment to update.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the environment to update.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:proton_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make API calls to other services your behalf.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#documentation" => "<p>There are four modes for updating an environment. The <code>deploymentType</code> field defines the mode.</p>\n         <dl>\n            <dt/>\n            <dd>\n               <p>\n                  <code>NONE</code>\n               </p>\n               <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>CURRENT_VERSION</code>\n               </p>\n               <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.\n              <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>MINOR_VERSION</code>\n               </p>\n               <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version in\n            use, by default. You can also specify a different minor version of the current major version in use.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>MAJOR_VERSION</code>\n               </p>\n               <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current template,\n            by default. You can also specify a different major version that is higher than the major version in use and a minor version (optional).</p>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    UpdateEnvironmentOperationInput.add_member(:environment_account_connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId', traits: {"smithy.api#documentation" => "<p>The ID of the environment account connection.</p>\n         <p>You can only update to a new environment account connection if it was created in the same environment account that the current environment account\n      connection was created in and is associated with the current environment.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:provisioning_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: 'provisioningRepository', traits: {"smithy.api#documentation" => "<p>The linked repository that you use to host your rendered infrastructure templates for self-managed provisioning. A linked repository is a repository\n      that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:component_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It\n      determines the scope of infrastructure that a component can provision.</p>\n         <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    UpdateEnvironmentOperationInput.add_member(:codebuild_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your\n      behalf.</p>"}))
    UpdateEnvironmentOperationInput.type = Types::UpdateEnvironmentOperationInput
    UpdateEnvironmentOperationOutput.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The environment detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentOperationOutput.type = Types::UpdateEnvironmentOperationOutput
    UpdateEnvironmentTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment template to update.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentTemplateOperationInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the environment template to update as displayed in the developer interface.</p>"}))
    UpdateEnvironmentTemplateOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the environment template update.</p>"}))
    UpdateEnvironmentTemplateOperationInput.type = Types::UpdateEnvironmentTemplateOperationInput
    UpdateEnvironmentTemplateOperationOutput.add_member(:environment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate', traits: {"smithy.api#documentation" => "<p>The environment template detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentTemplateOperationOutput.type = Types::UpdateEnvironmentTemplateOperationOutput
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the environment template.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To update a major version of an environment template, include <code>major Version</code>.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>To update a minor version of an environment template, include <code>minorVersion</code>.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of environment template version to update.</p>"}))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the environment template minor version to update.</p>"}))
    UpdateEnvironmentTemplateVersionOperationInput.type = Types::UpdateEnvironmentTemplateVersionOperationInput
    UpdateEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion', traits: {"smithy.api#documentation" => "<p>The environment template version detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationOutput.type = Types::UpdateEnvironmentTemplateVersionOperationOutput
    UpdateServiceInstanceOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service instance to update.</p>", "smithy.api#required" => {}}))
    UpdateServiceInstanceOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that the service instance belongs to.</p>", "smithy.api#required" => {}}))
    UpdateServiceInstanceOperationInput.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#documentation" => "<p>The deployment type. It defines the mode for updating a service instance, as\n      follows:</p>\n         <dl>\n            <dt/>\n            <dd>\n               <p>\n                  <code>NONE</code>\n               </p>\n               <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested\n            metadata parameters are updated.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>CURRENT_VERSION</code>\n               </p>\n               <p>In this mode, the service instance is deployed and updated with the new spec that\n            you provide. Only requested parameters are updated. <i>Don’t</i> include\n            major or minor version parameters when you use this deployment type.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>MINOR_VERSION</code>\n               </p>\n               <p>In this mode, the service instance is deployed and updated with the published,\n            recommended (latest) minor version of the current major version in use, by default. You\n            can also specify a different minor version of the current major version in use.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>MAJOR_VERSION</code>\n               </p>\n               <p>In this mode, the service instance is deployed and updated with the published,\n            recommended (latest) major and minor version of the current template, by default. You\n            can specify a different major version that's higher than the major version in use and a\n            minor version.</p>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    UpdateServiceInstanceOperationInput.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The formatted specification that defines the service instance update.</p>"}))
    UpdateServiceInstanceOperationInput.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the service template to update.</p>"}))
    UpdateServiceInstanceOperationInput.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the service template to update.</p>"}))
    UpdateServiceInstanceOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token of the service instance to update.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateServiceInstanceOperationInput.type = Types::UpdateServiceInstanceOperationInput
    UpdateServiceInstanceOperationOutput.add_member(:service_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#documentation" => "<p>The service instance summary data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateServiceInstanceOperationOutput.type = Types::UpdateServiceInstanceOperationOutput
    UpdateServiceOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service to edit.</p>", "smithy.api#required" => {}}))
    UpdateServiceOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The edited service description.</p>"}))
    UpdateServiceOperationInput.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>Lists the service instances to add and the existing service instances to remain. Omit the\n      existing service instances to delete from the list. <i>Don't</i> include edits\n      to the existing service instances or pipeline. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-update.html\">Edit a service</a>\n      in the <i>Proton User Guide</i>.</p>"}))
    UpdateServiceOperationInput.type = Types::UpdateServiceOperationInput
    UpdateServiceOperationOutput.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The service detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateServiceOperationOutput.type = Types::UpdateServiceOperationOutput
    UpdateServicePipelineOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service to that the pipeline is associated with.</p>", "smithy.api#required" => {}}))
    UpdateServicePipelineOperationInput.add_member(:spec, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#documentation" => "<p>The spec for the service pipeline to update.</p>", "smithy.api#required" => {}}))
    UpdateServicePipelineOperationInput.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#documentation" => "<p>The deployment type.</p>\n         <p>There are four modes for updating a service pipeline. The <code>deploymentType</code>\n      field defines the mode.</p>\n         <dl>\n            <dt/>\n            <dd>\n               <p>\n                  <code>NONE</code>\n               </p>\n               <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested\n            metadata parameters are updated.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>CURRENT_VERSION</code>\n               </p>\n               <p>In this mode, the service pipeline is deployed and updated with the new spec that\n            you provide. Only requested parameters are updated. <i>Don’t</i> include\n            major or minor version parameters when you use this <code>deployment-type</code>.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>MINOR_VERSION</code>\n               </p>\n               <p>In this mode, the service pipeline is deployed and updated with the published,\n            recommended (latest) minor version of the current major version in use, by default. You\n            can specify a different minor version of the current major version in use.</p>\n            </dd>\n            <dt/>\n            <dd>\n               <p>\n                  <code>MAJOR_VERSION</code>\n               </p>\n               <p>In this mode, the service pipeline is deployed and updated with the published,\n            recommended (latest) major and minor version of the current template, by default. You\n            can specify a different major version that's higher than the major version in use and a\n            minor version.</p>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    UpdateServicePipelineOperationInput.add_member(:template_major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#documentation" => "<p>The major version of the service template that was used to create the service that the\n      pipeline is associated with.</p>"}))
    UpdateServicePipelineOperationInput.add_member(:template_minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version of the service template that was used to create the service that the\n      pipeline is associated with.</p>"}))
    UpdateServicePipelineOperationInput.type = Types::UpdateServicePipelineOperationInput
    UpdateServicePipelineOperationOutput.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipeline, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>The pipeline details that are returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateServicePipelineOperationOutput.type = Types::UpdateServicePipelineOperationOutput
    UpdateServiceSyncBlockerOperationInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service sync blocker.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationInput.add_member(:resolved_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resolvedReason', traits: {"smithy.api#documentation" => "<p>The reason the service sync blocker was resolved.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationInput.type = Types::UpdateServiceSyncBlockerOperationInput
    UpdateServiceSyncBlockerOperationOutput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service that you want to update the service sync blocker for.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationOutput.add_member(:service_instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#documentation" => "<p>The name of the service instance that you want to update the service sync blocker\n      for.</p>"}))
    UpdateServiceSyncBlockerOperationOutput.add_member(:service_sync_blocker, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker, location_name: 'serviceSyncBlocker', traits: {"smithy.api#documentation" => "<p>The detailed data on the service sync blocker that was updated.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationOutput.type = Types::UpdateServiceSyncBlockerOperationOutput
    UpdateServiceSyncConfigOperationInput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service the Proton Ops file is for.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The name of the repository provider where the Proton Ops file is found.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the Proton Ops file is found.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The name of the code repository branch where the Proton Ops file is found.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: OpsFilePath, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The path to the Proton Ops file.</p>", "smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.type = Types::UpdateServiceSyncConfigOperationInput
    UpdateServiceSyncConfigOperationOutput.add_member(:service_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig', traits: {"smithy.api#documentation" => "<p>The detailed data of the Proton Ops file.</p>"}))
    UpdateServiceSyncConfigOperationOutput.type = Types::UpdateServiceSyncConfigOperationOutput
    UpdateServiceTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service template to update.</p>", "smithy.api#required" => {}}))
    UpdateServiceTemplateOperationInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the service template to update that's displayed in the developer\n      interface.</p>"}))
    UpdateServiceTemplateOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the service template update.</p>"}))
    UpdateServiceTemplateOperationInput.type = Types::UpdateServiceTemplateOperationInput
    UpdateServiceTemplateOperationOutput.add_member(:service_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate', traits: {"smithy.api#documentation" => "<p>The service template detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateServiceTemplateOperationOutput.type = Types::UpdateServiceTemplateOperationOutput
    UpdateServiceTemplateVersionOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the service template.</p>", "smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationInput.add_member(:major_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#documentation" => "<p>To update a major version of a service template, include <code>major\n      Version</code>.</p>", "smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationInput.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#documentation" => "<p>To update a minor version of a service template, include <code>minorVersion</code>.</p>", "smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of a service template version to update.</p>"}))
    UpdateServiceTemplateVersionOperationInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the service template minor version to update.</p>"}))
    UpdateServiceTemplateVersionOperationInput.add_member(:compatible_environment_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInputList, location_name: 'compatibleEnvironmentTemplates', traits: {"smithy.api#documentation" => "<p>An array of environment template objects that are compatible with this service template\n      version. A service instance based on this service template version can run in environments\n      based on compatible templates.</p>"}))
    UpdateServiceTemplateVersionOperationInput.add_member(:supported_component_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: 'supportedComponentSources', traits: {"smithy.api#documentation" => "<p>An array of supported component sources. Components with supported sources can be attached\n      to service instances based on this service template version.</p>\n         <note>\n            <p>A change to <code>supportedComponentSources</code> doesn't impact existing component\n        attachments to instances based on this template version. A change only affects later\n        associations.</p>\n         </note>\n         <p>For more information about components, see\n  <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html\">Proton components</a> in the\n  <i>Proton User Guide</i>.</p>"}))
    UpdateServiceTemplateVersionOperationInput.type = Types::UpdateServiceTemplateVersionOperationInput
    UpdateServiceTemplateVersionOperationOutput.add_member(:service_template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion', traits: {"smithy.api#documentation" => "<p>The service template version detail data that's returned by Proton.</p>", "smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationOutput.type = Types::UpdateServiceTemplateVersionOperationOutput
    UpdateTemplateSyncConfigOperationInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The synced template name.</p>", "smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The synced template type.</p>", "smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:repository_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#documentation" => "<p>The repository provider.</p>", "smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name (for example, <code>myrepos/myrepo</code>).</p>", "smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The repository branch for your template.</p>", "smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:subdirectory, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdirectory, location_name: 'subdirectory', traits: {"smithy.api#documentation" => "<p>A subdirectory path to your template bundle version. When included, limits the template bundle search to this repository directory.</p>"}))
    UpdateTemplateSyncConfigOperationInput.type = Types::UpdateTemplateSyncConfigOperationInput
    UpdateTemplateSyncConfigOperationOutput.add_member(:template_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig', traits: {"smithy.api#documentation" => "<p>The template sync configuration detail data that's returned by Proton.</p>"}))
    UpdateTemplateSyncConfigOperationOutput.type = Types::UpdateTemplateSyncConfigOperationOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AwsProton20200720 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.proton#AwsProton20200720"
      service.name = "AwsProton20200720"
      service.version = "2020-07-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Proton", "endpointPrefix" => "proton"}, "aws.auth#sigv4" => {"name" => "proton"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Proton"}
      service.add_operation(:accept_environment_account_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#AcceptEnvironmentAccountConnection"
        operation.name = "AcceptEnvironmentAccountConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptEnvironmentAccountConnectionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptEnvironmentAccountConnectionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_component_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelComponentDeployment"
        operation.name = "CancelComponentDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelComponentDeploymentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelComponentDeploymentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_environment_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelEnvironmentDeployment"
        operation.name = "CancelEnvironmentDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelEnvironmentDeploymentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelEnvironmentDeploymentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_service_instance_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelServiceInstanceDeployment"
        operation.name = "CancelServiceInstanceDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceInstanceDeploymentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceInstanceDeploymentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_service_pipeline_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelServicePipelineDeployment"
        operation.name = "CancelServicePipelineDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServicePipelineDeploymentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServicePipelineDeploymentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateComponent"
        operation.name = "CreateComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_account_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironmentAccountConnection"
        operation.name = "CreateEnvironmentAccountConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentAccountConnectionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentAccountConnectionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironmentTemplate"
        operation.name = "CreateEnvironmentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironmentTemplateVersion"
        operation.name = "CreateEnvironmentTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateService"
        operation.name = "CreateService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceInstance"
        operation.name = "CreateServiceInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceInstanceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceInstanceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceSyncConfig"
        operation.name = "CreateServiceSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceTemplate"
        operation.name = "CreateServiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceTemplateVersion"
        operation.name = "CreateServiceTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_template_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateTemplateSyncConfig"
        operation.name = "CreateTemplateSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_account_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironmentAccountConnection"
        operation.name = "DeleteEnvironmentAccountConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentAccountConnectionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentAccountConnectionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironmentTemplate"
        operation.name = "DeleteEnvironmentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironmentTemplateVersion"
        operation.name = "DeleteEnvironmentTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteService"
        operation.name = "DeleteService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteServiceSyncConfig"
        operation.name = "DeleteServiceSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteServiceTemplate"
        operation.name = "DeleteServiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteServiceTemplateVersion"
        operation.name = "DeleteServiceTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_template_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteTemplateSyncConfig"
        operation.name = "DeleteTemplateSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetComponent"
        operation.name = "GetComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment_account_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironmentAccountConnection"
        operation.name = "GetEnvironmentAccountConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentAccountConnectionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentAccountConnectionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironmentTemplate"
        operation.name = "GetEnvironmentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironmentTemplateVersion"
        operation.name = "GetEnvironmentTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetRepository"
        operation.name = "GetRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_repository_sync_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetRepositorySyncStatus"
        operation.name = "GetRepositorySyncStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_resources_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetResourcesSummary"
        operation.name = "GetResourcesSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesSummaryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesSummaryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetService"
        operation.name = "GetService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceInstance"
        operation.name = "GetServiceInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_instance_sync_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceInstanceSyncStatus"
        operation.name = "GetServiceInstanceSyncStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceSyncStatusOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceSyncStatusOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_service_sync_blocker_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceSyncBlockerSummary"
        operation.name = "GetServiceSyncBlockerSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncBlockerSummaryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncBlockerSummaryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceSyncConfig"
        operation.name = "GetServiceSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceTemplate"
        operation.name = "GetServiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceTemplateVersion"
        operation.name = "GetServiceTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetTemplateSyncConfig"
        operation.name = "GetTemplateSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_sync_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetTemplateSyncStatus"
        operation.name = "GetTemplateSyncStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncStatusOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncStatusOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_component_outputs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListComponentOutputs"
        operation.name = "ListComponentOutputs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentOutputsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentOutputsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponentOutputs.new
      end)
      service.add_operation(:list_component_provisioned_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListComponentProvisionedResources"
        operation.name = "ListComponentProvisionedResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentProvisionedResourcesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentProvisionedResourcesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponentProvisionedResources.new
      end)
      service.add_operation(:list_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListComponents"
        operation.name = "ListComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_environment_account_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentAccountConnections"
        operation.name = "ListEnvironmentAccountConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentAccountConnectionsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentAccountConnectionsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentAccountConnections.new
      end)
      service.add_operation(:list_environment_outputs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentOutputs"
        operation.name = "ListEnvironmentOutputs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentOutputsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentOutputsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentOutputs.new
      end)
      service.add_operation(:list_environment_provisioned_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentProvisionedResources"
        operation.name = "ListEnvironmentProvisionedResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentProvisionedResourcesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentProvisionedResourcesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentProvisionedResources.new
      end)
      service.add_operation(:list_environment_template_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentTemplateVersions"
        operation.name = "ListEnvironmentTemplateVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplateVersionsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplateVersionsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentTemplateVersions.new
      end)
      service.add_operation(:list_environment_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentTemplates"
        operation.name = "ListEnvironmentTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplatesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplatesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentTemplates.new
      end)
      service.add_operation(:list_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListRepositories"
        operation.name = "ListRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRepositories.new
      end)
      service.add_operation(:list_repository_sync_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListRepositorySyncDefinitions"
        operation.name = "ListRepositorySyncDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRepositorySyncDefinitions.new
      end)
      service.add_operation(:list_service_instance_outputs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceInstanceOutputs"
        operation.name = "ListServiceInstanceOutputs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceOutputsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceOutputsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceInstanceOutputs.new
      end)
      service.add_operation(:list_service_instance_provisioned_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceInstanceProvisionedResources"
        operation.name = "ListServiceInstanceProvisionedResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceProvisionedResourcesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceProvisionedResourcesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceInstanceProvisionedResources.new
      end)
      service.add_operation(:list_service_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceInstances"
        operation.name = "ListServiceInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceInstances.new
      end)
      service.add_operation(:list_service_pipeline_outputs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServicePipelineOutputs"
        operation.name = "ListServicePipelineOutputs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineOutputsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineOutputsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServicePipelineOutputs.new
      end)
      service.add_operation(:list_service_pipeline_provisioned_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServicePipelineProvisionedResources"
        operation.name = "ListServicePipelineProvisionedResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineProvisionedResourcesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineProvisionedResourcesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServicePipelineProvisionedResources.new
      end)
      service.add_operation(:list_service_template_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceTemplateVersions"
        operation.name = "ListServiceTemplateVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplateVersionsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplateVersionsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceTemplateVersions.new
      end)
      service.add_operation(:list_service_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceTemplates"
        operation.name = "ListServiceTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplatesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplatesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceTemplates.new
      end)
      service.add_operation(:list_services, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServices"
        operation.name = "ListServices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:notify_resource_deployment_status_change, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#NotifyResourceDeploymentStatusChange"
        operation.name = "NotifyResourceDeploymentStatusChange"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:reject_environment_account_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#RejectEnvironmentAccountConnection"
        operation.name = "RejectEnvironmentAccountConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectEnvironmentAccountConnectionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectEnvironmentAccountConnectionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateComponent"
        operation.name = "UpdateComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment_account_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironmentAccountConnection"
        operation.name = "UpdateEnvironmentAccountConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentAccountConnectionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentAccountConnectionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_environment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironmentTemplate"
        operation.name = "UpdateEnvironmentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironmentTemplateVersion"
        operation.name = "UpdateEnvironmentTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateService"
        operation.name = "UpdateService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceInstance"
        operation.name = "UpdateServiceInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceInstanceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceInstanceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServicePipeline"
        operation.name = "UpdateServicePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServicePipelineOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServicePipelineOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_sync_blocker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceSyncBlocker"
        operation.name = "UpdateServiceSyncBlocker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncBlockerOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncBlockerOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceSyncConfig"
        operation.name = "UpdateServiceSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceTemplate"
        operation.name = "UpdateServiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceTemplateVersion"
        operation.name = "UpdateServiceTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateVersionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateVersionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_template_sync_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateTemplateSyncConfig"
        operation.name = "UpdateTemplateSyncConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateSyncConfigOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateSyncConfigOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
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
