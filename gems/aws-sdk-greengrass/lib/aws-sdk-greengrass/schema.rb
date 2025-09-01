# frozen_string_literal: true

# This is generated code!

module Aws::Greengrass
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AssociateRoleToGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#AssociateRoleToGroupRequest', name: 'AssociateRoleToGroupRequest')
    AssociateRoleToGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#AssociateRoleToGroupResponse', name: 'AssociateRoleToGroupResponse')
    AssociateServiceRoleToAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#AssociateServiceRoleToAccountRequest', name: 'AssociateServiceRoleToAccountRequest')
    AssociateServiceRoleToAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#AssociateServiceRoleToAccountResponse', name: 'AssociateServiceRoleToAccountResponse')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BulkDeployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#BulkDeployment', name: 'BulkDeployment')
    BulkDeploymentMetrics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#BulkDeploymentMetrics', name: 'BulkDeploymentMetrics')
    BulkDeploymentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#BulkDeploymentResult', name: 'BulkDeploymentResult')
    BulkDeploymentResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#BulkDeploymentResults', name: 'BulkDeploymentResults')
    BulkDeploymentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#BulkDeploymentStatus', name: 'BulkDeploymentStatus')
    BulkDeployments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#BulkDeployments', name: 'BulkDeployments')
    ConfigurationSyncStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#ConfigurationSyncStatus', name: 'ConfigurationSyncStatus')
    ConnectivityInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ConnectivityInfo', name: 'ConnectivityInfo')
    Connector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Connector', name: 'Connector')
    ConnectorDefinitionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ConnectorDefinitionVersion', name: 'ConnectorDefinitionVersion')
    Core = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Core', name: 'Core')
    CoreDefinitionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CoreDefinitionVersion', name: 'CoreDefinitionVersion')
    CreateConnectorDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateConnectorDefinitionRequest', name: 'CreateConnectorDefinitionRequest')
    CreateConnectorDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateConnectorDefinitionResponse', name: 'CreateConnectorDefinitionResponse')
    CreateConnectorDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateConnectorDefinitionVersionRequest', name: 'CreateConnectorDefinitionVersionRequest')
    CreateConnectorDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateConnectorDefinitionVersionResponse', name: 'CreateConnectorDefinitionVersionResponse')
    CreateCoreDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateCoreDefinitionRequest', name: 'CreateCoreDefinitionRequest')
    CreateCoreDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateCoreDefinitionResponse', name: 'CreateCoreDefinitionResponse')
    CreateCoreDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateCoreDefinitionVersionRequest', name: 'CreateCoreDefinitionVersionRequest')
    CreateCoreDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateCoreDefinitionVersionResponse', name: 'CreateCoreDefinitionVersionResponse')
    CreateDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateDeploymentRequest', name: 'CreateDeploymentRequest')
    CreateDeploymentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateDeploymentResponse', name: 'CreateDeploymentResponse')
    CreateDeviceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateDeviceDefinitionRequest', name: 'CreateDeviceDefinitionRequest')
    CreateDeviceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateDeviceDefinitionResponse', name: 'CreateDeviceDefinitionResponse')
    CreateDeviceDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateDeviceDefinitionVersionRequest', name: 'CreateDeviceDefinitionVersionRequest')
    CreateDeviceDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateDeviceDefinitionVersionResponse', name: 'CreateDeviceDefinitionVersionResponse')
    CreateFunctionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateFunctionDefinitionRequest', name: 'CreateFunctionDefinitionRequest')
    CreateFunctionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateFunctionDefinitionResponse', name: 'CreateFunctionDefinitionResponse')
    CreateFunctionDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateFunctionDefinitionVersionRequest', name: 'CreateFunctionDefinitionVersionRequest')
    CreateFunctionDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateFunctionDefinitionVersionResponse', name: 'CreateFunctionDefinitionVersionResponse')
    CreateGroupCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateGroupCertificateAuthorityRequest', name: 'CreateGroupCertificateAuthorityRequest')
    CreateGroupCertificateAuthorityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateGroupCertificateAuthorityResponse', name: 'CreateGroupCertificateAuthorityResponse')
    CreateGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateGroupResponse', name: 'CreateGroupResponse')
    CreateGroupVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateGroupVersionRequest', name: 'CreateGroupVersionRequest')
    CreateGroupVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateGroupVersionResponse', name: 'CreateGroupVersionResponse')
    CreateLoggerDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateLoggerDefinitionRequest', name: 'CreateLoggerDefinitionRequest')
    CreateLoggerDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateLoggerDefinitionResponse', name: 'CreateLoggerDefinitionResponse')
    CreateLoggerDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateLoggerDefinitionVersionRequest', name: 'CreateLoggerDefinitionVersionRequest')
    CreateLoggerDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateLoggerDefinitionVersionResponse', name: 'CreateLoggerDefinitionVersionResponse')
    CreateResourceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateResourceDefinitionRequest', name: 'CreateResourceDefinitionRequest')
    CreateResourceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateResourceDefinitionResponse', name: 'CreateResourceDefinitionResponse')
    CreateResourceDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateResourceDefinitionVersionRequest', name: 'CreateResourceDefinitionVersionRequest')
    CreateResourceDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateResourceDefinitionVersionResponse', name: 'CreateResourceDefinitionVersionResponse')
    CreateSoftwareUpdateJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateSoftwareUpdateJobRequest', name: 'CreateSoftwareUpdateJobRequest')
    CreateSoftwareUpdateJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateSoftwareUpdateJobResponse', name: 'CreateSoftwareUpdateJobResponse')
    CreateSubscriptionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateSubscriptionDefinitionRequest', name: 'CreateSubscriptionDefinitionRequest')
    CreateSubscriptionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateSubscriptionDefinitionResponse', name: 'CreateSubscriptionDefinitionResponse')
    CreateSubscriptionDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateSubscriptionDefinitionVersionRequest', name: 'CreateSubscriptionDefinitionVersionRequest')
    CreateSubscriptionDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#CreateSubscriptionDefinitionVersionResponse', name: 'CreateSubscriptionDefinitionVersionResponse')
    DefinitionInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DefinitionInformation', name: 'DefinitionInformation')
    DeleteConnectorDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteConnectorDefinitionRequest', name: 'DeleteConnectorDefinitionRequest')
    DeleteConnectorDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteConnectorDefinitionResponse', name: 'DeleteConnectorDefinitionResponse')
    DeleteCoreDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteCoreDefinitionRequest', name: 'DeleteCoreDefinitionRequest')
    DeleteCoreDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteCoreDefinitionResponse', name: 'DeleteCoreDefinitionResponse')
    DeleteDeviceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteDeviceDefinitionRequest', name: 'DeleteDeviceDefinitionRequest')
    DeleteDeviceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteDeviceDefinitionResponse', name: 'DeleteDeviceDefinitionResponse')
    DeleteFunctionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteFunctionDefinitionRequest', name: 'DeleteFunctionDefinitionRequest')
    DeleteFunctionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteFunctionDefinitionResponse', name: 'DeleteFunctionDefinitionResponse')
    DeleteGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteGroupResponse', name: 'DeleteGroupResponse')
    DeleteLoggerDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteLoggerDefinitionRequest', name: 'DeleteLoggerDefinitionRequest')
    DeleteLoggerDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteLoggerDefinitionResponse', name: 'DeleteLoggerDefinitionResponse')
    DeleteResourceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteResourceDefinitionRequest', name: 'DeleteResourceDefinitionRequest')
    DeleteResourceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteResourceDefinitionResponse', name: 'DeleteResourceDefinitionResponse')
    DeleteSubscriptionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteSubscriptionDefinitionRequest', name: 'DeleteSubscriptionDefinitionRequest')
    DeleteSubscriptionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeleteSubscriptionDefinitionResponse', name: 'DeleteSubscriptionDefinitionResponse')
    Deployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Deployment', name: 'Deployment')
    DeploymentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#DeploymentType', name: 'DeploymentType')
    Deployments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#Deployments', name: 'Deployments')
    Device = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Device', name: 'Device')
    DeviceDefinitionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DeviceDefinitionVersion', name: 'DeviceDefinitionVersion')
    DisassociateRoleFromGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DisassociateRoleFromGroupRequest', name: 'DisassociateRoleFromGroupRequest')
    DisassociateRoleFromGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DisassociateRoleFromGroupResponse', name: 'DisassociateRoleFromGroupResponse')
    DisassociateServiceRoleFromAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DisassociateServiceRoleFromAccountRequest', name: 'DisassociateServiceRoleFromAccountRequest')
    DisassociateServiceRoleFromAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#DisassociateServiceRoleFromAccountResponse', name: 'DisassociateServiceRoleFromAccountResponse')
    EncodingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#EncodingType', name: 'EncodingType')
    ErrorDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ErrorDetail', name: 'ErrorDetail')
    ErrorDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#ErrorDetails', name: 'ErrorDetails')
    Function = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Function', name: 'Function')
    FunctionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#FunctionConfiguration', name: 'FunctionConfiguration')
    FunctionConfigurationEnvironment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#FunctionConfigurationEnvironment', name: 'FunctionConfigurationEnvironment')
    FunctionDefaultConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#FunctionDefaultConfig', name: 'FunctionDefaultConfig')
    FunctionDefaultExecutionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#FunctionDefaultExecutionConfig', name: 'FunctionDefaultExecutionConfig')
    FunctionDefinitionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#FunctionDefinitionVersion', name: 'FunctionDefinitionVersion')
    FunctionExecutionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#FunctionExecutionConfig', name: 'FunctionExecutionConfig')
    FunctionIsolationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#FunctionIsolationMode', name: 'FunctionIsolationMode')
    FunctionRunAsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#FunctionRunAsConfig', name: 'FunctionRunAsConfig')
    GetAssociatedRoleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetAssociatedRoleRequest', name: 'GetAssociatedRoleRequest')
    GetAssociatedRoleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetAssociatedRoleResponse', name: 'GetAssociatedRoleResponse')
    GetBulkDeploymentStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetBulkDeploymentStatusRequest', name: 'GetBulkDeploymentStatusRequest')
    GetBulkDeploymentStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetBulkDeploymentStatusResponse', name: 'GetBulkDeploymentStatusResponse')
    GetConnectivityInfoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetConnectivityInfoRequest', name: 'GetConnectivityInfoRequest')
    GetConnectivityInfoResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetConnectivityInfoResponse', name: 'GetConnectivityInfoResponse')
    GetConnectorDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetConnectorDefinitionRequest', name: 'GetConnectorDefinitionRequest')
    GetConnectorDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetConnectorDefinitionResponse', name: 'GetConnectorDefinitionResponse')
    GetConnectorDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetConnectorDefinitionVersionRequest', name: 'GetConnectorDefinitionVersionRequest')
    GetConnectorDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetConnectorDefinitionVersionResponse', name: 'GetConnectorDefinitionVersionResponse')
    GetCoreDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetCoreDefinitionRequest', name: 'GetCoreDefinitionRequest')
    GetCoreDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetCoreDefinitionResponse', name: 'GetCoreDefinitionResponse')
    GetCoreDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetCoreDefinitionVersionRequest', name: 'GetCoreDefinitionVersionRequest')
    GetCoreDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetCoreDefinitionVersionResponse', name: 'GetCoreDefinitionVersionResponse')
    GetDeploymentStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetDeploymentStatusRequest', name: 'GetDeploymentStatusRequest')
    GetDeploymentStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetDeploymentStatusResponse', name: 'GetDeploymentStatusResponse')
    GetDeviceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetDeviceDefinitionRequest', name: 'GetDeviceDefinitionRequest')
    GetDeviceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetDeviceDefinitionResponse', name: 'GetDeviceDefinitionResponse')
    GetDeviceDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetDeviceDefinitionVersionRequest', name: 'GetDeviceDefinitionVersionRequest')
    GetDeviceDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetDeviceDefinitionVersionResponse', name: 'GetDeviceDefinitionVersionResponse')
    GetFunctionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetFunctionDefinitionRequest', name: 'GetFunctionDefinitionRequest')
    GetFunctionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetFunctionDefinitionResponse', name: 'GetFunctionDefinitionResponse')
    GetFunctionDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetFunctionDefinitionVersionRequest', name: 'GetFunctionDefinitionVersionRequest')
    GetFunctionDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetFunctionDefinitionVersionResponse', name: 'GetFunctionDefinitionVersionResponse')
    GetGroupCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupCertificateAuthorityRequest', name: 'GetGroupCertificateAuthorityRequest')
    GetGroupCertificateAuthorityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupCertificateAuthorityResponse', name: 'GetGroupCertificateAuthorityResponse')
    GetGroupCertificateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupCertificateConfigurationRequest', name: 'GetGroupCertificateConfigurationRequest')
    GetGroupCertificateConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupCertificateConfigurationResponse', name: 'GetGroupCertificateConfigurationResponse')
    GetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupRequest', name: 'GetGroupRequest')
    GetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupResponse', name: 'GetGroupResponse')
    GetGroupVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupVersionRequest', name: 'GetGroupVersionRequest')
    GetGroupVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetGroupVersionResponse', name: 'GetGroupVersionResponse')
    GetLoggerDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetLoggerDefinitionRequest', name: 'GetLoggerDefinitionRequest')
    GetLoggerDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetLoggerDefinitionResponse', name: 'GetLoggerDefinitionResponse')
    GetLoggerDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetLoggerDefinitionVersionRequest', name: 'GetLoggerDefinitionVersionRequest')
    GetLoggerDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetLoggerDefinitionVersionResponse', name: 'GetLoggerDefinitionVersionResponse')
    GetResourceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetResourceDefinitionRequest', name: 'GetResourceDefinitionRequest')
    GetResourceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetResourceDefinitionResponse', name: 'GetResourceDefinitionResponse')
    GetResourceDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetResourceDefinitionVersionRequest', name: 'GetResourceDefinitionVersionRequest')
    GetResourceDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetResourceDefinitionVersionResponse', name: 'GetResourceDefinitionVersionResponse')
    GetServiceRoleForAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetServiceRoleForAccountRequest', name: 'GetServiceRoleForAccountRequest')
    GetServiceRoleForAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetServiceRoleForAccountResponse', name: 'GetServiceRoleForAccountResponse')
    GetSubscriptionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetSubscriptionDefinitionRequest', name: 'GetSubscriptionDefinitionRequest')
    GetSubscriptionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetSubscriptionDefinitionResponse', name: 'GetSubscriptionDefinitionResponse')
    GetSubscriptionDefinitionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetSubscriptionDefinitionVersionRequest', name: 'GetSubscriptionDefinitionVersionRequest')
    GetSubscriptionDefinitionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetSubscriptionDefinitionVersionResponse', name: 'GetSubscriptionDefinitionVersionResponse')
    GetThingRuntimeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetThingRuntimeConfigurationRequest', name: 'GetThingRuntimeConfigurationRequest')
    GetThingRuntimeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GetThingRuntimeConfigurationResponse', name: 'GetThingRuntimeConfigurationResponse')
    GroupCertificateAuthorityProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GroupCertificateAuthorityProperties', name: 'GroupCertificateAuthorityProperties')
    GroupInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GroupInformation', name: 'GroupInformation')
    GroupOwnerSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GroupOwnerSetting', name: 'GroupOwnerSetting')
    GroupVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#GroupVersion', name: 'GroupVersion')
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListBulkDeploymentDetailedReportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListBulkDeploymentDetailedReportsRequest', name: 'ListBulkDeploymentDetailedReportsRequest')
    ListBulkDeploymentDetailedReportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListBulkDeploymentDetailedReportsResponse', name: 'ListBulkDeploymentDetailedReportsResponse')
    ListBulkDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListBulkDeploymentsRequest', name: 'ListBulkDeploymentsRequest')
    ListBulkDeploymentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListBulkDeploymentsResponse', name: 'ListBulkDeploymentsResponse')
    ListConnectorDefinitionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListConnectorDefinitionVersionsRequest', name: 'ListConnectorDefinitionVersionsRequest')
    ListConnectorDefinitionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListConnectorDefinitionVersionsResponse', name: 'ListConnectorDefinitionVersionsResponse')
    ListConnectorDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListConnectorDefinitionsRequest', name: 'ListConnectorDefinitionsRequest')
    ListConnectorDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListConnectorDefinitionsResponse', name: 'ListConnectorDefinitionsResponse')
    ListCoreDefinitionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListCoreDefinitionVersionsRequest', name: 'ListCoreDefinitionVersionsRequest')
    ListCoreDefinitionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListCoreDefinitionVersionsResponse', name: 'ListCoreDefinitionVersionsResponse')
    ListCoreDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListCoreDefinitionsRequest', name: 'ListCoreDefinitionsRequest')
    ListCoreDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListCoreDefinitionsResponse', name: 'ListCoreDefinitionsResponse')
    ListDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListDeploymentsRequest', name: 'ListDeploymentsRequest')
    ListDeploymentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListDeploymentsResponse', name: 'ListDeploymentsResponse')
    ListDeviceDefinitionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListDeviceDefinitionVersionsRequest', name: 'ListDeviceDefinitionVersionsRequest')
    ListDeviceDefinitionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListDeviceDefinitionVersionsResponse', name: 'ListDeviceDefinitionVersionsResponse')
    ListDeviceDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListDeviceDefinitionsRequest', name: 'ListDeviceDefinitionsRequest')
    ListDeviceDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListDeviceDefinitionsResponse', name: 'ListDeviceDefinitionsResponse')
    ListFunctionDefinitionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListFunctionDefinitionVersionsRequest', name: 'ListFunctionDefinitionVersionsRequest')
    ListFunctionDefinitionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListFunctionDefinitionVersionsResponse', name: 'ListFunctionDefinitionVersionsResponse')
    ListFunctionDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListFunctionDefinitionsRequest', name: 'ListFunctionDefinitionsRequest')
    ListFunctionDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListFunctionDefinitionsResponse', name: 'ListFunctionDefinitionsResponse')
    ListGroupCertificateAuthoritiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListGroupCertificateAuthoritiesRequest', name: 'ListGroupCertificateAuthoritiesRequest')
    ListGroupCertificateAuthoritiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListGroupCertificateAuthoritiesResponse', name: 'ListGroupCertificateAuthoritiesResponse')
    ListGroupVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListGroupVersionsRequest', name: 'ListGroupVersionsRequest')
    ListGroupVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListGroupVersionsResponse', name: 'ListGroupVersionsResponse')
    ListGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListGroupsRequest', name: 'ListGroupsRequest')
    ListGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListGroupsResponse', name: 'ListGroupsResponse')
    ListLoggerDefinitionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListLoggerDefinitionVersionsRequest', name: 'ListLoggerDefinitionVersionsRequest')
    ListLoggerDefinitionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListLoggerDefinitionVersionsResponse', name: 'ListLoggerDefinitionVersionsResponse')
    ListLoggerDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListLoggerDefinitionsRequest', name: 'ListLoggerDefinitionsRequest')
    ListLoggerDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListLoggerDefinitionsResponse', name: 'ListLoggerDefinitionsResponse')
    ListResourceDefinitionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListResourceDefinitionVersionsRequest', name: 'ListResourceDefinitionVersionsRequest')
    ListResourceDefinitionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListResourceDefinitionVersionsResponse', name: 'ListResourceDefinitionVersionsResponse')
    ListResourceDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListResourceDefinitionsRequest', name: 'ListResourceDefinitionsRequest')
    ListResourceDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListResourceDefinitionsResponse', name: 'ListResourceDefinitionsResponse')
    ListSubscriptionDefinitionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListSubscriptionDefinitionVersionsRequest', name: 'ListSubscriptionDefinitionVersionsRequest')
    ListSubscriptionDefinitionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListSubscriptionDefinitionVersionsResponse', name: 'ListSubscriptionDefinitionVersionsResponse')
    ListSubscriptionDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListSubscriptionDefinitionsRequest', name: 'ListSubscriptionDefinitionsRequest')
    ListSubscriptionDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListSubscriptionDefinitionsResponse', name: 'ListSubscriptionDefinitionsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LocalDeviceResourceData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#LocalDeviceResourceData', name: 'LocalDeviceResourceData')
    LocalVolumeResourceData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#LocalVolumeResourceData', name: 'LocalVolumeResourceData')
    Logger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Logger', name: 'Logger')
    LoggerComponent = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#LoggerComponent', name: 'LoggerComponent')
    LoggerDefinitionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#LoggerDefinitionVersion', name: 'LoggerDefinitionVersion')
    LoggerLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#LoggerLevel', name: 'LoggerLevel')
    LoggerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#LoggerType', name: 'LoggerType')
    Permission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#Permission', name: 'Permission')
    ResetDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ResetDeploymentsRequest', name: 'ResetDeploymentsRequest')
    ResetDeploymentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ResetDeploymentsResponse', name: 'ResetDeploymentsResponse')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Resource', name: 'Resource')
    ResourceAccessPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ResourceAccessPolicy', name: 'ResourceAccessPolicy')
    ResourceDataContainer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ResourceDataContainer', name: 'ResourceDataContainer')
    ResourceDefinitionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ResourceDefinitionVersion', name: 'ResourceDefinitionVersion')
    ResourceDownloadOwnerSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#ResourceDownloadOwnerSetting', name: 'ResourceDownloadOwnerSetting')
    RuntimeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#RuntimeConfiguration', name: 'RuntimeConfiguration')
    S3MachineLearningModelResourceData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#S3MachineLearningModelResourceData', name: 'S3MachineLearningModelResourceData')
    S3UrlSignerRole = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrass#S3UrlSignerRole', name: 'S3UrlSignerRole')
    SageMakerMachineLearningModelResourceData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#SageMakerMachineLearningModelResourceData', name: 'SageMakerMachineLearningModelResourceData')
    SecretsManagerSecretResourceData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#SecretsManagerSecretResourceData', name: 'SecretsManagerSecretResourceData')
    SoftwareToUpdate = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#SoftwareToUpdate', name: 'SoftwareToUpdate')
    StartBulkDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#StartBulkDeploymentRequest', name: 'StartBulkDeploymentRequest')
    StartBulkDeploymentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#StartBulkDeploymentResponse', name: 'StartBulkDeploymentResponse')
    StopBulkDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#StopBulkDeploymentRequest', name: 'StopBulkDeploymentRequest')
    StopBulkDeploymentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#StopBulkDeploymentResponse', name: 'StopBulkDeploymentResponse')
    Subscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#Subscription', name: 'Subscription')
    SubscriptionDefinitionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#SubscriptionDefinitionVersion', name: 'SubscriptionDefinitionVersion')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#TagResourceRequest', name: 'TagResourceRequest')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrass#Tags', name: 'Tags')
    Telemetry = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#Telemetry', name: 'Telemetry')
    TelemetryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#TelemetryConfiguration', name: 'TelemetryConfiguration')
    TelemetryConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#TelemetryConfigurationUpdate', name: 'TelemetryConfigurationUpdate')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAgentLogLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#UpdateAgentLogLevel', name: 'UpdateAgentLogLevel')
    UpdateConnectivityInfoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateConnectivityInfoRequest', name: 'UpdateConnectivityInfoRequest')
    UpdateConnectivityInfoResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateConnectivityInfoResponse', name: 'UpdateConnectivityInfoResponse')
    UpdateConnectorDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateConnectorDefinitionRequest', name: 'UpdateConnectorDefinitionRequest')
    UpdateConnectorDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateConnectorDefinitionResponse', name: 'UpdateConnectorDefinitionResponse')
    UpdateCoreDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateCoreDefinitionRequest', name: 'UpdateCoreDefinitionRequest')
    UpdateCoreDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateCoreDefinitionResponse', name: 'UpdateCoreDefinitionResponse')
    UpdateDeviceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateDeviceDefinitionRequest', name: 'UpdateDeviceDefinitionRequest')
    UpdateDeviceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateDeviceDefinitionResponse', name: 'UpdateDeviceDefinitionResponse')
    UpdateFunctionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateFunctionDefinitionRequest', name: 'UpdateFunctionDefinitionRequest')
    UpdateFunctionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateFunctionDefinitionResponse', name: 'UpdateFunctionDefinitionResponse')
    UpdateGroupCertificateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateGroupCertificateConfigurationRequest', name: 'UpdateGroupCertificateConfigurationRequest')
    UpdateGroupCertificateConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateGroupCertificateConfigurationResponse', name: 'UpdateGroupCertificateConfigurationResponse')
    UpdateGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateGroupRequest', name: 'UpdateGroupRequest')
    UpdateGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateGroupResponse', name: 'UpdateGroupResponse')
    UpdateLoggerDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateLoggerDefinitionRequest', name: 'UpdateLoggerDefinitionRequest')
    UpdateLoggerDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateLoggerDefinitionResponse', name: 'UpdateLoggerDefinitionResponse')
    UpdateResourceDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateResourceDefinitionRequest', name: 'UpdateResourceDefinitionRequest')
    UpdateResourceDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateResourceDefinitionResponse', name: 'UpdateResourceDefinitionResponse')
    UpdateSubscriptionDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateSubscriptionDefinitionRequest', name: 'UpdateSubscriptionDefinitionRequest')
    UpdateSubscriptionDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateSubscriptionDefinitionResponse', name: 'UpdateSubscriptionDefinitionResponse')
    UpdateTargets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#UpdateTargets', name: 'UpdateTargets')
    UpdateTargetsArchitecture = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#UpdateTargetsArchitecture', name: 'UpdateTargetsArchitecture')
    UpdateTargetsOperatingSystem = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrass#UpdateTargetsOperatingSystem', name: 'UpdateTargetsOperatingSystem')
    UpdateThingRuntimeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateThingRuntimeConfigurationRequest', name: 'UpdateThingRuntimeConfigurationRequest')
    UpdateThingRuntimeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#UpdateThingRuntimeConfigurationResponse', name: 'UpdateThingRuntimeConfigurationResponse')
    VersionInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrass#VersionInformation', name: 'VersionInformation')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.greengrass#__boolean', name: 'Boolean')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrass#__integer', name: 'Integer')
    Listofconnectivityinfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfConnectivityInfo', name: 'Listofconnectivityinfo')
    Listofconnector = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfConnector', name: 'Listofconnector')
    Listofcore = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfCore', name: 'Listofcore')
    Listofdefinitioninformation = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfDefinitionInformation', name: 'Listofdefinitioninformation')
    Listofdevice = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfDevice', name: 'Listofdevice')
    Listoffunction = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfFunction', name: 'Listoffunction')
    Listofgroupcertificateauthorityproperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfGroupCertificateAuthorityProperties', name: 'Listofgroupcertificateauthorityproperties')
    Listofgroupinformation = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfGroupInformation', name: 'Listofgroupinformation')
    Listoflogger = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfLogger', name: 'Listoflogger')
    Listofresource = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfResource', name: 'Listofresource')
    Listofresourceaccesspolicy = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfResourceAccessPolicy', name: 'Listofresourceaccesspolicy')
    Listofsubscription = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfSubscription', name: 'Listofsubscription')
    Listofversioninformation = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOfVersionInformation', name: 'Listofversioninformation')
    ListofString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrass#__listOf__string', name: 'ListofString')
    MapofString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrass#__mapOf__string', name: 'MapofString')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrass#__string', name: 'String')

    AssociateRoleToGroupRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateRoleToGroupRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ARN of the role you wish to associate with this group. The existence of the role is not validated.", "smithy.api#required" => {}}))
    AssociateRoleToGroupRequest.type = Types::AssociateRoleToGroupRequest
    AssociateRoleToGroupResponse.add_member(:associated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AssociatedAt', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the role ARN was associated with the group."}))
    AssociateRoleToGroupResponse.type = Types::AssociateRoleToGroupResponse
    AssociateServiceRoleToAccountRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ARN of the service role you wish to associate with your account.", "smithy.api#required" => {}}))
    AssociateServiceRoleToAccountRequest.type = Types::AssociateServiceRoleToAccountRequest
    AssociateServiceRoleToAccountResponse.add_member(:associated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AssociatedAt', traits: {"smithy.api#documentation" => "The time when the service role was associated with the account."}))
    AssociateServiceRoleToAccountResponse.type = Types::AssociateServiceRoleToAccountResponse
    BadRequestException.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "Details about the error."}))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "A message containing information about the error."}))
    BadRequestException.type = Types::BadRequestException
    BulkDeployment.add_member(:bulk_deployment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BulkDeploymentArn', traits: {"smithy.api#documentation" => "The ARN of the bulk deployment."}))
    BulkDeployment.add_member(:bulk_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BulkDeploymentId', traits: {"smithy.api#documentation" => "The ID of the bulk deployment."}))
    BulkDeployment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The time, in ISO format, when the deployment was created."}))
    BulkDeployment.type = Types::BulkDeployment
    BulkDeploymentMetrics.add_member(:invalid_input_records, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InvalidInputRecords', traits: {"smithy.api#documentation" => "The total number of records that returned a non-retryable error. For example, this can occur if a group record from the input file uses an invalid format or specifies a nonexistent group version, or if the execution role doesn't grant permission to deploy a group or group version."}))
    BulkDeploymentMetrics.add_member(:records_processed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RecordsProcessed', traits: {"smithy.api#documentation" => "The total number of group records from the input file that have been processed so far, or attempted."}))
    BulkDeploymentMetrics.add_member(:retry_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RetryAttempts', traits: {"smithy.api#documentation" => "The total number of deployment attempts that returned a retryable error. For example, a retry is triggered if the attempt to deploy a group returns a throttling error. ''StartBulkDeployment'' retries a group deployment up to five times."}))
    BulkDeploymentMetrics.type = Types::BulkDeploymentMetrics
    BulkDeploymentResult.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The time, in ISO format, when the deployment was created."}))
    BulkDeploymentResult.add_member(:deployment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentArn', traits: {"smithy.api#documentation" => "The ARN of the group deployment."}))
    BulkDeploymentResult.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "The ID of the group deployment."}))
    BulkDeploymentResult.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentStatus', traits: {"smithy.api#documentation" => "The current status of the group deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''."}))
    BulkDeploymentResult.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'DeploymentType', traits: {"smithy.api#documentation" => "The type of the deployment."}))
    BulkDeploymentResult.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "Details about the error."}))
    BulkDeploymentResult.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "The error message for a failed deployment"}))
    BulkDeploymentResult.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "The ARN of the Greengrass group."}))
    BulkDeploymentResult.type = Types::BulkDeploymentResult
    BulkDeploymentResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BulkDeploymentResult)
    BulkDeploymentStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Initializing', traits: {"smithy.api#enumValue" => "Initializing"}))
    BulkDeploymentStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    BulkDeploymentStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    BulkDeploymentStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopping', traits: {"smithy.api#enumValue" => "Stopping"}))
    BulkDeploymentStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopped', traits: {"smithy.api#enumValue" => "Stopped"}))
    BulkDeploymentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    BulkDeployments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BulkDeployment)
    ConfigurationSyncStatus.add_member(:in_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InSync', traits: {"smithy.api#enumValue" => "InSync"}))
    ConfigurationSyncStatus.add_member(:out_of_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OutOfSync', traits: {"smithy.api#enumValue" => "OutOfSync"}))
    ConnectivityInfo.add_member(:host_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostAddress', traits: {"smithy.api#documentation" => "The endpoint for the Greengrass core. Can be an IP address or DNS."}))
    ConnectivityInfo.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the connectivity information."}))
    ConnectivityInfo.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Metadata', traits: {"smithy.api#documentation" => "Metadata for this endpoint."}))
    ConnectivityInfo.add_member(:port_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PortNumber', traits: {"smithy.api#documentation" => "The port of the Greengrass core. Usually 8883."}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    Connector.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ARN of the connector.", "smithy.api#required" => {}}))
    Connector.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A descriptive or arbitrary ID for the connector. This value must be unique within the connector definition version. Max length is 128 characters with pattern [a-zA-Z0-9:_-]+.", "smithy.api#required" => {}}))
    Connector.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Parameters', traits: {"smithy.api#documentation" => "The parameters or configuration that the connector uses."}))
    Connector.type = Types::Connector
    ConnectorDefinitionVersion.add_member(:connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconnector, location_name: 'Connectors', traits: {"smithy.api#documentation" => "A list of references to connectors in this version, with their corresponding configuration settings."}))
    ConnectorDefinitionVersion.type = Types::ConnectorDefinitionVersion
    Core.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ARN of the certificate associated with the core.", "smithy.api#required" => {}}))
    Core.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A descriptive or arbitrary ID for the core. This value must be unique within the core definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.", "smithy.api#required" => {}}))
    Core.add_member(:sync_shadow, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SyncShadow', traits: {"smithy.api#documentation" => "If true, the core's local shadow is automatically synced with the cloud."}))
    Core.add_member(:thing_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThingArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ARN of the thing which is the core.", "smithy.api#required" => {}}))
    Core.type = Types::Core
    CoreDefinitionVersion.add_member(:cores, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcore, location_name: 'Cores', traits: {"smithy.api#documentation" => "A list of cores in the core definition version."}))
    CoreDefinitionVersion.type = Types::CoreDefinitionVersion
    CreateConnectorDefinitionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateConnectorDefinitionRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorDefinitionVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the connector definition."}))
    CreateConnectorDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the connector definition."}))
    CreateConnectorDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateConnectorDefinitionRequest.type = Types::CreateConnectorDefinitionRequest
    CreateConnectorDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateConnectorDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateConnectorDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateConnectorDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateConnectorDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateConnectorDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateConnectorDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateConnectorDefinitionResponse.type = Types::CreateConnectorDefinitionResponse
    CreateConnectorDefinitionVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateConnectorDefinitionVersionRequest.add_member(:connector_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionId', traits: {"smithy.api#documentation" => "The ID of the connector definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConnectorDefinitionVersionRequest.add_member(:connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconnector, location_name: 'Connectors', traits: {"smithy.api#documentation" => "A list of references to connectors in this version, with their corresponding configuration settings."}))
    CreateConnectorDefinitionVersionRequest.type = Types::CreateConnectorDefinitionVersionRequest
    CreateConnectorDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateConnectorDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateConnectorDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateConnectorDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateConnectorDefinitionVersionResponse.type = Types::CreateConnectorDefinitionVersionResponse
    CreateCoreDefinitionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateCoreDefinitionRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDefinitionVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the core definition."}))
    CreateCoreDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the core definition."}))
    CreateCoreDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateCoreDefinitionRequest.type = Types::CreateCoreDefinitionRequest
    CreateCoreDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateCoreDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateCoreDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateCoreDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateCoreDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateCoreDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateCoreDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateCoreDefinitionResponse.type = Types::CreateCoreDefinitionResponse
    CreateCoreDefinitionVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateCoreDefinitionVersionRequest.add_member(:core_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionId', traits: {"smithy.api#documentation" => "The ID of the core definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCoreDefinitionVersionRequest.add_member(:cores, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcore, location_name: 'Cores', traits: {"smithy.api#documentation" => "A list of cores in the core definition version."}))
    CreateCoreDefinitionVersionRequest.type = Types::CreateCoreDefinitionVersionRequest
    CreateCoreDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateCoreDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateCoreDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateCoreDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateCoreDefinitionVersionResponse.type = Types::CreateCoreDefinitionVersionResponse
    CreateDeploymentRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateDeploymentRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "The ID of the deployment if you wish to redeploy a previous deployment."}))
    CreateDeploymentRequest.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'DeploymentType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.", "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:group_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupVersionId', traits: {"smithy.api#documentation" => "The ID of the group version to be deployed."}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResponse.add_member(:deployment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentArn', traits: {"smithy.api#documentation" => "The ARN of the deployment."}))
    CreateDeploymentResponse.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "The ID of the deployment."}))
    CreateDeploymentResponse.type = Types::CreateDeploymentResponse
    CreateDeviceDefinitionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateDeviceDefinitionRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceDefinitionVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the device definition."}))
    CreateDeviceDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the device definition."}))
    CreateDeviceDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateDeviceDefinitionRequest.type = Types::CreateDeviceDefinitionRequest
    CreateDeviceDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateDeviceDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateDeviceDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateDeviceDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateDeviceDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateDeviceDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateDeviceDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateDeviceDefinitionResponse.type = Types::CreateDeviceDefinitionResponse
    CreateDeviceDefinitionVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateDeviceDefinitionVersionRequest.add_member(:device_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the device definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeviceDefinitionVersionRequest.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdevice, location_name: 'Devices', traits: {"smithy.api#documentation" => "A list of devices in the definition version."}))
    CreateDeviceDefinitionVersionRequest.type = Types::CreateDeviceDefinitionVersionRequest
    CreateDeviceDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateDeviceDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateDeviceDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateDeviceDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateDeviceDefinitionVersionResponse.type = Types::CreateDeviceDefinitionVersionResponse
    CreateFunctionDefinitionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateFunctionDefinitionRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionDefinitionVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the function definition."}))
    CreateFunctionDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the function definition."}))
    CreateFunctionDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateFunctionDefinitionRequest.type = Types::CreateFunctionDefinitionRequest
    CreateFunctionDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateFunctionDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateFunctionDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateFunctionDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateFunctionDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateFunctionDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateFunctionDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateFunctionDefinitionResponse.type = Types::CreateFunctionDefinitionResponse
    CreateFunctionDefinitionVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateFunctionDefinitionVersionRequest.add_member(:default_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionDefaultConfig, location_name: 'DefaultConfig', traits: {"smithy.api#documentation" => "The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings."}))
    CreateFunctionDefinitionVersionRequest.add_member(:function_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the Lambda function definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFunctionDefinitionVersionRequest.add_member(:functions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffunction, location_name: 'Functions', traits: {"smithy.api#documentation" => "A list of Lambda functions in this function definition version."}))
    CreateFunctionDefinitionVersionRequest.type = Types::CreateFunctionDefinitionVersionRequest
    CreateFunctionDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateFunctionDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateFunctionDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateFunctionDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateFunctionDefinitionVersionResponse.type = Types::CreateFunctionDefinitionVersionResponse
    CreateGroupCertificateAuthorityRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateGroupCertificateAuthorityRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGroupCertificateAuthorityRequest.type = Types::CreateGroupCertificateAuthorityRequest
    CreateGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupCertificateAuthorityArn', traits: {"smithy.api#documentation" => "The ARN of the group certificate authority."}))
    CreateGroupCertificateAuthorityResponse.type = Types::CreateGroupCertificateAuthorityResponse
    CreateGroupRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateGroupRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the group."}))
    CreateGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The name of the group.", "smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateGroupResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateGroupResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateGroupResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateGroupResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateGroupResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateGroupResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateGroupResponse.type = Types::CreateGroupResponse
    CreateGroupVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateGroupVersionRequest.add_member(:connector_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the connector definition version for this group."}))
    CreateGroupVersionRequest.add_member(:core_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the core definition version for this group."}))
    CreateGroupVersionRequest.add_member(:device_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the device definition version for this group."}))
    CreateGroupVersionRequest.add_member(:function_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the function definition version for this group."}))
    CreateGroupVersionRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGroupVersionRequest.add_member(:logger_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the logger definition version for this group."}))
    CreateGroupVersionRequest.add_member(:resource_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the resource definition version for this group."}))
    CreateGroupVersionRequest.add_member(:subscription_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the subscription definition version for this group."}))
    CreateGroupVersionRequest.type = Types::CreateGroupVersionRequest
    CreateGroupVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateGroupVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateGroupVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateGroupVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateGroupVersionResponse.type = Types::CreateGroupVersionResponse
    CreateLoggerDefinitionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateLoggerDefinitionRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggerDefinitionVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the logger definition."}))
    CreateLoggerDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the logger definition."}))
    CreateLoggerDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateLoggerDefinitionRequest.type = Types::CreateLoggerDefinitionRequest
    CreateLoggerDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateLoggerDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateLoggerDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateLoggerDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateLoggerDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateLoggerDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateLoggerDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateLoggerDefinitionResponse.type = Types::CreateLoggerDefinitionResponse
    CreateLoggerDefinitionVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateLoggerDefinitionVersionRequest.add_member(:logger_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionId', traits: {"smithy.api#documentation" => "The ID of the logger definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLoggerDefinitionVersionRequest.add_member(:loggers, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoflogger, location_name: 'Loggers', traits: {"smithy.api#documentation" => "A list of loggers."}))
    CreateLoggerDefinitionVersionRequest.type = Types::CreateLoggerDefinitionVersionRequest
    CreateLoggerDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateLoggerDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateLoggerDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateLoggerDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateLoggerDefinitionVersionResponse.type = Types::CreateLoggerDefinitionVersionResponse
    CreateResourceDefinitionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateResourceDefinitionRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDefinitionVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the resource definition."}))
    CreateResourceDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the resource definition."}))
    CreateResourceDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateResourceDefinitionRequest.type = Types::CreateResourceDefinitionRequest
    CreateResourceDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateResourceDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateResourceDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateResourceDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateResourceDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateResourceDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateResourceDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateResourceDefinitionResponse.type = Types::CreateResourceDefinitionResponse
    CreateResourceDefinitionVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateResourceDefinitionVersionRequest.add_member(:resource_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the resource definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourceDefinitionVersionRequest.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofresource, location_name: 'Resources', traits: {"smithy.api#documentation" => "A list of resources."}))
    CreateResourceDefinitionVersionRequest.type = Types::CreateResourceDefinitionVersionRequest
    CreateResourceDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateResourceDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateResourceDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateResourceDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateResourceDefinitionVersionResponse.type = Types::CreateResourceDefinitionVersionResponse
    CreateSoftwareUpdateJobRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateSoftwareUpdateJobRequest.add_member(:s3_url_signer_role, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UrlSignerRole, location_name: 'S3UrlSignerRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:software_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareToUpdate, location_name: 'SoftwareToUpdate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:update_agent_log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentLogLevel, location_name: 'UpdateAgentLogLevel'))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargets, location_name: 'UpdateTargets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets_architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargetsArchitecture, location_name: 'UpdateTargetsArchitecture', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets_operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargetsOperatingSystem, location_name: 'UpdateTargetsOperatingSystem', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.type = Types::CreateSoftwareUpdateJobRequest
    CreateSoftwareUpdateJobResponse.add_member(:iot_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IotJobArn', traits: {"smithy.api#documentation" => "The IoT Job ARN corresponding to this update."}))
    CreateSoftwareUpdateJobResponse.add_member(:iot_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IotJobId', traits: {"smithy.api#documentation" => "The IoT Job Id corresponding to this update."}))
    CreateSoftwareUpdateJobResponse.add_member(:platform_software_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlatformSoftwareVersion', traits: {"smithy.api#documentation" => "The software version installed on the device or devices after the update."}))
    CreateSoftwareUpdateJobResponse.type = Types::CreateSoftwareUpdateJobResponse
    CreateSubscriptionDefinitionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateSubscriptionDefinitionRequest.add_member(:initial_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDefinitionVersion, location_name: 'InitialVersion', traits: {"smithy.api#documentation" => "Information about the initial version of the subscription definition."}))
    CreateSubscriptionDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the subscription definition."}))
    CreateSubscriptionDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    CreateSubscriptionDefinitionRequest.type = Types::CreateSubscriptionDefinitionRequest
    CreateSubscriptionDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    CreateSubscriptionDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    CreateSubscriptionDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    CreateSubscriptionDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    CreateSubscriptionDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    CreateSubscriptionDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    CreateSubscriptionDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    CreateSubscriptionDefinitionResponse.type = Types::CreateSubscriptionDefinitionResponse
    CreateSubscriptionDefinitionVersionRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the subscription definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSubscriptionDefinitionVersionRequest.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsubscription, location_name: 'Subscriptions', traits: {"smithy.api#documentation" => "A list of subscriptions."}))
    CreateSubscriptionDefinitionVersionRequest.type = Types::CreateSubscriptionDefinitionVersionRequest
    CreateSubscriptionDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    CreateSubscriptionDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    CreateSubscriptionDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    CreateSubscriptionDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    CreateSubscriptionDefinitionVersionResponse.type = Types::CreateSubscriptionDefinitionVersionResponse
    DefinitionInformation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    DefinitionInformation.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    DefinitionInformation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    DefinitionInformation.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    DefinitionInformation.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    DefinitionInformation.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    DefinitionInformation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    DefinitionInformation.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn.", "smithy.api#jsonName" => "tags"}))
    DefinitionInformation.type = Types::DefinitionInformation
    DeleteConnectorDefinitionRequest.add_member(:connector_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionId', traits: {"smithy.api#documentation" => "The ID of the connector definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorDefinitionRequest.type = Types::DeleteConnectorDefinitionRequest
    DeleteConnectorDefinitionResponse.type = Types::DeleteConnectorDefinitionResponse
    DeleteCoreDefinitionRequest.add_member(:core_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionId', traits: {"smithy.api#documentation" => "The ID of the core definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreDefinitionRequest.type = Types::DeleteCoreDefinitionRequest
    DeleteCoreDefinitionResponse.type = Types::DeleteCoreDefinitionResponse
    DeleteDeviceDefinitionRequest.add_member(:device_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the device definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceDefinitionRequest.type = Types::DeleteDeviceDefinitionRequest
    DeleteDeviceDefinitionResponse.type = Types::DeleteDeviceDefinitionResponse
    DeleteFunctionDefinitionRequest.add_member(:function_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the Lambda function definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionDefinitionRequest.type = Types::DeleteFunctionDefinitionRequest
    DeleteFunctionDefinitionResponse.type = Types::DeleteFunctionDefinitionResponse
    DeleteGroupRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    DeleteLoggerDefinitionRequest.add_member(:logger_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionId', traits: {"smithy.api#documentation" => "The ID of the logger definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLoggerDefinitionRequest.type = Types::DeleteLoggerDefinitionRequest
    DeleteLoggerDefinitionResponse.type = Types::DeleteLoggerDefinitionResponse
    DeleteResourceDefinitionRequest.add_member(:resource_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the resource definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceDefinitionRequest.type = Types::DeleteResourceDefinitionRequest
    DeleteResourceDefinitionResponse.type = Types::DeleteResourceDefinitionResponse
    DeleteSubscriptionDefinitionRequest.add_member(:subscription_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the subscription definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSubscriptionDefinitionRequest.type = Types::DeleteSubscriptionDefinitionRequest
    DeleteSubscriptionDefinitionResponse.type = Types::DeleteSubscriptionDefinitionResponse
    Deployment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the deployment was created."}))
    Deployment.add_member(:deployment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentArn', traits: {"smithy.api#documentation" => "The ARN of the deployment."}))
    Deployment.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "The ID of the deployment."}))
    Deployment.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'DeploymentType', traits: {"smithy.api#documentation" => "The type of the deployment."}))
    Deployment.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "The ARN of the group for this deployment."}))
    Deployment.type = Types::Deployment
    DeploymentType.add_member(:new_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NewDeployment', traits: {"smithy.api#enumValue" => "NewDeployment"}))
    DeploymentType.add_member(:redeployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Redeployment', traits: {"smithy.api#enumValue" => "Redeployment"}))
    DeploymentType.add_member(:reset_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResetDeployment', traits: {"smithy.api#enumValue" => "ResetDeployment"}))
    DeploymentType.add_member(:force_reset_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ForceResetDeployment', traits: {"smithy.api#enumValue" => "ForceResetDeployment"}))
    Deployments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment)
    Device.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ARN of the certificate associated with the device.", "smithy.api#required" => {}}))
    Device.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A descriptive or arbitrary ID for the device. This value must be unique within the device definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.", "smithy.api#required" => {}}))
    Device.add_member(:sync_shadow, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SyncShadow', traits: {"smithy.api#documentation" => "If true, the device's local shadow will be automatically synced with the cloud."}))
    Device.add_member(:thing_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThingArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The thing ARN of the device.", "smithy.api#required" => {}}))
    Device.type = Types::Device
    DeviceDefinitionVersion.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdevice, location_name: 'Devices', traits: {"smithy.api#documentation" => "A list of devices in the definition version."}))
    DeviceDefinitionVersion.type = Types::DeviceDefinitionVersion
    DisassociateRoleFromGroupRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRoleFromGroupRequest.type = Types::DisassociateRoleFromGroupRequest
    DisassociateRoleFromGroupResponse.add_member(:disassociated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisassociatedAt', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the role was disassociated from the group."}))
    DisassociateRoleFromGroupResponse.type = Types::DisassociateRoleFromGroupResponse
    DisassociateServiceRoleFromAccountRequest.type = Types::DisassociateServiceRoleFromAccountRequest
    DisassociateServiceRoleFromAccountResponse.add_member(:disassociated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisassociatedAt', traits: {"smithy.api#documentation" => "The time when the service role was disassociated from the account."}))
    DisassociateServiceRoleFromAccountResponse.type = Types::DisassociateServiceRoleFromAccountResponse
    EncodingType.add_member(:binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'binary', traits: {"smithy.api#enumValue" => "binary"}))
    EncodingType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'json', traits: {"smithy.api#enumValue" => "json"}))
    ErrorDetail.add_member(:detailed_error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetailedErrorCode', traits: {"smithy.api#documentation" => "A detailed error code."}))
    ErrorDetail.add_member(:detailed_error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetailedErrorMessage', traits: {"smithy.api#documentation" => "A detailed error message."}))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail)
    Function.add_member(:function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionArn', traits: {"smithy.api#documentation" => "The ARN of the Lambda function."}))
    Function.add_member(:function_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: 'FunctionConfiguration', traits: {"smithy.api#documentation" => "The configuration of the Lambda function."}))
    Function.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A descriptive or arbitrary ID for the function. This value must be unique within the function definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.", "smithy.api#required" => {}}))
    Function.type = Types::Function
    FunctionConfiguration.add_member(:encoding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncodingType, location_name: 'EncodingType', traits: {"smithy.api#documentation" => "The expected encoding type of the input payload for the function. The default is ''json''."}))
    FunctionConfiguration.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfigurationEnvironment, location_name: 'Environment', traits: {"smithy.api#documentation" => "The environment configuration of the function."}))
    FunctionConfiguration.add_member(:exec_args, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExecArgs', traits: {"smithy.api#documentation" => "The execution arguments."}))
    FunctionConfiguration.add_member(:executable, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Executable', traits: {"smithy.api#documentation" => "The name of the function executable."}))
    FunctionConfiguration.add_member(:memory_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MemorySize', traits: {"smithy.api#documentation" => "The memory size, in KB, which the function requires. This setting is not applicable and should be cleared when you run the Lambda function without containerization."}))
    FunctionConfiguration.add_member(:pinned, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Pinned', traits: {"smithy.api#documentation" => "True if the function is pinned. Pinned means the function is long-lived and starts when the core starts."}))
    FunctionConfiguration.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Timeout', traits: {"smithy.api#documentation" => "The allowed function execution time, after which Lambda should terminate the function. This timeout still applies to pinned Lambda functions for each request."}))
    FunctionConfiguration.add_member(:function_runtime_override, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionRuntimeOverride', traits: {"smithy.api#documentation" => "The Lambda runtime supported by Greengrass which is to be used instead of the one specified in the Lambda function."}))
    FunctionConfiguration.type = Types::FunctionConfiguration
    FunctionConfigurationEnvironment.add_member(:access_sysfs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AccessSysfs', traits: {"smithy.api#documentation" => "If true, the Lambda function is allowed to access the host's /sys folder. Use this when the Lambda function needs to read device information from /sys. This setting applies only when you run the Lambda function in a Greengrass container."}))
    FunctionConfigurationEnvironment.add_member(:execution, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionExecutionConfig, location_name: 'Execution', traits: {"smithy.api#documentation" => "Configuration related to executing the Lambda function"}))
    FunctionConfigurationEnvironment.add_member(:resource_access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofresourceaccesspolicy, location_name: 'ResourceAccessPolicies', traits: {"smithy.api#documentation" => "A list of the resources, with their permissions, to which the Lambda function will be granted access. A Lambda function can have at most 10 resources. ResourceAccessPolicies apply only when you run the Lambda function in a Greengrass container."}))
    FunctionConfigurationEnvironment.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Variables', traits: {"smithy.api#documentation" => "Environment variables for the Lambda function's configuration."}))
    FunctionConfigurationEnvironment.type = Types::FunctionConfigurationEnvironment
    FunctionDefaultConfig.add_member(:execution, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionDefaultExecutionConfig, location_name: 'Execution'))
    FunctionDefaultConfig.type = Types::FunctionDefaultConfig
    FunctionDefaultExecutionConfig.add_member(:isolation_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionIsolationMode, location_name: 'IsolationMode'))
    FunctionDefaultExecutionConfig.add_member(:run_as, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionRunAsConfig, location_name: 'RunAs'))
    FunctionDefaultExecutionConfig.type = Types::FunctionDefaultExecutionConfig
    FunctionDefinitionVersion.add_member(:default_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionDefaultConfig, location_name: 'DefaultConfig', traits: {"smithy.api#documentation" => "The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings."}))
    FunctionDefinitionVersion.add_member(:functions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffunction, location_name: 'Functions', traits: {"smithy.api#documentation" => "A list of Lambda functions in this function definition version."}))
    FunctionDefinitionVersion.type = Types::FunctionDefinitionVersion
    FunctionExecutionConfig.add_member(:isolation_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionIsolationMode, location_name: 'IsolationMode'))
    FunctionExecutionConfig.add_member(:run_as, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionRunAsConfig, location_name: 'RunAs'))
    FunctionExecutionConfig.type = Types::FunctionExecutionConfig
    FunctionIsolationMode.add_member(:greengrass_container, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreengrassContainer', traits: {"smithy.api#enumValue" => "GreengrassContainer"}))
    FunctionIsolationMode.add_member(:no_container, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NoContainer', traits: {"smithy.api#enumValue" => "NoContainer"}))
    FunctionRunAsConfig.add_member(:gid, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Gid', traits: {"smithy.api#documentation" => "The group ID whose permissions are used to run a Lambda function."}))
    FunctionRunAsConfig.add_member(:uid, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Uid', traits: {"smithy.api#documentation" => "The user ID whose permissions are used to run a Lambda function."}))
    FunctionRunAsConfig.type = Types::FunctionRunAsConfig
    GetAssociatedRoleRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedRoleRequest.type = Types::GetAssociatedRoleRequest
    GetAssociatedRoleResponse.add_member(:associated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AssociatedAt', traits: {"smithy.api#documentation" => "The time when the role was associated with the group."}))
    GetAssociatedRoleResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "The ARN of the role that is associated with the group."}))
    GetAssociatedRoleResponse.type = Types::GetAssociatedRoleResponse
    GetBulkDeploymentStatusRequest.add_member(:bulk_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BulkDeploymentId', traits: {"smithy.api#documentation" => "The ID of the bulk deployment.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBulkDeploymentStatusRequest.type = Types::GetBulkDeploymentStatusRequest
    GetBulkDeploymentStatusResponse.add_member(:bulk_deployment_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkDeploymentMetrics, location_name: 'BulkDeploymentMetrics', traits: {"smithy.api#documentation" => "Relevant metrics on input records processed during bulk deployment."}))
    GetBulkDeploymentStatusResponse.add_member(:bulk_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkDeploymentStatus, location_name: 'BulkDeploymentStatus', traits: {"smithy.api#documentation" => "The status of the bulk deployment."}))
    GetBulkDeploymentStatusResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The time, in ISO format, when the deployment was created."}))
    GetBulkDeploymentStatusResponse.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "Error details"}))
    GetBulkDeploymentStatusResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "Error message"}))
    GetBulkDeploymentStatusResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetBulkDeploymentStatusResponse.type = Types::GetBulkDeploymentStatusResponse
    GetConnectivityInfoRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThingName', traits: {"smithy.api#documentation" => "The thing name.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectivityInfoRequest.type = Types::GetConnectivityInfoRequest
    GetConnectivityInfoResponse.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconnectivityinfo, location_name: 'ConnectivityInfo', traits: {"smithy.api#documentation" => "Connectivity info list."}))
    GetConnectivityInfoResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "A message about the connectivity info request.", "smithy.api#jsonName" => "message"}))
    GetConnectivityInfoResponse.type = Types::GetConnectivityInfoResponse
    GetConnectorDefinitionRequest.add_member(:connector_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionId', traits: {"smithy.api#documentation" => "The ID of the connector definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorDefinitionRequest.type = Types::GetConnectorDefinitionRequest
    GetConnectorDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetConnectorDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetConnectorDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetConnectorDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetConnectorDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetConnectorDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetConnectorDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetConnectorDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetConnectorDefinitionResponse.type = Types::GetConnectorDefinitionResponse
    GetConnectorDefinitionVersionRequest.add_member(:connector_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionId', traits: {"smithy.api#documentation" => "The ID of the connector definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorDefinitionVersionRequest.add_member(:connector_definition_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionVersionId', traits: {"smithy.api#documentation" => "The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorDefinitionVersionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    GetConnectorDefinitionVersionRequest.type = Types::GetConnectorDefinitionVersionRequest
    GetConnectorDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the connector definition version."}))
    GetConnectorDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the connector definition version was created."}))
    GetConnectorDefinitionVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorDefinitionVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information about the connector definition version."}))
    GetConnectorDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the connector definition version."}))
    GetConnectorDefinitionVersionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    GetConnectorDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The version of the connector definition version."}))
    GetConnectorDefinitionVersionResponse.type = Types::GetConnectorDefinitionVersionResponse
    GetCoreDefinitionRequest.add_member(:core_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionId', traits: {"smithy.api#documentation" => "The ID of the core definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDefinitionRequest.type = Types::GetCoreDefinitionRequest
    GetCoreDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetCoreDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetCoreDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetCoreDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetCoreDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetCoreDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetCoreDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetCoreDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetCoreDefinitionResponse.type = Types::GetCoreDefinitionResponse
    GetCoreDefinitionVersionRequest.add_member(:core_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionId', traits: {"smithy.api#documentation" => "The ID of the core definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDefinitionVersionRequest.add_member(:core_definition_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionVersionId', traits: {"smithy.api#documentation" => "The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDefinitionVersionRequest.type = Types::GetCoreDefinitionVersionRequest
    GetCoreDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the core definition version."}))
    GetCoreDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the core definition version was created."}))
    GetCoreDefinitionVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDefinitionVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information about the core definition version."}))
    GetCoreDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the core definition version."}))
    GetCoreDefinitionVersionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    GetCoreDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The version of the core definition version."}))
    GetCoreDefinitionVersionResponse.type = Types::GetCoreDefinitionVersionResponse
    GetDeploymentStatusRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "The ID of the deployment.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentStatusRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentStatusRequest.type = Types::GetDeploymentStatusRequest
    GetDeploymentStatusResponse.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentStatus', traits: {"smithy.api#documentation" => "The status of the deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''."}))
    GetDeploymentStatusResponse.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'DeploymentType', traits: {"smithy.api#documentation" => "The type of the deployment."}))
    GetDeploymentStatusResponse.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "Error details"}))
    GetDeploymentStatusResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "Error message"}))
    GetDeploymentStatusResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the deployment status was updated."}))
    GetDeploymentStatusResponse.type = Types::GetDeploymentStatusResponse
    GetDeviceDefinitionRequest.add_member(:device_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the device definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceDefinitionRequest.type = Types::GetDeviceDefinitionRequest
    GetDeviceDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetDeviceDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetDeviceDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetDeviceDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetDeviceDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetDeviceDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetDeviceDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetDeviceDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetDeviceDefinitionResponse.type = Types::GetDeviceDefinitionResponse
    GetDeviceDefinitionVersionRequest.add_member(:device_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the device definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceDefinitionVersionRequest.add_member(:device_definition_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionVersionId', traits: {"smithy.api#documentation" => "The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceDefinitionVersionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    GetDeviceDefinitionVersionRequest.type = Types::GetDeviceDefinitionVersionRequest
    GetDeviceDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the device definition version."}))
    GetDeviceDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the device definition version was created."}))
    GetDeviceDefinitionVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceDefinitionVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information about the device definition version."}))
    GetDeviceDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the device definition version."}))
    GetDeviceDefinitionVersionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    GetDeviceDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The version of the device definition version."}))
    GetDeviceDefinitionVersionResponse.type = Types::GetDeviceDefinitionVersionResponse
    GetFunctionDefinitionRequest.add_member(:function_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the Lambda function definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionDefinitionRequest.type = Types::GetFunctionDefinitionRequest
    GetFunctionDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetFunctionDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetFunctionDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetFunctionDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetFunctionDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetFunctionDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetFunctionDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetFunctionDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetFunctionDefinitionResponse.type = Types::GetFunctionDefinitionResponse
    GetFunctionDefinitionVersionRequest.add_member(:function_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the Lambda function definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionDefinitionVersionRequest.add_member(:function_definition_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionVersionId', traits: {"smithy.api#documentation" => "The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionDefinitionVersionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    GetFunctionDefinitionVersionRequest.type = Types::GetFunctionDefinitionVersionRequest
    GetFunctionDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the function definition version."}))
    GetFunctionDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the function definition version was created."}))
    GetFunctionDefinitionVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionDefinitionVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information on the definition."}))
    GetFunctionDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the function definition version."}))
    GetFunctionDefinitionVersionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    GetFunctionDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The version of the function definition version."}))
    GetFunctionDefinitionVersionResponse.type = Types::GetFunctionDefinitionVersionResponse
    GetGroupCertificateAuthorityRequest.add_member(:certificate_authority_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateAuthorityId', traits: {"smithy.api#documentation" => "The ID of the certificate authority.", "smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^(?!configuration).*$", "smithy.api#required" => {}}))
    GetGroupCertificateAuthorityRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupCertificateAuthorityRequest.type = Types::GetGroupCertificateAuthorityRequest
    GetGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupCertificateAuthorityArn', traits: {"smithy.api#documentation" => "The ARN of the certificate authority for the group."}))
    GetGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupCertificateAuthorityId', traits: {"smithy.api#documentation" => "The ID of the certificate authority for the group."}))
    GetGroupCertificateAuthorityResponse.add_member(:pem_encoded_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PemEncodedCertificate', traits: {"smithy.api#documentation" => "The PEM encoded certificate for the group."}))
    GetGroupCertificateAuthorityResponse.type = Types::GetGroupCertificateAuthorityResponse
    GetGroupCertificateConfigurationRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupCertificateConfigurationRequest.type = Types::GetGroupCertificateConfigurationRequest
    GetGroupCertificateConfigurationResponse.add_member(:certificate_authority_expiry_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateAuthorityExpiryInMilliseconds', traits: {"smithy.api#documentation" => "The amount of time remaining before the certificate authority expires, in milliseconds."}))
    GetGroupCertificateConfigurationResponse.add_member(:certificate_expiry_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateExpiryInMilliseconds', traits: {"smithy.api#documentation" => "The amount of time remaining before the certificate expires, in milliseconds."}))
    GetGroupCertificateConfigurationResponse.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the group certificate configuration."}))
    GetGroupCertificateConfigurationResponse.type = Types::GetGroupCertificateConfigurationResponse
    GetGroupRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetGroupResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetGroupResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetGroupResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetGroupResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetGroupResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetGroupResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetGroupResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetGroupResponse.type = Types::GetGroupResponse
    GetGroupVersionRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupVersionRequest.add_member(:group_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupVersionId', traits: {"smithy.api#documentation" => "The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupVersionRequest.type = Types::GetGroupVersionRequest
    GetGroupVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the group version."}))
    GetGroupVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the group version was created."}))
    GetGroupVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information about the group version definition."}))
    GetGroupVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the group that the version is associated with."}))
    GetGroupVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the group version."}))
    GetGroupVersionResponse.type = Types::GetGroupVersionResponse
    GetLoggerDefinitionRequest.add_member(:logger_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionId', traits: {"smithy.api#documentation" => "The ID of the logger definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLoggerDefinitionRequest.type = Types::GetLoggerDefinitionRequest
    GetLoggerDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetLoggerDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetLoggerDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetLoggerDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetLoggerDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetLoggerDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetLoggerDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetLoggerDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetLoggerDefinitionResponse.type = Types::GetLoggerDefinitionResponse
    GetLoggerDefinitionVersionRequest.add_member(:logger_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionId', traits: {"smithy.api#documentation" => "The ID of the logger definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLoggerDefinitionVersionRequest.add_member(:logger_definition_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionVersionId', traits: {"smithy.api#documentation" => "The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLoggerDefinitionVersionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    GetLoggerDefinitionVersionRequest.type = Types::GetLoggerDefinitionVersionRequest
    GetLoggerDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the logger definition version."}))
    GetLoggerDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the logger definition version was created."}))
    GetLoggerDefinitionVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggerDefinitionVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information about the logger definition version."}))
    GetLoggerDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the logger definition version."}))
    GetLoggerDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The version of the logger definition version."}))
    GetLoggerDefinitionVersionResponse.type = Types::GetLoggerDefinitionVersionResponse
    GetResourceDefinitionRequest.add_member(:resource_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the resource definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceDefinitionRequest.type = Types::GetResourceDefinitionRequest
    GetResourceDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetResourceDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetResourceDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetResourceDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetResourceDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetResourceDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetResourceDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetResourceDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetResourceDefinitionResponse.type = Types::GetResourceDefinitionResponse
    GetResourceDefinitionVersionRequest.add_member(:resource_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the resource definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceDefinitionVersionRequest.add_member(:resource_definition_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionVersionId', traits: {"smithy.api#documentation" => "The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceDefinitionVersionRequest.type = Types::GetResourceDefinitionVersionRequest
    GetResourceDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "Arn of the resource definition version."}))
    GetResourceDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the resource definition version was created."}))
    GetResourceDefinitionVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDefinitionVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information about the definition."}))
    GetResourceDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the resource definition version."}))
    GetResourceDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The version of the resource definition version."}))
    GetResourceDefinitionVersionResponse.type = Types::GetResourceDefinitionVersionResponse
    GetServiceRoleForAccountRequest.type = Types::GetServiceRoleForAccountRequest
    GetServiceRoleForAccountResponse.add_member(:associated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AssociatedAt', traits: {"smithy.api#documentation" => "The time when the service role was associated with the account."}))
    GetServiceRoleForAccountResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "The ARN of the role which is associated with the account."}))
    GetServiceRoleForAccountResponse.type = Types::GetServiceRoleForAccountResponse
    GetSubscriptionDefinitionRequest.add_member(:subscription_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the subscription definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriptionDefinitionRequest.type = Types::GetSubscriptionDefinitionRequest
    GetSubscriptionDefinitionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the definition."}))
    GetSubscriptionDefinitionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was created."}))
    GetSubscriptionDefinitionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the definition."}))
    GetSubscriptionDefinitionResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the definition was last updated."}))
    GetSubscriptionDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the definition."}))
    GetSubscriptionDefinitionResponse.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the definition."}))
    GetSubscriptionDefinitionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    GetSubscriptionDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) attached to the resource arn."}))
    GetSubscriptionDefinitionResponse.type = Types::GetSubscriptionDefinitionResponse
    GetSubscriptionDefinitionVersionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    GetSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the subscription definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionVersionId', traits: {"smithy.api#documentation" => "The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriptionDefinitionVersionRequest.type = Types::GetSubscriptionDefinitionVersionRequest
    GetSubscriptionDefinitionVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the subscription definition version."}))
    GetSubscriptionDefinitionVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the subscription definition version was created."}))
    GetSubscriptionDefinitionVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDefinitionVersion, location_name: 'Definition', traits: {"smithy.api#documentation" => "Information about the subscription definition version."}))
    GetSubscriptionDefinitionVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the subscription definition version."}))
    GetSubscriptionDefinitionVersionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    GetSubscriptionDefinitionVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The version of the subscription definition version."}))
    GetSubscriptionDefinitionVersionResponse.type = Types::GetSubscriptionDefinitionVersionResponse
    GetThingRuntimeConfigurationRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThingName', traits: {"smithy.api#documentation" => "The thing name.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThingRuntimeConfigurationRequest.type = Types::GetThingRuntimeConfigurationRequest
    GetThingRuntimeConfigurationResponse.add_member(:runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeConfiguration, location_name: 'RuntimeConfiguration', traits: {"smithy.api#documentation" => "Runtime configuration for a thing."}))
    GetThingRuntimeConfigurationResponse.type = Types::GetThingRuntimeConfigurationResponse
    GroupCertificateAuthorityProperties.add_member(:group_certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupCertificateAuthorityArn', traits: {"smithy.api#documentation" => "The ARN of the certificate authority for the group."}))
    GroupCertificateAuthorityProperties.add_member(:group_certificate_authority_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupCertificateAuthorityId', traits: {"smithy.api#documentation" => "The ID of the certificate authority for the group."}))
    GroupCertificateAuthorityProperties.type = Types::GroupCertificateAuthorityProperties
    GroupInformation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the group."}))
    GroupInformation.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the group was created."}))
    GroupInformation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the group."}))
    GroupInformation.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the group was last updated."}))
    GroupInformation.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersion', traits: {"smithy.api#documentation" => "The ID of the latest version associated with the group."}))
    GroupInformation.add_member(:latest_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestVersionArn', traits: {"smithy.api#documentation" => "The ARN of the latest version associated with the group."}))
    GroupInformation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the group."}))
    GroupInformation.type = Types::GroupInformation
    GroupOwnerSetting.add_member(:auto_add_group_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAddGroupOwner', traits: {"smithy.api#documentation" => "If true, AWS IoT Greengrass automatically adds the specified Linux OS group owner of the resource to the Lambda process privileges. Thus the Lambda process will have the file access permissions of the added Linux group."}))
    GroupOwnerSetting.add_member(:group_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupOwner', traits: {"smithy.api#documentation" => "The name of the Linux OS group whose privileges will be added to the Lambda process. This field is optional."}))
    GroupOwnerSetting.type = Types::GroupOwnerSetting
    GroupVersion.add_member(:connector_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the connector definition version for this group."}))
    GroupVersion.add_member(:core_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the core definition version for this group."}))
    GroupVersion.add_member(:device_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the device definition version for this group."}))
    GroupVersion.add_member(:function_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the function definition version for this group."}))
    GroupVersion.add_member(:logger_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the logger definition version for this group."}))
    GroupVersion.add_member(:resource_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the resource definition version for this group."}))
    GroupVersion.add_member(:subscription_definition_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionVersionArn', traits: {"smithy.api#documentation" => "The ARN of the subscription definition version for this group."}))
    GroupVersion.type = Types::GroupVersion
    InternalServerErrorException.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "Details about the error."}))
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "A message containing information about the error."}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListBulkDeploymentDetailedReportsRequest.add_member(:bulk_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BulkDeploymentId', traits: {"smithy.api#documentation" => "The ID of the bulk deployment.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBulkDeploymentDetailedReportsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListBulkDeploymentDetailedReportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListBulkDeploymentDetailedReportsRequest.type = Types::ListBulkDeploymentDetailedReportsRequest
    ListBulkDeploymentDetailedReportsResponse.add_member(:deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkDeploymentResults, location_name: 'Deployments', traits: {"smithy.api#documentation" => "A list of the individual group deployments in the bulk deployment operation."}))
    ListBulkDeploymentDetailedReportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListBulkDeploymentDetailedReportsResponse.type = Types::ListBulkDeploymentDetailedReportsResponse
    ListBulkDeploymentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListBulkDeploymentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListBulkDeploymentsRequest.type = Types::ListBulkDeploymentsRequest
    ListBulkDeploymentsResponse.add_member(:bulk_deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkDeployments, location_name: 'BulkDeployments', traits: {"smithy.api#documentation" => "A list of bulk deployments."}))
    ListBulkDeploymentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListBulkDeploymentsResponse.type = Types::ListBulkDeploymentsResponse
    ListConnectorDefinitionVersionsRequest.add_member(:connector_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionId', traits: {"smithy.api#documentation" => "The ID of the connector definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConnectorDefinitionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorDefinitionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListConnectorDefinitionVersionsRequest.type = Types::ListConnectorDefinitionVersionsRequest
    ListConnectorDefinitionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListConnectorDefinitionVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListConnectorDefinitionVersionsResponse.type = Types::ListConnectorDefinitionVersionsResponse
    ListConnectorDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListConnectorDefinitionsRequest.type = Types::ListConnectorDefinitionsRequest
    ListConnectorDefinitionsResponse.add_member(:definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdefinitioninformation, location_name: 'Definitions', traits: {"smithy.api#documentation" => "Information about a definition."}))
    ListConnectorDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListConnectorDefinitionsResponse.type = Types::ListConnectorDefinitionsResponse
    ListCoreDefinitionVersionsRequest.add_member(:core_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionId', traits: {"smithy.api#documentation" => "The ID of the core definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCoreDefinitionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListCoreDefinitionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListCoreDefinitionVersionsRequest.type = Types::ListCoreDefinitionVersionsRequest
    ListCoreDefinitionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListCoreDefinitionVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListCoreDefinitionVersionsResponse.type = Types::ListCoreDefinitionVersionsResponse
    ListCoreDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListCoreDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListCoreDefinitionsRequest.type = Types::ListCoreDefinitionsRequest
    ListCoreDefinitionsResponse.add_member(:definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdefinitioninformation, location_name: 'Definitions', traits: {"smithy.api#documentation" => "Information about a definition."}))
    ListCoreDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListCoreDefinitionsResponse.type = Types::ListCoreDefinitionsResponse
    ListDeploymentsRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListDeploymentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListDeploymentsResponse.add_member(:deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: Deployments, location_name: 'Deployments', traits: {"smithy.api#documentation" => "A list of deployments for the requested groups."}))
    ListDeploymentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListDeploymentsResponse.type = Types::ListDeploymentsResponse
    ListDeviceDefinitionVersionsRequest.add_member(:device_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the device definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeviceDefinitionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListDeviceDefinitionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListDeviceDefinitionVersionsRequest.type = Types::ListDeviceDefinitionVersionsRequest
    ListDeviceDefinitionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListDeviceDefinitionVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListDeviceDefinitionVersionsResponse.type = Types::ListDeviceDefinitionVersionsResponse
    ListDeviceDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListDeviceDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListDeviceDefinitionsRequest.type = Types::ListDeviceDefinitionsRequest
    ListDeviceDefinitionsResponse.add_member(:definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdefinitioninformation, location_name: 'Definitions', traits: {"smithy.api#documentation" => "Information about a definition."}))
    ListDeviceDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListDeviceDefinitionsResponse.type = Types::ListDeviceDefinitionsResponse
    ListFunctionDefinitionVersionsRequest.add_member(:function_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the Lambda function definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionDefinitionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListFunctionDefinitionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListFunctionDefinitionVersionsRequest.type = Types::ListFunctionDefinitionVersionsRequest
    ListFunctionDefinitionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListFunctionDefinitionVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListFunctionDefinitionVersionsResponse.type = Types::ListFunctionDefinitionVersionsResponse
    ListFunctionDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListFunctionDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListFunctionDefinitionsRequest.type = Types::ListFunctionDefinitionsRequest
    ListFunctionDefinitionsResponse.add_member(:definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdefinitioninformation, location_name: 'Definitions', traits: {"smithy.api#documentation" => "Information about a definition."}))
    ListFunctionDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListFunctionDefinitionsResponse.type = Types::ListFunctionDefinitionsResponse
    ListGroupCertificateAuthoritiesRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupCertificateAuthoritiesRequest.type = Types::ListGroupCertificateAuthoritiesRequest
    ListGroupCertificateAuthoritiesResponse.add_member(:group_certificate_authorities, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofgroupcertificateauthorityproperties, location_name: 'GroupCertificateAuthorities', traits: {"smithy.api#documentation" => "A list of certificate authorities associated with the group."}))
    ListGroupCertificateAuthoritiesResponse.type = Types::ListGroupCertificateAuthoritiesResponse
    ListGroupVersionsRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListGroupVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListGroupVersionsRequest.type = Types::ListGroupVersionsRequest
    ListGroupVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListGroupVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListGroupVersionsResponse.type = Types::ListGroupVersionsResponse
    ListGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofgroupinformation, location_name: 'Groups', traits: {"smithy.api#documentation" => "Information about a group."}))
    ListGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListLoggerDefinitionVersionsRequest.add_member(:logger_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionId', traits: {"smithy.api#documentation" => "The ID of the logger definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLoggerDefinitionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListLoggerDefinitionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListLoggerDefinitionVersionsRequest.type = Types::ListLoggerDefinitionVersionsRequest
    ListLoggerDefinitionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListLoggerDefinitionVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListLoggerDefinitionVersionsResponse.type = Types::ListLoggerDefinitionVersionsResponse
    ListLoggerDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListLoggerDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListLoggerDefinitionsRequest.type = Types::ListLoggerDefinitionsRequest
    ListLoggerDefinitionsResponse.add_member(:definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdefinitioninformation, location_name: 'Definitions', traits: {"smithy.api#documentation" => "Information about a definition."}))
    ListLoggerDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListLoggerDefinitionsResponse.type = Types::ListLoggerDefinitionsResponse
    ListResourceDefinitionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListResourceDefinitionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListResourceDefinitionVersionsRequest.add_member(:resource_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the resource definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResourceDefinitionVersionsRequest.type = Types::ListResourceDefinitionVersionsRequest
    ListResourceDefinitionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListResourceDefinitionVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListResourceDefinitionVersionsResponse.type = Types::ListResourceDefinitionVersionsResponse
    ListResourceDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListResourceDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListResourceDefinitionsRequest.type = Types::ListResourceDefinitionsRequest
    ListResourceDefinitionsResponse.add_member(:definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdefinitioninformation, location_name: 'Definitions', traits: {"smithy.api#documentation" => "Information about a definition."}))
    ListResourceDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListResourceDefinitionsResponse.type = Types::ListResourceDefinitionsResponse
    ListSubscriptionDefinitionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListSubscriptionDefinitionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListSubscriptionDefinitionVersionsRequest.add_member(:subscription_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the subscription definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubscriptionDefinitionVersionsRequest.type = Types::ListSubscriptionDefinitionVersionsRequest
    ListSubscriptionDefinitionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListSubscriptionDefinitionVersionsResponse.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofversioninformation, location_name: 'Versions', traits: {"smithy.api#documentation" => "Information about a version."}))
    ListSubscriptionDefinitionVersionsResponse.type = Types::ListSubscriptionDefinitionVersionsResponse
    ListSubscriptionDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maximum number of results to be returned per request.", "smithy.api#httpQuery" => "MaxResults"}))
    ListSubscriptionDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results.", "smithy.api#httpQuery" => "NextToken"}))
    ListSubscriptionDefinitionsRequest.type = Types::ListSubscriptionDefinitionsRequest
    ListSubscriptionDefinitionsResponse.add_member(:definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdefinitioninformation, location_name: 'Definitions', traits: {"smithy.api#documentation" => "Information about a definition."}))
    ListSubscriptionDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The token for the next set of results, or ''null'' if there are no additional results."}))
    ListSubscriptionDefinitionsResponse.type = Types::ListSubscriptionDefinitionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) of the resource.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LocalDeviceResourceData.add_member(:group_owner_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupOwnerSetting, location_name: 'GroupOwnerSetting', traits: {"smithy.api#documentation" => "Group/owner related settings for local resources."}))
    LocalDeviceResourceData.add_member(:source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourcePath', traits: {"smithy.api#documentation" => "The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under ''/dev''."}))
    LocalDeviceResourceData.type = Types::LocalDeviceResourceData
    LocalVolumeResourceData.add_member(:destination_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationPath', traits: {"smithy.api#documentation" => "The absolute local path of the resource inside the Lambda environment."}))
    LocalVolumeResourceData.add_member(:group_owner_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupOwnerSetting, location_name: 'GroupOwnerSetting', traits: {"smithy.api#documentation" => "Allows you to configure additional group privileges for the Lambda process. This field is optional."}))
    LocalVolumeResourceData.add_member(:source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourcePath', traits: {"smithy.api#documentation" => "The local absolute path of the volume resource on the host. The source path for a volume resource type cannot start with ''/sys''."}))
    LocalVolumeResourceData.type = Types::LocalVolumeResourceData
    Logger.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggerComponent, location_name: 'Component', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The component that will be subject to logging.", "smithy.api#required" => {}}))
    Logger.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A descriptive or arbitrary ID for the logger. This value must be unique within the logger definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.", "smithy.api#required" => {}}))
    Logger.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggerLevel, location_name: 'Level', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The level of the logs.", "smithy.api#required" => {}}))
    Logger.add_member(:space, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Space', traits: {"smithy.api#documentation" => "The amount of file space, in KB, to use if the local file system is used for logging purposes."}))
    Logger.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggerType, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The type of log output which will be used.", "smithy.api#required" => {}}))
    Logger.type = Types::Logger
    LoggerComponent.add_member(:greengrass_system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreengrassSystem', traits: {"smithy.api#enumValue" => "GreengrassSystem"}))
    LoggerComponent.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Lambda', traits: {"smithy.api#enumValue" => "Lambda"}))
    LoggerDefinitionVersion.add_member(:loggers, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoflogger, location_name: 'Loggers', traits: {"smithy.api#documentation" => "A list of loggers."}))
    LoggerDefinitionVersion.type = Types::LoggerDefinitionVersion
    LoggerLevel.add_member(:debug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    LoggerLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    LoggerLevel.add_member(:warn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    LoggerLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggerLevel.add_member(:fatal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FATAL', traits: {"smithy.api#enumValue" => "FATAL"}))
    LoggerType.add_member(:file_system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FileSystem', traits: {"smithy.api#enumValue" => "FileSystem"}))
    LoggerType.add_member(:aws_cloud_watch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSCloudWatch', traits: {"smithy.api#enumValue" => "AWSCloudWatch"}))
    Permission.add_member(:ro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ro', traits: {"smithy.api#enumValue" => "ro"}))
    Permission.add_member(:rw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rw', traits: {"smithy.api#enumValue" => "rw"}))
    ResetDeploymentsRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    ResetDeploymentsRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#documentation" => "If true, performs a best-effort only core reset."}))
    ResetDeploymentsRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetDeploymentsRequest.type = Types::ResetDeploymentsRequest
    ResetDeploymentsResponse.add_member(:deployment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentArn', traits: {"smithy.api#documentation" => "The ARN of the deployment."}))
    ResetDeploymentsResponse.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "The ID of the deployment."}))
    ResetDeploymentsResponse.type = Types::ResetDeploymentsResponse
    Resource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The resource ID, used to refer to a resource in the Lambda function configuration. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.", "smithy.api#required" => {}}))
    Resource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The descriptive resource name, which is displayed on the AWS IoT Greengrass console. Max length 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.", "smithy.api#required" => {}}))
    Resource.add_member(:resource_data_container, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDataContainer, location_name: 'ResourceDataContainer', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A container of data for all resource types.", "smithy.api#required" => {}}))
    Resource.type = Types::Resource
    ResourceAccessPolicy.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'Permission', traits: {"smithy.api#documentation" => "The permissions that the Lambda function has to the resource. Can be one of ''rw'' (read/write) or ''ro'' (read-only)."}))
    ResourceAccessPolicy.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the resource. (This ID is assigned to the resource when you create the resource definiton.)", "smithy.api#required" => {}}))
    ResourceAccessPolicy.type = Types::ResourceAccessPolicy
    ResourceDataContainer.add_member(:local_device_resource_data, Smithy::Schema::Shapes::ShapeRef.new(shape: LocalDeviceResourceData, location_name: 'LocalDeviceResourceData', traits: {"smithy.api#documentation" => "Attributes that define the local device resource."}))
    ResourceDataContainer.add_member(:local_volume_resource_data, Smithy::Schema::Shapes::ShapeRef.new(shape: LocalVolumeResourceData, location_name: 'LocalVolumeResourceData', traits: {"smithy.api#documentation" => "Attributes that define the local volume resource."}))
    ResourceDataContainer.add_member(:s3_machine_learning_model_resource_data, Smithy::Schema::Shapes::ShapeRef.new(shape: S3MachineLearningModelResourceData, location_name: 'S3MachineLearningModelResourceData', traits: {"smithy.api#documentation" => "Attributes that define an Amazon S3 machine learning resource."}))
    ResourceDataContainer.add_member(:sage_maker_machine_learning_model_resource_data, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerMachineLearningModelResourceData, location_name: 'SageMakerMachineLearningModelResourceData', traits: {"smithy.api#documentation" => "Attributes that define an Amazon SageMaker machine learning resource."}))
    ResourceDataContainer.add_member(:secrets_manager_secret_resource_data, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretResourceData, location_name: 'SecretsManagerSecretResourceData', traits: {"smithy.api#documentation" => "Attributes that define a secret resource, which references a secret from AWS Secrets Manager."}))
    ResourceDataContainer.type = Types::ResourceDataContainer
    ResourceDefinitionVersion.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofresource, location_name: 'Resources', traits: {"smithy.api#documentation" => "A list of resources."}))
    ResourceDefinitionVersion.type = Types::ResourceDefinitionVersion
    ResourceDownloadOwnerSetting.add_member(:group_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupOwner', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The group owner of the resource. This is the name of an existing Linux OS group on the system or a GID. The group's permissions are added to the Lambda process.", "smithy.api#required" => {}}))
    ResourceDownloadOwnerSetting.add_member(:group_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'GroupPermission', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The permissions that the group owner has to the resource. Valid values are ''rw'' (read/write) or ''ro'' (read-only).", "smithy.api#required" => {}}))
    ResourceDownloadOwnerSetting.type = Types::ResourceDownloadOwnerSetting
    RuntimeConfiguration.add_member(:telemetry_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfiguration, location_name: 'TelemetryConfiguration', traits: {"smithy.api#documentation" => "Configuration for telemetry service."}))
    RuntimeConfiguration.type = Types::RuntimeConfiguration
    S3MachineLearningModelResourceData.add_member(:destination_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationPath', traits: {"smithy.api#documentation" => "The absolute local path of the resource inside the Lambda environment."}))
    S3MachineLearningModelResourceData.add_member(:owner_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDownloadOwnerSetting, location_name: 'OwnerSetting'))
    S3MachineLearningModelResourceData.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "The URI of the source model in an S3 bucket. The model package must be in tar.gz or .zip format."}))
    S3MachineLearningModelResourceData.type = Types::S3MachineLearningModelResourceData
    SageMakerMachineLearningModelResourceData.add_member(:destination_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationPath', traits: {"smithy.api#documentation" => "The absolute local path of the resource inside the Lambda environment."}))
    SageMakerMachineLearningModelResourceData.add_member(:owner_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDownloadOwnerSetting, location_name: 'OwnerSetting'))
    SageMakerMachineLearningModelResourceData.add_member(:sage_maker_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SageMakerJobArn', traits: {"smithy.api#documentation" => "The ARN of the Amazon SageMaker training job that represents the source model."}))
    SageMakerMachineLearningModelResourceData.type = Types::SageMakerMachineLearningModelResourceData
    SecretsManagerSecretResourceData.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "The ARN of the Secrets Manager secret to make available on the core. The value of the secret's latest version (represented by the ''AWSCURRENT'' staging label) is included by default."}))
    SecretsManagerSecretResourceData.add_member(:additional_staging_labels_to_download, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'AdditionalStagingLabelsToDownload', traits: {"smithy.api#documentation" => "Optional. The staging labels whose values you want to make available on the core, in addition to ''AWSCURRENT''."}))
    SecretsManagerSecretResourceData.type = Types::SecretsManagerSecretResourceData
    SoftwareToUpdate.add_member(:core, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'core', traits: {"smithy.api#enumValue" => "core"}))
    SoftwareToUpdate.add_member(:ota_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ota_agent', traits: {"smithy.api#enumValue" => "ota_agent"}))
    StartBulkDeploymentRequest.add_member(:amzn_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmznClientToken', traits: {"smithy.api#documentation" => "A client token used to correlate requests and responses.", "smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    StartBulkDeploymentRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExecutionRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file.", "smithy.api#required" => {}}))
    StartBulkDeploymentRequest.add_member(:input_file_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InputFileUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types.", "smithy.api#required" => {}}))
    StartBulkDeploymentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "Tag(s) to add to the new resource."}))
    StartBulkDeploymentRequest.type = Types::StartBulkDeploymentRequest
    StartBulkDeploymentResponse.add_member(:bulk_deployment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BulkDeploymentArn', traits: {"smithy.api#documentation" => "The ARN of the bulk deployment."}))
    StartBulkDeploymentResponse.add_member(:bulk_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BulkDeploymentId', traits: {"smithy.api#documentation" => "The ID of the bulk deployment."}))
    StartBulkDeploymentResponse.type = Types::StartBulkDeploymentResponse
    StopBulkDeploymentRequest.add_member(:bulk_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BulkDeploymentId', traits: {"smithy.api#documentation" => "The ID of the bulk deployment.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBulkDeploymentRequest.type = Types::StopBulkDeploymentRequest
    StopBulkDeploymentResponse.type = Types::StopBulkDeploymentResponse
    Subscription.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A descriptive or arbitrary ID for the subscription. This value must be unique within the subscription definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.", "smithy.api#required" => {}}))
    Subscription.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The source of the subscription. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'.", "smithy.api#required" => {}}))
    Subscription.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The MQTT topic used to route the message.", "smithy.api#required" => {}}))
    Subscription.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Target', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "Where the message is sent to. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'.", "smithy.api#required" => {}}))
    Subscription.type = Types::Subscription
    SubscriptionDefinitionVersion.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsubscription, location_name: 'Subscriptions', traits: {"smithy.api#documentation" => "A list of subscriptions."}))
    SubscriptionDefinitionVersion.type = Types::SubscriptionDefinitionVersion
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) of the resource.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Telemetry.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'On', traits: {"smithy.api#enumValue" => "On"}))
    Telemetry.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Off', traits: {"smithy.api#enumValue" => "Off"}))
    TelemetryConfiguration.add_member(:configuration_sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSyncStatus, location_name: 'ConfigurationSyncStatus', traits: {"smithy.api#documentation" => "Synchronization status of the device reported configuration with the desired configuration."}))
    TelemetryConfiguration.add_member(:telemetry, Smithy::Schema::Shapes::ShapeRef.new(shape: Telemetry, location_name: 'Telemetry', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "Configure telemetry to be on or off.", "smithy.api#required" => {}}))
    TelemetryConfiguration.type = Types::TelemetryConfiguration
    TelemetryConfigurationUpdate.add_member(:telemetry, Smithy::Schema::Shapes::ShapeRef.new(shape: Telemetry, location_name: 'Telemetry', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "Configure telemetry to be on or off.", "smithy.api#required" => {}}))
    TelemetryConfigurationUpdate.type = Types::TelemetryConfigurationUpdate
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) of the resource.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "An array of tag keys to delete", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAgentLogLevel.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    UpdateAgentLogLevel.add_member(:trace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACE', traits: {"smithy.api#enumValue" => "TRACE"}))
    UpdateAgentLogLevel.add_member(:debug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    UpdateAgentLogLevel.add_member(:verbose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERBOSE', traits: {"smithy.api#enumValue" => "VERBOSE"}))
    UpdateAgentLogLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    UpdateAgentLogLevel.add_member(:warn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    UpdateAgentLogLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    UpdateAgentLogLevel.add_member(:fatal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FATAL', traits: {"smithy.api#enumValue" => "FATAL"}))
    UpdateConnectivityInfoRequest.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconnectivityinfo, location_name: 'ConnectivityInfo', traits: {"smithy.api#documentation" => "A list of connectivity info."}))
    UpdateConnectivityInfoRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThingName', traits: {"smithy.api#documentation" => "The thing name.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.type = Types::UpdateConnectivityInfoRequest
    UpdateConnectivityInfoResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "A message about the connectivity info update request.", "smithy.api#jsonName" => "message"}))
    UpdateConnectivityInfoResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The new version of the connectivity info."}))
    UpdateConnectivityInfoResponse.type = Types::UpdateConnectivityInfoResponse
    UpdateConnectorDefinitionRequest.add_member(:connector_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectorDefinitionId', traits: {"smithy.api#documentation" => "The ID of the connector definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectorDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateConnectorDefinitionRequest.type = Types::UpdateConnectorDefinitionRequest
    UpdateConnectorDefinitionResponse.type = Types::UpdateConnectorDefinitionResponse
    UpdateCoreDefinitionRequest.add_member(:core_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CoreDefinitionId', traits: {"smithy.api#documentation" => "The ID of the core definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCoreDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateCoreDefinitionRequest.type = Types::UpdateCoreDefinitionRequest
    UpdateCoreDefinitionResponse.type = Types::UpdateCoreDefinitionResponse
    UpdateDeviceDefinitionRequest.add_member(:device_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the device definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateDeviceDefinitionRequest.type = Types::UpdateDeviceDefinitionRequest
    UpdateDeviceDefinitionResponse.type = Types::UpdateDeviceDefinitionResponse
    UpdateFunctionDefinitionRequest.add_member(:function_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the Lambda function definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateFunctionDefinitionRequest.type = Types::UpdateFunctionDefinitionRequest
    UpdateFunctionDefinitionResponse.type = Types::UpdateFunctionDefinitionResponse
    UpdateGroupCertificateConfigurationRequest.add_member(:certificate_expiry_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateExpiryInMilliseconds', traits: {"smithy.api#documentation" => "The amount of time remaining before the certificate expires, in milliseconds."}))
    UpdateGroupCertificateConfigurationRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGroupCertificateConfigurationRequest.type = Types::UpdateGroupCertificateConfigurationRequest
    UpdateGroupCertificateConfigurationResponse.add_member(:certificate_authority_expiry_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateAuthorityExpiryInMilliseconds', traits: {"smithy.api#documentation" => "The amount of time remaining before the certificate authority expires, in milliseconds."}))
    UpdateGroupCertificateConfigurationResponse.add_member(:certificate_expiry_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateExpiryInMilliseconds', traits: {"smithy.api#documentation" => "The amount of time remaining before the certificate expires, in milliseconds."}))
    UpdateGroupCertificateConfigurationResponse.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the group certificate configuration."}))
    UpdateGroupCertificateConfigurationResponse.type = Types::UpdateGroupCertificateConfigurationResponse
    UpdateGroupRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupId', traits: {"smithy.api#documentation" => "The ID of the Greengrass group.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResponse.type = Types::UpdateGroupResponse
    UpdateLoggerDefinitionRequest.add_member(:logger_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoggerDefinitionId', traits: {"smithy.api#documentation" => "The ID of the logger definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLoggerDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateLoggerDefinitionRequest.type = Types::UpdateLoggerDefinitionRequest
    UpdateLoggerDefinitionResponse.type = Types::UpdateLoggerDefinitionResponse
    UpdateResourceDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateResourceDefinitionRequest.add_member(:resource_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceDefinitionId', traits: {"smithy.api#documentation" => "The ID of the resource definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceDefinitionRequest.type = Types::UpdateResourceDefinitionRequest
    UpdateResourceDefinitionResponse.type = Types::UpdateResourceDefinitionResponse
    UpdateSubscriptionDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "The name of the definition."}))
    UpdateSubscriptionDefinitionRequest.add_member(:subscription_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionDefinitionId', traits: {"smithy.api#documentation" => "The ID of the subscription definition.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriptionDefinitionRequest.type = Types::UpdateSubscriptionDefinitionRequest
    UpdateSubscriptionDefinitionResponse.type = Types::UpdateSubscriptionDefinitionResponse
    UpdateTargets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UpdateTargetsArchitecture.add_member(:armv6l, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'armv6l', traits: {"smithy.api#enumValue" => "armv6l"}))
    UpdateTargetsArchitecture.add_member(:armv7l, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'armv7l', traits: {"smithy.api#enumValue" => "armv7l"}))
    UpdateTargetsArchitecture.add_member(:x86_64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'x86_64', traits: {"smithy.api#enumValue" => "x86_64"}))
    UpdateTargetsArchitecture.add_member(:aarch64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aarch64', traits: {"smithy.api#enumValue" => "aarch64"}))
    UpdateTargetsOperatingSystem.add_member(:ubuntu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ubuntu', traits: {"smithy.api#enumValue" => "ubuntu"}))
    UpdateTargetsOperatingSystem.add_member(:raspbian, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'raspbian', traits: {"smithy.api#enumValue" => "raspbian"}))
    UpdateTargetsOperatingSystem.add_member(:amazon_linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'amazon_linux', traits: {"smithy.api#enumValue" => "amazon_linux"}))
    UpdateTargetsOperatingSystem.add_member(:openwrt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'openwrt', traits: {"smithy.api#enumValue" => "openwrt"}))
    UpdateThingRuntimeConfigurationRequest.add_member(:telemetry_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfigurationUpdate, location_name: 'TelemetryConfiguration', traits: {"smithy.api#documentation" => "Configuration for telemetry service."}))
    UpdateThingRuntimeConfigurationRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThingName', traits: {"smithy.api#documentation" => "The thing name.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThingRuntimeConfigurationRequest.type = Types::UpdateThingRuntimeConfigurationRequest
    UpdateThingRuntimeConfigurationResponse.type = Types::UpdateThingRuntimeConfigurationResponse
    VersionInformation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The ARN of the version."}))
    VersionInformation.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "The time, in milliseconds since the epoch, when the version was created."}))
    VersionInformation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the parent definition that the version is associated with."}))
    VersionInformation.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "The ID of the version."}))
    VersionInformation.type = Types::VersionInformation
    Listofconnectivityinfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo)
    Listofconnector.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Connector)
    Listofcore.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Core)
    Listofdefinitioninformation.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionInformation)
    Listofdevice.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Device)
    Listoffunction.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Function)
    Listofgroupcertificateauthorityproperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupCertificateAuthorityProperties)
    Listofgroupinformation.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupInformation)
    Listoflogger.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Logger)
    Listofresource.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    Listofresourceaccesspolicy.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAccessPolicy)
    Listofsubscription.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    Listofversioninformation.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VersionInformation)
    ListofString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    Greengrass = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.greengrass#Greengrass"
      service.name = "Greengrass"
      service.version = "2017-06-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Greengrass", "arnNamespace" => "greengrass", "cloudFormationName" => "Greengrass", "cloudTrailEventSource" => "greengrass.amazonaws.com", "endpointPrefix" => "greengrass"}, "aws.auth#sigv4" => {"name" => "greengrass"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Greengrass"}
      service.add_operation(:associate_role_to_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#AssociateRoleToGroup"
        operation.name = "AssociateRoleToGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateRoleToGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateRoleToGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/groups/{GroupId}/role", "code" => 200}}
      end)
      service.add_operation(:associate_service_role_to_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#AssociateServiceRoleToAccount"
        operation.name = "AssociateServiceRoleToAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:create_connector_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateConnectorDefinition"
        operation.name = "CreateConnectorDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/connectors", "code" => 200}}
      end)
      service.add_operation(:create_connector_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateConnectorDefinitionVersion"
        operation.name = "CreateConnectorDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_core_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateCoreDefinition"
        operation.name = "CreateCoreDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCoreDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCoreDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/cores", "code" => 200}}
      end)
      service.add_operation(:create_core_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateCoreDefinitionVersion"
        operation.name = "CreateCoreDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCoreDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCoreDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/deployments", "code" => 200}}
      end)
      service.add_operation(:create_device_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateDeviceDefinition"
        operation.name = "CreateDeviceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeviceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeviceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/devices", "code" => 200}}
      end)
      service.add_operation(:create_device_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateDeviceDefinitionVersion"
        operation.name = "CreateDeviceDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeviceDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeviceDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_function_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateFunctionDefinition"
        operation.name = "CreateFunctionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/functions", "code" => 200}}
      end)
      service.add_operation(:create_function_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateFunctionDefinitionVersion"
        operation.name = "CreateFunctionDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups", "code" => 200}}
      end)
      service.add_operation(:create_group_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateGroupCertificateAuthority"
        operation.name = "CreateGroupCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupCertificateAuthorityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities", "code" => 200}}
      end)
      service.add_operation(:create_group_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateGroupVersion"
        operation.name = "CreateGroupVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_logger_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateLoggerDefinition"
        operation.name = "CreateLoggerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggerDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggerDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/loggers", "code" => 200}}
      end)
      service.add_operation(:create_logger_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateLoggerDefinitionVersion"
        operation.name = "CreateLoggerDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggerDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggerDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_resource_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateResourceDefinition"
        operation.name = "CreateResourceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/resources", "code" => 200}}
      end)
      service.add_operation(:create_resource_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateResourceDefinitionVersion"
        operation.name = "CreateResourceDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_software_update_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateSoftwareUpdateJob"
        operation.name = "CreateSoftwareUpdateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSoftwareUpdateJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSoftwareUpdateJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/updates", "code" => 200}}
      end)
      service.add_operation(:create_subscription_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateSubscriptionDefinition"
        operation.name = "CreateSubscriptionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/subscriptions", "code" => 200}}
      end)
      service.add_operation(:create_subscription_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateSubscriptionDefinitionVersion"
        operation.name = "CreateSubscriptionDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:delete_connector_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteConnectorDefinition"
        operation.name = "DeleteConnectorDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_core_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteCoreDefinition"
        operation.name = "DeleteCoreDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_device_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteDeviceDefinition"
        operation.name = "DeleteDeviceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_function_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteFunctionDefinition"
        operation.name = "DeleteFunctionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFunctionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFunctionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/groups/{GroupId}", "code" => 200}}
      end)
      service.add_operation(:delete_logger_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteLoggerDefinition"
        operation.name = "DeleteLoggerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggerDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggerDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_resource_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteResourceDefinition"
        operation.name = "DeleteResourceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_subscription_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteSubscriptionDefinition"
        operation.name = "DeleteSubscriptionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriptionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriptionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_role_from_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DisassociateRoleFromGroup"
        operation.name = "DisassociateRoleFromGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateRoleFromGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateRoleFromGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/groups/{GroupId}/role", "code" => 200}}
      end)
      service.add_operation(:disassociate_service_role_from_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DisassociateServiceRoleFromAccount"
        operation.name = "DisassociateServiceRoleFromAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:get_associated_role, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetAssociatedRole"
        operation.name = "GetAssociatedRole"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociatedRoleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociatedRoleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/role", "code" => 200}}
      end)
      service.add_operation(:get_bulk_deployment_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetBulkDeploymentStatus"
        operation.name = "GetBulkDeploymentStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBulkDeploymentStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBulkDeploymentStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/bulk/deployments/{BulkDeploymentId}/status", "code" => 200}}
      end)
      service.add_operation(:get_connectivity_info, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetConnectivityInfo"
        operation.name = "GetConnectivityInfo"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectivityInfoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectivityInfoResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/things/{ThingName}/connectivityInfo", "code" => 200}}
      end)
      service.add_operation(:get_connector_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetConnectorDefinition"
        operation.name = "GetConnectorDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_connector_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetConnectorDefinitionVersion"
        operation.name = "GetConnectorDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_core_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetCoreDefinition"
        operation.name = "GetCoreDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_core_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetCoreDefinitionVersion"
        operation.name = "GetCoreDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_deployment_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetDeploymentStatus"
        operation.name = "GetDeploymentStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", "code" => 200}}
      end)
      service.add_operation(:get_device_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetDeviceDefinition"
        operation.name = "GetDeviceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_device_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetDeviceDefinitionVersion"
        operation.name = "GetDeviceDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_function_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetFunctionDefinition"
        operation.name = "GetFunctionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_function_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetFunctionDefinitionVersion"
        operation.name = "GetFunctionDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroup"
        operation.name = "GetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}", "code" => 200}}
      end)
      service.add_operation(:get_group_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroupCertificateAuthority"
        operation.name = "GetGroupCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupCertificateAuthorityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", "code" => 200}}
      end)
      service.add_operation(:get_group_certificate_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroupCertificateConfiguration"
        operation.name = "GetGroupCertificateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupCertificateConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupCertificateConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", "code" => 200}}
      end)
      service.add_operation(:get_group_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroupVersion"
        operation.name = "GetGroupVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_logger_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetLoggerDefinition"
        operation.name = "GetLoggerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggerDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggerDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_logger_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetLoggerDefinitionVersion"
        operation.name = "GetLoggerDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggerDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggerDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_resource_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetResourceDefinition"
        operation.name = "GetResourceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_resource_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetResourceDefinitionVersion"
        operation.name = "GetResourceDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_service_role_for_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetServiceRoleForAccount"
        operation.name = "GetServiceRoleForAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceRoleForAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceRoleForAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:get_subscription_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetSubscriptionDefinition"
        operation.name = "GetSubscriptionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_subscription_definition_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetSubscriptionDefinitionVersion"
        operation.name = "GetSubscriptionDefinitionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_thing_runtime_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetThingRuntimeConfiguration"
        operation.name = "GetThingRuntimeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThingRuntimeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThingRuntimeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/things/{ThingName}/runtimeconfig", "code" => 200}}
      end)
      service.add_operation(:list_bulk_deployment_detailed_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListBulkDeploymentDetailedReports"
        operation.name = "ListBulkDeploymentDetailedReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBulkDeploymentDetailedReportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBulkDeploymentDetailedReportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports", "code" => 200}}
      end)
      service.add_operation(:list_bulk_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListBulkDeployments"
        operation.name = "ListBulkDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBulkDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBulkDeploymentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/bulk/deployments", "code" => 200}}
      end)
      service.add_operation(:list_connector_definition_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListConnectorDefinitionVersions"
        operation.name = "ListConnectorDefinitionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorDefinitionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorDefinitionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_connector_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListConnectorDefinitions"
        operation.name = "ListConnectorDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorDefinitionsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors", "code" => 200}}
      end)
      service.add_operation(:list_core_definition_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListCoreDefinitionVersions"
        operation.name = "ListCoreDefinitionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDefinitionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDefinitionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_core_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListCoreDefinitions"
        operation.name = "ListCoreDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDefinitionsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores", "code" => 200}}
      end)
      service.add_operation(:list_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/deployments", "code" => 200}}
      end)
      service.add_operation(:list_device_definition_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListDeviceDefinitionVersions"
        operation.name = "ListDeviceDefinitionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceDefinitionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceDefinitionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_device_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListDeviceDefinitions"
        operation.name = "ListDeviceDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceDefinitionsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices", "code" => 200}}
      end)
      service.add_operation(:list_function_definition_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListFunctionDefinitionVersions"
        operation.name = "ListFunctionDefinitionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionDefinitionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionDefinitionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_function_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListFunctionDefinitions"
        operation.name = "ListFunctionDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionDefinitionsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions", "code" => 200}}
      end)
      service.add_operation(:list_group_certificate_authorities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListGroupCertificateAuthorities"
        operation.name = "ListGroupCertificateAuthorities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupCertificateAuthoritiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupCertificateAuthoritiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities", "code" => 200}}
      end)
      service.add_operation(:list_group_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListGroupVersions"
        operation.name = "ListGroupVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListGroups"
        operation.name = "ListGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups", "code" => 200}}
      end)
      service.add_operation(:list_logger_definition_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListLoggerDefinitionVersions"
        operation.name = "ListLoggerDefinitionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggerDefinitionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggerDefinitionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_logger_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListLoggerDefinitions"
        operation.name = "ListLoggerDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggerDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggerDefinitionsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers", "code" => 200}}
      end)
      service.add_operation(:list_resource_definition_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListResourceDefinitionVersions"
        operation.name = "ListResourceDefinitionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceDefinitionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceDefinitionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_resource_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListResourceDefinitions"
        operation.name = "ListResourceDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceDefinitionsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources", "code" => 200}}
      end)
      service.add_operation(:list_subscription_definition_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListSubscriptionDefinitionVersions"
        operation.name = "ListSubscriptionDefinitionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_subscription_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListSubscriptionDefinitions"
        operation.name = "ListSubscriptionDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:reset_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ResetDeployments"
        operation.name = "ResetDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDeploymentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/deployments/$reset", "code" => 200}}
      end)
      service.add_operation(:start_bulk_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#StartBulkDeployment"
        operation.name = "StartBulkDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartBulkDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartBulkDeploymentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/bulk/deployments", "code" => 200}}
      end)
      service.add_operation(:stop_bulk_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#StopBulkDeployment"
        operation.name = "StopBulkDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopBulkDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopBulkDeploymentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/bulk/deployments/{BulkDeploymentId}/$stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_connectivity_info, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateConnectivityInfo"
        operation.name = "UpdateConnectivityInfo"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityInfoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityInfoResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/things/{ThingName}/connectivityInfo", "code" => 200}}
      end)
      service.add_operation(:update_connector_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateConnectorDefinition"
        operation.name = "UpdateConnectorDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_core_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateCoreDefinition"
        operation.name = "UpdateCoreDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCoreDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCoreDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_device_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateDeviceDefinition"
        operation.name = "UpdateDeviceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_function_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateFunctionDefinition"
        operation.name = "UpdateFunctionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/groups/{GroupId}", "code" => 200}}
      end)
      service.add_operation(:update_group_certificate_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateGroupCertificateConfiguration"
        operation.name = "UpdateGroupCertificateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupCertificateConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupCertificateConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", "code" => 200}}
      end)
      service.add_operation(:update_logger_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateLoggerDefinition"
        operation.name = "UpdateLoggerDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggerDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggerDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_resource_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateResourceDefinition"
        operation.name = "UpdateResourceDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_subscription_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateSubscriptionDefinition"
        operation.name = "UpdateSubscriptionDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_thing_runtime_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateThingRuntimeConfiguration"
        operation.name = "UpdateThingRuntimeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThingRuntimeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThingRuntimeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/things/{ThingName}/runtimeconfig", "code" => 200}}
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
