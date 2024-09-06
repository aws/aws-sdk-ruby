# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Proton
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptEnvironmentAccountConnectionInput = Shapes::StructureShape.new(name: 'AcceptEnvironmentAccountConnectionInput')
    AcceptEnvironmentAccountConnectionOutput = Shapes::StructureShape.new(name: 'AcceptEnvironmentAccountConnectionOutput')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BlockerStatus = Shapes::StringShape.new(name: 'BlockerStatus')
    BlockerType = Shapes::StringShape.new(name: 'BlockerType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelComponentDeploymentInput = Shapes::StructureShape.new(name: 'CancelComponentDeploymentInput')
    CancelComponentDeploymentOutput = Shapes::StructureShape.new(name: 'CancelComponentDeploymentOutput')
    CancelEnvironmentDeploymentInput = Shapes::StructureShape.new(name: 'CancelEnvironmentDeploymentInput')
    CancelEnvironmentDeploymentOutput = Shapes::StructureShape.new(name: 'CancelEnvironmentDeploymentOutput')
    CancelServiceInstanceDeploymentInput = Shapes::StructureShape.new(name: 'CancelServiceInstanceDeploymentInput')
    CancelServiceInstanceDeploymentOutput = Shapes::StructureShape.new(name: 'CancelServiceInstanceDeploymentOutput')
    CancelServicePipelineDeploymentInput = Shapes::StructureShape.new(name: 'CancelServicePipelineDeploymentInput')
    CancelServicePipelineDeploymentOutput = Shapes::StructureShape.new(name: 'CancelServicePipelineDeploymentOutput')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CompatibleEnvironmentTemplate = Shapes::StructureShape.new(name: 'CompatibleEnvironmentTemplate')
    CompatibleEnvironmentTemplateInput = Shapes::StructureShape.new(name: 'CompatibleEnvironmentTemplateInput')
    CompatibleEnvironmentTemplateInputList = Shapes::ListShape.new(name: 'CompatibleEnvironmentTemplateInputList')
    CompatibleEnvironmentTemplateList = Shapes::ListShape.new(name: 'CompatibleEnvironmentTemplateList')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentArn = Shapes::StringShape.new(name: 'ComponentArn')
    ComponentDeploymentIdList = Shapes::ListShape.new(name: 'ComponentDeploymentIdList')
    ComponentDeploymentUpdateType = Shapes::StringShape.new(name: 'ComponentDeploymentUpdateType')
    ComponentState = Shapes::StructureShape.new(name: 'ComponentState')
    ComponentSummary = Shapes::StructureShape.new(name: 'ComponentSummary')
    ComponentSummaryList = Shapes::ListShape.new(name: 'ComponentSummaryList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CountsSummary = Shapes::StructureShape.new(name: 'CountsSummary')
    CreateComponentInput = Shapes::StructureShape.new(name: 'CreateComponentInput')
    CreateComponentOutput = Shapes::StructureShape.new(name: 'CreateComponentOutput')
    CreateEnvironmentAccountConnectionInput = Shapes::StructureShape.new(name: 'CreateEnvironmentAccountConnectionInput')
    CreateEnvironmentAccountConnectionOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentAccountConnectionOutput')
    CreateEnvironmentInput = Shapes::StructureShape.new(name: 'CreateEnvironmentInput')
    CreateEnvironmentOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentOutput')
    CreateEnvironmentTemplateInput = Shapes::StructureShape.new(name: 'CreateEnvironmentTemplateInput')
    CreateEnvironmentTemplateOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentTemplateOutput')
    CreateEnvironmentTemplateVersionInput = Shapes::StructureShape.new(name: 'CreateEnvironmentTemplateVersionInput')
    CreateEnvironmentTemplateVersionOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentTemplateVersionOutput')
    CreateRepositoryInput = Shapes::StructureShape.new(name: 'CreateRepositoryInput')
    CreateRepositoryOutput = Shapes::StructureShape.new(name: 'CreateRepositoryOutput')
    CreateServiceInput = Shapes::StructureShape.new(name: 'CreateServiceInput')
    CreateServiceInstanceInput = Shapes::StructureShape.new(name: 'CreateServiceInstanceInput')
    CreateServiceInstanceOutput = Shapes::StructureShape.new(name: 'CreateServiceInstanceOutput')
    CreateServiceOutput = Shapes::StructureShape.new(name: 'CreateServiceOutput')
    CreateServiceSyncConfigInput = Shapes::StructureShape.new(name: 'CreateServiceSyncConfigInput')
    CreateServiceSyncConfigOutput = Shapes::StructureShape.new(name: 'CreateServiceSyncConfigOutput')
    CreateServiceTemplateInput = Shapes::StructureShape.new(name: 'CreateServiceTemplateInput')
    CreateServiceTemplateOutput = Shapes::StructureShape.new(name: 'CreateServiceTemplateOutput')
    CreateServiceTemplateVersionInput = Shapes::StructureShape.new(name: 'CreateServiceTemplateVersionInput')
    CreateServiceTemplateVersionOutput = Shapes::StructureShape.new(name: 'CreateServiceTemplateVersionOutput')
    CreateTemplateSyncConfigInput = Shapes::StructureShape.new(name: 'CreateTemplateSyncConfigInput')
    CreateTemplateSyncConfigOutput = Shapes::StructureShape.new(name: 'CreateTemplateSyncConfigOutput')
    DeleteComponentInput = Shapes::StructureShape.new(name: 'DeleteComponentInput')
    DeleteComponentOutput = Shapes::StructureShape.new(name: 'DeleteComponentOutput')
    DeleteDeploymentInput = Shapes::StructureShape.new(name: 'DeleteDeploymentInput')
    DeleteDeploymentOutput = Shapes::StructureShape.new(name: 'DeleteDeploymentOutput')
    DeleteEnvironmentAccountConnectionInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentAccountConnectionInput')
    DeleteEnvironmentAccountConnectionOutput = Shapes::StructureShape.new(name: 'DeleteEnvironmentAccountConnectionOutput')
    DeleteEnvironmentInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentInput')
    DeleteEnvironmentOutput = Shapes::StructureShape.new(name: 'DeleteEnvironmentOutput')
    DeleteEnvironmentTemplateInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentTemplateInput')
    DeleteEnvironmentTemplateOutput = Shapes::StructureShape.new(name: 'DeleteEnvironmentTemplateOutput')
    DeleteEnvironmentTemplateVersionInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentTemplateVersionInput')
    DeleteEnvironmentTemplateVersionOutput = Shapes::StructureShape.new(name: 'DeleteEnvironmentTemplateVersionOutput')
    DeleteRepositoryInput = Shapes::StructureShape.new(name: 'DeleteRepositoryInput')
    DeleteRepositoryOutput = Shapes::StructureShape.new(name: 'DeleteRepositoryOutput')
    DeleteServiceInput = Shapes::StructureShape.new(name: 'DeleteServiceInput')
    DeleteServiceOutput = Shapes::StructureShape.new(name: 'DeleteServiceOutput')
    DeleteServiceSyncConfigInput = Shapes::StructureShape.new(name: 'DeleteServiceSyncConfigInput')
    DeleteServiceSyncConfigOutput = Shapes::StructureShape.new(name: 'DeleteServiceSyncConfigOutput')
    DeleteServiceTemplateInput = Shapes::StructureShape.new(name: 'DeleteServiceTemplateInput')
    DeleteServiceTemplateOutput = Shapes::StructureShape.new(name: 'DeleteServiceTemplateOutput')
    DeleteServiceTemplateVersionInput = Shapes::StructureShape.new(name: 'DeleteServiceTemplateVersionInput')
    DeleteServiceTemplateVersionOutput = Shapes::StructureShape.new(name: 'DeleteServiceTemplateVersionOutput')
    DeleteTemplateSyncConfigInput = Shapes::StructureShape.new(name: 'DeleteTemplateSyncConfigInput')
    DeleteTemplateSyncConfigOutput = Shapes::StructureShape.new(name: 'DeleteTemplateSyncConfigOutput')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentArn = Shapes::StringShape.new(name: 'DeploymentArn')
    DeploymentId = Shapes::StringShape.new(name: 'DeploymentId')
    DeploymentState = Shapes::UnionShape.new(name: 'DeploymentState')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DeploymentSummary = Shapes::StructureShape.new(name: 'DeploymentSummary')
    DeploymentSummaryList = Shapes::ListShape.new(name: 'DeploymentSummaryList')
    DeploymentTargetResourceType = Shapes::StringShape.new(name: 'DeploymentTargetResourceType')
    DeploymentUpdateType = Shapes::StringShape.new(name: 'DeploymentUpdateType')
    Description = Shapes::StringShape.new(name: 'Description')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    EmptyNextToken = Shapes::StringShape.new(name: 'EmptyNextToken')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentAccountConnection = Shapes::StructureShape.new(name: 'EnvironmentAccountConnection')
    EnvironmentAccountConnectionArn = Shapes::StringShape.new(name: 'EnvironmentAccountConnectionArn')
    EnvironmentAccountConnectionId = Shapes::StringShape.new(name: 'EnvironmentAccountConnectionId')
    EnvironmentAccountConnectionRequesterAccountType = Shapes::StringShape.new(name: 'EnvironmentAccountConnectionRequesterAccountType')
    EnvironmentAccountConnectionStatus = Shapes::StringShape.new(name: 'EnvironmentAccountConnectionStatus')
    EnvironmentAccountConnectionStatusList = Shapes::ListShape.new(name: 'EnvironmentAccountConnectionStatusList')
    EnvironmentAccountConnectionSummary = Shapes::StructureShape.new(name: 'EnvironmentAccountConnectionSummary')
    EnvironmentAccountConnectionSummaryList = Shapes::ListShape.new(name: 'EnvironmentAccountConnectionSummaryList')
    EnvironmentArn = Shapes::StringShape.new(name: 'EnvironmentArn')
    EnvironmentState = Shapes::StructureShape.new(name: 'EnvironmentState')
    EnvironmentSummary = Shapes::StructureShape.new(name: 'EnvironmentSummary')
    EnvironmentSummaryList = Shapes::ListShape.new(name: 'EnvironmentSummaryList')
    EnvironmentTemplate = Shapes::StructureShape.new(name: 'EnvironmentTemplate')
    EnvironmentTemplateArn = Shapes::StringShape.new(name: 'EnvironmentTemplateArn')
    EnvironmentTemplateFilter = Shapes::StructureShape.new(name: 'EnvironmentTemplateFilter')
    EnvironmentTemplateFilterList = Shapes::ListShape.new(name: 'EnvironmentTemplateFilterList')
    EnvironmentTemplateSummary = Shapes::StructureShape.new(name: 'EnvironmentTemplateSummary')
    EnvironmentTemplateSummaryList = Shapes::ListShape.new(name: 'EnvironmentTemplateSummaryList')
    EnvironmentTemplateVersion = Shapes::StructureShape.new(name: 'EnvironmentTemplateVersion')
    EnvironmentTemplateVersionArn = Shapes::StringShape.new(name: 'EnvironmentTemplateVersionArn')
    EnvironmentTemplateVersionSummary = Shapes::StructureShape.new(name: 'EnvironmentTemplateVersionSummary')
    EnvironmentTemplateVersionSummaryList = Shapes::ListShape.new(name: 'EnvironmentTemplateVersionSummaryList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FullTemplateVersionNumber = Shapes::StringShape.new(name: 'FullTemplateVersionNumber')
    GetAccountSettingsInput = Shapes::StructureShape.new(name: 'GetAccountSettingsInput')
    GetAccountSettingsOutput = Shapes::StructureShape.new(name: 'GetAccountSettingsOutput')
    GetComponentInput = Shapes::StructureShape.new(name: 'GetComponentInput')
    GetComponentOutput = Shapes::StructureShape.new(name: 'GetComponentOutput')
    GetDeploymentInput = Shapes::StructureShape.new(name: 'GetDeploymentInput')
    GetDeploymentOutput = Shapes::StructureShape.new(name: 'GetDeploymentOutput')
    GetEnvironmentAccountConnectionInput = Shapes::StructureShape.new(name: 'GetEnvironmentAccountConnectionInput')
    GetEnvironmentAccountConnectionOutput = Shapes::StructureShape.new(name: 'GetEnvironmentAccountConnectionOutput')
    GetEnvironmentInput = Shapes::StructureShape.new(name: 'GetEnvironmentInput')
    GetEnvironmentOutput = Shapes::StructureShape.new(name: 'GetEnvironmentOutput')
    GetEnvironmentTemplateInput = Shapes::StructureShape.new(name: 'GetEnvironmentTemplateInput')
    GetEnvironmentTemplateOutput = Shapes::StructureShape.new(name: 'GetEnvironmentTemplateOutput')
    GetEnvironmentTemplateVersionInput = Shapes::StructureShape.new(name: 'GetEnvironmentTemplateVersionInput')
    GetEnvironmentTemplateVersionOutput = Shapes::StructureShape.new(name: 'GetEnvironmentTemplateVersionOutput')
    GetRepositoryInput = Shapes::StructureShape.new(name: 'GetRepositoryInput')
    GetRepositoryOutput = Shapes::StructureShape.new(name: 'GetRepositoryOutput')
    GetRepositorySyncStatusInput = Shapes::StructureShape.new(name: 'GetRepositorySyncStatusInput')
    GetRepositorySyncStatusOutput = Shapes::StructureShape.new(name: 'GetRepositorySyncStatusOutput')
    GetResourcesSummaryInput = Shapes::StructureShape.new(name: 'GetResourcesSummaryInput')
    GetResourcesSummaryOutput = Shapes::StructureShape.new(name: 'GetResourcesSummaryOutput')
    GetServiceInput = Shapes::StructureShape.new(name: 'GetServiceInput')
    GetServiceInstanceInput = Shapes::StructureShape.new(name: 'GetServiceInstanceInput')
    GetServiceInstanceOutput = Shapes::StructureShape.new(name: 'GetServiceInstanceOutput')
    GetServiceInstanceSyncStatusInput = Shapes::StructureShape.new(name: 'GetServiceInstanceSyncStatusInput')
    GetServiceInstanceSyncStatusOutput = Shapes::StructureShape.new(name: 'GetServiceInstanceSyncStatusOutput')
    GetServiceOutput = Shapes::StructureShape.new(name: 'GetServiceOutput')
    GetServiceSyncBlockerSummaryInput = Shapes::StructureShape.new(name: 'GetServiceSyncBlockerSummaryInput')
    GetServiceSyncBlockerSummaryOutput = Shapes::StructureShape.new(name: 'GetServiceSyncBlockerSummaryOutput')
    GetServiceSyncConfigInput = Shapes::StructureShape.new(name: 'GetServiceSyncConfigInput')
    GetServiceSyncConfigOutput = Shapes::StructureShape.new(name: 'GetServiceSyncConfigOutput')
    GetServiceTemplateInput = Shapes::StructureShape.new(name: 'GetServiceTemplateInput')
    GetServiceTemplateOutput = Shapes::StructureShape.new(name: 'GetServiceTemplateOutput')
    GetServiceTemplateVersionInput = Shapes::StructureShape.new(name: 'GetServiceTemplateVersionInput')
    GetServiceTemplateVersionOutput = Shapes::StructureShape.new(name: 'GetServiceTemplateVersionOutput')
    GetTemplateSyncConfigInput = Shapes::StructureShape.new(name: 'GetTemplateSyncConfigInput')
    GetTemplateSyncConfigOutput = Shapes::StructureShape.new(name: 'GetTemplateSyncConfigOutput')
    GetTemplateSyncStatusInput = Shapes::StructureShape.new(name: 'GetTemplateSyncStatusInput')
    GetTemplateSyncStatusOutput = Shapes::StructureShape.new(name: 'GetTemplateSyncStatusOutput')
    GitBranchName = Shapes::StringShape.new(name: 'GitBranchName')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LatestSyncBlockers = Shapes::ListShape.new(name: 'LatestSyncBlockers')
    ListComponentOutputsInput = Shapes::StructureShape.new(name: 'ListComponentOutputsInput')
    ListComponentOutputsOutput = Shapes::StructureShape.new(name: 'ListComponentOutputsOutput')
    ListComponentProvisionedResourcesInput = Shapes::StructureShape.new(name: 'ListComponentProvisionedResourcesInput')
    ListComponentProvisionedResourcesOutput = Shapes::StructureShape.new(name: 'ListComponentProvisionedResourcesOutput')
    ListComponentsInput = Shapes::StructureShape.new(name: 'ListComponentsInput')
    ListComponentsOutput = Shapes::StructureShape.new(name: 'ListComponentsOutput')
    ListDeploymentsInput = Shapes::StructureShape.new(name: 'ListDeploymentsInput')
    ListDeploymentsOutput = Shapes::StructureShape.new(name: 'ListDeploymentsOutput')
    ListEnvironmentAccountConnectionsInput = Shapes::StructureShape.new(name: 'ListEnvironmentAccountConnectionsInput')
    ListEnvironmentAccountConnectionsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentAccountConnectionsOutput')
    ListEnvironmentOutputsInput = Shapes::StructureShape.new(name: 'ListEnvironmentOutputsInput')
    ListEnvironmentOutputsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentOutputsOutput')
    ListEnvironmentProvisionedResourcesInput = Shapes::StructureShape.new(name: 'ListEnvironmentProvisionedResourcesInput')
    ListEnvironmentProvisionedResourcesOutput = Shapes::StructureShape.new(name: 'ListEnvironmentProvisionedResourcesOutput')
    ListEnvironmentTemplateVersionsInput = Shapes::StructureShape.new(name: 'ListEnvironmentTemplateVersionsInput')
    ListEnvironmentTemplateVersionsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentTemplateVersionsOutput')
    ListEnvironmentTemplatesInput = Shapes::StructureShape.new(name: 'ListEnvironmentTemplatesInput')
    ListEnvironmentTemplatesOutput = Shapes::StructureShape.new(name: 'ListEnvironmentTemplatesOutput')
    ListEnvironmentsInput = Shapes::StructureShape.new(name: 'ListEnvironmentsInput')
    ListEnvironmentsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentsOutput')
    ListRepositoriesInput = Shapes::StructureShape.new(name: 'ListRepositoriesInput')
    ListRepositoriesOutput = Shapes::StructureShape.new(name: 'ListRepositoriesOutput')
    ListRepositorySyncDefinitionsInput = Shapes::StructureShape.new(name: 'ListRepositorySyncDefinitionsInput')
    ListRepositorySyncDefinitionsOutput = Shapes::StructureShape.new(name: 'ListRepositorySyncDefinitionsOutput')
    ListServiceInstanceOutputsInput = Shapes::StructureShape.new(name: 'ListServiceInstanceOutputsInput')
    ListServiceInstanceOutputsOutput = Shapes::StructureShape.new(name: 'ListServiceInstanceOutputsOutput')
    ListServiceInstanceProvisionedResourcesInput = Shapes::StructureShape.new(name: 'ListServiceInstanceProvisionedResourcesInput')
    ListServiceInstanceProvisionedResourcesOutput = Shapes::StructureShape.new(name: 'ListServiceInstanceProvisionedResourcesOutput')
    ListServiceInstancesFilter = Shapes::StructureShape.new(name: 'ListServiceInstancesFilter')
    ListServiceInstancesFilterBy = Shapes::StringShape.new(name: 'ListServiceInstancesFilterBy')
    ListServiceInstancesFilterList = Shapes::ListShape.new(name: 'ListServiceInstancesFilterList')
    ListServiceInstancesFilterValue = Shapes::StringShape.new(name: 'ListServiceInstancesFilterValue')
    ListServiceInstancesInput = Shapes::StructureShape.new(name: 'ListServiceInstancesInput')
    ListServiceInstancesOutput = Shapes::StructureShape.new(name: 'ListServiceInstancesOutput')
    ListServiceInstancesSortBy = Shapes::StringShape.new(name: 'ListServiceInstancesSortBy')
    ListServicePipelineOutputsInput = Shapes::StructureShape.new(name: 'ListServicePipelineOutputsInput')
    ListServicePipelineOutputsOutput = Shapes::StructureShape.new(name: 'ListServicePipelineOutputsOutput')
    ListServicePipelineProvisionedResourcesInput = Shapes::StructureShape.new(name: 'ListServicePipelineProvisionedResourcesInput')
    ListServicePipelineProvisionedResourcesOutput = Shapes::StructureShape.new(name: 'ListServicePipelineProvisionedResourcesOutput')
    ListServiceTemplateVersionsInput = Shapes::StructureShape.new(name: 'ListServiceTemplateVersionsInput')
    ListServiceTemplateVersionsOutput = Shapes::StructureShape.new(name: 'ListServiceTemplateVersionsOutput')
    ListServiceTemplatesInput = Shapes::StructureShape.new(name: 'ListServiceTemplatesInput')
    ListServiceTemplatesOutput = Shapes::StructureShape.new(name: 'ListServiceTemplatesOutput')
    ListServicesInput = Shapes::StructureShape.new(name: 'ListServicesInput')
    ListServicesOutput = Shapes::StructureShape.new(name: 'ListServicesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxPageResults = Shapes::IntegerShape.new(name: 'MaxPageResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotifyResourceDeploymentStatusChangeInput = Shapes::StructureShape.new(name: 'NotifyResourceDeploymentStatusChangeInput')
    NotifyResourceDeploymentStatusChangeInputOutputsList = Shapes::ListShape.new(name: 'NotifyResourceDeploymentStatusChangeInputOutputsList')
    NotifyResourceDeploymentStatusChangeInputStatusMessageString = Shapes::StringShape.new(name: 'NotifyResourceDeploymentStatusChangeInputStatusMessageString')
    NotifyResourceDeploymentStatusChangeOutput = Shapes::StructureShape.new(name: 'NotifyResourceDeploymentStatusChangeOutput')
    OpsFilePath = Shapes::StringShape.new(name: 'OpsFilePath')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputKey = Shapes::StringShape.new(name: 'OutputKey')
    OutputValueString = Shapes::StringShape.new(name: 'OutputValueString')
    OutputsList = Shapes::ListShape.new(name: 'OutputsList')
    ProvisionedResource = Shapes::StructureShape.new(name: 'ProvisionedResource')
    ProvisionedResourceEngine = Shapes::StringShape.new(name: 'ProvisionedResourceEngine')
    ProvisionedResourceIdentifier = Shapes::StringShape.new(name: 'ProvisionedResourceIdentifier')
    ProvisionedResourceList = Shapes::ListShape.new(name: 'ProvisionedResourceList')
    ProvisionedResourceName = Shapes::StringShape.new(name: 'ProvisionedResourceName')
    Provisioning = Shapes::StringShape.new(name: 'Provisioning')
    RejectEnvironmentAccountConnectionInput = Shapes::StructureShape.new(name: 'RejectEnvironmentAccountConnectionInput')
    RejectEnvironmentAccountConnectionOutput = Shapes::StructureShape.new(name: 'RejectEnvironmentAccountConnectionOutput')
    Repository = Shapes::StructureShape.new(name: 'Repository')
    RepositoryArn = Shapes::StringShape.new(name: 'RepositoryArn')
    RepositoryBranch = Shapes::StructureShape.new(name: 'RepositoryBranch')
    RepositoryBranchInput = Shapes::StructureShape.new(name: 'RepositoryBranchInput')
    RepositoryId = Shapes::StringShape.new(name: 'RepositoryId')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    RepositoryProvider = Shapes::StringShape.new(name: 'RepositoryProvider')
    RepositorySummary = Shapes::StructureShape.new(name: 'RepositorySummary')
    RepositorySummaryList = Shapes::ListShape.new(name: 'RepositorySummaryList')
    RepositorySyncAttempt = Shapes::StructureShape.new(name: 'RepositorySyncAttempt')
    RepositorySyncDefinition = Shapes::StructureShape.new(name: 'RepositorySyncDefinition')
    RepositorySyncDefinitionList = Shapes::ListShape.new(name: 'RepositorySyncDefinitionList')
    RepositorySyncEvent = Shapes::StructureShape.new(name: 'RepositorySyncEvent')
    RepositorySyncEvents = Shapes::ListShape.new(name: 'RepositorySyncEvents')
    RepositorySyncStatus = Shapes::StringShape.new(name: 'RepositorySyncStatus')
    ResourceCountsSummary = Shapes::StructureShape.new(name: 'ResourceCountsSummary')
    ResourceDeploymentStatus = Shapes::StringShape.new(name: 'ResourceDeploymentStatus')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNameOrEmpty = Shapes::StringShape.new(name: 'ResourceNameOrEmpty')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSyncAttempt = Shapes::StructureShape.new(name: 'ResourceSyncAttempt')
    ResourceSyncEvent = Shapes::StructureShape.new(name: 'ResourceSyncEvent')
    ResourceSyncEvents = Shapes::ListShape.new(name: 'ResourceSyncEvents')
    ResourceSyncStatus = Shapes::StringShape.new(name: 'ResourceSyncStatus')
    Revision = Shapes::StructureShape.new(name: 'Revision')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RoleArnOrEmptyString = Shapes::StringShape.new(name: 'RoleArnOrEmptyString')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3ObjectSource = Shapes::StructureShape.new(name: 'S3ObjectSource')
    SHA = Shapes::StringShape.new(name: 'SHA')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceArn = Shapes::StringShape.new(name: 'ServiceArn')
    ServiceInstance = Shapes::StructureShape.new(name: 'ServiceInstance')
    ServiceInstanceArn = Shapes::StringShape.new(name: 'ServiceInstanceArn')
    ServiceInstanceState = Shapes::StructureShape.new(name: 'ServiceInstanceState')
    ServiceInstanceSummary = Shapes::StructureShape.new(name: 'ServiceInstanceSummary')
    ServiceInstanceSummaryList = Shapes::ListShape.new(name: 'ServiceInstanceSummaryList')
    ServicePipeline = Shapes::StructureShape.new(name: 'ServicePipeline')
    ServicePipelineState = Shapes::StructureShape.new(name: 'ServicePipelineState')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceStatus = Shapes::StringShape.new(name: 'ServiceStatus')
    ServiceSummary = Shapes::StructureShape.new(name: 'ServiceSummary')
    ServiceSummaryList = Shapes::ListShape.new(name: 'ServiceSummaryList')
    ServiceSyncBlockerSummary = Shapes::StructureShape.new(name: 'ServiceSyncBlockerSummary')
    ServiceSyncConfig = Shapes::StructureShape.new(name: 'ServiceSyncConfig')
    ServiceTemplate = Shapes::StructureShape.new(name: 'ServiceTemplate')
    ServiceTemplateArn = Shapes::StringShape.new(name: 'ServiceTemplateArn')
    ServiceTemplateSummary = Shapes::StructureShape.new(name: 'ServiceTemplateSummary')
    ServiceTemplateSummaryList = Shapes::ListShape.new(name: 'ServiceTemplateSummaryList')
    ServiceTemplateSupportedComponentSourceInputList = Shapes::ListShape.new(name: 'ServiceTemplateSupportedComponentSourceInputList')
    ServiceTemplateSupportedComponentSourceType = Shapes::StringShape.new(name: 'ServiceTemplateSupportedComponentSourceType')
    ServiceTemplateVersion = Shapes::StructureShape.new(name: 'ServiceTemplateVersion')
    ServiceTemplateVersionArn = Shapes::StringShape.new(name: 'ServiceTemplateVersionArn')
    ServiceTemplateVersionSummary = Shapes::StructureShape.new(name: 'ServiceTemplateVersionSummary')
    ServiceTemplateVersionSummaryList = Shapes::ListShape.new(name: 'ServiceTemplateVersionSummaryList')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SpecContents = Shapes::StringShape.new(name: 'SpecContents')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    Subdirectory = Shapes::StringShape.new(name: 'Subdirectory')
    SyncBlocker = Shapes::StructureShape.new(name: 'SyncBlocker')
    SyncBlockerContext = Shapes::StructureShape.new(name: 'SyncBlockerContext')
    SyncBlockerContexts = Shapes::ListShape.new(name: 'SyncBlockerContexts')
    SyncType = Shapes::StringShape.new(name: 'SyncType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateFileContents = Shapes::StringShape.new(name: 'TemplateFileContents')
    TemplateManifestContents = Shapes::StringShape.new(name: 'TemplateManifestContents')
    TemplateSchema = Shapes::StringShape.new(name: 'TemplateSchema')
    TemplateSyncConfig = Shapes::StructureShape.new(name: 'TemplateSyncConfig')
    TemplateType = Shapes::StringShape.new(name: 'TemplateType')
    TemplateVersionPart = Shapes::StringShape.new(name: 'TemplateVersionPart')
    TemplateVersionSourceInput = Shapes::UnionShape.new(name: 'TemplateVersionSourceInput')
    TemplateVersionStatus = Shapes::StringShape.new(name: 'TemplateVersionStatus')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateAccountSettingsInput = Shapes::StructureShape.new(name: 'UpdateAccountSettingsInput')
    UpdateAccountSettingsOutput = Shapes::StructureShape.new(name: 'UpdateAccountSettingsOutput')
    UpdateComponentInput = Shapes::StructureShape.new(name: 'UpdateComponentInput')
    UpdateComponentOutput = Shapes::StructureShape.new(name: 'UpdateComponentOutput')
    UpdateEnvironmentAccountConnectionInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentAccountConnectionInput')
    UpdateEnvironmentAccountConnectionOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentAccountConnectionOutput')
    UpdateEnvironmentInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentInput')
    UpdateEnvironmentOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentOutput')
    UpdateEnvironmentTemplateInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentTemplateInput')
    UpdateEnvironmentTemplateOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentTemplateOutput')
    UpdateEnvironmentTemplateVersionInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentTemplateVersionInput')
    UpdateEnvironmentTemplateVersionOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentTemplateVersionOutput')
    UpdateServiceInput = Shapes::StructureShape.new(name: 'UpdateServiceInput')
    UpdateServiceInstanceInput = Shapes::StructureShape.new(name: 'UpdateServiceInstanceInput')
    UpdateServiceInstanceOutput = Shapes::StructureShape.new(name: 'UpdateServiceInstanceOutput')
    UpdateServiceOutput = Shapes::StructureShape.new(name: 'UpdateServiceOutput')
    UpdateServicePipelineInput = Shapes::StructureShape.new(name: 'UpdateServicePipelineInput')
    UpdateServicePipelineOutput = Shapes::StructureShape.new(name: 'UpdateServicePipelineOutput')
    UpdateServiceSyncBlockerInput = Shapes::StructureShape.new(name: 'UpdateServiceSyncBlockerInput')
    UpdateServiceSyncBlockerOutput = Shapes::StructureShape.new(name: 'UpdateServiceSyncBlockerOutput')
    UpdateServiceSyncConfigInput = Shapes::StructureShape.new(name: 'UpdateServiceSyncConfigInput')
    UpdateServiceSyncConfigOutput = Shapes::StructureShape.new(name: 'UpdateServiceSyncConfigOutput')
    UpdateServiceTemplateInput = Shapes::StructureShape.new(name: 'UpdateServiceTemplateInput')
    UpdateServiceTemplateOutput = Shapes::StructureShape.new(name: 'UpdateServiceTemplateOutput')
    UpdateServiceTemplateVersionInput = Shapes::StructureShape.new(name: 'UpdateServiceTemplateVersionInput')
    UpdateServiceTemplateVersionOutput = Shapes::StructureShape.new(name: 'UpdateServiceTemplateVersionOutput')
    UpdateTemplateSyncConfigInput = Shapes::StructureShape.new(name: 'UpdateTemplateSyncConfigInput')
    UpdateTemplateSyncConfigOutput = Shapes::StructureShape.new(name: 'UpdateTemplateSyncConfigOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AcceptEnvironmentAccountConnectionInput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, required: true, location_name: "id"))
    AcceptEnvironmentAccountConnectionInput.struct_class = Types::AcceptEnvironmentAccountConnectionInput

    AcceptEnvironmentAccountConnectionOutput.add_member(:environment_account_connection, Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, required: true, location_name: "environmentAccountConnection"))
    AcceptEnvironmentAccountConnectionOutput.struct_class = Types::AcceptEnvironmentAccountConnectionOutput

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountSettings.add_member(:pipeline_codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: "pipelineCodebuildRoleArn"))
    AccountSettings.add_member(:pipeline_provisioning_repository, Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: "pipelineProvisioningRepository"))
    AccountSettings.add_member(:pipeline_service_role_arn, Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: "pipelineServiceRoleArn"))
    AccountSettings.struct_class = Types::AccountSettings

    CancelComponentDeploymentInput.add_member(:component_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "componentName"))
    CancelComponentDeploymentInput.struct_class = Types::CancelComponentDeploymentInput

    CancelComponentDeploymentOutput.add_member(:component, Shapes::ShapeRef.new(shape: Component, required: true, location_name: "component"))
    CancelComponentDeploymentOutput.struct_class = Types::CancelComponentDeploymentOutput

    CancelEnvironmentDeploymentInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    CancelEnvironmentDeploymentInput.struct_class = Types::CancelEnvironmentDeploymentInput

    CancelEnvironmentDeploymentOutput.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, required: true, location_name: "environment"))
    CancelEnvironmentDeploymentOutput.struct_class = Types::CancelEnvironmentDeploymentOutput

    CancelServiceInstanceDeploymentInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceInstanceName"))
    CancelServiceInstanceDeploymentInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    CancelServiceInstanceDeploymentInput.struct_class = Types::CancelServiceInstanceDeploymentInput

    CancelServiceInstanceDeploymentOutput.add_member(:service_instance, Shapes::ShapeRef.new(shape: ServiceInstance, required: true, location_name: "serviceInstance"))
    CancelServiceInstanceDeploymentOutput.struct_class = Types::CancelServiceInstanceDeploymentOutput

    CancelServicePipelineDeploymentInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    CancelServicePipelineDeploymentInput.struct_class = Types::CancelServicePipelineDeploymentInput

    CancelServicePipelineDeploymentOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: ServicePipeline, required: true, location_name: "pipeline"))
    CancelServicePipelineDeploymentOutput.struct_class = Types::CancelServicePipelineDeploymentOutput

    CompatibleEnvironmentTemplate.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    CompatibleEnvironmentTemplate.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    CompatibleEnvironmentTemplate.struct_class = Types::CompatibleEnvironmentTemplate

    CompatibleEnvironmentTemplateInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    CompatibleEnvironmentTemplateInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    CompatibleEnvironmentTemplateInput.struct_class = Types::CompatibleEnvironmentTemplateInput

    CompatibleEnvironmentTemplateInputList.member = Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInput)

    CompatibleEnvironmentTemplateList.member = Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplate)

    Component.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentArn, required: true, location_name: "arn"))
    Component.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Component.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    Component.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    Component.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Component.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    Component.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    Component.add_member(:last_client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "lastClientRequestToken"))
    Component.add_member(:last_deployment_attempted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastDeploymentAttemptedAt"))
    Component.add_member(:last_deployment_succeeded_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastDeploymentSucceededAt"))
    Component.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    Component.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    Component.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    Component.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    Component.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    Component.add_member(:service_spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "serviceSpec"))
    Component.struct_class = Types::Component

    ComponentDeploymentIdList.member = Shapes::ShapeRef.new(shape: DeploymentId)

    ComponentState.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: "serviceInstanceName"))
    ComponentState.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: "serviceName"))
    ComponentState.add_member(:service_spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "serviceSpec"))
    ComponentState.add_member(:template_file, Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: "templateFile"))
    ComponentState.struct_class = Types::ComponentState

    ComponentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentArn, required: true, location_name: "arn"))
    ComponentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ComponentSummary.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    ComponentSummary.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    ComponentSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    ComponentSummary.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    ComponentSummary.add_member(:last_deployment_attempted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastDeploymentAttemptedAt"))
    ComponentSummary.add_member(:last_deployment_succeeded_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastDeploymentSucceededAt"))
    ComponentSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ComponentSummary.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    ComponentSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ComponentSummary.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    ComponentSummary.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    ComponentSummary.struct_class = Types::ComponentSummary

    ComponentSummaryList.member = Shapes::ShapeRef.new(shape: ComponentSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CountsSummary.add_member(:components, Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: "components"))
    CountsSummary.add_member(:environment_templates, Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: "environmentTemplates"))
    CountsSummary.add_member(:environments, Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: "environments"))
    CountsSummary.add_member(:pipelines, Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: "pipelines"))
    CountsSummary.add_member(:service_instances, Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: "serviceInstances"))
    CountsSummary.add_member(:service_templates, Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: "serviceTemplates"))
    CountsSummary.add_member(:services, Shapes::ShapeRef.new(shape: ResourceCountsSummary, location_name: "services"))
    CountsSummary.struct_class = Types::CountsSummary

    CreateComponentInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateComponentInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateComponentInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "environmentName"))
    CreateComponentInput.add_member(:manifest, Shapes::ShapeRef.new(shape: TemplateManifestContents, required: true, location_name: "manifest"))
    CreateComponentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateComponentInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    CreateComponentInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    CreateComponentInput.add_member(:service_spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "serviceSpec"))
    CreateComponentInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateComponentInput.add_member(:template_file, Shapes::ShapeRef.new(shape: TemplateFileContents, required: true, location_name: "templateFile"))
    CreateComponentInput.struct_class = Types::CreateComponentInput

    CreateComponentOutput.add_member(:component, Shapes::ShapeRef.new(shape: Component, required: true, location_name: "component"))
    CreateComponentOutput.struct_class = Types::CreateComponentOutput

    CreateEnvironmentAccountConnectionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateEnvironmentAccountConnectionInput.add_member(:codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "codebuildRoleArn"))
    CreateEnvironmentAccountConnectionInput.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "componentRoleArn"))
    CreateEnvironmentAccountConnectionInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    CreateEnvironmentAccountConnectionInput.add_member(:management_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "managementAccountId"))
    CreateEnvironmentAccountConnectionInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateEnvironmentAccountConnectionInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateEnvironmentAccountConnectionInput.struct_class = Types::CreateEnvironmentAccountConnectionInput

    CreateEnvironmentAccountConnectionOutput.add_member(:environment_account_connection, Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, required: true, location_name: "environmentAccountConnection"))
    CreateEnvironmentAccountConnectionOutput.struct_class = Types::CreateEnvironmentAccountConnectionOutput

    CreateEnvironmentInput.add_member(:codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "codebuildRoleArn"))
    CreateEnvironmentInput.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "componentRoleArn"))
    CreateEnvironmentInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentInput.add_member(:environment_account_connection_id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: "environmentAccountConnectionId"))
    CreateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateEnvironmentInput.add_member(:proton_service_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "protonServiceRoleArn"))
    CreateEnvironmentInput.add_member(:provisioning_repository, Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: "provisioningRepository"))
    CreateEnvironmentInput.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, required: true, location_name: "spec"))
    CreateEnvironmentInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateEnvironmentInput.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    CreateEnvironmentInput.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMinorVersion"))
    CreateEnvironmentInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    CreateEnvironmentInput.struct_class = Types::CreateEnvironmentInput

    CreateEnvironmentOutput.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, required: true, location_name: "environment"))
    CreateEnvironmentOutput.struct_class = Types::CreateEnvironmentOutput

    CreateEnvironmentTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentTemplateInput.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    CreateEnvironmentTemplateInput.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    CreateEnvironmentTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateEnvironmentTemplateInput.add_member(:provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "provisioning"))
    CreateEnvironmentTemplateInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateEnvironmentTemplateInput.struct_class = Types::CreateEnvironmentTemplateInput

    CreateEnvironmentTemplateOutput.add_member(:environment_template, Shapes::ShapeRef.new(shape: EnvironmentTemplate, required: true, location_name: "environmentTemplate"))
    CreateEnvironmentTemplateOutput.struct_class = Types::CreateEnvironmentTemplateOutput

    CreateEnvironmentTemplateVersionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateEnvironmentTemplateVersionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "majorVersion"))
    CreateEnvironmentTemplateVersionInput.add_member(:source, Shapes::ShapeRef.new(shape: TemplateVersionSourceInput, required: true, location_name: "source"))
    CreateEnvironmentTemplateVersionInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateEnvironmentTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    CreateEnvironmentTemplateVersionInput.struct_class = Types::CreateEnvironmentTemplateVersionInput

    CreateEnvironmentTemplateVersionOutput.add_member(:environment_template_version, Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, required: true, location_name: "environmentTemplateVersion"))
    CreateEnvironmentTemplateVersionOutput.struct_class = Types::CreateEnvironmentTemplateVersionOutput

    CreateRepositoryInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "connectionArn"))
    CreateRepositoryInput.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    CreateRepositoryInput.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "name"))
    CreateRepositoryInput.add_member(:provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "provider"))
    CreateRepositoryInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRepositoryInput.struct_class = Types::CreateRepositoryInput

    CreateRepositoryOutput.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, required: true, location_name: "repository"))
    CreateRepositoryOutput.struct_class = Types::CreateRepositoryOutput

    CreateServiceInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: GitBranchName, location_name: "branchName"))
    CreateServiceInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateServiceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateServiceInput.add_member(:repository_connection_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryConnectionArn"))
    CreateServiceInput.add_member(:repository_id, Shapes::ShapeRef.new(shape: RepositoryId, location_name: "repositoryId"))
    CreateServiceInput.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, required: true, location_name: "spec"))
    CreateServiceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateServiceInput.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    CreateServiceInput.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMinorVersion"))
    CreateServiceInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    CreateServiceInput.struct_class = Types::CreateServiceInput

    CreateServiceInstanceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceInstanceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateServiceInstanceInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    CreateServiceInstanceInput.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, required: true, location_name: "spec"))
    CreateServiceInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateServiceInstanceInput.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMajorVersion"))
    CreateServiceInstanceInput.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMinorVersion"))
    CreateServiceInstanceInput.struct_class = Types::CreateServiceInstanceInput

    CreateServiceInstanceOutput.add_member(:service_instance, Shapes::ShapeRef.new(shape: ServiceInstance, required: true, location_name: "serviceInstance"))
    CreateServiceInstanceOutput.struct_class = Types::CreateServiceInstanceOutput

    CreateServiceOutput.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    CreateServiceOutput.struct_class = Types::CreateServiceOutput

    CreateServiceSyncConfigInput.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    CreateServiceSyncConfigInput.add_member(:file_path, Shapes::ShapeRef.new(shape: OpsFilePath, required: true, location_name: "filePath"))
    CreateServiceSyncConfigInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateServiceSyncConfigInput.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    CreateServiceSyncConfigInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    CreateServiceSyncConfigInput.struct_class = Types::CreateServiceSyncConfigInput

    CreateServiceSyncConfigOutput.add_member(:service_sync_config, Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: "serviceSyncConfig"))
    CreateServiceSyncConfigOutput.struct_class = Types::CreateServiceSyncConfigOutput

    CreateServiceTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateServiceTemplateInput.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    CreateServiceTemplateInput.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    CreateServiceTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateServiceTemplateInput.add_member(:pipeline_provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "pipelineProvisioning"))
    CreateServiceTemplateInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateServiceTemplateInput.struct_class = Types::CreateServiceTemplateInput

    CreateServiceTemplateOutput.add_member(:service_template, Shapes::ShapeRef.new(shape: ServiceTemplate, required: true, location_name: "serviceTemplate"))
    CreateServiceTemplateOutput.struct_class = Types::CreateServiceTemplateOutput

    CreateServiceTemplateVersionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceTemplateVersionInput.add_member(:compatible_environment_templates, Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInputList, required: true, location_name: "compatibleEnvironmentTemplates"))
    CreateServiceTemplateVersionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateServiceTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "majorVersion"))
    CreateServiceTemplateVersionInput.add_member(:source, Shapes::ShapeRef.new(shape: TemplateVersionSourceInput, required: true, location_name: "source"))
    CreateServiceTemplateVersionInput.add_member(:supported_component_sources, Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: "supportedComponentSources"))
    CreateServiceTemplateVersionInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateServiceTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    CreateServiceTemplateVersionInput.struct_class = Types::CreateServiceTemplateVersionInput

    CreateServiceTemplateVersionOutput.add_member(:service_template_version, Shapes::ShapeRef.new(shape: ServiceTemplateVersion, required: true, location_name: "serviceTemplateVersion"))
    CreateServiceTemplateVersionOutput.struct_class = Types::CreateServiceTemplateVersionOutput

    CreateTemplateSyncConfigInput.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    CreateTemplateSyncConfigInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateTemplateSyncConfigInput.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    CreateTemplateSyncConfigInput.add_member(:subdirectory, Shapes::ShapeRef.new(shape: Subdirectory, location_name: "subdirectory"))
    CreateTemplateSyncConfigInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    CreateTemplateSyncConfigInput.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "templateType"))
    CreateTemplateSyncConfigInput.struct_class = Types::CreateTemplateSyncConfigInput

    CreateTemplateSyncConfigOutput.add_member(:template_sync_config, Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: "templateSyncConfig"))
    CreateTemplateSyncConfigOutput.struct_class = Types::CreateTemplateSyncConfigOutput

    DeleteComponentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteComponentInput.struct_class = Types::DeleteComponentInput

    DeleteComponentOutput.add_member(:component, Shapes::ShapeRef.new(shape: Component, location_name: "component"))
    DeleteComponentOutput.struct_class = Types::DeleteComponentOutput

    DeleteDeploymentInput.add_member(:id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "id"))
    DeleteDeploymentInput.struct_class = Types::DeleteDeploymentInput

    DeleteDeploymentOutput.add_member(:deployment, Shapes::ShapeRef.new(shape: Deployment, location_name: "deployment"))
    DeleteDeploymentOutput.struct_class = Types::DeleteDeploymentOutput

    DeleteEnvironmentAccountConnectionInput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, required: true, location_name: "id"))
    DeleteEnvironmentAccountConnectionInput.struct_class = Types::DeleteEnvironmentAccountConnectionInput

    DeleteEnvironmentAccountConnectionOutput.add_member(:environment_account_connection, Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, location_name: "environmentAccountConnection"))
    DeleteEnvironmentAccountConnectionOutput.struct_class = Types::DeleteEnvironmentAccountConnectionOutput

    DeleteEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteEnvironmentInput.struct_class = Types::DeleteEnvironmentInput

    DeleteEnvironmentOutput.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    DeleteEnvironmentOutput.struct_class = Types::DeleteEnvironmentOutput

    DeleteEnvironmentTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteEnvironmentTemplateInput.struct_class = Types::DeleteEnvironmentTemplateInput

    DeleteEnvironmentTemplateOutput.add_member(:environment_template, Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: "environmentTemplate"))
    DeleteEnvironmentTemplateOutput.struct_class = Types::DeleteEnvironmentTemplateOutput

    DeleteEnvironmentTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    DeleteEnvironmentTemplateVersionInput.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    DeleteEnvironmentTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    DeleteEnvironmentTemplateVersionInput.struct_class = Types::DeleteEnvironmentTemplateVersionInput

    DeleteEnvironmentTemplateVersionOutput.add_member(:environment_template_version, Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, location_name: "environmentTemplateVersion"))
    DeleteEnvironmentTemplateVersionOutput.struct_class = Types::DeleteEnvironmentTemplateVersionOutput

    DeleteRepositoryInput.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "name"))
    DeleteRepositoryInput.add_member(:provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "provider"))
    DeleteRepositoryInput.struct_class = Types::DeleteRepositoryInput

    DeleteRepositoryOutput.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    DeleteRepositoryOutput.struct_class = Types::DeleteRepositoryOutput

    DeleteServiceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteServiceInput.struct_class = Types::DeleteServiceInput

    DeleteServiceOutput.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    DeleteServiceOutput.struct_class = Types::DeleteServiceOutput

    DeleteServiceSyncConfigInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    DeleteServiceSyncConfigInput.struct_class = Types::DeleteServiceSyncConfigInput

    DeleteServiceSyncConfigOutput.add_member(:service_sync_config, Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: "serviceSyncConfig"))
    DeleteServiceSyncConfigOutput.struct_class = Types::DeleteServiceSyncConfigOutput

    DeleteServiceTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteServiceTemplateInput.struct_class = Types::DeleteServiceTemplateInput

    DeleteServiceTemplateOutput.add_member(:service_template, Shapes::ShapeRef.new(shape: ServiceTemplate, location_name: "serviceTemplate"))
    DeleteServiceTemplateOutput.struct_class = Types::DeleteServiceTemplateOutput

    DeleteServiceTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    DeleteServiceTemplateVersionInput.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    DeleteServiceTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    DeleteServiceTemplateVersionInput.struct_class = Types::DeleteServiceTemplateVersionInput

    DeleteServiceTemplateVersionOutput.add_member(:service_template_version, Shapes::ShapeRef.new(shape: ServiceTemplateVersion, location_name: "serviceTemplateVersion"))
    DeleteServiceTemplateVersionOutput.struct_class = Types::DeleteServiceTemplateVersionOutput

    DeleteTemplateSyncConfigInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    DeleteTemplateSyncConfigInput.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "templateType"))
    DeleteTemplateSyncConfigInput.struct_class = Types::DeleteTemplateSyncConfigInput

    DeleteTemplateSyncConfigOutput.add_member(:template_sync_config, Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: "templateSyncConfig"))
    DeleteTemplateSyncConfigOutput.struct_class = Types::DeleteTemplateSyncConfigOutput

    Deployment.add_member(:arn, Shapes::ShapeRef.new(shape: DeploymentArn, required: true, location_name: "arn"))
    Deployment.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    Deployment.add_member(:component_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "componentName"))
    Deployment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Deployment.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    Deployment.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    Deployment.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    Deployment.add_member(:id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "id"))
    Deployment.add_member(:initial_state, Shapes::ShapeRef.new(shape: DeploymentState, location_name: "initialState"))
    Deployment.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    Deployment.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    Deployment.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    Deployment.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    Deployment.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    Deployment.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "targetArn"))
    Deployment.add_member(:target_resource_created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "targetResourceCreatedAt"))
    Deployment.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: DeploymentTargetResourceType, required: true, location_name: "targetResourceType"))
    Deployment.add_member(:target_state, Shapes::ShapeRef.new(shape: DeploymentState, location_name: "targetState"))
    Deployment.struct_class = Types::Deployment

    DeploymentState.add_member(:component, Shapes::ShapeRef.new(shape: ComponentState, location_name: "component"))
    DeploymentState.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "environment"))
    DeploymentState.add_member(:service_instance, Shapes::ShapeRef.new(shape: ServiceInstanceState, location_name: "serviceInstance"))
    DeploymentState.add_member(:service_pipeline, Shapes::ShapeRef.new(shape: ServicePipelineState, location_name: "servicePipeline"))
    DeploymentState.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DeploymentState.add_member_subclass(:component, Types::DeploymentState::Component)
    DeploymentState.add_member_subclass(:environment, Types::DeploymentState::Environment)
    DeploymentState.add_member_subclass(:service_instance, Types::DeploymentState::ServiceInstance)
    DeploymentState.add_member_subclass(:service_pipeline, Types::DeploymentState::ServicePipeline)
    DeploymentState.add_member_subclass(:unknown, Types::DeploymentState::Unknown)
    DeploymentState.struct_class = Types::DeploymentState

    DeploymentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DeploymentArn, required: true, location_name: "arn"))
    DeploymentSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    DeploymentSummary.add_member(:component_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "componentName"))
    DeploymentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DeploymentSummary.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    DeploymentSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    DeploymentSummary.add_member(:id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "id"))
    DeploymentSummary.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    DeploymentSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    DeploymentSummary.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    DeploymentSummary.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    DeploymentSummary.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    DeploymentSummary.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "targetArn"))
    DeploymentSummary.add_member(:target_resource_created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "targetResourceCreatedAt"))
    DeploymentSummary.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: DeploymentTargetResourceType, required: true, location_name: "targetResourceType"))
    DeploymentSummary.struct_class = Types::DeploymentSummary

    DeploymentSummaryList.member = Shapes::ShapeRef.new(shape: DeploymentSummary)

    Environment.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "arn"))
    Environment.add_member(:codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "codebuildRoleArn"))
    Environment.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "componentRoleArn"))
    Environment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Environment.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    Environment.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    Environment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Environment.add_member(:environment_account_connection_id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: "environmentAccountConnectionId"))
    Environment.add_member(:environment_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "environmentAccountId"))
    Environment.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    Environment.add_member(:last_deployment_attempted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentAttemptedAt"))
    Environment.add_member(:last_deployment_succeeded_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentSucceededAt"))
    Environment.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    Environment.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    Environment.add_member(:proton_service_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "protonServiceRoleArn"))
    Environment.add_member(:provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "provisioning"))
    Environment.add_member(:provisioning_repository, Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: "provisioningRepository"))
    Environment.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    Environment.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    Environment.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    Environment.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    Environment.struct_class = Types::Environment

    EnvironmentAccountConnection.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionArn, required: true, location_name: "arn"))
    EnvironmentAccountConnection.add_member(:codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "codebuildRoleArn"))
    EnvironmentAccountConnection.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "componentRoleArn"))
    EnvironmentAccountConnection.add_member(:environment_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "environmentAccountId"))
    EnvironmentAccountConnection.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    EnvironmentAccountConnection.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, required: true, location_name: "id"))
    EnvironmentAccountConnection.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    EnvironmentAccountConnection.add_member(:management_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "managementAccountId"))
    EnvironmentAccountConnection.add_member(:requested_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "requestedAt"))
    EnvironmentAccountConnection.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    EnvironmentAccountConnection.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus, required: true, location_name: "status"))
    EnvironmentAccountConnection.struct_class = Types::EnvironmentAccountConnection

    EnvironmentAccountConnectionStatusList.member = Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus)

    EnvironmentAccountConnectionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionArn, required: true, location_name: "arn"))
    EnvironmentAccountConnectionSummary.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "componentRoleArn"))
    EnvironmentAccountConnectionSummary.add_member(:environment_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "environmentAccountId"))
    EnvironmentAccountConnectionSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    EnvironmentAccountConnectionSummary.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, required: true, location_name: "id"))
    EnvironmentAccountConnectionSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    EnvironmentAccountConnectionSummary.add_member(:management_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "managementAccountId"))
    EnvironmentAccountConnectionSummary.add_member(:requested_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "requestedAt"))
    EnvironmentAccountConnectionSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    EnvironmentAccountConnectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatus, required: true, location_name: "status"))
    EnvironmentAccountConnectionSummary.struct_class = Types::EnvironmentAccountConnectionSummary

    EnvironmentAccountConnectionSummaryList.member = Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionSummary)

    EnvironmentState.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    EnvironmentState.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    EnvironmentState.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    EnvironmentState.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    EnvironmentState.struct_class = Types::EnvironmentState

    EnvironmentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "arn"))
    EnvironmentSummary.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "componentRoleArn"))
    EnvironmentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EnvironmentSummary.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    EnvironmentSummary.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    EnvironmentSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentSummary.add_member(:environment_account_connection_id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: "environmentAccountConnectionId"))
    EnvironmentSummary.add_member(:environment_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "environmentAccountId"))
    EnvironmentSummary.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    EnvironmentSummary.add_member(:last_deployment_attempted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentAttemptedAt"))
    EnvironmentSummary.add_member(:last_deployment_succeeded_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentSucceededAt"))
    EnvironmentSummary.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    EnvironmentSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    EnvironmentSummary.add_member(:proton_service_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "protonServiceRoleArn"))
    EnvironmentSummary.add_member(:provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "provisioning"))
    EnvironmentSummary.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    EnvironmentSummary.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    EnvironmentSummary.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    EnvironmentSummary.struct_class = Types::EnvironmentSummary

    EnvironmentSummaryList.member = Shapes::ShapeRef.new(shape: EnvironmentSummary)

    EnvironmentTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentTemplateArn, required: true, location_name: "arn"))
    EnvironmentTemplate.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EnvironmentTemplate.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentTemplate.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    EnvironmentTemplate.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    EnvironmentTemplate.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    EnvironmentTemplate.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    EnvironmentTemplate.add_member(:provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "provisioning"))
    EnvironmentTemplate.add_member(:recommended_version, Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: "recommendedVersion"))
    EnvironmentTemplate.struct_class = Types::EnvironmentTemplate

    EnvironmentTemplateFilter.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    EnvironmentTemplateFilter.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    EnvironmentTemplateFilter.struct_class = Types::EnvironmentTemplateFilter

    EnvironmentTemplateFilterList.member = Shapes::ShapeRef.new(shape: EnvironmentTemplateFilter)

    EnvironmentTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentTemplateArn, required: true, location_name: "arn"))
    EnvironmentTemplateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EnvironmentTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentTemplateSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    EnvironmentTemplateSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    EnvironmentTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    EnvironmentTemplateSummary.add_member(:provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "provisioning"))
    EnvironmentTemplateSummary.add_member(:recommended_version, Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: "recommendedVersion"))
    EnvironmentTemplateSummary.struct_class = Types::EnvironmentTemplateSummary

    EnvironmentTemplateSummaryList.member = Shapes::ShapeRef.new(shape: EnvironmentTemplateSummary)

    EnvironmentTemplateVersion.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionArn, required: true, location_name: "arn"))
    EnvironmentTemplateVersion.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EnvironmentTemplateVersion.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentTemplateVersion.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    EnvironmentTemplateVersion.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    EnvironmentTemplateVersion.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    EnvironmentTemplateVersion.add_member(:recommended_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "recommendedMinorVersion"))
    EnvironmentTemplateVersion.add_member(:schema, Shapes::ShapeRef.new(shape: TemplateSchema, location_name: "schema"))
    EnvironmentTemplateVersion.add_member(:status, Shapes::ShapeRef.new(shape: TemplateVersionStatus, required: true, location_name: "status"))
    EnvironmentTemplateVersion.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    EnvironmentTemplateVersion.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    EnvironmentTemplateVersion.struct_class = Types::EnvironmentTemplateVersion

    EnvironmentTemplateVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionArn, required: true, location_name: "arn"))
    EnvironmentTemplateVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EnvironmentTemplateVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EnvironmentTemplateVersionSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    EnvironmentTemplateVersionSummary.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    EnvironmentTemplateVersionSummary.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    EnvironmentTemplateVersionSummary.add_member(:recommended_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "recommendedMinorVersion"))
    EnvironmentTemplateVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: TemplateVersionStatus, required: true, location_name: "status"))
    EnvironmentTemplateVersionSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    EnvironmentTemplateVersionSummary.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    EnvironmentTemplateVersionSummary.struct_class = Types::EnvironmentTemplateVersionSummary

    EnvironmentTemplateVersionSummaryList.member = Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionSummary)

    GetAccountSettingsInput.struct_class = Types::GetAccountSettingsInput

    GetAccountSettingsOutput.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
    GetAccountSettingsOutput.struct_class = Types::GetAccountSettingsOutput

    GetComponentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetComponentInput.struct_class = Types::GetComponentInput

    GetComponentOutput.add_member(:component, Shapes::ShapeRef.new(shape: Component, location_name: "component"))
    GetComponentOutput.struct_class = Types::GetComponentOutput

    GetDeploymentInput.add_member(:component_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "componentName"))
    GetDeploymentInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "environmentName"))
    GetDeploymentInput.add_member(:id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "id"))
    GetDeploymentInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    GetDeploymentInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    GetDeploymentInput.struct_class = Types::GetDeploymentInput

    GetDeploymentOutput.add_member(:deployment, Shapes::ShapeRef.new(shape: Deployment, location_name: "deployment"))
    GetDeploymentOutput.struct_class = Types::GetDeploymentOutput

    GetEnvironmentAccountConnectionInput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, required: true, location_name: "id"))
    GetEnvironmentAccountConnectionInput.struct_class = Types::GetEnvironmentAccountConnectionInput

    GetEnvironmentAccountConnectionOutput.add_member(:environment_account_connection, Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, required: true, location_name: "environmentAccountConnection"))
    GetEnvironmentAccountConnectionOutput.struct_class = Types::GetEnvironmentAccountConnectionOutput

    GetEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetEnvironmentInput.struct_class = Types::GetEnvironmentInput

    GetEnvironmentOutput.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, required: true, location_name: "environment"))
    GetEnvironmentOutput.struct_class = Types::GetEnvironmentOutput

    GetEnvironmentTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetEnvironmentTemplateInput.struct_class = Types::GetEnvironmentTemplateInput

    GetEnvironmentTemplateOutput.add_member(:environment_template, Shapes::ShapeRef.new(shape: EnvironmentTemplate, required: true, location_name: "environmentTemplate"))
    GetEnvironmentTemplateOutput.struct_class = Types::GetEnvironmentTemplateOutput

    GetEnvironmentTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    GetEnvironmentTemplateVersionInput.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    GetEnvironmentTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    GetEnvironmentTemplateVersionInput.struct_class = Types::GetEnvironmentTemplateVersionInput

    GetEnvironmentTemplateVersionOutput.add_member(:environment_template_version, Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, required: true, location_name: "environmentTemplateVersion"))
    GetEnvironmentTemplateVersionOutput.struct_class = Types::GetEnvironmentTemplateVersionOutput

    GetRepositoryInput.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "name"))
    GetRepositoryInput.add_member(:provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "provider"))
    GetRepositoryInput.struct_class = Types::GetRepositoryInput

    GetRepositoryOutput.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, required: true, location_name: "repository"))
    GetRepositoryOutput.struct_class = Types::GetRepositoryOutput

    GetRepositorySyncStatusInput.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    GetRepositorySyncStatusInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositorySyncStatusInput.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    GetRepositorySyncStatusInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncType, required: true, location_name: "syncType"))
    GetRepositorySyncStatusInput.struct_class = Types::GetRepositorySyncStatusInput

    GetRepositorySyncStatusOutput.add_member(:latest_sync, Shapes::ShapeRef.new(shape: RepositorySyncAttempt, location_name: "latestSync"))
    GetRepositorySyncStatusOutput.struct_class = Types::GetRepositorySyncStatusOutput

    GetResourcesSummaryInput.struct_class = Types::GetResourcesSummaryInput

    GetResourcesSummaryOutput.add_member(:counts, Shapes::ShapeRef.new(shape: CountsSummary, required: true, location_name: "counts"))
    GetResourcesSummaryOutput.struct_class = Types::GetResourcesSummaryOutput

    GetServiceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetServiceInput.struct_class = Types::GetServiceInput

    GetServiceInstanceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetServiceInstanceInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    GetServiceInstanceInput.struct_class = Types::GetServiceInstanceInput

    GetServiceInstanceOutput.add_member(:service_instance, Shapes::ShapeRef.new(shape: ServiceInstance, required: true, location_name: "serviceInstance"))
    GetServiceInstanceOutput.struct_class = Types::GetServiceInstanceOutput

    GetServiceInstanceSyncStatusInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceInstanceName"))
    GetServiceInstanceSyncStatusInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    GetServiceInstanceSyncStatusInput.struct_class = Types::GetServiceInstanceSyncStatusInput

    GetServiceInstanceSyncStatusOutput.add_member(:desired_state, Shapes::ShapeRef.new(shape: Revision, location_name: "desiredState"))
    GetServiceInstanceSyncStatusOutput.add_member(:latest_successful_sync, Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: "latestSuccessfulSync"))
    GetServiceInstanceSyncStatusOutput.add_member(:latest_sync, Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: "latestSync"))
    GetServiceInstanceSyncStatusOutput.struct_class = Types::GetServiceInstanceSyncStatusOutput

    GetServiceOutput.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    GetServiceOutput.struct_class = Types::GetServiceOutput

    GetServiceSyncBlockerSummaryInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    GetServiceSyncBlockerSummaryInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    GetServiceSyncBlockerSummaryInput.struct_class = Types::GetServiceSyncBlockerSummaryInput

    GetServiceSyncBlockerSummaryOutput.add_member(:service_sync_blocker_summary, Shapes::ShapeRef.new(shape: ServiceSyncBlockerSummary, location_name: "serviceSyncBlockerSummary"))
    GetServiceSyncBlockerSummaryOutput.struct_class = Types::GetServiceSyncBlockerSummaryOutput

    GetServiceSyncConfigInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    GetServiceSyncConfigInput.struct_class = Types::GetServiceSyncConfigInput

    GetServiceSyncConfigOutput.add_member(:service_sync_config, Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: "serviceSyncConfig"))
    GetServiceSyncConfigOutput.struct_class = Types::GetServiceSyncConfigOutput

    GetServiceTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetServiceTemplateInput.struct_class = Types::GetServiceTemplateInput

    GetServiceTemplateOutput.add_member(:service_template, Shapes::ShapeRef.new(shape: ServiceTemplate, required: true, location_name: "serviceTemplate"))
    GetServiceTemplateOutput.struct_class = Types::GetServiceTemplateOutput

    GetServiceTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    GetServiceTemplateVersionInput.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    GetServiceTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    GetServiceTemplateVersionInput.struct_class = Types::GetServiceTemplateVersionInput

    GetServiceTemplateVersionOutput.add_member(:service_template_version, Shapes::ShapeRef.new(shape: ServiceTemplateVersion, required: true, location_name: "serviceTemplateVersion"))
    GetServiceTemplateVersionOutput.struct_class = Types::GetServiceTemplateVersionOutput

    GetTemplateSyncConfigInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    GetTemplateSyncConfigInput.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "templateType"))
    GetTemplateSyncConfigInput.struct_class = Types::GetTemplateSyncConfigInput

    GetTemplateSyncConfigOutput.add_member(:template_sync_config, Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: "templateSyncConfig"))
    GetTemplateSyncConfigOutput.struct_class = Types::GetTemplateSyncConfigOutput

    GetTemplateSyncStatusInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    GetTemplateSyncStatusInput.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "templateType"))
    GetTemplateSyncStatusInput.add_member(:template_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateVersion"))
    GetTemplateSyncStatusInput.struct_class = Types::GetTemplateSyncStatusInput

    GetTemplateSyncStatusOutput.add_member(:desired_state, Shapes::ShapeRef.new(shape: Revision, location_name: "desiredState"))
    GetTemplateSyncStatusOutput.add_member(:latest_successful_sync, Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: "latestSuccessfulSync"))
    GetTemplateSyncStatusOutput.add_member(:latest_sync, Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: "latestSync"))
    GetTemplateSyncStatusOutput.struct_class = Types::GetTemplateSyncStatusOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LatestSyncBlockers.member = Shapes::ShapeRef.new(shape: SyncBlocker)

    ListComponentOutputsInput.add_member(:component_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "componentName"))
    ListComponentOutputsInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ListComponentOutputsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListComponentOutputsInput.struct_class = Types::ListComponentOutputsInput

    ListComponentOutputsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListComponentOutputsOutput.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputsList, required: true, location_name: "outputs"))
    ListComponentOutputsOutput.struct_class = Types::ListComponentOutputsOutput

    ListComponentProvisionedResourcesInput.add_member(:component_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "componentName"))
    ListComponentProvisionedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListComponentProvisionedResourcesInput.struct_class = Types::ListComponentProvisionedResourcesInput

    ListComponentProvisionedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListComponentProvisionedResourcesOutput.add_member(:provisioned_resources, Shapes::ShapeRef.new(shape: ProvisionedResourceList, required: true, location_name: "provisionedResources"))
    ListComponentProvisionedResourcesOutput.struct_class = Types::ListComponentProvisionedResourcesOutput

    ListComponentsInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "environmentName"))
    ListComponentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListComponentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentsInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    ListComponentsInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    ListComponentsInput.struct_class = Types::ListComponentsInput

    ListComponentsOutput.add_member(:components, Shapes::ShapeRef.new(shape: ComponentSummaryList, required: true, location_name: "components"))
    ListComponentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentsOutput.struct_class = Types::ListComponentsOutput

    ListDeploymentsInput.add_member(:component_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "componentName"))
    ListDeploymentsInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "environmentName"))
    ListDeploymentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListDeploymentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    ListDeploymentsInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    ListDeploymentsInput.struct_class = Types::ListDeploymentsInput

    ListDeploymentsOutput.add_member(:deployments, Shapes::ShapeRef.new(shape: DeploymentSummaryList, required: true, location_name: "deployments"))
    ListDeploymentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsOutput.struct_class = Types::ListDeploymentsOutput

    ListEnvironmentAccountConnectionsInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "environmentName"))
    ListEnvironmentAccountConnectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListEnvironmentAccountConnectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentAccountConnectionsInput.add_member(:requested_by, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionRequesterAccountType, required: true, location_name: "requestedBy"))
    ListEnvironmentAccountConnectionsInput.add_member(:statuses, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionStatusList, location_name: "statuses"))
    ListEnvironmentAccountConnectionsInput.struct_class = Types::ListEnvironmentAccountConnectionsInput

    ListEnvironmentAccountConnectionsOutput.add_member(:environment_account_connections, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionSummaryList, required: true, location_name: "environmentAccountConnections"))
    ListEnvironmentAccountConnectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentAccountConnectionsOutput.struct_class = Types::ListEnvironmentAccountConnectionsOutput

    ListEnvironmentOutputsInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ListEnvironmentOutputsInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    ListEnvironmentOutputsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListEnvironmentOutputsInput.struct_class = Types::ListEnvironmentOutputsInput

    ListEnvironmentOutputsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListEnvironmentOutputsOutput.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputsList, required: true, location_name: "outputs"))
    ListEnvironmentOutputsOutput.struct_class = Types::ListEnvironmentOutputsOutput

    ListEnvironmentProvisionedResourcesInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    ListEnvironmentProvisionedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListEnvironmentProvisionedResourcesInput.struct_class = Types::ListEnvironmentProvisionedResourcesInput

    ListEnvironmentProvisionedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListEnvironmentProvisionedResourcesOutput.add_member(:provisioned_resources, Shapes::ShapeRef.new(shape: ProvisionedResourceList, required: true, location_name: "provisionedResources"))
    ListEnvironmentProvisionedResourcesOutput.struct_class = Types::ListEnvironmentProvisionedResourcesOutput

    ListEnvironmentTemplateVersionsInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "majorVersion"))
    ListEnvironmentTemplateVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListEnvironmentTemplateVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentTemplateVersionsInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ListEnvironmentTemplateVersionsInput.struct_class = Types::ListEnvironmentTemplateVersionsInput

    ListEnvironmentTemplateVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentTemplateVersionsOutput.add_member(:template_versions, Shapes::ShapeRef.new(shape: EnvironmentTemplateVersionSummaryList, required: true, location_name: "templateVersions"))
    ListEnvironmentTemplateVersionsOutput.struct_class = Types::ListEnvironmentTemplateVersionsOutput

    ListEnvironmentTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListEnvironmentTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentTemplatesInput.struct_class = Types::ListEnvironmentTemplatesInput

    ListEnvironmentTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentTemplatesOutput.add_member(:templates, Shapes::ShapeRef.new(shape: EnvironmentTemplateSummaryList, required: true, location_name: "templates"))
    ListEnvironmentTemplatesOutput.struct_class = Types::ListEnvironmentTemplatesOutput

    ListEnvironmentsInput.add_member(:environment_templates, Shapes::ShapeRef.new(shape: EnvironmentTemplateFilterList, location_name: "environmentTemplates"))
    ListEnvironmentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListEnvironmentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentsInput.struct_class = Types::ListEnvironmentsInput

    ListEnvironmentsOutput.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentSummaryList, required: true, location_name: "environments"))
    ListEnvironmentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentsOutput.struct_class = Types::ListEnvironmentsOutput

    ListRepositoriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListRepositoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRepositoriesInput.struct_class = Types::ListRepositoriesInput

    ListRepositoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRepositoriesOutput.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositorySummaryList, required: true, location_name: "repositories"))
    ListRepositoriesOutput.struct_class = Types::ListRepositoriesOutput

    ListRepositorySyncDefinitionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListRepositorySyncDefinitionsInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    ListRepositorySyncDefinitionsInput.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    ListRepositorySyncDefinitionsInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncType, required: true, location_name: "syncType"))
    ListRepositorySyncDefinitionsInput.struct_class = Types::ListRepositorySyncDefinitionsInput

    ListRepositorySyncDefinitionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListRepositorySyncDefinitionsOutput.add_member(:sync_definitions, Shapes::ShapeRef.new(shape: RepositorySyncDefinitionList, required: true, location_name: "syncDefinitions"))
    ListRepositorySyncDefinitionsOutput.struct_class = Types::ListRepositorySyncDefinitionsOutput

    ListServiceInstanceOutputsInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ListServiceInstanceOutputsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServiceInstanceOutputsInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceInstanceName"))
    ListServiceInstanceOutputsInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    ListServiceInstanceOutputsInput.struct_class = Types::ListServiceInstanceOutputsInput

    ListServiceInstanceOutputsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServiceInstanceOutputsOutput.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputsList, required: true, location_name: "outputs"))
    ListServiceInstanceOutputsOutput.struct_class = Types::ListServiceInstanceOutputsOutput

    ListServiceInstanceProvisionedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServiceInstanceProvisionedResourcesInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceInstanceName"))
    ListServiceInstanceProvisionedResourcesInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    ListServiceInstanceProvisionedResourcesInput.struct_class = Types::ListServiceInstanceProvisionedResourcesInput

    ListServiceInstanceProvisionedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServiceInstanceProvisionedResourcesOutput.add_member(:provisioned_resources, Shapes::ShapeRef.new(shape: ProvisionedResourceList, required: true, location_name: "provisionedResources"))
    ListServiceInstanceProvisionedResourcesOutput.struct_class = Types::ListServiceInstanceProvisionedResourcesOutput

    ListServiceInstancesFilter.add_member(:key, Shapes::ShapeRef.new(shape: ListServiceInstancesFilterBy, location_name: "key"))
    ListServiceInstancesFilter.add_member(:value, Shapes::ShapeRef.new(shape: ListServiceInstancesFilterValue, location_name: "value"))
    ListServiceInstancesFilter.struct_class = Types::ListServiceInstancesFilter

    ListServiceInstancesFilterList.member = Shapes::ShapeRef.new(shape: ListServiceInstancesFilter)

    ListServiceInstancesInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListServiceInstancesFilterList, location_name: "filters"))
    ListServiceInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListServiceInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceInstancesInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceName"))
    ListServiceInstancesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListServiceInstancesSortBy, location_name: "sortBy"))
    ListServiceInstancesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListServiceInstancesInput.struct_class = Types::ListServiceInstancesInput

    ListServiceInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceInstancesOutput.add_member(:service_instances, Shapes::ShapeRef.new(shape: ServiceInstanceSummaryList, required: true, location_name: "serviceInstances"))
    ListServiceInstancesOutput.struct_class = Types::ListServiceInstancesOutput

    ListServicePipelineOutputsInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ListServicePipelineOutputsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServicePipelineOutputsInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    ListServicePipelineOutputsInput.struct_class = Types::ListServicePipelineOutputsInput

    ListServicePipelineOutputsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServicePipelineOutputsOutput.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputsList, required: true, location_name: "outputs"))
    ListServicePipelineOutputsOutput.struct_class = Types::ListServicePipelineOutputsOutput

    ListServicePipelineProvisionedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServicePipelineProvisionedResourcesInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    ListServicePipelineProvisionedResourcesInput.struct_class = Types::ListServicePipelineProvisionedResourcesInput

    ListServicePipelineProvisionedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: EmptyNextToken, location_name: "nextToken"))
    ListServicePipelineProvisionedResourcesOutput.add_member(:provisioned_resources, Shapes::ShapeRef.new(shape: ProvisionedResourceList, required: true, location_name: "provisionedResources"))
    ListServicePipelineProvisionedResourcesOutput.struct_class = Types::ListServicePipelineProvisionedResourcesOutput

    ListServiceTemplateVersionsInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "majorVersion"))
    ListServiceTemplateVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListServiceTemplateVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceTemplateVersionsInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ListServiceTemplateVersionsInput.struct_class = Types::ListServiceTemplateVersionsInput

    ListServiceTemplateVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceTemplateVersionsOutput.add_member(:template_versions, Shapes::ShapeRef.new(shape: ServiceTemplateVersionSummaryList, required: true, location_name: "templateVersions"))
    ListServiceTemplateVersionsOutput.struct_class = Types::ListServiceTemplateVersionsOutput

    ListServiceTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListServiceTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceTemplatesInput.struct_class = Types::ListServiceTemplatesInput

    ListServiceTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceTemplatesOutput.add_member(:templates, Shapes::ShapeRef.new(shape: ServiceTemplateSummaryList, required: true, location_name: "templates"))
    ListServiceTemplatesOutput.struct_class = Types::ListServiceTemplatesOutput

    ListServicesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServicesInput.struct_class = Types::ListServicesInput

    ListServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServicesOutput.add_member(:services, Shapes::ShapeRef.new(shape: ServiceSummaryList, required: true, location_name: "services"))
    ListServicesOutput.struct_class = Types::ListServicesOutput

    ListTagsForResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPageResults, location_name: "maxResults"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    NotifyResourceDeploymentStatusChangeInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    NotifyResourceDeploymentStatusChangeInput.add_member(:outputs, Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeInputOutputsList, location_name: "outputs"))
    NotifyResourceDeploymentStatusChangeInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    NotifyResourceDeploymentStatusChangeInput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceDeploymentStatus, location_name: "status"))
    NotifyResourceDeploymentStatusChangeInput.add_member(:status_message, Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeInputStatusMessageString, location_name: "statusMessage"))
    NotifyResourceDeploymentStatusChangeInput.struct_class = Types::NotifyResourceDeploymentStatusChangeInput

    NotifyResourceDeploymentStatusChangeInputOutputsList.member = Shapes::ShapeRef.new(shape: Output)

    NotifyResourceDeploymentStatusChangeOutput.struct_class = Types::NotifyResourceDeploymentStatusChangeOutput

    Output.add_member(:key, Shapes::ShapeRef.new(shape: OutputKey, location_name: "key"))
    Output.add_member(:value_string, Shapes::ShapeRef.new(shape: OutputValueString, location_name: "valueString"))
    Output.struct_class = Types::Output

    OutputsList.member = Shapes::ShapeRef.new(shape: Output)

    ProvisionedResource.add_member(:identifier, Shapes::ShapeRef.new(shape: ProvisionedResourceIdentifier, location_name: "identifier"))
    ProvisionedResource.add_member(:name, Shapes::ShapeRef.new(shape: ProvisionedResourceName, location_name: "name"))
    ProvisionedResource.add_member(:provisioning_engine, Shapes::ShapeRef.new(shape: ProvisionedResourceEngine, location_name: "provisioningEngine"))
    ProvisionedResource.struct_class = Types::ProvisionedResource

    ProvisionedResourceList.member = Shapes::ShapeRef.new(shape: ProvisionedResource)

    RejectEnvironmentAccountConnectionInput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, required: true, location_name: "id"))
    RejectEnvironmentAccountConnectionInput.struct_class = Types::RejectEnvironmentAccountConnectionInput

    RejectEnvironmentAccountConnectionOutput.add_member(:environment_account_connection, Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, required: true, location_name: "environmentAccountConnection"))
    RejectEnvironmentAccountConnectionOutput.struct_class = Types::RejectEnvironmentAccountConnectionOutput

    Repository.add_member(:arn, Shapes::ShapeRef.new(shape: RepositoryArn, required: true, location_name: "arn"))
    Repository.add_member(:connection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "connectionArn"))
    Repository.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    Repository.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "name"))
    Repository.add_member(:provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "provider"))
    Repository.struct_class = Types::Repository

    RepositoryBranch.add_member(:arn, Shapes::ShapeRef.new(shape: RepositoryArn, required: true, location_name: "arn"))
    RepositoryBranch.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    RepositoryBranch.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "name"))
    RepositoryBranch.add_member(:provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "provider"))
    RepositoryBranch.struct_class = Types::RepositoryBranch

    RepositoryBranchInput.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    RepositoryBranchInput.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "name"))
    RepositoryBranchInput.add_member(:provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "provider"))
    RepositoryBranchInput.struct_class = Types::RepositoryBranchInput

    RepositorySummary.add_member(:arn, Shapes::ShapeRef.new(shape: RepositoryArn, required: true, location_name: "arn"))
    RepositorySummary.add_member(:connection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "connectionArn"))
    RepositorySummary.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "name"))
    RepositorySummary.add_member(:provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "provider"))
    RepositorySummary.struct_class = Types::RepositorySummary

    RepositorySummaryList.member = Shapes::ShapeRef.new(shape: RepositorySummary)

    RepositorySyncAttempt.add_member(:events, Shapes::ShapeRef.new(shape: RepositorySyncEvents, required: true, location_name: "events"))
    RepositorySyncAttempt.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    RepositorySyncAttempt.add_member(:status, Shapes::ShapeRef.new(shape: RepositorySyncStatus, required: true, location_name: "status"))
    RepositorySyncAttempt.struct_class = Types::RepositorySyncAttempt

    RepositorySyncDefinition.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    RepositorySyncDefinition.add_member(:directory, Shapes::ShapeRef.new(shape: String, required: true, location_name: "directory"))
    RepositorySyncDefinition.add_member(:parent, Shapes::ShapeRef.new(shape: String, required: true, location_name: "parent"))
    RepositorySyncDefinition.add_member(:target, Shapes::ShapeRef.new(shape: String, required: true, location_name: "target"))
    RepositorySyncDefinition.struct_class = Types::RepositorySyncDefinition

    RepositorySyncDefinitionList.member = Shapes::ShapeRef.new(shape: RepositorySyncDefinition)

    RepositorySyncEvent.add_member(:event, Shapes::ShapeRef.new(shape: String, required: true, location_name: "event"))
    RepositorySyncEvent.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    RepositorySyncEvent.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "time"))
    RepositorySyncEvent.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    RepositorySyncEvent.struct_class = Types::RepositorySyncEvent

    RepositorySyncEvents.member = Shapes::ShapeRef.new(shape: RepositorySyncEvent)

    ResourceCountsSummary.add_member(:behind_major, Shapes::ShapeRef.new(shape: Integer, location_name: "behindMajor"))
    ResourceCountsSummary.add_member(:behind_minor, Shapes::ShapeRef.new(shape: Integer, location_name: "behindMinor"))
    ResourceCountsSummary.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, location_name: "failed"))
    ResourceCountsSummary.add_member(:total, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "total"))
    ResourceCountsSummary.add_member(:up_to_date, Shapes::ShapeRef.new(shape: Integer, location_name: "upToDate"))
    ResourceCountsSummary.struct_class = Types::ResourceCountsSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceSyncAttempt.add_member(:events, Shapes::ShapeRef.new(shape: ResourceSyncEvents, required: true, location_name: "events"))
    ResourceSyncAttempt.add_member(:initial_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "initialRevision"))
    ResourceSyncAttempt.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    ResourceSyncAttempt.add_member(:status, Shapes::ShapeRef.new(shape: ResourceSyncStatus, required: true, location_name: "status"))
    ResourceSyncAttempt.add_member(:target, Shapes::ShapeRef.new(shape: String, required: true, location_name: "target"))
    ResourceSyncAttempt.add_member(:target_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "targetRevision"))
    ResourceSyncAttempt.struct_class = Types::ResourceSyncAttempt

    ResourceSyncEvent.add_member(:event, Shapes::ShapeRef.new(shape: String, required: true, location_name: "event"))
    ResourceSyncEvent.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    ResourceSyncEvent.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "time"))
    ResourceSyncEvent.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    ResourceSyncEvent.struct_class = Types::ResourceSyncEvent

    ResourceSyncEvents.member = Shapes::ShapeRef.new(shape: ResourceSyncEvent)

    Revision.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    Revision.add_member(:directory, Shapes::ShapeRef.new(shape: String, required: true, location_name: "directory"))
    Revision.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    Revision.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    Revision.add_member(:sha, Shapes::ShapeRef.new(shape: SHA, required: true, location_name: "sha"))
    Revision.struct_class = Types::Revision

    S3ObjectSource.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "bucket"))
    S3ObjectSource.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "key"))
    S3ObjectSource.struct_class = Types::S3ObjectSource

    Service.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceArn, required: true, location_name: "arn"))
    Service.add_member(:branch_name, Shapes::ShapeRef.new(shape: GitBranchName, location_name: "branchName"))
    Service.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Service.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Service.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    Service.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    Service.add_member(:pipeline, Shapes::ShapeRef.new(shape: ServicePipeline, location_name: "pipeline"))
    Service.add_member(:repository_connection_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryConnectionArn"))
    Service.add_member(:repository_id, Shapes::ShapeRef.new(shape: RepositoryId, location_name: "repositoryId"))
    Service.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, required: true, location_name: "spec"))
    Service.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, required: true, location_name: "status"))
    Service.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    Service.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    Service.struct_class = Types::Service

    ServiceInstance.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceInstanceArn, required: true, location_name: "arn"))
    ServiceInstance.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServiceInstance.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    ServiceInstance.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    ServiceInstance.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    ServiceInstance.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    ServiceInstance.add_member(:last_client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "lastClientRequestToken"))
    ServiceInstance.add_member(:last_deployment_attempted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentAttemptedAt"))
    ServiceInstance.add_member(:last_deployment_succeeded_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentSucceededAt"))
    ServiceInstance.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    ServiceInstance.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ServiceInstance.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    ServiceInstance.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    ServiceInstance.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    ServiceInstance.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    ServiceInstance.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServiceInstance.struct_class = Types::ServiceInstance

    ServiceInstanceState.add_member(:last_successful_component_deployment_ids, Shapes::ShapeRef.new(shape: ComponentDeploymentIdList, location_name: "lastSuccessfulComponentDeploymentIds"))
    ServiceInstanceState.add_member(:last_successful_environment_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSuccessfulEnvironmentDeploymentId"))
    ServiceInstanceState.add_member(:last_successful_service_pipeline_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSuccessfulServicePipelineDeploymentId"))
    ServiceInstanceState.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, required: true, location_name: "spec"))
    ServiceInstanceState.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    ServiceInstanceState.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    ServiceInstanceState.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServiceInstanceState.struct_class = Types::ServiceInstanceState

    ServiceInstanceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceInstanceArn, required: true, location_name: "arn"))
    ServiceInstanceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServiceInstanceSummary.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    ServiceInstanceSummary.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    ServiceInstanceSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "environmentName"))
    ServiceInstanceSummary.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    ServiceInstanceSummary.add_member(:last_deployment_attempted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentAttemptedAt"))
    ServiceInstanceSummary.add_member(:last_deployment_succeeded_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentSucceededAt"))
    ServiceInstanceSummary.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    ServiceInstanceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ServiceInstanceSummary.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    ServiceInstanceSummary.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    ServiceInstanceSummary.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    ServiceInstanceSummary.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServiceInstanceSummary.struct_class = Types::ServiceInstanceSummary

    ServiceInstanceSummaryList.member = Shapes::ShapeRef.new(shape: ServiceInstanceSummary)

    ServicePipeline.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ServicePipeline.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServicePipeline.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, required: true, location_name: "deploymentStatus"))
    ServicePipeline.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "deploymentStatusMessage"))
    ServicePipeline.add_member(:last_attempted_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastAttemptedDeploymentId"))
    ServicePipeline.add_member(:last_deployment_attempted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentAttemptedAt"))
    ServicePipeline.add_member(:last_deployment_succeeded_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDeploymentSucceededAt"))
    ServicePipeline.add_member(:last_succeeded_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "lastSucceededDeploymentId"))
    ServicePipeline.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    ServicePipeline.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    ServicePipeline.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    ServicePipeline.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServicePipeline.struct_class = Types::ServicePipeline

    ServicePipelineState.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    ServicePipelineState.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMajorVersion"))
    ServicePipelineState.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "templateMinorVersion"))
    ServicePipelineState.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServicePipelineState.struct_class = Types::ServicePipelineState

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceArn, required: true, location_name: "arn"))
    ServiceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServiceSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ServiceSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ServiceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ServiceSummary.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, required: true, location_name: "status"))
    ServiceSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ServiceSummary.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServiceSummary.struct_class = Types::ServiceSummary

    ServiceSummaryList.member = Shapes::ShapeRef.new(shape: ServiceSummary)

    ServiceSyncBlockerSummary.add_member(:latest_blockers, Shapes::ShapeRef.new(shape: LatestSyncBlockers, location_name: "latestBlockers"))
    ServiceSyncBlockerSummary.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceInstanceName"))
    ServiceSyncBlockerSummary.add_member(:service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceName"))
    ServiceSyncBlockerSummary.struct_class = Types::ServiceSyncBlockerSummary

    ServiceSyncConfig.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    ServiceSyncConfig.add_member(:file_path, Shapes::ShapeRef.new(shape: OpsFilePath, required: true, location_name: "filePath"))
    ServiceSyncConfig.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    ServiceSyncConfig.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    ServiceSyncConfig.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    ServiceSyncConfig.struct_class = Types::ServiceSyncConfig

    ServiceTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceTemplateArn, required: true, location_name: "arn"))
    ServiceTemplate.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServiceTemplate.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ServiceTemplate.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    ServiceTemplate.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    ServiceTemplate.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ServiceTemplate.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ServiceTemplate.add_member(:pipeline_provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "pipelineProvisioning"))
    ServiceTemplate.add_member(:recommended_version, Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: "recommendedVersion"))
    ServiceTemplate.struct_class = Types::ServiceTemplate

    ServiceTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceTemplateArn, required: true, location_name: "arn"))
    ServiceTemplateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServiceTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ServiceTemplateSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    ServiceTemplateSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ServiceTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ServiceTemplateSummary.add_member(:pipeline_provisioning, Shapes::ShapeRef.new(shape: Provisioning, location_name: "pipelineProvisioning"))
    ServiceTemplateSummary.add_member(:recommended_version, Shapes::ShapeRef.new(shape: FullTemplateVersionNumber, location_name: "recommendedVersion"))
    ServiceTemplateSummary.struct_class = Types::ServiceTemplateSummary

    ServiceTemplateSummaryList.member = Shapes::ShapeRef.new(shape: ServiceTemplateSummary)

    ServiceTemplateSupportedComponentSourceInputList.member = Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceType)

    ServiceTemplateVersion.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceTemplateVersionArn, required: true, location_name: "arn"))
    ServiceTemplateVersion.add_member(:compatible_environment_templates, Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateList, required: true, location_name: "compatibleEnvironmentTemplates"))
    ServiceTemplateVersion.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServiceTemplateVersion.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ServiceTemplateVersion.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ServiceTemplateVersion.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    ServiceTemplateVersion.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    ServiceTemplateVersion.add_member(:recommended_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "recommendedMinorVersion"))
    ServiceTemplateVersion.add_member(:schema, Shapes::ShapeRef.new(shape: TemplateSchema, location_name: "schema"))
    ServiceTemplateVersion.add_member(:status, Shapes::ShapeRef.new(shape: TemplateVersionStatus, required: true, location_name: "status"))
    ServiceTemplateVersion.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ServiceTemplateVersion.add_member(:supported_component_sources, Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: "supportedComponentSources"))
    ServiceTemplateVersion.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServiceTemplateVersion.struct_class = Types::ServiceTemplateVersion

    ServiceTemplateVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceTemplateVersionArn, required: true, location_name: "arn"))
    ServiceTemplateVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ServiceTemplateVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ServiceTemplateVersionSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ServiceTemplateVersionSummary.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    ServiceTemplateVersionSummary.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    ServiceTemplateVersionSummary.add_member(:recommended_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "recommendedMinorVersion"))
    ServiceTemplateVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: TemplateVersionStatus, required: true, location_name: "status"))
    ServiceTemplateVersionSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ServiceTemplateVersionSummary.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    ServiceTemplateVersionSummary.struct_class = Types::ServiceTemplateVersionSummary

    ServiceTemplateVersionSummaryList.member = Shapes::ShapeRef.new(shape: ServiceTemplateVersionSummary)

    SyncBlocker.add_member(:contexts, Shapes::ShapeRef.new(shape: SyncBlockerContexts, location_name: "contexts"))
    SyncBlocker.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SyncBlocker.add_member(:created_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdReason"))
    SyncBlocker.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    SyncBlocker.add_member(:resolved_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "resolvedAt"))
    SyncBlocker.add_member(:resolved_reason, Shapes::ShapeRef.new(shape: String, location_name: "resolvedReason"))
    SyncBlocker.add_member(:status, Shapes::ShapeRef.new(shape: BlockerStatus, required: true, location_name: "status"))
    SyncBlocker.add_member(:type, Shapes::ShapeRef.new(shape: BlockerType, required: true, location_name: "type"))
    SyncBlocker.struct_class = Types::SyncBlocker

    SyncBlockerContext.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    SyncBlockerContext.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    SyncBlockerContext.struct_class = Types::SyncBlockerContext

    SyncBlockerContexts.member = Shapes::ShapeRef.new(shape: SyncBlockerContext)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TemplateSyncConfig.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    TemplateSyncConfig.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    TemplateSyncConfig.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    TemplateSyncConfig.add_member(:subdirectory, Shapes::ShapeRef.new(shape: Subdirectory, location_name: "subdirectory"))
    TemplateSyncConfig.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    TemplateSyncConfig.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "templateType"))
    TemplateSyncConfig.struct_class = Types::TemplateSyncConfig

    TemplateVersionSourceInput.add_member(:s3, Shapes::ShapeRef.new(shape: S3ObjectSource, location_name: "s3"))
    TemplateVersionSourceInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TemplateVersionSourceInput.add_member_subclass(:s3, Types::TemplateVersionSourceInput::S3)
    TemplateVersionSourceInput.add_member_subclass(:unknown, Types::TemplateVersionSourceInput::Unknown)
    TemplateVersionSourceInput.struct_class = Types::TemplateVersionSourceInput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateAccountSettingsInput.add_member(:delete_pipeline_provisioning_repository, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletePipelineProvisioningRepository"))
    UpdateAccountSettingsInput.add_member(:pipeline_codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: "pipelineCodebuildRoleArn"))
    UpdateAccountSettingsInput.add_member(:pipeline_provisioning_repository, Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: "pipelineProvisioningRepository"))
    UpdateAccountSettingsInput.add_member(:pipeline_service_role_arn, Shapes::ShapeRef.new(shape: RoleArnOrEmptyString, location_name: "pipelineServiceRoleArn"))
    UpdateAccountSettingsInput.struct_class = Types::UpdateAccountSettingsInput

    UpdateAccountSettingsOutput.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, required: true, location_name: "accountSettings"))
    UpdateAccountSettingsOutput.struct_class = Types::UpdateAccountSettingsOutput

    UpdateComponentInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateComponentInput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: ComponentDeploymentUpdateType, required: true, location_name: "deploymentType"))
    UpdateComponentInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateComponentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateComponentInput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: "serviceInstanceName"))
    UpdateComponentInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceNameOrEmpty, location_name: "serviceName"))
    UpdateComponentInput.add_member(:service_spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "serviceSpec"))
    UpdateComponentInput.add_member(:template_file, Shapes::ShapeRef.new(shape: TemplateFileContents, location_name: "templateFile"))
    UpdateComponentInput.struct_class = Types::UpdateComponentInput

    UpdateComponentOutput.add_member(:component, Shapes::ShapeRef.new(shape: Component, required: true, location_name: "component"))
    UpdateComponentOutput.struct_class = Types::UpdateComponentOutput

    UpdateEnvironmentAccountConnectionInput.add_member(:codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "codebuildRoleArn"))
    UpdateEnvironmentAccountConnectionInput.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "componentRoleArn"))
    UpdateEnvironmentAccountConnectionInput.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, required: true, location_name: "id"))
    UpdateEnvironmentAccountConnectionInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateEnvironmentAccountConnectionInput.struct_class = Types::UpdateEnvironmentAccountConnectionInput

    UpdateEnvironmentAccountConnectionOutput.add_member(:environment_account_connection, Shapes::ShapeRef.new(shape: EnvironmentAccountConnection, required: true, location_name: "environmentAccountConnection"))
    UpdateEnvironmentAccountConnectionOutput.struct_class = Types::UpdateEnvironmentAccountConnectionOutput

    UpdateEnvironmentInput.add_member(:codebuild_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "codebuildRoleArn"))
    UpdateEnvironmentInput.add_member(:component_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "componentRoleArn"))
    UpdateEnvironmentInput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentUpdateType, required: true, location_name: "deploymentType"))
    UpdateEnvironmentInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEnvironmentInput.add_member(:environment_account_connection_id, Shapes::ShapeRef.new(shape: EnvironmentAccountConnectionId, location_name: "environmentAccountConnectionId"))
    UpdateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateEnvironmentInput.add_member(:proton_service_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "protonServiceRoleArn"))
    UpdateEnvironmentInput.add_member(:provisioning_repository, Shapes::ShapeRef.new(shape: RepositoryBranchInput, location_name: "provisioningRepository"))
    UpdateEnvironmentInput.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    UpdateEnvironmentInput.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMajorVersion"))
    UpdateEnvironmentInput.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMinorVersion"))
    UpdateEnvironmentInput.struct_class = Types::UpdateEnvironmentInput

    UpdateEnvironmentOutput.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, required: true, location_name: "environment"))
    UpdateEnvironmentOutput.struct_class = Types::UpdateEnvironmentOutput

    UpdateEnvironmentTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEnvironmentTemplateInput.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    UpdateEnvironmentTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateEnvironmentTemplateInput.struct_class = Types::UpdateEnvironmentTemplateInput

    UpdateEnvironmentTemplateOutput.add_member(:environment_template, Shapes::ShapeRef.new(shape: EnvironmentTemplate, required: true, location_name: "environmentTemplate"))
    UpdateEnvironmentTemplateOutput.struct_class = Types::UpdateEnvironmentTemplateOutput

    UpdateEnvironmentTemplateVersionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEnvironmentTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    UpdateEnvironmentTemplateVersionInput.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    UpdateEnvironmentTemplateVersionInput.add_member(:status, Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: "status"))
    UpdateEnvironmentTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    UpdateEnvironmentTemplateVersionInput.struct_class = Types::UpdateEnvironmentTemplateVersionInput

    UpdateEnvironmentTemplateVersionOutput.add_member(:environment_template_version, Shapes::ShapeRef.new(shape: EnvironmentTemplateVersion, required: true, location_name: "environmentTemplateVersion"))
    UpdateEnvironmentTemplateVersionOutput.struct_class = Types::UpdateEnvironmentTemplateVersionOutput

    UpdateServiceInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateServiceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateServiceInput.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    UpdateServiceInput.struct_class = Types::UpdateServiceInput

    UpdateServiceInstanceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateServiceInstanceInput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentUpdateType, required: true, location_name: "deploymentType"))
    UpdateServiceInstanceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateServiceInstanceInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    UpdateServiceInstanceInput.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, location_name: "spec"))
    UpdateServiceInstanceInput.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMajorVersion"))
    UpdateServiceInstanceInput.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMinorVersion"))
    UpdateServiceInstanceInput.struct_class = Types::UpdateServiceInstanceInput

    UpdateServiceInstanceOutput.add_member(:service_instance, Shapes::ShapeRef.new(shape: ServiceInstance, required: true, location_name: "serviceInstance"))
    UpdateServiceInstanceOutput.struct_class = Types::UpdateServiceInstanceOutput

    UpdateServiceOutput.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    UpdateServiceOutput.struct_class = Types::UpdateServiceOutput

    UpdateServicePipelineInput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentUpdateType, required: true, location_name: "deploymentType"))
    UpdateServicePipelineInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    UpdateServicePipelineInput.add_member(:spec, Shapes::ShapeRef.new(shape: SpecContents, required: true, location_name: "spec"))
    UpdateServicePipelineInput.add_member(:template_major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMajorVersion"))
    UpdateServicePipelineInput.add_member(:template_minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, location_name: "templateMinorVersion"))
    UpdateServicePipelineInput.struct_class = Types::UpdateServicePipelineInput

    UpdateServicePipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: ServicePipeline, required: true, location_name: "pipeline"))
    UpdateServicePipelineOutput.struct_class = Types::UpdateServicePipelineOutput

    UpdateServiceSyncBlockerInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    UpdateServiceSyncBlockerInput.add_member(:resolved_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resolvedReason"))
    UpdateServiceSyncBlockerInput.struct_class = Types::UpdateServiceSyncBlockerInput

    UpdateServiceSyncBlockerOutput.add_member(:service_instance_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "serviceInstanceName"))
    UpdateServiceSyncBlockerOutput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    UpdateServiceSyncBlockerOutput.add_member(:service_sync_blocker, Shapes::ShapeRef.new(shape: SyncBlocker, required: true, location_name: "serviceSyncBlocker"))
    UpdateServiceSyncBlockerOutput.struct_class = Types::UpdateServiceSyncBlockerOutput

    UpdateServiceSyncConfigInput.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    UpdateServiceSyncConfigInput.add_member(:file_path, Shapes::ShapeRef.new(shape: OpsFilePath, required: true, location_name: "filePath"))
    UpdateServiceSyncConfigInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    UpdateServiceSyncConfigInput.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    UpdateServiceSyncConfigInput.add_member(:service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "serviceName"))
    UpdateServiceSyncConfigInput.struct_class = Types::UpdateServiceSyncConfigInput

    UpdateServiceSyncConfigOutput.add_member(:service_sync_config, Shapes::ShapeRef.new(shape: ServiceSyncConfig, location_name: "serviceSyncConfig"))
    UpdateServiceSyncConfigOutput.struct_class = Types::UpdateServiceSyncConfigOutput

    UpdateServiceTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateServiceTemplateInput.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    UpdateServiceTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateServiceTemplateInput.struct_class = Types::UpdateServiceTemplateInput

    UpdateServiceTemplateOutput.add_member(:service_template, Shapes::ShapeRef.new(shape: ServiceTemplate, required: true, location_name: "serviceTemplate"))
    UpdateServiceTemplateOutput.struct_class = Types::UpdateServiceTemplateOutput

    UpdateServiceTemplateVersionInput.add_member(:compatible_environment_templates, Shapes::ShapeRef.new(shape: CompatibleEnvironmentTemplateInputList, location_name: "compatibleEnvironmentTemplates"))
    UpdateServiceTemplateVersionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateServiceTemplateVersionInput.add_member(:major_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "majorVersion"))
    UpdateServiceTemplateVersionInput.add_member(:minor_version, Shapes::ShapeRef.new(shape: TemplateVersionPart, required: true, location_name: "minorVersion"))
    UpdateServiceTemplateVersionInput.add_member(:status, Shapes::ShapeRef.new(shape: TemplateVersionStatus, location_name: "status"))
    UpdateServiceTemplateVersionInput.add_member(:supported_component_sources, Shapes::ShapeRef.new(shape: ServiceTemplateSupportedComponentSourceInputList, location_name: "supportedComponentSources"))
    UpdateServiceTemplateVersionInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    UpdateServiceTemplateVersionInput.struct_class = Types::UpdateServiceTemplateVersionInput

    UpdateServiceTemplateVersionOutput.add_member(:service_template_version, Shapes::ShapeRef.new(shape: ServiceTemplateVersion, required: true, location_name: "serviceTemplateVersion"))
    UpdateServiceTemplateVersionOutput.struct_class = Types::UpdateServiceTemplateVersionOutput

    UpdateTemplateSyncConfigInput.add_member(:branch, Shapes::ShapeRef.new(shape: GitBranchName, required: true, location_name: "branch"))
    UpdateTemplateSyncConfigInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    UpdateTemplateSyncConfigInput.add_member(:repository_provider, Shapes::ShapeRef.new(shape: RepositoryProvider, required: true, location_name: "repositoryProvider"))
    UpdateTemplateSyncConfigInput.add_member(:subdirectory, Shapes::ShapeRef.new(shape: Subdirectory, location_name: "subdirectory"))
    UpdateTemplateSyncConfigInput.add_member(:template_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "templateName"))
    UpdateTemplateSyncConfigInput.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "templateType"))
    UpdateTemplateSyncConfigInput.struct_class = Types::UpdateTemplateSyncConfigInput

    UpdateTemplateSyncConfigOutput.add_member(:template_sync_config, Shapes::ShapeRef.new(shape: TemplateSyncConfig, location_name: "templateSyncConfig"))
    UpdateTemplateSyncConfigOutput.struct_class = Types::UpdateTemplateSyncConfigOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-20"

      api.metadata = {
        "apiVersion" => "2020-07-20",
        "endpointPrefix" => "proton",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "AWS Proton",
        "serviceId" => "Proton",
        "signatureVersion" => "v4",
        "signingName" => "proton",
        "targetPrefix" => "AwsProton20200720",
        "uid" => "proton-2020-07-20",
      }

      api.add_operation(:accept_environment_account_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptEnvironmentAccountConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptEnvironmentAccountConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: AcceptEnvironmentAccountConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_component_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelComponentDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelComponentDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: CancelComponentDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_environment_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelEnvironmentDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelEnvironmentDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: CancelEnvironmentDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_service_instance_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelServiceInstanceDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelServiceInstanceDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: CancelServiceInstanceDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_service_pipeline_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelServicePipelineDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelServicePipelineDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: CancelServicePipelineDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateComponentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateComponentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_environment_account_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentAccountConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentAccountConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentAccountConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_environment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_environment_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRepositoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_template_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplateSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTemplateSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteComponentInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteComponentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_environment_account_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentAccountConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentAccountConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentAccountConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_environment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_environment_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRepositoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_template_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTemplateSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTemplateSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTemplateSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComponentInput)
        o.output = Shapes::ShapeRef.new(shape: GetComponentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_environment_account_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironmentAccountConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentAccountConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentAccountConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_environment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironmentTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_environment_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironmentTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_repository_sync_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositorySyncStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositorySyncStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resources_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcesSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcesSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcesSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_instance_sync_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceInstanceSyncStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceInstanceSyncStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceInstanceSyncStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_sync_blocker_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceSyncBlockerSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceSyncBlockerSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceSyncBlockerSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_template_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplateSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_template_sync_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplateSyncStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateSyncStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateSyncStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_component_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponentOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComponentOutputsInput)
        o.output = Shapes::ShapeRef.new(shape: ListComponentOutputsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_component_provisioned_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponentProvisionedResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComponentProvisionedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListComponentProvisionedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComponentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListComponentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_account_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentAccountConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentAccountConnectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentAccountConnectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentOutputsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentOutputsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_provisioned_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentProvisionedResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentProvisionedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentProvisionedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_template_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentTemplateVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentTemplateVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentTemplateVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRepositoriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListRepositoriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repository_sync_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositorySyncDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_instance_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceInstanceOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceInstanceOutputsInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceInstanceOutputsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_instance_provisioned_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceInstanceProvisionedResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceInstanceProvisionedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceInstanceProvisionedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_pipeline_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServicePipelineOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicePipelineOutputsInput)
        o.output = Shapes::ShapeRef.new(shape: ListServicePipelineOutputsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_pipeline_provisioned_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServicePipelineProvisionedResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicePipelineProvisionedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServicePipelineProvisionedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_template_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceTemplateVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceTemplateVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceTemplateVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:notify_resource_deployment_status_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyResourceDeploymentStatusChange"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeInput)
        o.output = Shapes::ShapeRef.new(shape: NotifyResourceDeploymentStatusChangeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:reject_environment_account_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectEnvironmentAccountConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectEnvironmentAccountConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: RejectEnvironmentAccountConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateComponentInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateComponentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_environment_account_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironmentAccountConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentAccountConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentAccountConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_environment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironmentTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_environment_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironmentTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServicePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServicePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServicePipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_sync_blocker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceSyncBlocker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceSyncBlockerInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceSyncBlockerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_template_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceTemplateVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceTemplateVersionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceTemplateVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_template_sync_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplateSyncConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateSyncConfigInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTemplateSyncConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
