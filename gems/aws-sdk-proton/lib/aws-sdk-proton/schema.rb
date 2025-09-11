# frozen_string_literal: true

# This is generated code!

module Aws::Proton
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptEnvironmentAccountConnectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AcceptEnvironmentAccountConnectionOperationInput', name: 'AcceptEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    AcceptEnvironmentAccountConnectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AcceptEnvironmentAccountConnectionOperationOutput', name: 'AcceptEnvironmentAccountConnectionOperationOutput')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#AccountSettings', name: 'AccountSettings')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):[a-zA-Z0-9-]+:[a-zA-Z0-9-]*:\\d{12}:([\\w+=,.@-]+[/:])*[\\w+=,.@-]+$"})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    BlockerStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#BlockerStatus', name: 'BlockerStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "RESOLVED", "name" => "RESOLVED"}]})
    BlockerType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#BlockerType', name: 'BlockerType', traits: {"smithy.api#enum" => [{"value" => "AUTOMATED", "name" => "AUTOMATED"}]})
    CancelComponentDeploymentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelComponentDeploymentOperationInput', name: 'CancelComponentDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource", "ids" => {"name" => "componentName"}}]})
    CancelComponentDeploymentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelComponentDeploymentOperationOutput', name: 'CancelComponentDeploymentOperationOutput')
    CancelEnvironmentDeploymentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelEnvironmentDeploymentOperationInput', name: 'CancelEnvironmentDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource", "ids" => {"name" => "environmentName"}}]})
    CancelEnvironmentDeploymentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelEnvironmentDeploymentOperationOutput', name: 'CancelEnvironmentDeploymentOperationOutput')
    CancelServiceInstanceDeploymentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServiceInstanceDeploymentOperationInput', name: 'CancelServiceInstanceDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceInstanceResource", "ids" => {"name" => "serviceInstanceName", "serviceName" => "serviceName"}}]})
    CancelServiceInstanceDeploymentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServiceInstanceDeploymentOperationOutput', name: 'CancelServiceInstanceDeploymentOperationOutput')
    CancelServicePipelineDeploymentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServicePipelineDeploymentOperationInput', name: 'CancelServicePipelineDeploymentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource", "ids" => {"name" => "serviceName"}}]})
    CancelServicePipelineDeploymentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CancelServicePipelineDeploymentOperationOutput', name: 'CancelServicePipelineDeploymentOperationOutput')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[!-~]*$"})
    CompatibleEnvironmentTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplate', name: 'CompatibleEnvironmentTemplate')
    CompatibleEnvironmentTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplateInput', name: 'CompatibleEnvironmentTemplateInput')
    CompatibleEnvironmentTemplateInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplateInputList', name: 'CompatibleEnvironmentTemplateInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CompatibleEnvironmentTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#CompatibleEnvironmentTemplateList', name: 'CompatibleEnvironmentTemplateList')
    Component = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Component', name: 'Component')
    ComponentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ComponentArn', name: 'ComponentArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ComponentResource"}})
    ComponentDeploymentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ComponentDeploymentIdList', name: 'ComponentDeploymentIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ComponentDeploymentUpdateType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ComponentDeploymentUpdateType', name: 'ComponentDeploymentUpdateType', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "CURRENT_VERSION", "name" => "CURRENT_VERSION"}]})
    ComponentState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ComponentState', name: 'ComponentState')
    ComponentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ComponentSummary', name: 'ComponentSummary')
    ComponentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ComponentSummaryList', name: 'ComponentSummaryList')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CountsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CountsSummary', name: 'CountsSummary')
    CreateComponentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateComponentOperationInput', name: 'CreateComponentOperationInput')
    CreateComponentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateComponentOperationOutput', name: 'CreateComponentOperationOutput')
    CreateEnvironmentAccountConnectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentAccountConnectionOperationInput', name: 'CreateEnvironmentAccountConnectionOperationInput')
    CreateEnvironmentAccountConnectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentAccountConnectionOperationOutput', name: 'CreateEnvironmentAccountConnectionOperationOutput')
    CreateEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentOperationInput', name: 'CreateEnvironmentOperationInput')
    CreateEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentOperationOutput', name: 'CreateEnvironmentOperationOutput')
    CreateEnvironmentTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateOperationInput', name: 'CreateEnvironmentTemplateOperationInput')
    CreateEnvironmentTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateOperationOutput', name: 'CreateEnvironmentTemplateOperationOutput')
    CreateEnvironmentTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateVersionOperationInput', name: 'CreateEnvironmentTemplateVersionOperationInput')
    CreateEnvironmentTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateEnvironmentTemplateVersionOperationOutput', name: 'CreateEnvironmentTemplateVersionOperationOutput')
    CreateRepositoryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateRepositoryOperationInput', name: 'CreateRepositoryOperationInput')
    CreateRepositoryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateRepositoryOperationOutput', name: 'CreateRepositoryOperationOutput')
    CreateServiceInstanceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceInstanceOperationInput', name: 'CreateServiceInstanceOperationInput')
    CreateServiceInstanceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceInstanceOperationOutput', name: 'CreateServiceInstanceOperationOutput')
    CreateServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceOperationInput', name: 'CreateServiceOperationInput')
    CreateServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceOperationOutput', name: 'CreateServiceOperationOutput')
    CreateServiceSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceSyncConfigOperationInput', name: 'CreateServiceSyncConfigOperationInput')
    CreateServiceSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceSyncConfigOperationOutput', name: 'CreateServiceSyncConfigOperationOutput')
    CreateServiceTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateOperationInput', name: 'CreateServiceTemplateOperationInput')
    CreateServiceTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateOperationOutput', name: 'CreateServiceTemplateOperationOutput')
    CreateServiceTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateVersionOperationInput', name: 'CreateServiceTemplateVersionOperationInput')
    CreateServiceTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateServiceTemplateVersionOperationOutput', name: 'CreateServiceTemplateVersionOperationOutput')
    CreateTemplateSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateTemplateSyncConfigOperationInput', name: 'CreateTemplateSyncConfigOperationInput')
    CreateTemplateSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#CreateTemplateSyncConfigOperationOutput', name: 'CreateTemplateSyncConfigOperationOutput')
    DeleteComponentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteComponentOperationInput', name: 'DeleteComponentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource"}]})
    DeleteComponentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteComponentOperationOutput', name: 'DeleteComponentOperationOutput')
    DeleteDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteDeploymentInput', name: 'DeleteDeploymentInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#DeploymentResource"}]})
    DeleteDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteDeploymentOutput', name: 'DeleteDeploymentOutput')
    DeleteEnvironmentAccountConnectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentAccountConnectionOperationInput', name: 'DeleteEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    DeleteEnvironmentAccountConnectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentAccountConnectionOperationOutput', name: 'DeleteEnvironmentAccountConnectionOperationOutput')
    DeleteEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentOperationInput', name: 'DeleteEnvironmentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource"}]})
    DeleteEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentOperationOutput', name: 'DeleteEnvironmentOperationOutput')
    DeleteEnvironmentTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateOperationInput', name: 'DeleteEnvironmentTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateResource"}]})
    DeleteEnvironmentTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateOperationOutput', name: 'DeleteEnvironmentTemplateOperationOutput')
    DeleteEnvironmentTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateVersionOperationInput', name: 'DeleteEnvironmentTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateVersionResource"}]})
    DeleteEnvironmentTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteEnvironmentTemplateVersionOperationOutput', name: 'DeleteEnvironmentTemplateVersionOperationOutput')
    DeleteRepositoryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteRepositoryOperationInput', name: 'DeleteRepositoryOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#RepositoryResource"}]})
    DeleteRepositoryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteRepositoryOperationOutput', name: 'DeleteRepositoryOperationOutput')
    DeleteServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceOperationInput', name: 'DeleteServiceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    DeleteServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceOperationOutput', name: 'DeleteServiceOperationOutput')
    DeleteServiceSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceSyncConfigOperationInput', name: 'DeleteServiceSyncConfigOperationInput')
    DeleteServiceSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceSyncConfigOperationOutput', name: 'DeleteServiceSyncConfigOperationOutput')
    DeleteServiceTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateOperationInput', name: 'DeleteServiceTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateResource"}]})
    DeleteServiceTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateOperationOutput', name: 'DeleteServiceTemplateOperationOutput')
    DeleteServiceTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateVersionOperationInput', name: 'DeleteServiceTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateVersionResource"}]})
    DeleteServiceTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteServiceTemplateVersionOperationOutput', name: 'DeleteServiceTemplateVersionOperationOutput')
    DeleteTemplateSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteTemplateSyncConfigOperationInput', name: 'DeleteTemplateSyncConfigOperationInput')
    DeleteTemplateSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeleteTemplateSyncConfigOperationOutput', name: 'DeleteTemplateSyncConfigOperationOutput')
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Deployment', name: 'Deployment')
    DeploymentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentArn', name: 'DeploymentArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#DeploymentResource"}})
    DeploymentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentId', name: 'DeploymentId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    DeploymentState = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.proton#DeploymentState', name: 'DeploymentState')
    DeploymentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentStatus', name: 'DeploymentStatus', traits: {"smithy.api#enum" => [{"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED"}, {"name" => "DELETE_COMPLETE", "value" => "DELETE_COMPLETE"}, {"name" => "CANCELLING", "value" => "CANCELLING"}, {"name" => "CANCELLED", "value" => "CANCELLED"}]})
    DeploymentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#DeploymentSummary', name: 'DeploymentSummary')
    DeploymentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#DeploymentSummaryList', name: 'DeploymentSummaryList')
    DeploymentTargetResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentTargetResourceType', name: 'DeploymentTargetResourceType', traits: {"smithy.api#enum" => [{"name" => "ENVIRONMENT", "value" => "ENVIRONMENT"}, {"name" => "SERVICE_PIPELINE", "value" => "SERVICE_PIPELINE"}, {"name" => "SERVICE_INSTANCE", "value" => "SERVICE_INSTANCE"}, {"name" => "COMPONENT", "value" => "COMPONENT"}]})
    DeploymentUpdateType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DeploymentUpdateType', name: 'DeploymentUpdateType', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "CURRENT_VERSION", "name" => "CURRENT_VERSION"}, {"value" => "MINOR_VERSION", "name" => "MINOR_VERSION"}, {"value" => "MAJOR_VERSION", "name" => "MAJOR_VERSION"}]})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#sensitive" => {}})
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    EmptyNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EmptyNextToken', name: 'EmptyNextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 0}})
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Environment', name: 'Environment')
    EnvironmentAccountConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnection', name: 'EnvironmentAccountConnection')
    EnvironmentAccountConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionArn', name: 'EnvironmentAccountConnectionArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}})
    EnvironmentAccountConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionId', name: 'EnvironmentAccountConnectionId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    EnvironmentAccountConnectionRequesterAccountType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionRequesterAccountType', name: 'EnvironmentAccountConnectionRequesterAccountType', traits: {"smithy.api#enum" => [{"value" => "MANAGEMENT_ACCOUNT", "name" => "MANAGEMENT_ACCOUNT"}, {"value" => "ENVIRONMENT_ACCOUNT", "name" => "ENVIRONMENT_ACCOUNT"}]})
    EnvironmentAccountConnectionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionStatus', name: 'EnvironmentAccountConnectionStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "CONNECTED", "name" => "CONNECTED"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    EnvironmentAccountConnectionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionStatusList', name: 'EnvironmentAccountConnectionStatusList')
    EnvironmentAccountConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionSummary', name: 'EnvironmentAccountConnectionSummary')
    EnvironmentAccountConnectionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentAccountConnectionSummaryList', name: 'EnvironmentAccountConnectionSummaryList')
    EnvironmentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentArn', name: 'EnvironmentArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentResource"}})
    EnvironmentState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentState', name: 'EnvironmentState')
    EnvironmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentSummary', name: 'EnvironmentSummary')
    EnvironmentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentSummaryList', name: 'EnvironmentSummaryList')
    EnvironmentTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplate', name: 'EnvironmentTemplate')
    EnvironmentTemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateArn', name: 'EnvironmentTemplateArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentTemplateResource"}})
    EnvironmentTemplateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateFilter', name: 'EnvironmentTemplateFilter')
    EnvironmentTemplateFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateFilterList', name: 'EnvironmentTemplateFilterList')
    EnvironmentTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateSummary', name: 'EnvironmentTemplateSummary')
    EnvironmentTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateSummaryList', name: 'EnvironmentTemplateSummaryList')
    EnvironmentTemplateVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersion', name: 'EnvironmentTemplateVersion')
    EnvironmentTemplateVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersionArn', name: 'EnvironmentTemplateVersionArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#EnvironmentTemplateVersion"}})
    EnvironmentTemplateVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersionSummary', name: 'EnvironmentTemplateVersionSummary')
    EnvironmentTemplateVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#EnvironmentTemplateVersionSummaryList', name: 'EnvironmentTemplateVersionSummaryList')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#sensitive" => {}})
    FullTemplateVersionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#FullTemplateVersionNumber', name: 'FullTemplateVersionNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(0|([1-9]{1}\\d*)).(0|([1-9]{1}\\d*))$"})
    GetAccountSettingsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetAccountSettingsOperationInput', name: 'GetAccountSettingsOperationInput')
    GetAccountSettingsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetAccountSettingsOperationOutput', name: 'GetAccountSettingsOperationOutput')
    GetComponentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetComponentOperationInput', name: 'GetComponentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource"}]})
    GetComponentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetComponentOperationOutput', name: 'GetComponentOperationOutput')
    GetDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetDeploymentInput', name: 'GetDeploymentInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#DeploymentResource"}]})
    GetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetDeploymentOutput', name: 'GetDeploymentOutput')
    GetEnvironmentAccountConnectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentAccountConnectionOperationInput', name: 'GetEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    GetEnvironmentAccountConnectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentAccountConnectionOperationOutput', name: 'GetEnvironmentAccountConnectionOperationOutput')
    GetEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentOperationInput', name: 'GetEnvironmentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource"}]})
    GetEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentOperationOutput', name: 'GetEnvironmentOperationOutput')
    GetEnvironmentTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateOperationInput', name: 'GetEnvironmentTemplateOperationInput')
    GetEnvironmentTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateOperationOutput', name: 'GetEnvironmentTemplateOperationOutput')
    GetEnvironmentTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateVersionOperationInput', name: 'GetEnvironmentTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateVersionResource"}]})
    GetEnvironmentTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetEnvironmentTemplateVersionOperationOutput', name: 'GetEnvironmentTemplateVersionOperationOutput')
    GetRepositoryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositoryOperationInput', name: 'GetRepositoryOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#RepositoryResource"}]})
    GetRepositoryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositoryOperationOutput', name: 'GetRepositoryOperationOutput')
    GetRepositorySyncStatusOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositorySyncStatusOperationInput', name: 'GetRepositorySyncStatusOperationInput')
    GetRepositorySyncStatusOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetRepositorySyncStatusOperationOutput', name: 'GetRepositorySyncStatusOperationOutput')
    GetResourcesSummaryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetResourcesSummaryOperationInput', name: 'GetResourcesSummaryOperationInput')
    GetResourcesSummaryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetResourcesSummaryOperationOutput', name: 'GetResourcesSummaryOperationOutput')
    GetServiceInstanceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceOperationInput', name: 'GetServiceInstanceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceInstanceResource"}]})
    GetServiceInstanceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceOperationOutput', name: 'GetServiceInstanceOperationOutput')
    GetServiceInstanceSyncStatusOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceSyncStatusOperationInput', name: 'GetServiceInstanceSyncStatusOperationInput')
    GetServiceInstanceSyncStatusOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceInstanceSyncStatusOperationOutput', name: 'GetServiceInstanceSyncStatusOperationOutput')
    GetServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceOperationInput', name: 'GetServiceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    GetServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceOperationOutput', name: 'GetServiceOperationOutput')
    GetServiceSyncBlockerSummaryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncBlockerSummaryOperationInput', name: 'GetServiceSyncBlockerSummaryOperationInput')
    GetServiceSyncBlockerSummaryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncBlockerSummaryOperationOutput', name: 'GetServiceSyncBlockerSummaryOperationOutput')
    GetServiceSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncConfigOperationInput', name: 'GetServiceSyncConfigOperationInput')
    GetServiceSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceSyncConfigOperationOutput', name: 'GetServiceSyncConfigOperationOutput')
    GetServiceTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateOperationInput', name: 'GetServiceTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateResource"}]})
    GetServiceTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateOperationOutput', name: 'GetServiceTemplateOperationOutput')
    GetServiceTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateVersionOperationInput', name: 'GetServiceTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateVersionResource"}]})
    GetServiceTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetServiceTemplateVersionOperationOutput', name: 'GetServiceTemplateVersionOperationOutput')
    GetTemplateSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncConfigOperationInput', name: 'GetTemplateSyncConfigOperationInput')
    GetTemplateSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncConfigOperationOutput', name: 'GetTemplateSyncConfigOperationOutput')
    GetTemplateSyncStatusOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncStatusOperationInput', name: 'GetTemplateSyncStatusOperationInput')
    GetTemplateSyncStatusOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#GetTemplateSyncStatusOperationOutput', name: 'GetTemplateSyncStatusOperationOutput')
    GitBranchName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#GitBranchName', name: 'GitBranchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LatestSyncBlockers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#LatestSyncBlockers', name: 'LatestSyncBlockers')
    ListComponentOutputsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentOutputsOperationInput', name: 'ListComponentOutputsOperationInput')
    ListComponentOutputsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentOutputsOperationOutput', name: 'ListComponentOutputsOperationOutput')
    ListComponentProvisionedResourcesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentProvisionedResourcesOperationInput', name: 'ListComponentProvisionedResourcesOperationInput')
    ListComponentProvisionedResourcesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentProvisionedResourcesOperationOutput', name: 'ListComponentProvisionedResourcesOperationOutput')
    ListComponentsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentsOperationInput', name: 'ListComponentsOperationInput')
    ListComponentsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListComponentsOperationOutput', name: 'ListComponentsOperationOutput')
    ListDeploymentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListDeploymentsInput', name: 'ListDeploymentsInput')
    ListDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListDeploymentsOutput', name: 'ListDeploymentsOutput')
    ListEnvironmentAccountConnectionsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentAccountConnectionsOperationInput', name: 'ListEnvironmentAccountConnectionsOperationInput')
    ListEnvironmentAccountConnectionsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentAccountConnectionsOperationOutput', name: 'ListEnvironmentAccountConnectionsOperationOutput')
    ListEnvironmentOutputsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentOutputsOperationInput', name: 'ListEnvironmentOutputsOperationInput')
    ListEnvironmentOutputsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentOutputsOperationOutput', name: 'ListEnvironmentOutputsOperationOutput')
    ListEnvironmentProvisionedResourcesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentProvisionedResourcesOperationInput', name: 'ListEnvironmentProvisionedResourcesOperationInput')
    ListEnvironmentProvisionedResourcesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentProvisionedResourcesOperationOutput', name: 'ListEnvironmentProvisionedResourcesOperationOutput')
    ListEnvironmentTemplateVersionsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplateVersionsOperationInput', name: 'ListEnvironmentTemplateVersionsOperationInput')
    ListEnvironmentTemplateVersionsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplateVersionsOperationOutput', name: 'ListEnvironmentTemplateVersionsOperationOutput')
    ListEnvironmentTemplatesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplatesOperationInput', name: 'ListEnvironmentTemplatesOperationInput')
    ListEnvironmentTemplatesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentTemplatesOperationOutput', name: 'ListEnvironmentTemplatesOperationOutput')
    ListEnvironmentsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentsOperationInput', name: 'ListEnvironmentsOperationInput')
    ListEnvironmentsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListEnvironmentsOperationOutput', name: 'ListEnvironmentsOperationOutput')
    ListRepositoriesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositoriesOperationInput', name: 'ListRepositoriesOperationInput')
    ListRepositoriesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositoriesOperationOutput', name: 'ListRepositoriesOperationOutput')
    ListRepositorySyncDefinitionsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositorySyncDefinitionsOperationInput', name: 'ListRepositorySyncDefinitionsOperationInput')
    ListRepositorySyncDefinitionsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListRepositorySyncDefinitionsOperationOutput', name: 'ListRepositorySyncDefinitionsOperationOutput')
    ListServiceInstanceOutputsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceOutputsOperationInput', name: 'ListServiceInstanceOutputsOperationInput')
    ListServiceInstanceOutputsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceOutputsOperationOutput', name: 'ListServiceInstanceOutputsOperationOutput')
    ListServiceInstanceProvisionedResourcesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceProvisionedResourcesOperationInput', name: 'ListServiceInstanceProvisionedResourcesOperationInput')
    ListServiceInstanceProvisionedResourcesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstanceProvisionedResourcesOperationOutput', name: 'ListServiceInstanceProvisionedResourcesOperationOutput')
    ListServiceInstancesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilter', name: 'ListServiceInstancesFilter')
    ListServiceInstancesFilterBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilterBy', name: 'ListServiceInstancesFilterBy', traits: {"smithy.api#enum" => [{"value" => "name", "name" => "NAME"}, {"value" => "deploymentStatus", "name" => "DEPLOYMENT_STATUS"}, {"value" => "templateName", "name" => "TEMPLATE_NAME"}, {"value" => "serviceName", "name" => "SERVICE_NAME"}, {"value" => "deployedTemplateVersionStatus", "name" => "DEPLOYED_TEMPLATE_VERSION_STATUS"}, {"value" => "environmentName", "name" => "ENVIRONMENT_NAME"}, {"value" => "lastDeploymentAttemptedAtBefore", "name" => "LAST_DEPLOYMENT_ATTEMPTED_AT_BEFORE"}, {"value" => "lastDeploymentAttemptedAtAfter", "name" => "LAST_DEPLOYMENT_ATTEMPTED_AT_AFTER"}, {"value" => "createdAtBefore", "name" => "CREATED_AT_BEFORE"}, {"value" => "createdAtAfter", "name" => "CREATED_AT_AFTER"}]})
    ListServiceInstancesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilterList', name: 'ListServiceInstancesFilterList')
    ListServiceInstancesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ListServiceInstancesFilterValue', name: 'ListServiceInstancesFilterValue')
    ListServiceInstancesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstancesOperationInput', name: 'ListServiceInstancesOperationInput')
    ListServiceInstancesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceInstancesOperationOutput', name: 'ListServiceInstancesOperationOutput')
    ListServiceInstancesSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ListServiceInstancesSortBy', name: 'ListServiceInstancesSortBy', traits: {"smithy.api#enum" => [{"value" => "name", "name" => "NAME"}, {"value" => "deploymentStatus", "name" => "DEPLOYMENT_STATUS"}, {"value" => "templateName", "name" => "TEMPLATE_NAME"}, {"value" => "serviceName", "name" => "SERVICE_NAME"}, {"value" => "environmentName", "name" => "ENVIRONMENT_NAME"}, {"value" => "lastDeploymentAttemptedAt", "name" => "LAST_DEPLOYMENT_ATTEMPTED_AT"}, {"value" => "createdAt", "name" => "CREATED_AT"}]})
    ListServicePipelineOutputsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineOutputsOperationInput', name: 'ListServicePipelineOutputsOperationInput')
    ListServicePipelineOutputsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineOutputsOperationOutput', name: 'ListServicePipelineOutputsOperationOutput')
    ListServicePipelineProvisionedResourcesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineProvisionedResourcesOperationInput', name: 'ListServicePipelineProvisionedResourcesOperationInput')
    ListServicePipelineProvisionedResourcesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicePipelineProvisionedResourcesOperationOutput', name: 'ListServicePipelineProvisionedResourcesOperationOutput')
    ListServiceTemplateVersionsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplateVersionsOperationInput', name: 'ListServiceTemplateVersionsOperationInput')
    ListServiceTemplateVersionsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplateVersionsOperationOutput', name: 'ListServiceTemplateVersionsOperationOutput')
    ListServiceTemplatesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplatesOperationInput', name: 'ListServiceTemplatesOperationInput')
    ListServiceTemplatesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServiceTemplatesOperationOutput', name: 'ListServiceTemplatesOperationOutput')
    ListServicesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicesOperationInput', name: 'ListServicesOperationInput')
    ListServicesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListServicesOperationOutput', name: 'ListServicesOperationOutput')
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    MaxPageResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.proton#MaxPageResults', name: 'MaxPageResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^[A-Za-z0-9+=/]+$"})
    NotifyResourceDeploymentStatusChangeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#NotifyResourceDeploymentStatusChangeOperationInput', name: 'NotifyResourceDeploymentStatusChangeOperationInput')
    NotifyResourceDeploymentStatusChangeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#NotifyResourceDeploymentStatusChangeOperationOutput', name: 'NotifyResourceDeploymentStatusChangeOperationOutput')
    OpsFilePath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#OpsFilePath', name: 'OpsFilePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Output = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Output', name: 'Output', traits: {"smithy.api#sensitive" => {}})
    OutputKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#OutputKey', name: 'OutputKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    OutputValueString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#OutputValueString', name: 'OutputValueString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    OutputsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#OutputsList', name: 'OutputsList')
    ProvisionedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ProvisionedResource', name: 'ProvisionedResource')
    ProvisionedResourceEngine = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ProvisionedResourceEngine', name: 'ProvisionedResourceEngine', traits: {"smithy.api#enum" => [{"name" => "CLOUDFORMATION", "value" => "CLOUDFORMATION"}, {"name" => "TERRAFORM", "value" => "TERRAFORM"}]})
    ProvisionedResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ProvisionedResourceIdentifier', name: 'ProvisionedResourceIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ProvisionedResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ProvisionedResourceList', name: 'ProvisionedResourceList')
    ProvisionedResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ProvisionedResourceName', name: 'ProvisionedResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    Provisioning = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Provisioning', name: 'Provisioning', traits: {"smithy.api#enum" => [{"value" => "CUSTOMER_MANAGED", "name" => "CUSTOMER_MANAGED"}]})
    RejectEnvironmentAccountConnectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RejectEnvironmentAccountConnectionOperationInput', name: 'RejectEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    RejectEnvironmentAccountConnectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RejectEnvironmentAccountConnectionOperationOutput', name: 'RejectEnvironmentAccountConnectionOperationOutput')
    Repository = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Repository', name: 'Repository')
    RepositoryArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryArn', name: 'RepositoryArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#RepositoryResource"}})
    RepositoryBranch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositoryBranch', name: 'RepositoryBranch')
    RepositoryBranchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositoryBranchInput', name: 'RepositoryBranchInput')
    RepositoryId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryId', name: 'RepositoryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryName', name: 'RepositoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "[A-Za-z0-9_.-].*/[A-Za-z0-9_.-].*"})
    RepositoryProvider = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositoryProvider', name: 'RepositoryProvider', traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITHUB_ENTERPRISE", "name" => "GITHUB_ENTERPRISE"}, {"value" => "BITBUCKET", "name" => "BITBUCKET"}]})
    RepositorySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySummary', name: 'RepositorySummary')
    RepositorySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#RepositorySummaryList', name: 'RepositorySummaryList')
    RepositorySyncAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySyncAttempt', name: 'RepositorySyncAttempt')
    RepositorySyncDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySyncDefinition', name: 'RepositorySyncDefinition')
    RepositorySyncDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#RepositorySyncDefinitionList', name: 'RepositorySyncDefinitionList')
    RepositorySyncEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#RepositorySyncEvent', name: 'RepositorySyncEvent')
    RepositorySyncEvents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#RepositorySyncEvents', name: 'RepositorySyncEvents')
    RepositorySyncStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RepositorySyncStatus', name: 'RepositorySyncStatus', traits: {"smithy.api#enum" => [{"value" => "INITIATED", "name" => "INITIATED", "documentation" => "   A repository sync attempt has been created and will begin soon.\n"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "    A repository sync attempt has started and work is being done to reconcile the branch.\n"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED", "documentation" => "    The repository sync attempt has completed successfully.\n"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "    The repository sync attempt has failed.\n"}, {"value" => "QUEUED", "name" => "QUEUED", "documentation" => "    The repository sync attempt didn't execute and was queued.\n"}]})
    ResourceCountsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceCountsSummary', name: 'ResourceCountsSummary')
    ResourceDeploymentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceDeploymentStatus', name: 'ResourceDeploymentStatus', traits: {"smithy.api#enum" => [{"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}]})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z]+[0-9A-Za-z_\\-]*$"})
    ResourceNameOrEmpty = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceNameOrEmpty', name: 'ResourceNameOrEmpty', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "(^$)|^[0-9A-Za-z]+[0-9A-Za-z_\\-]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSyncAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceSyncAttempt', name: 'ResourceSyncAttempt')
    ResourceSyncEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ResourceSyncEvent', name: 'ResourceSyncEvent')
    ResourceSyncEvents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ResourceSyncEvents', name: 'ResourceSyncEvents')
    ResourceSyncStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ResourceSyncStatus', name: 'ResourceSyncStatus', traits: {"smithy.api#enum" => [{"value" => "INITIATED", "name" => "INITIATED", "documentation" => "   A sync attempt has been created and will begin soon.\n"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "    Syncing has started and work is being done to reconcile state.\n"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED", "documentation" => "    Syncing has completed successfully.\n"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "    Syncing has failed.\n"}]})
    Revision = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Revision', name: 'Revision')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/([\\w+=,.@-]{1,512}[/:])*([\\w+=,.@-]{1,64})$"})
    RoleArnOrEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#RoleArnOrEmptyString', name: 'RoleArnOrEmptyString', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^$)|(^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/([\\w+=,.@-]{1,512}[/:])*([\\w+=,.@-]{1,64})$)"})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+[a-z0-9-\\.]+[a-z0-9]+$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3ObjectSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#S3ObjectSource', name: 'S3ObjectSource')
    SHA = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SHA', name: 'SHA', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Service', name: 'Service')
    ServiceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceArn', name: 'ServiceArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceResource"}})
    ServiceInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceInstance', name: 'ServiceInstance', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    ServiceInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceInstanceArn', name: 'ServiceInstanceArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceInstanceResource"}})
    ServiceInstanceState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceInstanceState', name: 'ServiceInstanceState')
    ServiceInstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceInstanceSummary', name: 'ServiceInstanceSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    ServiceInstanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceInstanceSummaryList', name: 'ServiceInstanceSummaryList')
    ServicePipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServicePipeline', name: 'ServicePipeline')
    ServicePipelineState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServicePipelineState', name: 'ServicePipelineState')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceStatus', name: 'ServiceStatus', traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS"}, {"name" => "CREATE_FAILED_CLEANUP_IN_PROGRESS", "value" => "CREATE_FAILED_CLEANUP_IN_PROGRESS"}, {"name" => "CREATE_FAILED_CLEANUP_COMPLETE", "value" => "CREATE_FAILED_CLEANUP_COMPLETE"}, {"name" => "CREATE_FAILED_CLEANUP_FAILED", "value" => "CREATE_FAILED_CLEANUP_FAILED"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED"}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS"}, {"name" => "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "value" => "UPDATE_FAILED_CLEANUP_IN_PROGRESS"}, {"name" => "UPDATE_FAILED_CLEANUP_COMPLETE", "value" => "UPDATE_FAILED_CLEANUP_COMPLETE"}, {"name" => "UPDATE_FAILED_CLEANUP_FAILED", "value" => "UPDATE_FAILED_CLEANUP_FAILED"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED"}, {"name" => "UPDATE_COMPLETE_CLEANUP_FAILED", "value" => "UPDATE_COMPLETE_CLEANUP_FAILED"}]})
    ServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceSummary', name: 'ServiceSummary')
    ServiceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceSummaryList', name: 'ServiceSummaryList')
    ServiceSyncBlockerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceSyncBlockerSummary', name: 'ServiceSyncBlockerSummary')
    ServiceSyncConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceSyncConfig', name: 'ServiceSyncConfig')
    ServiceTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplate', name: 'ServiceTemplate')
    ServiceTemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceTemplateArn', name: 'ServiceTemplateArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceTemplateResource"}})
    ServiceTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplateSummary', name: 'ServiceTemplateSummary')
    ServiceTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceTemplateSummaryList', name: 'ServiceTemplateSummaryList')
    ServiceTemplateSupportedComponentSourceInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceTemplateSupportedComponentSourceInputList', name: 'ServiceTemplateSupportedComponentSourceInputList')
    ServiceTemplateSupportedComponentSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceTemplateSupportedComponentSourceType', name: 'ServiceTemplateSupportedComponentSourceType', traits: {"smithy.api#enum" => [{"value" => "DIRECTLY_DEFINED", "name" => "DIRECTLY_DEFINED"}]})
    ServiceTemplateVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersion', name: 'ServiceTemplateVersion')
    ServiceTemplateVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersionArn', name: 'ServiceTemplateVersionArn', traits: {"aws.api#arnReference" => {"resource" => "com.amazonaws.proton#ServiceTemplateVersion"}})
    ServiceTemplateVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersionSummary', name: 'ServiceTemplateVersionSummary')
    ServiceTemplateVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#ServiceTemplateVersionSummaryList', name: 'ServiceTemplateVersionSummaryList')
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING"}, {"value" => "DESCENDING", "name" => "DESCENDING"}]})
    SpecContents = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SpecContents', name: 'SpecContents', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#sensitive" => {}})
    Subdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#Subdirectory', name: 'Subdirectory', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    SyncBlocker = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#SyncBlocker', name: 'SyncBlocker')
    SyncBlockerContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#SyncBlockerContext', name: 'SyncBlockerContext')
    SyncBlockerContexts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#SyncBlockerContexts', name: 'SyncBlockerContexts')
    SyncType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#SyncType', name: 'SyncType', traits: {"smithy.api#enum" => [{"value" => "TEMPLATE_SYNC", "name" => "TEMPLATE_SYNC", "documentation" => "    Syncs environment and service templates to Proton.\n"}, {"value" => "SERVICE_SYNC", "name" => "SERVICE_SYNC", "documentation" => "    Syncs services and service instances to Proton.\n"}]})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.proton#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateFileContents = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateFileContents', name: 'TemplateFileContents', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    TemplateManifestContents = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateManifestContents', name: 'TemplateManifestContents', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    TemplateSchema = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateSchema', name: 'TemplateSchema', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#mediaType" => "application/yaml", "smithy.api#sensitive" => {}})
    TemplateSyncConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#TemplateSyncConfig', name: 'TemplateSyncConfig')
    TemplateType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateType', name: 'TemplateType', traits: {"smithy.api#enum" => [{"name" => "ENVIRONMENT", "value" => "ENVIRONMENT"}, {"name" => "SERVICE", "value" => "SERVICE"}]})
    TemplateVersionPart = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateVersionPart', name: 'TemplateVersionPart', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^(0|([1-9]{1}\\d*))$"})
    TemplateVersionSourceInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.proton#TemplateVersionSourceInput', name: 'TemplateVersionSourceInput')
    TemplateVersionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.proton#TemplateVersionStatus', name: 'TemplateVersionStatus', traits: {"smithy.api#enum" => [{"name" => "REGISTRATION_IN_PROGRESS", "value" => "REGISTRATION_IN_PROGRESS"}, {"name" => "REGISTRATION_FAILED", "value" => "REGISTRATION_FAILED"}, {"name" => "DRAFT", "value" => "DRAFT"}, {"name" => "PUBLISHED", "value" => "PUBLISHED"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateAccountSettingsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateAccountSettingsOperationInput', name: 'UpdateAccountSettingsOperationInput')
    UpdateAccountSettingsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateAccountSettingsOperationOutput', name: 'UpdateAccountSettingsOperationOutput')
    UpdateComponentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateComponentOperationInput', name: 'UpdateComponentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ComponentResource"}]})
    UpdateComponentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateComponentOperationOutput', name: 'UpdateComponentOperationOutput')
    UpdateEnvironmentAccountConnectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentAccountConnectionOperationInput', name: 'UpdateEnvironmentAccountConnectionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentAccountConnectionResource"}]})
    UpdateEnvironmentAccountConnectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentAccountConnectionOperationOutput', name: 'UpdateEnvironmentAccountConnectionOperationOutput')
    UpdateEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentOperationInput', name: 'UpdateEnvironmentOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentResource"}]})
    UpdateEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentOperationOutput', name: 'UpdateEnvironmentOperationOutput')
    UpdateEnvironmentTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateOperationInput', name: 'UpdateEnvironmentTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateResource"}]})
    UpdateEnvironmentTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateOperationOutput', name: 'UpdateEnvironmentTemplateOperationOutput')
    UpdateEnvironmentTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateVersionOperationInput', name: 'UpdateEnvironmentTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#EnvironmentTemplateVersionResource"}]})
    UpdateEnvironmentTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateEnvironmentTemplateVersionOperationOutput', name: 'UpdateEnvironmentTemplateVersionOperationOutput')
    UpdateServiceInstanceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceInstanceOperationInput', name: 'UpdateServiceInstanceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceInstanceResource"}]})
    UpdateServiceInstanceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceInstanceOperationOutput', name: 'UpdateServiceInstanceOperationOutput')
    UpdateServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceOperationInput', name: 'UpdateServiceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource"}]})
    UpdateServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceOperationOutput', name: 'UpdateServiceOperationOutput')
    UpdateServicePipelineOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServicePipelineOperationInput', name: 'UpdateServicePipelineOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceResource", "ids" => {"name" => "serviceName"}}]})
    UpdateServicePipelineOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServicePipelineOperationOutput', name: 'UpdateServicePipelineOperationOutput')
    UpdateServiceSyncBlockerOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncBlockerOperationInput', name: 'UpdateServiceSyncBlockerOperationInput')
    UpdateServiceSyncBlockerOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncBlockerOperationOutput', name: 'UpdateServiceSyncBlockerOperationOutput')
    UpdateServiceSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncConfigOperationInput', name: 'UpdateServiceSyncConfigOperationInput')
    UpdateServiceSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceSyncConfigOperationOutput', name: 'UpdateServiceSyncConfigOperationOutput')
    UpdateServiceTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateOperationInput', name: 'UpdateServiceTemplateOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateResource"}]})
    UpdateServiceTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateOperationOutput', name: 'UpdateServiceTemplateOperationOutput')
    UpdateServiceTemplateVersionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateVersionOperationInput', name: 'UpdateServiceTemplateVersionOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.proton#ServiceTemplateVersionResource"}]})
    UpdateServiceTemplateVersionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateServiceTemplateVersionOperationOutput', name: 'UpdateServiceTemplateVersionOperationOutput')
    UpdateTemplateSyncConfigOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateTemplateSyncConfigOperationInput', name: 'UpdateTemplateSyncConfigOperationInput')
    UpdateTemplateSyncConfigOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#UpdateTemplateSyncConfigOperationOutput', name: 'UpdateTemplateSyncConfigOperationOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.proton#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AcceptEnvironmentAccountConnectionOperationInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    AcceptEnvironmentAccountConnectionOperationInput.type = Types::AcceptEnvironmentAccountConnectionOperationInput
    AcceptEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#required" => {}}))
    AcceptEnvironmentAccountConnectionOperationOutput.type = Types::AcceptEnvironmentAccountConnectionOperationOutput
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountSettings.add_member(:pipeline_service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineServiceRoleArn'))
    AccountSettings.add_member(:pipeline_provisioning_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: 'pipelineProvisioningRepository'))
    AccountSettings.add_member(:pipeline_codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineCodebuildRoleArn'))
    AccountSettings.type = Types::AccountSettings
    CancelComponentDeploymentOperationInput.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#required" => {}}))
    CancelComponentDeploymentOperationInput.type = Types::CancelComponentDeploymentOperationInput
    CancelComponentDeploymentOperationOutput.add_member(:component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#required" => {}}))
    CancelComponentDeploymentOperationOutput.type = Types::CancelComponentDeploymentOperationOutput
    CancelEnvironmentDeploymentOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    CancelEnvironmentDeploymentOperationInput.type = Types::CancelEnvironmentDeploymentOperationInput
    CancelEnvironmentDeploymentOperationOutput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#required" => {}}))
    CancelEnvironmentDeploymentOperationOutput.type = Types::CancelEnvironmentDeploymentOperationOutput
    CancelServiceInstanceDeploymentOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#required" => {}}))
    CancelServiceInstanceDeploymentOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    CancelServiceInstanceDeploymentOperationInput.type = Types::CancelServiceInstanceDeploymentOperationInput
    CancelServiceInstanceDeploymentOperationOutput.add_member(:service_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#required" => {}}))
    CancelServiceInstanceDeploymentOperationOutput.type = Types::CancelServiceInstanceDeploymentOperationOutput
    CancelServicePipelineDeploymentOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    CancelServicePipelineDeploymentOperationInput.type = Types::CancelServicePipelineDeploymentOperationInput
    CancelServicePipelineDeploymentOperationOutput.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipeline, location_name: 'pipeline', traits: {"smithy.api#required" => {}}))
    CancelServicePipelineDeploymentOperationOutput.type = Types::CancelServicePipelineDeploymentOperationOutput
    CompatibleEnvironmentTemplate.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    CompatibleEnvironmentTemplate.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    CompatibleEnvironmentTemplate.type = Types::CompatibleEnvironmentTemplate
    CompatibleEnvironmentTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    CompatibleEnvironmentTemplateInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    CompatibleEnvironmentTemplateInput.type = Types::CompatibleEnvironmentTemplateInput
    CompatibleEnvironmentTemplateInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInput)
    CompatibleEnvironmentTemplateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplate)
    Component.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Component.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Component.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Component.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    Component.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    Component.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    Component.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    Component.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    Component.add_member(:last_deployment_attempted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt'))
    Component.add_member(:last_deployment_succeeded_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt'))
    Component.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    Component.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    Component.add_member(:service_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec'))
    Component.add_member(:last_client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'lastClientRequestToken'))
    Component.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    Component.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    Component.type = Types::Component
    ComponentDeploymentIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId)
    ComponentState.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceName'))
    ComponentState.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceInstanceName'))
    ComponentState.add_member(:service_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec'))
    ComponentState.add_member(:template_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: 'templateFile'))
    ComponentState.type = Types::ComponentState
    ComponentSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    ComponentSummary.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    ComponentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:last_deployment_attempted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt'))
    ComponentSummary.add_member(:last_deployment_succeeded_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt'))
    ComponentSummary.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    ComponentSummary.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    ComponentSummary.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummary)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CountsSummary.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'components'))
    CountsSummary.add_member(:environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'environments'))
    CountsSummary.add_member(:environment_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'environmentTemplates'))
    CountsSummary.add_member(:service_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'serviceInstances'))
    CountsSummary.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'services'))
    CountsSummary.add_member(:service_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'serviceTemplates'))
    CountsSummary.add_member(:pipelines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: 'pipelines'))
    CountsSummary.type = Types::CountsSummary
    CreateComponentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateComponentOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateComponentOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    CreateComponentOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    CreateComponentOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName'))
    CreateComponentOperationInput.add_member(:template_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: 'templateFile', traits: {"smithy.api#required" => {}}))
    CreateComponentOperationInput.add_member(:manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateManifestContents, location_name: 'manifest', traits: {"smithy.api#required" => {}}))
    CreateComponentOperationInput.add_member(:service_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec'))
    CreateComponentOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateComponentOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateComponentOperationInput.type = Types::CreateComponentOperationInput
    CreateComponentOperationOutput.add_member(:component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#required" => {}}))
    CreateComponentOperationOutput.type = Types::CreateComponentOperationOutput
    CreateEnvironmentAccountConnectionOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:management_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'managementAccountId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn'))
    CreateEnvironmentAccountConnectionOperationInput.add_member(:codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn'))
    CreateEnvironmentAccountConnectionOperationInput.type = Types::CreateEnvironmentAccountConnectionOperationInput
    CreateEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentAccountConnectionOperationOutput.type = Types::CreateEnvironmentAccountConnectionOperationOutput
    CreateEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion'))
    CreateEnvironmentOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateEnvironmentOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:proton_service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn'))
    CreateEnvironmentOperationInput.add_member(:environment_account_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId'))
    CreateEnvironmentOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateEnvironmentOperationInput.add_member(:provisioning_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: 'provisioningRepository'))
    CreateEnvironmentOperationInput.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn'))
    CreateEnvironmentOperationInput.add_member(:codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn'))
    CreateEnvironmentOperationInput.type = Types::CreateEnvironmentOperationInput
    CreateEnvironmentOperationOutput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationOutput.type = Types::CreateEnvironmentOperationOutput
    CreateEnvironmentTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentTemplateOperationInput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    CreateEnvironmentTemplateOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateEnvironmentTemplateOperationInput.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey'))
    CreateEnvironmentTemplateOperationInput.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning'))
    CreateEnvironmentTemplateOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateEnvironmentTemplateOperationInput.type = Types::CreateEnvironmentTemplateOperationInput
    CreateEnvironmentTemplateOperationOutput.add_member(:environment_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentTemplateOperationOutput.type = Types::CreateEnvironmentTemplateOperationOutput
    CreateEnvironmentTemplateVersionOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion'))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionSourceInput, location_name: 'source', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentTemplateVersionOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateEnvironmentTemplateVersionOperationInput.type = Types::CreateEnvironmentTemplateVersionOperationInput
    CreateEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentTemplateVersionOperationOutput.type = Types::CreateEnvironmentTemplateVersionOperationOutput
    CreateRepositoryOperationInput.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    CreateRepositoryOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateRepositoryOperationInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectionArn', traits: {"smithy.api#required" => {}}))
    CreateRepositoryOperationInput.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey'))
    CreateRepositoryOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateRepositoryOperationInput.type = Types::CreateRepositoryOperationInput
    CreateRepositoryOperationOutput.add_member(:repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#required" => {}}))
    CreateRepositoryOperationOutput.type = Types::CreateRepositoryOperationOutput
    CreateServiceInstanceOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateServiceInstanceOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    CreateServiceInstanceOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#required" => {}}))
    CreateServiceInstanceOperationInput.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion'))
    CreateServiceInstanceOperationInput.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion'))
    CreateServiceInstanceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateServiceInstanceOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceInstanceOperationInput.type = Types::CreateServiceInstanceOperationInput
    CreateServiceInstanceOperationOutput.add_member(:service_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#required" => {}}))
    CreateServiceInstanceOperationOutput.type = Types::CreateServiceInstanceOperationOutput
    CreateServiceOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateServiceOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion'))
    CreateServiceOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#required" => {}}))
    CreateServiceOperationInput.add_member(:repository_connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'repositoryConnectionArn'))
    CreateServiceOperationInput.add_member(:repository_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId'))
    CreateServiceOperationInput.add_member(:branch_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branchName'))
    CreateServiceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateServiceOperationInput.type = Types::CreateServiceOperationInput
    CreateServiceOperationOutput.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#required" => {}}))
    CreateServiceOperationOutput.type = Types::CreateServiceOperationOutput
    CreateServiceSyncConfigOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsFilePath, location_name: 'filePath', traits: {"smithy.api#required" => {}}))
    CreateServiceSyncConfigOperationInput.type = Types::CreateServiceSyncConfigOperationInput
    CreateServiceSyncConfigOperationOutput.add_member(:service_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig'))
    CreateServiceSyncConfigOperationOutput.type = Types::CreateServiceSyncConfigOperationOutput
    CreateServiceTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateServiceTemplateOperationInput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    CreateServiceTemplateOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateServiceTemplateOperationInput.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey'))
    CreateServiceTemplateOperationInput.add_member(:pipeline_provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'pipelineProvisioning'))
    CreateServiceTemplateOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateServiceTemplateOperationInput.type = Types::CreateServiceTemplateOperationInput
    CreateServiceTemplateOperationOutput.add_member(:service_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate', traits: {"smithy.api#required" => {}}))
    CreateServiceTemplateOperationOutput.type = Types::CreateServiceTemplateOperationOutput
    CreateServiceTemplateVersionOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateServiceTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion'))
    CreateServiceTemplateVersionOperationInput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionSourceInput, location_name: 'source', traits: {"smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:compatible_environment_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInputList, location_name: 'compatibleEnvironmentTemplates', traits: {"smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateServiceTemplateVersionOperationInput.add_member(:supported_component_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: 'supportedComponentSources'))
    CreateServiceTemplateVersionOperationInput.type = Types::CreateServiceTemplateVersionOperationInput
    CreateServiceTemplateVersionOperationOutput.add_member(:service_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion', traits: {"smithy.api#required" => {}}))
    CreateServiceTemplateVersionOperationOutput.type = Types::CreateServiceTemplateVersionOperationOutput
    CreateTemplateSyncConfigOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    CreateTemplateSyncConfigOperationInput.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subdirectory, location_name: 'subdirectory'))
    CreateTemplateSyncConfigOperationInput.type = Types::CreateTemplateSyncConfigOperationInput
    CreateTemplateSyncConfigOperationOutput.add_member(:template_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig'))
    CreateTemplateSyncConfigOperationOutput.type = Types::CreateTemplateSyncConfigOperationOutput
    DeleteComponentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteComponentOperationInput.type = Types::DeleteComponentOperationInput
    DeleteComponentOperationOutput.add_member(:component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component'))
    DeleteComponentOperationOutput.type = Types::DeleteComponentOperationOutput
    DeleteDeploymentInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteDeploymentInput.type = Types::DeleteDeploymentInput
    DeleteDeploymentOutput.add_member(:deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment, location_name: 'deployment'))
    DeleteDeploymentOutput.type = Types::DeleteDeploymentOutput
    DeleteEnvironmentAccountConnectionOperationInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentAccountConnectionOperationInput.type = Types::DeleteEnvironmentAccountConnectionOperationInput
    DeleteEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection'))
    DeleteEnvironmentAccountConnectionOperationOutput.type = Types::DeleteEnvironmentAccountConnectionOperationOutput
    DeleteEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentOperationInput.type = Types::DeleteEnvironmentOperationInput
    DeleteEnvironmentOperationOutput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    DeleteEnvironmentOperationOutput.type = Types::DeleteEnvironmentOperationOutput
    DeleteEnvironmentTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentTemplateOperationInput.type = Types::DeleteEnvironmentTemplateOperationInput
    DeleteEnvironmentTemplateOperationOutput.add_member(:environment_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate'))
    DeleteEnvironmentTemplateOperationOutput.type = Types::DeleteEnvironmentTemplateOperationOutput
    DeleteEnvironmentTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentTemplateVersionOperationInput.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentTemplateVersionOperationInput.type = Types::DeleteEnvironmentTemplateVersionOperationInput
    DeleteEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion'))
    DeleteEnvironmentTemplateVersionOperationOutput.type = Types::DeleteEnvironmentTemplateVersionOperationOutput
    DeleteRepositoryOperationInput.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    DeleteRepositoryOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteRepositoryOperationInput.type = Types::DeleteRepositoryOperationInput
    DeleteRepositoryOperationOutput.add_member(:repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository'))
    DeleteRepositoryOperationOutput.type = Types::DeleteRepositoryOperationOutput
    DeleteServiceOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteServiceOperationInput.type = Types::DeleteServiceOperationInput
    DeleteServiceOperationOutput.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service'))
    DeleteServiceOperationOutput.type = Types::DeleteServiceOperationOutput
    DeleteServiceSyncConfigOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    DeleteServiceSyncConfigOperationInput.type = Types::DeleteServiceSyncConfigOperationInput
    DeleteServiceSyncConfigOperationOutput.add_member(:service_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig'))
    DeleteServiceSyncConfigOperationOutput.type = Types::DeleteServiceSyncConfigOperationOutput
    DeleteServiceTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteServiceTemplateOperationInput.type = Types::DeleteServiceTemplateOperationInput
    DeleteServiceTemplateOperationOutput.add_member(:service_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate'))
    DeleteServiceTemplateOperationOutput.type = Types::DeleteServiceTemplateOperationOutput
    DeleteServiceTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    DeleteServiceTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    DeleteServiceTemplateVersionOperationInput.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    DeleteServiceTemplateVersionOperationInput.type = Types::DeleteServiceTemplateVersionOperationInput
    DeleteServiceTemplateVersionOperationOutput.add_member(:service_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion'))
    DeleteServiceTemplateVersionOperationOutput.type = Types::DeleteServiceTemplateVersionOperationOutput
    DeleteTemplateSyncConfigOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    DeleteTemplateSyncConfigOperationInput.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    DeleteTemplateSyncConfigOperationInput.type = Types::DeleteTemplateSyncConfigOperationInput
    DeleteTemplateSyncConfigOperationOutput.add_member(:template_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig'))
    DeleteTemplateSyncConfigOperationOutput.type = Types::DeleteTemplateSyncConfigOperationOutput
    Deployment.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'targetArn', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:target_resource_created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'targetResourceCreatedAt', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:target_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetResourceType, location_name: 'targetResourceType', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    Deployment.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    Deployment.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName'))
    Deployment.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    Deployment.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    Deployment.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completedAt'))
    Deployment.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    Deployment.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    Deployment.add_member(:initial_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'initialState'))
    Deployment.add_member(:target_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'targetState'))
    Deployment.type = Types::Deployment
    DeploymentState.add_member(:service_instance, Types::DeploymentState::ServiceInstance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceState, location_name: 'serviceInstance'))
    DeploymentState.add_member(:environment, Types::DeploymentState::Environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'environment'))
    DeploymentState.add_member(:service_pipeline, Types::DeploymentState::ServicePipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipelineState, location_name: 'servicePipeline'))
    DeploymentState.add_member(:component, Types::DeploymentState::Component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentState, location_name: 'component'))
    DeploymentState.add_member(:unknown, Types::DeploymentState::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DeploymentState.type = Types::DeploymentState
    DeploymentSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'targetArn', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:target_resource_created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'targetResourceCreatedAt', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:target_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetResourceType, location_name: 'targetResourceType', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completedAt'))
    DeploymentSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    DeploymentSummary.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    DeploymentSummary.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName'))
    DeploymentSummary.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    DeploymentSummary.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    DeploymentSummary.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.type = Types::DeploymentSummary
    DeploymentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSummary)
    Environment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Environment.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:last_deployment_attempted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:last_deployment_succeeded_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    Environment.add_member(:proton_service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn'))
    Environment.add_member(:environment_account_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId'))
    Environment.add_member(:environment_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId'))
    Environment.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    Environment.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning'))
    Environment.add_member(:provisioning_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: 'provisioningRepository'))
    Environment.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn'))
    Environment.add_member(:codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn'))
    Environment.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    Environment.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    Environment.type = Types::Environment
    EnvironmentAccountConnection.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:management_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'managementAccountId', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:environment_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:requested_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'requestedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnection.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn'))
    EnvironmentAccountConnection.add_member(:codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn'))
    EnvironmentAccountConnection.type = Types::EnvironmentAccountConnection
    EnvironmentAccountConnectionStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus)
    EnvironmentAccountConnectionSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:management_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'managementAccountId', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:environment_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:requested_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'requestedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    EnvironmentAccountConnectionSummary.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'componentRoleArn'))
    EnvironmentAccountConnectionSummary.type = Types::EnvironmentAccountConnectionSummary
    EnvironmentAccountConnectionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionSummary)
    EnvironmentState.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    EnvironmentState.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    EnvironmentState.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentState.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentState.type = Types::EnvironmentState
    EnvironmentSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    EnvironmentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:last_deployment_attempted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:last_deployment_succeeded_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    EnvironmentSummary.add_member(:proton_service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn'))
    EnvironmentSummary.add_member(:environment_account_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId'))
    EnvironmentSummary.add_member(:environment_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'environmentAccountId'))
    EnvironmentSummary.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning'))
    EnvironmentSummary.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'componentRoleArn'))
    EnvironmentSummary.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    EnvironmentSummary.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    EnvironmentSummary.type = Types::EnvironmentSummary
    EnvironmentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary)
    EnvironmentTemplate.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplate.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    EnvironmentTemplate.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    EnvironmentTemplate.add_member(:recommended_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion'))
    EnvironmentTemplate.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey'))
    EnvironmentTemplate.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning'))
    EnvironmentTemplate.type = Types::EnvironmentTemplate
    EnvironmentTemplateFilter.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateFilter.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateFilter.type = Types::EnvironmentTemplateFilter
    EnvironmentTemplateFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateFilter)
    EnvironmentTemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateSummary.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    EnvironmentTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    EnvironmentTemplateSummary.add_member(:recommended_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion'))
    EnvironmentTemplateSummary.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'provisioning'))
    EnvironmentTemplateSummary.type = Types::EnvironmentTemplateSummary
    EnvironmentTemplateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateSummary)
    EnvironmentTemplateVersion.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:recommended_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion'))
    EnvironmentTemplateVersion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage'))
    EnvironmentTemplateVersion.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    EnvironmentTemplateVersion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersion.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSchema, location_name: 'schema'))
    EnvironmentTemplateVersion.type = Types::EnvironmentTemplateVersion
    EnvironmentTemplateVersionSummary.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:recommended_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion'))
    EnvironmentTemplateVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage'))
    EnvironmentTemplateVersionSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    EnvironmentTemplateVersionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    EnvironmentTemplateVersionSummary.type = Types::EnvironmentTemplateVersionSummary
    EnvironmentTemplateVersionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionSummary)
    GetAccountSettingsOperationInput.type = Types::GetAccountSettingsOperationInput
    GetAccountSettingsOperationOutput.add_member(:account_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'accountSettings'))
    GetAccountSettingsOperationOutput.type = Types::GetAccountSettingsOperationOutput
    GetComponentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetComponentOperationInput.type = Types::GetComponentOperationInput
    GetComponentOperationOutput.add_member(:component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component'))
    GetComponentOperationOutput.type = Types::GetComponentOperationOutput
    GetDeploymentInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetDeploymentInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName'))
    GetDeploymentInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    GetDeploymentInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    GetDeploymentInput.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName'))
    GetDeploymentInput.type = Types::GetDeploymentInput
    GetDeploymentOutput.add_member(:deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment, location_name: 'deployment'))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetEnvironmentAccountConnectionOperationInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetEnvironmentAccountConnectionOperationInput.type = Types::GetEnvironmentAccountConnectionOperationInput
    GetEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#required" => {}}))
    GetEnvironmentAccountConnectionOperationOutput.type = Types::GetEnvironmentAccountConnectionOperationOutput
    GetEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOperationInput.type = Types::GetEnvironmentOperationInput
    GetEnvironmentOperationOutput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOperationOutput.type = Types::GetEnvironmentOperationOutput
    GetEnvironmentTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetEnvironmentTemplateOperationInput.type = Types::GetEnvironmentTemplateOperationInput
    GetEnvironmentTemplateOperationOutput.add_member(:environment_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate', traits: {"smithy.api#required" => {}}))
    GetEnvironmentTemplateOperationOutput.type = Types::GetEnvironmentTemplateOperationOutput
    GetEnvironmentTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationInput.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationInput.type = Types::GetEnvironmentTemplateVersionOperationInput
    GetEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion', traits: {"smithy.api#required" => {}}))
    GetEnvironmentTemplateVersionOperationOutput.type = Types::GetEnvironmentTemplateVersionOperationOutput
    GetRepositoryOperationInput.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    GetRepositoryOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetRepositoryOperationInput.type = Types::GetRepositoryOperationInput
    GetRepositoryOperationOutput.add_member(:repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#required" => {}}))
    GetRepositoryOperationOutput.type = Types::GetRepositoryOperationOutput
    GetRepositorySyncStatusOperationInput.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncType, location_name: 'syncType', traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusOperationInput.type = Types::GetRepositorySyncStatusOperationInput
    GetRepositorySyncStatusOperationOutput.add_member(:latest_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncAttempt, location_name: 'latestSync'))
    GetRepositorySyncStatusOperationOutput.type = Types::GetRepositorySyncStatusOperationOutput
    GetResourcesSummaryOperationInput.type = Types::GetResourcesSummaryOperationInput
    GetResourcesSummaryOperationOutput.add_member(:counts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountsSummary, location_name: 'counts', traits: {"smithy.api#required" => {}}))
    GetResourcesSummaryOperationOutput.type = Types::GetResourcesSummaryOperationOutput
    GetServiceInstanceOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetServiceInstanceOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    GetServiceInstanceOperationInput.type = Types::GetServiceInstanceOperationInput
    GetServiceInstanceOperationOutput.add_member(:service_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#required" => {}}))
    GetServiceInstanceOperationOutput.type = Types::GetServiceInstanceOperationOutput
    GetServiceInstanceSyncStatusOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    GetServiceInstanceSyncStatusOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#required" => {}}))
    GetServiceInstanceSyncStatusOperationInput.type = Types::GetServiceInstanceSyncStatusOperationInput
    GetServiceInstanceSyncStatusOperationOutput.add_member(:latest_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSync'))
    GetServiceInstanceSyncStatusOperationOutput.add_member(:latest_successful_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSuccessfulSync'))
    GetServiceInstanceSyncStatusOperationOutput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'desiredState'))
    GetServiceInstanceSyncStatusOperationOutput.type = Types::GetServiceInstanceSyncStatusOperationOutput
    GetServiceOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetServiceOperationInput.type = Types::GetServiceOperationInput
    GetServiceOperationOutput.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service'))
    GetServiceOperationOutput.type = Types::GetServiceOperationOutput
    GetServiceSyncBlockerSummaryOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    GetServiceSyncBlockerSummaryOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    GetServiceSyncBlockerSummaryOperationInput.type = Types::GetServiceSyncBlockerSummaryOperationInput
    GetServiceSyncBlockerSummaryOperationOutput.add_member(:service_sync_blocker_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncBlockerSummary, location_name: 'serviceSyncBlockerSummary'))
    GetServiceSyncBlockerSummaryOperationOutput.type = Types::GetServiceSyncBlockerSummaryOperationOutput
    GetServiceSyncConfigOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    GetServiceSyncConfigOperationInput.type = Types::GetServiceSyncConfigOperationInput
    GetServiceSyncConfigOperationOutput.add_member(:service_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig'))
    GetServiceSyncConfigOperationOutput.type = Types::GetServiceSyncConfigOperationOutput
    GetServiceTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetServiceTemplateOperationInput.type = Types::GetServiceTemplateOperationInput
    GetServiceTemplateOperationOutput.add_member(:service_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate', traits: {"smithy.api#required" => {}}))
    GetServiceTemplateOperationOutput.type = Types::GetServiceTemplateOperationOutput
    GetServiceTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationInput.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationInput.type = Types::GetServiceTemplateVersionOperationInput
    GetServiceTemplateVersionOperationOutput.add_member(:service_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion', traits: {"smithy.api#required" => {}}))
    GetServiceTemplateVersionOperationOutput.type = Types::GetServiceTemplateVersionOperationOutput
    GetTemplateSyncConfigOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    GetTemplateSyncConfigOperationInput.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    GetTemplateSyncConfigOperationInput.type = Types::GetTemplateSyncConfigOperationInput
    GetTemplateSyncConfigOperationOutput.add_member(:template_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig'))
    GetTemplateSyncConfigOperationOutput.type = Types::GetTemplateSyncConfigOperationOutput
    GetTemplateSyncStatusOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    GetTemplateSyncStatusOperationInput.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    GetTemplateSyncStatusOperationInput.add_member(:template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateVersion', traits: {"smithy.api#required" => {}}))
    GetTemplateSyncStatusOperationInput.type = Types::GetTemplateSyncStatusOperationInput
    GetTemplateSyncStatusOperationOutput.add_member(:latest_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSync'))
    GetTemplateSyncStatusOperationOutput.add_member(:latest_successful_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'latestSuccessfulSync'))
    GetTemplateSyncStatusOperationOutput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'desiredState'))
    GetTemplateSyncStatusOperationOutput.type = Types::GetTemplateSyncStatusOperationOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LatestSyncBlockers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker)
    ListComponentOutputsOperationInput.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#required" => {}}))
    ListComponentOutputsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListComponentOutputsOperationInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId'))
    ListComponentOutputsOperationInput.type = Types::ListComponentOutputsOperationInput
    ListComponentOutputsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListComponentOutputsOperationOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#required" => {}}))
    ListComponentOutputsOperationOutput.type = Types::ListComponentOutputsOperationOutput
    ListComponentProvisionedResourcesOperationInput.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName', traits: {"smithy.api#required" => {}}))
    ListComponentProvisionedResourcesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListComponentProvisionedResourcesOperationInput.type = Types::ListComponentProvisionedResourcesOperationInput
    ListComponentProvisionedResourcesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListComponentProvisionedResourcesOperationOutput.add_member(:provisioned_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#required" => {}}))
    ListComponentProvisionedResourcesOperationOutput.type = Types::ListComponentProvisionedResourcesOperationOutput
    ListComponentsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListComponentsOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName'))
    ListComponentsOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    ListComponentsOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    ListComponentsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListComponentsOperationInput.type = Types::ListComponentsOperationInput
    ListComponentsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListComponentsOperationOutput.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: 'components', traits: {"smithy.api#required" => {}}))
    ListComponentsOperationOutput.type = Types::ListComponentsOperationOutput
    ListDeploymentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDeploymentsInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName'))
    ListDeploymentsInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    ListDeploymentsInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    ListDeploymentsInput.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'componentName'))
    ListDeploymentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListDeploymentsInput.type = Types::ListDeploymentsInput
    ListDeploymentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDeploymentsOutput.add_member(:deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSummaryList, location_name: 'deployments', traits: {"smithy.api#required" => {}}))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListEnvironmentAccountConnectionsOperationInput.add_member(:requested_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionRequesterAccountType, location_name: 'requestedBy', traits: {"smithy.api#required" => {}}))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName'))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatusList, location_name: 'statuses'))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentAccountConnectionsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListEnvironmentAccountConnectionsOperationInput.type = Types::ListEnvironmentAccountConnectionsOperationInput
    ListEnvironmentAccountConnectionsOperationOutput.add_member(:environment_account_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionSummaryList, location_name: 'environmentAccountConnections', traits: {"smithy.api#required" => {}}))
    ListEnvironmentAccountConnectionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentAccountConnectionsOperationOutput.type = Types::ListEnvironmentAccountConnectionsOperationOutput
    ListEnvironmentOutputsOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    ListEnvironmentOutputsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListEnvironmentOutputsOperationInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId'))
    ListEnvironmentOutputsOperationInput.type = Types::ListEnvironmentOutputsOperationInput
    ListEnvironmentOutputsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListEnvironmentOutputsOperationOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#required" => {}}))
    ListEnvironmentOutputsOperationOutput.type = Types::ListEnvironmentOutputsOperationOutput
    ListEnvironmentProvisionedResourcesOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    ListEnvironmentProvisionedResourcesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListEnvironmentProvisionedResourcesOperationInput.type = Types::ListEnvironmentProvisionedResourcesOperationInput
    ListEnvironmentProvisionedResourcesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListEnvironmentProvisionedResourcesOperationOutput.add_member(:provisioned_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#required" => {}}))
    ListEnvironmentProvisionedResourcesOperationOutput.type = Types::ListEnvironmentProvisionedResourcesOperationOutput
    ListEnvironmentTemplateVersionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentTemplateVersionsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListEnvironmentTemplateVersionsOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ListEnvironmentTemplateVersionsOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion'))
    ListEnvironmentTemplateVersionsOperationInput.type = Types::ListEnvironmentTemplateVersionsOperationInput
    ListEnvironmentTemplateVersionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentTemplateVersionsOperationOutput.add_member(:template_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionSummaryList, location_name: 'templateVersions', traits: {"smithy.api#required" => {}}))
    ListEnvironmentTemplateVersionsOperationOutput.type = Types::ListEnvironmentTemplateVersionsOperationOutput
    ListEnvironmentTemplatesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentTemplatesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListEnvironmentTemplatesOperationInput.type = Types::ListEnvironmentTemplatesOperationInput
    ListEnvironmentTemplatesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentTemplatesOperationOutput.add_member(:templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateSummaryList, location_name: 'templates', traits: {"smithy.api#required" => {}}))
    ListEnvironmentTemplatesOperationOutput.type = Types::ListEnvironmentTemplatesOperationOutput
    ListEnvironmentsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListEnvironmentsOperationInput.add_member(:environment_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateFilterList, location_name: 'environmentTemplates'))
    ListEnvironmentsOperationInput.type = Types::ListEnvironmentsOperationInput
    ListEnvironmentsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentsOperationOutput.add_member(:environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummaryList, location_name: 'environments', traits: {"smithy.api#required" => {}}))
    ListEnvironmentsOperationOutput.type = Types::ListEnvironmentsOperationOutput
    ListRepositoriesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListRepositoriesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListRepositoriesOperationInput.type = Types::ListRepositoriesOperationInput
    ListRepositoriesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListRepositoriesOperationOutput.add_member(:repositories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySummaryList, location_name: 'repositories', traits: {"smithy.api#required" => {}}))
    ListRepositoriesOperationOutput.type = Types::ListRepositoriesOperationOutput
    ListRepositorySyncDefinitionsOperationInput.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationInput.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncType, location_name: 'syncType', traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListRepositorySyncDefinitionsOperationInput.type = Types::ListRepositorySyncDefinitionsOperationInput
    ListRepositorySyncDefinitionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListRepositorySyncDefinitionsOperationOutput.add_member(:sync_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinitionList, location_name: 'syncDefinitions', traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOperationOutput.type = Types::ListRepositorySyncDefinitionsOperationOutput
    ListServiceInstanceOutputsOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#required" => {}}))
    ListServiceInstanceOutputsOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ListServiceInstanceOutputsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServiceInstanceOutputsOperationInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId'))
    ListServiceInstanceOutputsOperationInput.type = Types::ListServiceInstanceOutputsOperationInput
    ListServiceInstanceOutputsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServiceInstanceOutputsOperationOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#required" => {}}))
    ListServiceInstanceOutputsOperationOutput.type = Types::ListServiceInstanceOutputsOperationOutput
    ListServiceInstanceProvisionedResourcesOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ListServiceInstanceProvisionedResourcesOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName', traits: {"smithy.api#required" => {}}))
    ListServiceInstanceProvisionedResourcesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServiceInstanceProvisionedResourcesOperationInput.type = Types::ListServiceInstanceProvisionedResourcesOperationInput
    ListServiceInstanceProvisionedResourcesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServiceInstanceProvisionedResourcesOperationOutput.add_member(:provisioned_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#required" => {}}))
    ListServiceInstanceProvisionedResourcesOperationOutput.type = Types::ListServiceInstanceProvisionedResourcesOperationOutput
    ListServiceInstancesFilter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilterBy, location_name: 'key'))
    ListServiceInstancesFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilterValue, location_name: 'value'))
    ListServiceInstancesFilter.type = Types::ListServiceInstancesFilter
    ListServiceInstancesFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilter)
    ListServiceInstancesOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName'))
    ListServiceInstancesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServiceInstancesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListServiceInstancesOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesFilterList, location_name: 'filters'))
    ListServiceInstancesOperationInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesSortBy, location_name: 'sortBy'))
    ListServiceInstancesOperationInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder'))
    ListServiceInstancesOperationInput.type = Types::ListServiceInstancesOperationInput
    ListServiceInstancesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServiceInstancesOperationOutput.add_member(:service_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceSummaryList, location_name: 'serviceInstances', traits: {"smithy.api#required" => {}}))
    ListServiceInstancesOperationOutput.type = Types::ListServiceInstancesOperationOutput
    ListServicePipelineOutputsOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ListServicePipelineOutputsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServicePipelineOutputsOperationInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId'))
    ListServicePipelineOutputsOperationInput.type = Types::ListServicePipelineOutputsOperationInput
    ListServicePipelineOutputsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServicePipelineOutputsOperationOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#required" => {}}))
    ListServicePipelineOutputsOperationOutput.type = Types::ListServicePipelineOutputsOperationOutput
    ListServicePipelineProvisionedResourcesOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ListServicePipelineProvisionedResourcesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServicePipelineProvisionedResourcesOperationInput.type = Types::ListServicePipelineProvisionedResourcesOperationInput
    ListServicePipelineProvisionedResourcesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: 'nextToken'))
    ListServicePipelineProvisionedResourcesOperationOutput.add_member(:provisioned_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceList, location_name: 'provisionedResources', traits: {"smithy.api#required" => {}}))
    ListServicePipelineProvisionedResourcesOperationOutput.type = Types::ListServicePipelineProvisionedResourcesOperationOutput
    ListServiceTemplateVersionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServiceTemplateVersionsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListServiceTemplateVersionsOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ListServiceTemplateVersionsOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion'))
    ListServiceTemplateVersionsOperationInput.type = Types::ListServiceTemplateVersionsOperationInput
    ListServiceTemplateVersionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServiceTemplateVersionsOperationOutput.add_member(:template_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionSummaryList, location_name: 'templateVersions', traits: {"smithy.api#required" => {}}))
    ListServiceTemplateVersionsOperationOutput.type = Types::ListServiceTemplateVersionsOperationOutput
    ListServiceTemplatesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServiceTemplatesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListServiceTemplatesOperationInput.type = Types::ListServiceTemplatesOperationInput
    ListServiceTemplatesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServiceTemplatesOperationOutput.add_member(:templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSummaryList, location_name: 'templates', traits: {"smithy.api#required" => {}}))
    ListServiceTemplatesOperationOutput.type = Types::ListServiceTemplatesOperationOutput
    ListServicesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServicesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults'))
    ListServicesOperationInput.type = Types::ListServicesOperationInput
    ListServicesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListServicesOperationOutput.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummaryList, location_name: 'services', traits: {"smithy.api#required" => {}}))
    ListServicesOperationOutput.type = Types::ListServicesOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTagsForResourceOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDeploymentStatus, location_name: 'status'))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputsList, location_name: 'outputs', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId'))
    NotifyResourceDeploymentStatusChangeOperationInput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}}))
    NotifyResourceDeploymentStatusChangeOperationInput.type = Types::NotifyResourceDeploymentStatusChangeOperationInput
    NotifyResourceDeploymentStatusChangeOperationOutput.type = Types::NotifyResourceDeploymentStatusChangeOperationOutput
    Output.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKey, location_name: 'key'))
    Output.add_member(:value_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputValueString, location_name: 'valueString'))
    Output.type = Types::Output
    OutputsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Output)
    ProvisionedResource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceName, location_name: 'name'))
    ProvisionedResource.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceIdentifier, location_name: 'identifier'))
    ProvisionedResource.add_member(:provisioning_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceEngine, location_name: 'provisioningEngine'))
    ProvisionedResource.type = Types::ProvisionedResource
    ProvisionedResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResource)
    RejectEnvironmentAccountConnectionOperationInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    RejectEnvironmentAccountConnectionOperationInput.type = Types::RejectEnvironmentAccountConnectionOperationInput
    RejectEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#required" => {}}))
    RejectEnvironmentAccountConnectionOperationOutput.type = Types::RejectEnvironmentAccountConnectionOperationOutput
    Repository.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Repository.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    Repository.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Repository.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectionArn', traits: {"smithy.api#required" => {}}))
    Repository.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey'))
    Repository.type = Types::Repository
    RepositoryBranch.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    RepositoryBranch.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    RepositoryBranch.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RepositoryBranch.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    RepositoryBranch.type = Types::RepositoryBranch
    RepositoryBranchInput.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    RepositoryBranchInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RepositoryBranchInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    RepositoryBranchInput.type = Types::RepositoryBranchInput
    RepositorySummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    RepositorySummary.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    RepositorySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RepositorySummary.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectionArn', traits: {"smithy.api#required" => {}}))
    RepositorySummary.type = Types::RepositorySummary
    RepositorySummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySummary)
    RepositorySyncAttempt.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedAt', traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEvents, location_name: 'events', traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.type = Types::RepositorySyncAttempt
    RepositorySyncDefinition.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'target', traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'parent', traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'directory', traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.type = Types::RepositorySyncDefinition
    RepositorySyncDefinitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinition)
    RepositorySyncEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    RepositorySyncEvent.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'time', traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'event', traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.type = Types::RepositorySyncEvent
    RepositorySyncEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEvent)
    ResourceCountsSummary.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'total', traits: {"smithy.api#required" => {}}))
    ResourceCountsSummary.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'failed'))
    ResourceCountsSummary.add_member(:up_to_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'upToDate'))
    ResourceCountsSummary.add_member(:behind_major, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'behindMajor'))
    ResourceCountsSummary.add_member(:behind_minor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'behindMinor'))
    ResourceCountsSummary.type = Types::ResourceCountsSummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSyncAttempt.add_member(:initial_revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'initialRevision', traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target_revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'targetRevision', traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'target', traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedAt', traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEvents, location_name: 'events', traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.type = Types::ResourceSyncAttempt
    ResourceSyncEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    ResourceSyncEvent.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'time', traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'event', traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.type = Types::ResourceSyncEvent
    ResourceSyncEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEvent)
    Revision.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    Revision.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    Revision.add_member(:sha, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SHA, location_name: 'sha', traits: {"smithy.api#required" => {}}))
    Revision.add_member(:directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'directory', traits: {"smithy.api#required" => {}}))
    Revision.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    Revision.type = Types::Revision
    S3ObjectSource.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#required" => {}}))
    S3ObjectSource.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#required" => {}}))
    S3ObjectSource.type = Types::S3ObjectSource
    Service.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Service.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Service.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Service.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    Service.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    Service.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    Service.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Service.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage'))
    Service.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#required" => {}}))
    Service.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipeline, location_name: 'pipeline'))
    Service.add_member(:repository_connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'repositoryConnectionArn'))
    Service.add_member(:repository_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId'))
    Service.add_member(:branch_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branchName'))
    Service.type = Types::Service
    ServiceInstance.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:last_deployment_attempted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:last_deployment_succeeded_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    ServiceInstance.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    ServiceInstance.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    ServiceInstance.add_member(:last_client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'lastClientRequestToken'))
    ServiceInstance.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    ServiceInstance.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    ServiceInstance.type = Types::ServiceInstance
    ServiceInstanceState.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    ServiceInstanceState.add_member(:last_successful_component_deployment_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentIdList, location_name: 'lastSuccessfulComponentDeploymentIds'))
    ServiceInstanceState.add_member(:last_successful_environment_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSuccessfulEnvironmentDeploymentId'))
    ServiceInstanceState.add_member(:last_successful_service_pipeline_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSuccessfulServicePipelineDeploymentId'))
    ServiceInstanceState.type = Types::ServiceInstanceState
    ServiceInstanceSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:last_deployment_attempted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:last_deployment_succeeded_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'environmentName', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    ServiceInstanceSummary.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    ServiceInstanceSummary.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    ServiceInstanceSummary.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    ServiceInstanceSummary.type = Types::ServiceInstanceSummary
    ServiceInstanceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstanceSummary)
    ServicePipeline.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:last_deployment_attempted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentAttemptedAt', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:last_deployment_succeeded_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastDeploymentSucceededAt', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#required" => {}}))
    ServicePipeline.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'deploymentStatusMessage'))
    ServicePipeline.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    ServicePipeline.add_member(:last_attempted_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastAttemptedDeploymentId'))
    ServicePipeline.add_member(:last_succeeded_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'lastSucceededDeploymentId'))
    ServicePipeline.type = Types::ServicePipeline
    ServicePipelineState.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    ServicePipelineState.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServicePipelineState.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion', traits: {"smithy.api#required" => {}}))
    ServicePipelineState.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion', traits: {"smithy.api#required" => {}}))
    ServicePipelineState.type = Types::ServicePipelineState
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ServiceSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage'))
    ServiceSummary.type = Types::ServiceSummary
    ServiceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummary)
    ServiceSyncBlockerSummary.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ServiceSyncBlockerSummary.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceInstanceName'))
    ServiceSyncBlockerSummary.add_member(:latest_blockers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LatestSyncBlockers, location_name: 'latestBlockers'))
    ServiceSyncBlockerSummary.type = Types::ServiceSyncBlockerSummary
    ServiceSyncConfig.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    ServiceSyncConfig.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsFilePath, location_name: 'filePath', traits: {"smithy.api#required" => {}}))
    ServiceSyncConfig.type = Types::ServiceSyncConfig
    ServiceTemplate.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceTemplate.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServiceTemplate.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplate.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplate.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    ServiceTemplate.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ServiceTemplate.add_member(:recommended_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion'))
    ServiceTemplate.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey'))
    ServiceTemplate.add_member(:pipeline_provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'pipelineProvisioning'))
    ServiceTemplate.type = Types::ServiceTemplate
    ServiceTemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplateSummary.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    ServiceTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ServiceTemplateSummary.add_member(:recommended_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: 'recommendedVersion'))
    ServiceTemplateSummary.add_member(:pipeline_provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioning, location_name: 'pipelineProvisioning'))
    ServiceTemplateSummary.type = Types::ServiceTemplateSummary
    ServiceTemplateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSummary)
    ServiceTemplateSupportedComponentSourceInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceType)
    ServiceTemplateVersion.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:recommended_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion'))
    ServiceTemplateVersion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage'))
    ServiceTemplateVersion.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ServiceTemplateVersion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:compatible_environment_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateList, location_name: 'compatibleEnvironmentTemplates', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersion.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSchema, location_name: 'schema'))
    ServiceTemplateVersion.add_member(:supported_component_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: 'supportedComponentSources'))
    ServiceTemplateVersion.type = Types::ServiceTemplateVersion
    ServiceTemplateVersionSummary.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:recommended_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'recommendedMinorVersion'))
    ServiceTemplateVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage'))
    ServiceTemplateVersionSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ServiceTemplateVersionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#required" => {}}))
    ServiceTemplateVersionSummary.type = Types::ServiceTemplateVersionSummary
    ServiceTemplateVersionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersionSummary)
    SyncBlocker.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdReason', traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContexts, location_name: 'contexts'))
    SyncBlocker.add_member(:resolved_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resolvedReason'))
    SyncBlocker.add_member(:resolved_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'resolvedAt'))
    SyncBlocker.type = Types::SyncBlocker
    SyncBlockerContext.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#required" => {}}))
    SyncBlockerContext.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#required" => {}}))
    SyncBlockerContext.type = Types::SyncBlockerContext
    SyncBlockerContexts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContext)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    TemplateSyncConfig.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    TemplateSyncConfig.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subdirectory, location_name: 'subdirectory'))
    TemplateSyncConfig.type = Types::TemplateSyncConfig
    TemplateVersionSourceInput.add_member(:s3, Types::TemplateVersionSourceInput::S3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectSource, location_name: 's3'))
    TemplateVersionSourceInput.add_member(:unknown, Types::TemplateVersionSourceInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TemplateVersionSourceInput.type = Types::TemplateVersionSourceInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateAccountSettingsOperationInput.add_member(:pipeline_service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineServiceRoleArn'))
    UpdateAccountSettingsOperationInput.add_member(:pipeline_provisioning_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: 'pipelineProvisioningRepository'))
    UpdateAccountSettingsOperationInput.add_member(:delete_pipeline_provisioning_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletePipelineProvisioningRepository'))
    UpdateAccountSettingsOperationInput.add_member(:pipeline_codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: 'pipelineCodebuildRoleArn'))
    UpdateAccountSettingsOperationInput.type = Types::UpdateAccountSettingsOperationInput
    UpdateAccountSettingsOperationOutput.add_member(:account_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'accountSettings', traits: {"smithy.api#required" => {}}))
    UpdateAccountSettingsOperationOutput.type = Types::UpdateAccountSettingsOperationOutput
    UpdateComponentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateComponentOperationInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#required" => {}}))
    UpdateComponentOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateComponentOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceName'))
    UpdateComponentOperationInput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: 'serviceInstanceName'))
    UpdateComponentOperationInput.add_member(:service_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'serviceSpec'))
    UpdateComponentOperationInput.add_member(:template_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: 'templateFile'))
    UpdateComponentOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateComponentOperationInput.type = Types::UpdateComponentOperationInput
    UpdateComponentOperationOutput.add_member(:component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"smithy.api#required" => {}}))
    UpdateComponentOperationOutput.type = Types::UpdateComponentOperationOutput
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn'))
    UpdateEnvironmentAccountConnectionOperationInput.add_member(:codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn'))
    UpdateEnvironmentAccountConnectionOperationInput.type = Types::UpdateEnvironmentAccountConnectionOperationInput
    UpdateEnvironmentAccountConnectionOperationOutput.add_member(:environment_account_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: 'environmentAccountConnection', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentAccountConnectionOperationOutput.type = Types::UpdateEnvironmentAccountConnectionOperationOutput
    UpdateEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateEnvironmentOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    UpdateEnvironmentOperationInput.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion'))
    UpdateEnvironmentOperationInput.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion'))
    UpdateEnvironmentOperationInput.add_member(:proton_service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'protonServiceRoleArn'))
    UpdateEnvironmentOperationInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentOperationInput.add_member(:environment_account_connection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: 'environmentAccountConnectionId'))
    UpdateEnvironmentOperationInput.add_member(:provisioning_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: 'provisioningRepository'))
    UpdateEnvironmentOperationInput.add_member(:component_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'componentRoleArn'))
    UpdateEnvironmentOperationInput.add_member(:codebuild_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'codebuildRoleArn'))
    UpdateEnvironmentOperationInput.type = Types::UpdateEnvironmentOperationInput
    UpdateEnvironmentOperationOutput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentOperationOutput.type = Types::UpdateEnvironmentOperationOutput
    UpdateEnvironmentTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentTemplateOperationInput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    UpdateEnvironmentTemplateOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateEnvironmentTemplateOperationInput.type = Types::UpdateEnvironmentTemplateOperationInput
    UpdateEnvironmentTemplateOperationOutput.add_member(:environment_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'environmentTemplate', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentTemplateOperationOutput.type = Types::UpdateEnvironmentTemplateOperationOutput
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateEnvironmentTemplateVersionOperationInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status'))
    UpdateEnvironmentTemplateVersionOperationInput.type = Types::UpdateEnvironmentTemplateVersionOperationInput
    UpdateEnvironmentTemplateVersionOperationOutput.add_member(:environment_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: 'environmentTemplateVersion', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentTemplateVersionOperationOutput.type = Types::UpdateEnvironmentTemplateVersionOperationOutput
    UpdateServiceInstanceOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateServiceInstanceOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    UpdateServiceInstanceOperationInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#required" => {}}))
    UpdateServiceInstanceOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    UpdateServiceInstanceOperationInput.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion'))
    UpdateServiceInstanceOperationInput.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion'))
    UpdateServiceInstanceOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateServiceInstanceOperationInput.type = Types::UpdateServiceInstanceOperationInput
    UpdateServiceInstanceOperationOutput.add_member(:service_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInstance, location_name: 'serviceInstance', traits: {"smithy.api#required" => {}}))
    UpdateServiceInstanceOperationOutput.type = Types::UpdateServiceInstanceOperationOutput
    UpdateServiceOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateServiceOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateServiceOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec'))
    UpdateServiceOperationInput.type = Types::UpdateServiceOperationInput
    UpdateServiceOperationOutput.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#required" => {}}))
    UpdateServiceOperationOutput.type = Types::UpdateServiceOperationOutput
    UpdateServicePipelineOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    UpdateServicePipelineOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecContents, location_name: 'spec', traits: {"smithy.api#required" => {}}))
    UpdateServicePipelineOperationInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentUpdateType, location_name: 'deploymentType', traits: {"smithy.api#required" => {}}))
    UpdateServicePipelineOperationInput.add_member(:template_major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMajorVersion'))
    UpdateServicePipelineOperationInput.add_member(:template_minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'templateMinorVersion'))
    UpdateServicePipelineOperationInput.type = Types::UpdateServicePipelineOperationInput
    UpdateServicePipelineOperationOutput.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePipeline, location_name: 'pipeline', traits: {"smithy.api#required" => {}}))
    UpdateServicePipelineOperationOutput.type = Types::UpdateServicePipelineOperationOutput
    UpdateServiceSyncBlockerOperationInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationInput.add_member(:resolved_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resolvedReason', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationInput.type = Types::UpdateServiceSyncBlockerOperationInput
    UpdateServiceSyncBlockerOperationOutput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationOutput.add_member(:service_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceInstanceName'))
    UpdateServiceSyncBlockerOperationOutput.add_member(:service_sync_blocker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker, location_name: 'serviceSyncBlocker', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncBlockerOperationOutput.type = Types::UpdateServiceSyncBlockerOperationOutput
    UpdateServiceSyncConfigOperationInput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'serviceName', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpsFilePath, location_name: 'filePath', traits: {"smithy.api#required" => {}}))
    UpdateServiceSyncConfigOperationInput.type = Types::UpdateServiceSyncConfigOperationInput
    UpdateServiceSyncConfigOperationOutput.add_member(:service_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: 'serviceSyncConfig'))
    UpdateServiceSyncConfigOperationOutput.type = Types::UpdateServiceSyncConfigOperationOutput
    UpdateServiceTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateServiceTemplateOperationInput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    UpdateServiceTemplateOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateServiceTemplateOperationInput.type = Types::UpdateServiceTemplateOperationInput
    UpdateServiceTemplateOperationOutput.add_member(:service_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: 'serviceTemplate', traits: {"smithy.api#required" => {}}))
    UpdateServiceTemplateOperationOutput.type = Types::UpdateServiceTemplateOperationOutput
    UpdateServiceTemplateVersionOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationInput.add_member(:major_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'majorVersion', traits: {"smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationInput.add_member(:minor_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: 'minorVersion', traits: {"smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateServiceTemplateVersionOperationInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: 'status'))
    UpdateServiceTemplateVersionOperationInput.add_member(:compatible_environment_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInputList, location_name: 'compatibleEnvironmentTemplates'))
    UpdateServiceTemplateVersionOperationInput.add_member(:supported_component_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: 'supportedComponentSources'))
    UpdateServiceTemplateVersionOperationInput.type = Types::UpdateServiceTemplateVersionOperationInput
    UpdateServiceTemplateVersionOperationOutput.add_member(:service_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: 'serviceTemplateVersion', traits: {"smithy.api#required" => {}}))
    UpdateServiceTemplateVersionOperationOutput.type = Types::UpdateServiceTemplateVersionOperationOutput
    UpdateTemplateSyncConfigOperationInput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'templateName', traits: {"smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:repository_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryProvider, location_name: 'repositoryProvider', traits: {"smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchName, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    UpdateTemplateSyncConfigOperationInput.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subdirectory, location_name: 'subdirectory'))
    UpdateTemplateSyncConfigOperationInput.type = Types::UpdateTemplateSyncConfigOperationInput
    UpdateTemplateSyncConfigOperationOutput.add_member(:template_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: 'templateSyncConfig'))
    UpdateTemplateSyncConfigOperationOutput.type = Types::UpdateTemplateSyncConfigOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AwsProton20200720 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.proton#AwsProton20200720"
      service.name = "AwsProton20200720"
      service.version = "2020-07-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Proton", "endpointPrefix" => "proton"}, "aws.auth#sigv4" => {"name" => "proton"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Proton"}
      service.add_operation(:accept_environment_account_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#AcceptEnvironmentAccountConnection"
        operation.name = "AcceptEnvironmentAccountConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptEnvironmentAccountConnectionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptEnvironmentAccountConnectionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_component_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelComponentDeployment"
        operation.name = "CancelComponentDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelComponentDeploymentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelComponentDeploymentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_environment_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelEnvironmentDeployment"
        operation.name = "CancelEnvironmentDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelEnvironmentDeploymentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelEnvironmentDeploymentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_service_instance_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelServiceInstanceDeployment"
        operation.name = "CancelServiceInstanceDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceInstanceDeploymentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServiceInstanceDeploymentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_service_pipeline_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CancelServicePipelineDeployment"
        operation.name = "CancelServicePipelineDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServicePipelineDeploymentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelServicePipelineDeploymentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateComponent"
        operation.name = "CreateComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_account_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironmentAccountConnection"
        operation.name = "CreateEnvironmentAccountConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentAccountConnectionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentAccountConnectionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironmentTemplate"
        operation.name = "CreateEnvironmentTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateEnvironmentTemplateVersion"
        operation.name = "CreateEnvironmentTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateService"
        operation.name = "CreateService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceInstance"
        operation.name = "CreateServiceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceInstanceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceInstanceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceSyncConfig"
        operation.name = "CreateServiceSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceTemplate"
        operation.name = "CreateServiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateServiceTemplateVersion"
        operation.name = "CreateServiceTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_template_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#CreateTemplateSyncConfig"
        operation.name = "CreateTemplateSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_account_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironmentAccountConnection"
        operation.name = "DeleteEnvironmentAccountConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentAccountConnectionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentAccountConnectionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironmentTemplate"
        operation.name = "DeleteEnvironmentTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteEnvironmentTemplateVersion"
        operation.name = "DeleteEnvironmentTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteService"
        operation.name = "DeleteService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteServiceSyncConfig"
        operation.name = "DeleteServiceSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteServiceTemplate"
        operation.name = "DeleteServiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteServiceTemplateVersion"
        operation.name = "DeleteServiceTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_template_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#DeleteTemplateSyncConfig"
        operation.name = "DeleteTemplateSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetComponent"
        operation.name = "GetComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment_account_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironmentAccountConnection"
        operation.name = "GetEnvironmentAccountConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentAccountConnectionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentAccountConnectionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironmentTemplate"
        operation.name = "GetEnvironmentTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetEnvironmentTemplateVersion"
        operation.name = "GetEnvironmentTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetRepository"
        operation.name = "GetRepository"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_repository_sync_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetRepositorySyncStatus"
        operation.name = "GetRepositorySyncStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_resources_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetResourcesSummary"
        operation.name = "GetResourcesSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesSummaryOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesSummaryOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetService"
        operation.name = "GetService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceInstance"
        operation.name = "GetServiceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_instance_sync_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceInstanceSyncStatus"
        operation.name = "GetServiceInstanceSyncStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceSyncStatusOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInstanceSyncStatusOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_service_sync_blocker_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceSyncBlockerSummary"
        operation.name = "GetServiceSyncBlockerSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncBlockerSummaryOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncBlockerSummaryOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceSyncConfig"
        operation.name = "GetServiceSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceTemplate"
        operation.name = "GetServiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetServiceTemplateVersion"
        operation.name = "GetServiceTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetTemplateSyncConfig"
        operation.name = "GetTemplateSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_sync_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#GetTemplateSyncStatus"
        operation.name = "GetTemplateSyncStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncStatusOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateSyncStatusOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_component_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListComponentOutputs"
        operation.name = "ListComponentOutputs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentOutputsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentOutputsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponentOutputs.new
      end)
      service.add_operation(:list_component_provisioned_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListComponentProvisionedResources"
        operation.name = "ListComponentProvisionedResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentProvisionedResourcesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentProvisionedResourcesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponentProvisionedResources.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListComponents"
        operation.name = "ListComponents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_environment_account_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentAccountConnections"
        operation.name = "ListEnvironmentAccountConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentAccountConnectionsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentAccountConnectionsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentAccountConnections.new
      end)
      service.add_operation(:list_environment_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentOutputs"
        operation.name = "ListEnvironmentOutputs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentOutputsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentOutputsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentOutputs.new
      end)
      service.add_operation(:list_environment_provisioned_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentProvisionedResources"
        operation.name = "ListEnvironmentProvisionedResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentProvisionedResourcesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentProvisionedResourcesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentProvisionedResources.new
      end)
      service.add_operation(:list_environment_template_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentTemplateVersions"
        operation.name = "ListEnvironmentTemplateVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplateVersionsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplateVersionsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentTemplateVersions.new
      end)
      service.add_operation(:list_environment_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironmentTemplates"
        operation.name = "ListEnvironmentTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplatesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentTemplatesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentTemplates.new
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListRepositories"
        operation.name = "ListRepositories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRepositories.new
      end)
      service.add_operation(:list_repository_sync_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListRepositorySyncDefinitions"
        operation.name = "ListRepositorySyncDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRepositorySyncDefinitions.new
      end)
      service.add_operation(:list_service_instance_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceInstanceOutputs"
        operation.name = "ListServiceInstanceOutputs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceOutputsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceOutputsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceInstanceOutputs.new
      end)
      service.add_operation(:list_service_instance_provisioned_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceInstanceProvisionedResources"
        operation.name = "ListServiceInstanceProvisionedResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceProvisionedResourcesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstanceProvisionedResourcesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceInstanceProvisionedResources.new
      end)
      service.add_operation(:list_service_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceInstances"
        operation.name = "ListServiceInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceInstancesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceInstances.new
      end)
      service.add_operation(:list_service_pipeline_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServicePipelineOutputs"
        operation.name = "ListServicePipelineOutputs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineOutputsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineOutputsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServicePipelineOutputs.new
      end)
      service.add_operation(:list_service_pipeline_provisioned_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServicePipelineProvisionedResources"
        operation.name = "ListServicePipelineProvisionedResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineProvisionedResourcesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePipelineProvisionedResourcesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServicePipelineProvisionedResources.new
      end)
      service.add_operation(:list_service_template_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceTemplateVersions"
        operation.name = "ListServiceTemplateVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplateVersionsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplateVersionsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceTemplateVersions.new
      end)
      service.add_operation(:list_service_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServiceTemplates"
        operation.name = "ListServiceTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplatesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceTemplatesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceTemplates.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListServices"
        operation.name = "ListServices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:notify_resource_deployment_status_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#NotifyResourceDeploymentStatusChange"
        operation.name = "NotifyResourceDeploymentStatusChange"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:reject_environment_account_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#RejectEnvironmentAccountConnection"
        operation.name = "RejectEnvironmentAccountConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectEnvironmentAccountConnectionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectEnvironmentAccountConnectionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateComponent"
        operation.name = "UpdateComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment_account_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironmentAccountConnection"
        operation.name = "UpdateEnvironmentAccountConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentAccountConnectionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentAccountConnectionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_environment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironmentTemplate"
        operation.name = "UpdateEnvironmentTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateEnvironmentTemplateVersion"
        operation.name = "UpdateEnvironmentTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateService"
        operation.name = "UpdateService"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceInstance"
        operation.name = "UpdateServiceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceInstanceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceInstanceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServicePipeline"
        operation.name = "UpdateServicePipeline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServicePipelineOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServicePipelineOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_sync_blocker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceSyncBlocker"
        operation.name = "UpdateServiceSyncBlocker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncBlockerOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncBlockerOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceSyncConfig"
        operation.name = "UpdateServiceSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceTemplate"
        operation.name = "UpdateServiceTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateServiceTemplateVersion"
        operation.name = "UpdateServiceTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateVersionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceTemplateVersionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_template_sync_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.proton#UpdateTemplateSyncConfig"
        operation.name = "UpdateTemplateSyncConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateSyncConfigOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateSyncConfigOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
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
