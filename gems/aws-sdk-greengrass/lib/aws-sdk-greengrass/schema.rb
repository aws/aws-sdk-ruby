# frozen_string_literal: true

# This is generated code!

module Aws::Greengrass
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AssociateRoleToGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#AssociateRoleToGroupRequest", name: "AssociateRoleToGroupRequest")
    AssociateRoleToGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#AssociateRoleToGroupResponse", name: "AssociateRoleToGroupResponse")
    AssociateServiceRoleToAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#AssociateServiceRoleToAccountRequest", name: "AssociateServiceRoleToAccountRequest")
    AssociateServiceRoleToAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#AssociateServiceRoleToAccountResponse", name: "AssociateServiceRoleToAccountResponse")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BulkDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#BulkDeployment", name: "BulkDeployment")
    BulkDeploymentMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#BulkDeploymentMetrics", name: "BulkDeploymentMetrics")
    BulkDeploymentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#BulkDeploymentResult", name: "BulkDeploymentResult")
    BulkDeploymentResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#BulkDeploymentResults", name: "BulkDeploymentResults")
    BulkDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#BulkDeploymentStatus", name: "BulkDeploymentStatus")
    BulkDeployments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#BulkDeployments", name: "BulkDeployments")
    ConfigurationSyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#ConfigurationSyncStatus", name: "ConfigurationSyncStatus")
    ConnectivityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ConnectivityInfo", name: "ConnectivityInfo")
    Connector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Connector", name: "Connector")
    ConnectorDefinitionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ConnectorDefinitionVersion", name: "ConnectorDefinitionVersion")
    Core = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Core", name: "Core")
    CoreDefinitionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CoreDefinitionVersion", name: "CoreDefinitionVersion")
    CreateConnectorDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateConnectorDefinitionRequest", name: "CreateConnectorDefinitionRequest")
    CreateConnectorDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateConnectorDefinitionResponse", name: "CreateConnectorDefinitionResponse")
    CreateConnectorDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateConnectorDefinitionVersionRequest", name: "CreateConnectorDefinitionVersionRequest")
    CreateConnectorDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateConnectorDefinitionVersionResponse", name: "CreateConnectorDefinitionVersionResponse")
    CreateCoreDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateCoreDefinitionRequest", name: "CreateCoreDefinitionRequest")
    CreateCoreDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateCoreDefinitionResponse", name: "CreateCoreDefinitionResponse")
    CreateCoreDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateCoreDefinitionVersionRequest", name: "CreateCoreDefinitionVersionRequest")
    CreateCoreDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateCoreDefinitionVersionResponse", name: "CreateCoreDefinitionVersionResponse")
    CreateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateDeploymentRequest", name: "CreateDeploymentRequest")
    CreateDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateDeploymentResponse", name: "CreateDeploymentResponse")
    CreateDeviceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateDeviceDefinitionRequest", name: "CreateDeviceDefinitionRequest")
    CreateDeviceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateDeviceDefinitionResponse", name: "CreateDeviceDefinitionResponse")
    CreateDeviceDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateDeviceDefinitionVersionRequest", name: "CreateDeviceDefinitionVersionRequest")
    CreateDeviceDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateDeviceDefinitionVersionResponse", name: "CreateDeviceDefinitionVersionResponse")
    CreateFunctionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateFunctionDefinitionRequest", name: "CreateFunctionDefinitionRequest")
    CreateFunctionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateFunctionDefinitionResponse", name: "CreateFunctionDefinitionResponse")
    CreateFunctionDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateFunctionDefinitionVersionRequest", name: "CreateFunctionDefinitionVersionRequest")
    CreateFunctionDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateFunctionDefinitionVersionResponse", name: "CreateFunctionDefinitionVersionResponse")
    CreateGroupCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateGroupCertificateAuthorityRequest", name: "CreateGroupCertificateAuthorityRequest")
    CreateGroupCertificateAuthorityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateGroupCertificateAuthorityResponse", name: "CreateGroupCertificateAuthorityResponse")
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateGroupRequest", name: "CreateGroupRequest")
    CreateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateGroupResponse", name: "CreateGroupResponse")
    CreateGroupVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateGroupVersionRequest", name: "CreateGroupVersionRequest")
    CreateGroupVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateGroupVersionResponse", name: "CreateGroupVersionResponse")
    CreateLoggerDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateLoggerDefinitionRequest", name: "CreateLoggerDefinitionRequest")
    CreateLoggerDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateLoggerDefinitionResponse", name: "CreateLoggerDefinitionResponse")
    CreateLoggerDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateLoggerDefinitionVersionRequest", name: "CreateLoggerDefinitionVersionRequest")
    CreateLoggerDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateLoggerDefinitionVersionResponse", name: "CreateLoggerDefinitionVersionResponse")
    CreateResourceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateResourceDefinitionRequest", name: "CreateResourceDefinitionRequest")
    CreateResourceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateResourceDefinitionResponse", name: "CreateResourceDefinitionResponse")
    CreateResourceDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateResourceDefinitionVersionRequest", name: "CreateResourceDefinitionVersionRequest")
    CreateResourceDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateResourceDefinitionVersionResponse", name: "CreateResourceDefinitionVersionResponse")
    CreateSoftwareUpdateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateSoftwareUpdateJobRequest", name: "CreateSoftwareUpdateJobRequest")
    CreateSoftwareUpdateJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateSoftwareUpdateJobResponse", name: "CreateSoftwareUpdateJobResponse")
    CreateSubscriptionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateSubscriptionDefinitionRequest", name: "CreateSubscriptionDefinitionRequest")
    CreateSubscriptionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateSubscriptionDefinitionResponse", name: "CreateSubscriptionDefinitionResponse")
    CreateSubscriptionDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateSubscriptionDefinitionVersionRequest", name: "CreateSubscriptionDefinitionVersionRequest")
    CreateSubscriptionDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#CreateSubscriptionDefinitionVersionResponse", name: "CreateSubscriptionDefinitionVersionResponse")
    DefinitionInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DefinitionInformation", name: "DefinitionInformation")
    DeleteConnectorDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteConnectorDefinitionRequest", name: "DeleteConnectorDefinitionRequest")
    DeleteConnectorDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteConnectorDefinitionResponse", name: "DeleteConnectorDefinitionResponse")
    DeleteCoreDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteCoreDefinitionRequest", name: "DeleteCoreDefinitionRequest")
    DeleteCoreDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteCoreDefinitionResponse", name: "DeleteCoreDefinitionResponse")
    DeleteDeviceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteDeviceDefinitionRequest", name: "DeleteDeviceDefinitionRequest")
    DeleteDeviceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteDeviceDefinitionResponse", name: "DeleteDeviceDefinitionResponse")
    DeleteFunctionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteFunctionDefinitionRequest", name: "DeleteFunctionDefinitionRequest")
    DeleteFunctionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteFunctionDefinitionResponse", name: "DeleteFunctionDefinitionResponse")
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteGroupRequest", name: "DeleteGroupRequest")
    DeleteGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteGroupResponse", name: "DeleteGroupResponse")
    DeleteLoggerDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteLoggerDefinitionRequest", name: "DeleteLoggerDefinitionRequest")
    DeleteLoggerDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteLoggerDefinitionResponse", name: "DeleteLoggerDefinitionResponse")
    DeleteResourceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteResourceDefinitionRequest", name: "DeleteResourceDefinitionRequest")
    DeleteResourceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteResourceDefinitionResponse", name: "DeleteResourceDefinitionResponse")
    DeleteSubscriptionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteSubscriptionDefinitionRequest", name: "DeleteSubscriptionDefinitionRequest")
    DeleteSubscriptionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeleteSubscriptionDefinitionResponse", name: "DeleteSubscriptionDefinitionResponse")
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Deployment", name: "Deployment")
    DeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#DeploymentType", name: "DeploymentType")
    Deployments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#Deployments", name: "Deployments")
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Device", name: "Device")
    DeviceDefinitionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DeviceDefinitionVersion", name: "DeviceDefinitionVersion")
    DisassociateRoleFromGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DisassociateRoleFromGroupRequest", name: "DisassociateRoleFromGroupRequest")
    DisassociateRoleFromGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DisassociateRoleFromGroupResponse", name: "DisassociateRoleFromGroupResponse")
    DisassociateServiceRoleFromAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DisassociateServiceRoleFromAccountRequest", name: "DisassociateServiceRoleFromAccountRequest")
    DisassociateServiceRoleFromAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#DisassociateServiceRoleFromAccountResponse", name: "DisassociateServiceRoleFromAccountResponse")
    EncodingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#EncodingType", name: "EncodingType")
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ErrorDetail", name: "ErrorDetail")
    ErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#ErrorDetails", name: "ErrorDetails")
    Function = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Function", name: "Function")
    FunctionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#FunctionConfiguration", name: "FunctionConfiguration")
    FunctionConfigurationEnvironment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#FunctionConfigurationEnvironment", name: "FunctionConfigurationEnvironment")
    FunctionDefaultConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#FunctionDefaultConfig", name: "FunctionDefaultConfig")
    FunctionDefaultExecutionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#FunctionDefaultExecutionConfig", name: "FunctionDefaultExecutionConfig")
    FunctionDefinitionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#FunctionDefinitionVersion", name: "FunctionDefinitionVersion")
    FunctionExecutionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#FunctionExecutionConfig", name: "FunctionExecutionConfig")
    FunctionIsolationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#FunctionIsolationMode", name: "FunctionIsolationMode")
    FunctionRunAsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#FunctionRunAsConfig", name: "FunctionRunAsConfig")
    GetAssociatedRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetAssociatedRoleRequest", name: "GetAssociatedRoleRequest")
    GetAssociatedRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetAssociatedRoleResponse", name: "GetAssociatedRoleResponse")
    GetBulkDeploymentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetBulkDeploymentStatusRequest", name: "GetBulkDeploymentStatusRequest")
    GetBulkDeploymentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetBulkDeploymentStatusResponse", name: "GetBulkDeploymentStatusResponse")
    GetConnectivityInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetConnectivityInfoRequest", name: "GetConnectivityInfoRequest")
    GetConnectivityInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetConnectivityInfoResponse", name: "GetConnectivityInfoResponse")
    GetConnectorDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetConnectorDefinitionRequest", name: "GetConnectorDefinitionRequest")
    GetConnectorDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetConnectorDefinitionResponse", name: "GetConnectorDefinitionResponse")
    GetConnectorDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetConnectorDefinitionVersionRequest", name: "GetConnectorDefinitionVersionRequest")
    GetConnectorDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetConnectorDefinitionVersionResponse", name: "GetConnectorDefinitionVersionResponse")
    GetCoreDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetCoreDefinitionRequest", name: "GetCoreDefinitionRequest")
    GetCoreDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetCoreDefinitionResponse", name: "GetCoreDefinitionResponse")
    GetCoreDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetCoreDefinitionVersionRequest", name: "GetCoreDefinitionVersionRequest")
    GetCoreDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetCoreDefinitionVersionResponse", name: "GetCoreDefinitionVersionResponse")
    GetDeploymentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetDeploymentStatusRequest", name: "GetDeploymentStatusRequest")
    GetDeploymentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetDeploymentStatusResponse", name: "GetDeploymentStatusResponse")
    GetDeviceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetDeviceDefinitionRequest", name: "GetDeviceDefinitionRequest")
    GetDeviceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetDeviceDefinitionResponse", name: "GetDeviceDefinitionResponse")
    GetDeviceDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetDeviceDefinitionVersionRequest", name: "GetDeviceDefinitionVersionRequest")
    GetDeviceDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetDeviceDefinitionVersionResponse", name: "GetDeviceDefinitionVersionResponse")
    GetFunctionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetFunctionDefinitionRequest", name: "GetFunctionDefinitionRequest")
    GetFunctionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetFunctionDefinitionResponse", name: "GetFunctionDefinitionResponse")
    GetFunctionDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetFunctionDefinitionVersionRequest", name: "GetFunctionDefinitionVersionRequest")
    GetFunctionDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetFunctionDefinitionVersionResponse", name: "GetFunctionDefinitionVersionResponse")
    GetGroupCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupCertificateAuthorityRequest", name: "GetGroupCertificateAuthorityRequest")
    GetGroupCertificateAuthorityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupCertificateAuthorityResponse", name: "GetGroupCertificateAuthorityResponse")
    GetGroupCertificateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupCertificateConfigurationRequest", name: "GetGroupCertificateConfigurationRequest")
    GetGroupCertificateConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupCertificateConfigurationResponse", name: "GetGroupCertificateConfigurationResponse")
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupRequest", name: "GetGroupRequest")
    GetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupResponse", name: "GetGroupResponse")
    GetGroupVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupVersionRequest", name: "GetGroupVersionRequest")
    GetGroupVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetGroupVersionResponse", name: "GetGroupVersionResponse")
    GetLoggerDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetLoggerDefinitionRequest", name: "GetLoggerDefinitionRequest")
    GetLoggerDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetLoggerDefinitionResponse", name: "GetLoggerDefinitionResponse")
    GetLoggerDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetLoggerDefinitionVersionRequest", name: "GetLoggerDefinitionVersionRequest")
    GetLoggerDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetLoggerDefinitionVersionResponse", name: "GetLoggerDefinitionVersionResponse")
    GetResourceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetResourceDefinitionRequest", name: "GetResourceDefinitionRequest")
    GetResourceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetResourceDefinitionResponse", name: "GetResourceDefinitionResponse")
    GetResourceDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetResourceDefinitionVersionRequest", name: "GetResourceDefinitionVersionRequest")
    GetResourceDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetResourceDefinitionVersionResponse", name: "GetResourceDefinitionVersionResponse")
    GetServiceRoleForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetServiceRoleForAccountRequest", name: "GetServiceRoleForAccountRequest")
    GetServiceRoleForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetServiceRoleForAccountResponse", name: "GetServiceRoleForAccountResponse")
    GetSubscriptionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetSubscriptionDefinitionRequest", name: "GetSubscriptionDefinitionRequest")
    GetSubscriptionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetSubscriptionDefinitionResponse", name: "GetSubscriptionDefinitionResponse")
    GetSubscriptionDefinitionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetSubscriptionDefinitionVersionRequest", name: "GetSubscriptionDefinitionVersionRequest")
    GetSubscriptionDefinitionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetSubscriptionDefinitionVersionResponse", name: "GetSubscriptionDefinitionVersionResponse")
    GetThingRuntimeConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetThingRuntimeConfigurationRequest", name: "GetThingRuntimeConfigurationRequest")
    GetThingRuntimeConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GetThingRuntimeConfigurationResponse", name: "GetThingRuntimeConfigurationResponse")
    GroupCertificateAuthorityProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GroupCertificateAuthorityProperties", name: "GroupCertificateAuthorityProperties")
    GroupInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GroupInformation", name: "GroupInformation")
    GroupOwnerSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GroupOwnerSetting", name: "GroupOwnerSetting")
    GroupVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#GroupVersion", name: "GroupVersion")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListBulkDeploymentDetailedReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListBulkDeploymentDetailedReportsRequest", name: "ListBulkDeploymentDetailedReportsRequest")
    ListBulkDeploymentDetailedReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListBulkDeploymentDetailedReportsResponse", name: "ListBulkDeploymentDetailedReportsResponse")
    ListBulkDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListBulkDeploymentsRequest", name: "ListBulkDeploymentsRequest")
    ListBulkDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListBulkDeploymentsResponse", name: "ListBulkDeploymentsResponse")
    ListConnectorDefinitionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListConnectorDefinitionVersionsRequest", name: "ListConnectorDefinitionVersionsRequest")
    ListConnectorDefinitionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListConnectorDefinitionVersionsResponse", name: "ListConnectorDefinitionVersionsResponse")
    ListConnectorDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListConnectorDefinitionsRequest", name: "ListConnectorDefinitionsRequest")
    ListConnectorDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListConnectorDefinitionsResponse", name: "ListConnectorDefinitionsResponse")
    ListCoreDefinitionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListCoreDefinitionVersionsRequest", name: "ListCoreDefinitionVersionsRequest")
    ListCoreDefinitionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListCoreDefinitionVersionsResponse", name: "ListCoreDefinitionVersionsResponse")
    ListCoreDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListCoreDefinitionsRequest", name: "ListCoreDefinitionsRequest")
    ListCoreDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListCoreDefinitionsResponse", name: "ListCoreDefinitionsResponse")
    ListDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListDeploymentsRequest", name: "ListDeploymentsRequest")
    ListDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListDeploymentsResponse", name: "ListDeploymentsResponse")
    ListDeviceDefinitionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListDeviceDefinitionVersionsRequest", name: "ListDeviceDefinitionVersionsRequest")
    ListDeviceDefinitionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListDeviceDefinitionVersionsResponse", name: "ListDeviceDefinitionVersionsResponse")
    ListDeviceDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListDeviceDefinitionsRequest", name: "ListDeviceDefinitionsRequest")
    ListDeviceDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListDeviceDefinitionsResponse", name: "ListDeviceDefinitionsResponse")
    ListFunctionDefinitionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListFunctionDefinitionVersionsRequest", name: "ListFunctionDefinitionVersionsRequest")
    ListFunctionDefinitionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListFunctionDefinitionVersionsResponse", name: "ListFunctionDefinitionVersionsResponse")
    ListFunctionDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListFunctionDefinitionsRequest", name: "ListFunctionDefinitionsRequest")
    ListFunctionDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListFunctionDefinitionsResponse", name: "ListFunctionDefinitionsResponse")
    ListGroupCertificateAuthoritiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListGroupCertificateAuthoritiesRequest", name: "ListGroupCertificateAuthoritiesRequest")
    ListGroupCertificateAuthoritiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListGroupCertificateAuthoritiesResponse", name: "ListGroupCertificateAuthoritiesResponse")
    ListGroupVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListGroupVersionsRequest", name: "ListGroupVersionsRequest")
    ListGroupVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListGroupVersionsResponse", name: "ListGroupVersionsResponse")
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListGroupsRequest", name: "ListGroupsRequest")
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListGroupsResponse", name: "ListGroupsResponse")
    ListLoggerDefinitionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListLoggerDefinitionVersionsRequest", name: "ListLoggerDefinitionVersionsRequest")
    ListLoggerDefinitionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListLoggerDefinitionVersionsResponse", name: "ListLoggerDefinitionVersionsResponse")
    ListLoggerDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListLoggerDefinitionsRequest", name: "ListLoggerDefinitionsRequest")
    ListLoggerDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListLoggerDefinitionsResponse", name: "ListLoggerDefinitionsResponse")
    ListResourceDefinitionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListResourceDefinitionVersionsRequest", name: "ListResourceDefinitionVersionsRequest")
    ListResourceDefinitionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListResourceDefinitionVersionsResponse", name: "ListResourceDefinitionVersionsResponse")
    ListResourceDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListResourceDefinitionsRequest", name: "ListResourceDefinitionsRequest")
    ListResourceDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListResourceDefinitionsResponse", name: "ListResourceDefinitionsResponse")
    ListSubscriptionDefinitionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListSubscriptionDefinitionVersionsRequest", name: "ListSubscriptionDefinitionVersionsRequest")
    ListSubscriptionDefinitionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListSubscriptionDefinitionVersionsResponse", name: "ListSubscriptionDefinitionVersionsResponse")
    ListSubscriptionDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListSubscriptionDefinitionsRequest", name: "ListSubscriptionDefinitionsRequest")
    ListSubscriptionDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListSubscriptionDefinitionsResponse", name: "ListSubscriptionDefinitionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LocalDeviceResourceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#LocalDeviceResourceData", name: "LocalDeviceResourceData")
    LocalVolumeResourceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#LocalVolumeResourceData", name: "LocalVolumeResourceData")
    Logger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Logger", name: "Logger")
    LoggerComponent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#LoggerComponent", name: "LoggerComponent")
    LoggerDefinitionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#LoggerDefinitionVersion", name: "LoggerDefinitionVersion")
    LoggerLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#LoggerLevel", name: "LoggerLevel")
    LoggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#LoggerType", name: "LoggerType")
    Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#Permission", name: "Permission")
    ResetDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ResetDeploymentsRequest", name: "ResetDeploymentsRequest")
    ResetDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ResetDeploymentsResponse", name: "ResetDeploymentsResponse")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Resource", name: "Resource")
    ResourceAccessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ResourceAccessPolicy", name: "ResourceAccessPolicy")
    ResourceDataContainer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ResourceDataContainer", name: "ResourceDataContainer")
    ResourceDefinitionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ResourceDefinitionVersion", name: "ResourceDefinitionVersion")
    ResourceDownloadOwnerSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#ResourceDownloadOwnerSetting", name: "ResourceDownloadOwnerSetting")
    RuntimeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#RuntimeConfiguration", name: "RuntimeConfiguration")
    S3MachineLearningModelResourceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#S3MachineLearningModelResourceData", name: "S3MachineLearningModelResourceData")
    S3UrlSignerRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrass#S3UrlSignerRole", name: "S3UrlSignerRole")
    SageMakerMachineLearningModelResourceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#SageMakerMachineLearningModelResourceData", name: "SageMakerMachineLearningModelResourceData")
    SecretsManagerSecretResourceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#SecretsManagerSecretResourceData", name: "SecretsManagerSecretResourceData")
    SoftwareToUpdate = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#SoftwareToUpdate", name: "SoftwareToUpdate")
    StartBulkDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#StartBulkDeploymentRequest", name: "StartBulkDeploymentRequest")
    StartBulkDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#StartBulkDeploymentResponse", name: "StartBulkDeploymentResponse")
    StopBulkDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#StopBulkDeploymentRequest", name: "StopBulkDeploymentRequest")
    StopBulkDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#StopBulkDeploymentResponse", name: "StopBulkDeploymentResponse")
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#Subscription", name: "Subscription")
    SubscriptionDefinitionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#SubscriptionDefinitionVersion", name: "SubscriptionDefinitionVersion")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#TagResourceRequest", name: "TagResourceRequest")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrass#Tags", name: "Tags")
    Telemetry = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#Telemetry", name: "Telemetry")
    TelemetryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#TelemetryConfiguration", name: "TelemetryConfiguration")
    TelemetryConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#TelemetryConfigurationUpdate", name: "TelemetryConfigurationUpdate")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateAgentLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#UpdateAgentLogLevel", name: "UpdateAgentLogLevel")
    UpdateConnectivityInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateConnectivityInfoRequest", name: "UpdateConnectivityInfoRequest")
    UpdateConnectivityInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateConnectivityInfoResponse", name: "UpdateConnectivityInfoResponse")
    UpdateConnectorDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateConnectorDefinitionRequest", name: "UpdateConnectorDefinitionRequest")
    UpdateConnectorDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateConnectorDefinitionResponse", name: "UpdateConnectorDefinitionResponse")
    UpdateCoreDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateCoreDefinitionRequest", name: "UpdateCoreDefinitionRequest")
    UpdateCoreDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateCoreDefinitionResponse", name: "UpdateCoreDefinitionResponse")
    UpdateDeviceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateDeviceDefinitionRequest", name: "UpdateDeviceDefinitionRequest")
    UpdateDeviceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateDeviceDefinitionResponse", name: "UpdateDeviceDefinitionResponse")
    UpdateFunctionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateFunctionDefinitionRequest", name: "UpdateFunctionDefinitionRequest")
    UpdateFunctionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateFunctionDefinitionResponse", name: "UpdateFunctionDefinitionResponse")
    UpdateGroupCertificateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateGroupCertificateConfigurationRequest", name: "UpdateGroupCertificateConfigurationRequest")
    UpdateGroupCertificateConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateGroupCertificateConfigurationResponse", name: "UpdateGroupCertificateConfigurationResponse")
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateGroupRequest", name: "UpdateGroupRequest")
    UpdateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateGroupResponse", name: "UpdateGroupResponse")
    UpdateLoggerDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateLoggerDefinitionRequest", name: "UpdateLoggerDefinitionRequest")
    UpdateLoggerDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateLoggerDefinitionResponse", name: "UpdateLoggerDefinitionResponse")
    UpdateResourceDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateResourceDefinitionRequest", name: "UpdateResourceDefinitionRequest")
    UpdateResourceDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateResourceDefinitionResponse", name: "UpdateResourceDefinitionResponse")
    UpdateSubscriptionDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateSubscriptionDefinitionRequest", name: "UpdateSubscriptionDefinitionRequest")
    UpdateSubscriptionDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateSubscriptionDefinitionResponse", name: "UpdateSubscriptionDefinitionResponse")
    UpdateTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#UpdateTargets", name: "UpdateTargets")
    UpdateTargetsArchitecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#UpdateTargetsArchitecture", name: "UpdateTargetsArchitecture")
    UpdateTargetsOperatingSystem = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrass#UpdateTargetsOperatingSystem", name: "UpdateTargetsOperatingSystem")
    UpdateThingRuntimeConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateThingRuntimeConfigurationRequest", name: "UpdateThingRuntimeConfigurationRequest")
    UpdateThingRuntimeConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#UpdateThingRuntimeConfigurationResponse", name: "UpdateThingRuntimeConfigurationResponse")
    VersionInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrass#VersionInformation", name: "VersionInformation")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.greengrass#__boolean", name: "Boolean")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrass#__integer", name: "Integer")
    Listofconnectivityinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfConnectivityInfo", name: "Listofconnectivityinfo")
    Listofconnector = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfConnector", name: "Listofconnector")
    Listofcore = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfCore", name: "Listofcore")
    Listofdefinitioninformation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfDefinitionInformation", name: "Listofdefinitioninformation")
    Listofdevice = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfDevice", name: "Listofdevice")
    Listoffunction = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfFunction", name: "Listoffunction")
    Listofgroupcertificateauthorityproperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfGroupCertificateAuthorityProperties", name: "Listofgroupcertificateauthorityproperties")
    Listofgroupinformation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfGroupInformation", name: "Listofgroupinformation")
    Listoflogger = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfLogger", name: "Listoflogger")
    Listofresource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfResource", name: "Listofresource")
    Listofresourceaccesspolicy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfResourceAccessPolicy", name: "Listofresourceaccesspolicy")
    Listofsubscription = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfSubscription", name: "Listofsubscription")
    Listofversioninformation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOfVersionInformation", name: "Listofversioninformation")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrass#__listOf__string", name: "ListofString")
    MapofString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrass#__mapOf__string", name: "MapofString")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrass#__string", name: "String")

    AssociateRoleToGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateRoleToGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateRoleToGroupRequest.type = Types::AssociateRoleToGroupRequest
    AssociateRoleToGroupResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssociatedAt"))
    AssociateRoleToGroupResponse.type = Types::AssociateRoleToGroupResponse
    AssociateServiceRoleToAccountRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateServiceRoleToAccountRequest.type = Types::AssociateServiceRoleToAccountRequest
    AssociateServiceRoleToAccountResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssociatedAt"))
    AssociateServiceRoleToAccountResponse.type = Types::AssociateServiceRoleToAccountResponse
    BadRequestException.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    BulkDeployment.add_member(:bulk_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BulkDeploymentArn"))
    BulkDeployment.add_member(:bulk_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BulkDeploymentId"))
    BulkDeployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt"))
    BulkDeployment.type = Types::BulkDeployment
    BulkDeploymentMetrics.add_member(:invalid_input_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InvalidInputRecords"))
    BulkDeploymentMetrics.add_member(:records_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RecordsProcessed"))
    BulkDeploymentMetrics.add_member(:retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RetryAttempts"))
    BulkDeploymentMetrics.type = Types::BulkDeploymentMetrics
    BulkDeploymentResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt"))
    BulkDeploymentResult.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentArn"))
    BulkDeploymentResult.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentId"))
    BulkDeploymentResult.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentStatus"))
    BulkDeploymentResult.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "DeploymentType"))
    BulkDeploymentResult.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    BulkDeploymentResult.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    BulkDeploymentResult.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupArn"))
    BulkDeploymentResult.type = Types::BulkDeploymentResult
    BulkDeploymentResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BulkDeploymentResult, name: "member")
    BulkDeploymentStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Initializing", traits: {"smithy.api#enumValue" => "Initializing"}))
    BulkDeploymentStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Running", traits: {"smithy.api#enumValue" => "Running"}))
    BulkDeploymentStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completed", traits: {"smithy.api#enumValue" => "Completed"}))
    BulkDeploymentStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    BulkDeploymentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    BulkDeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BulkDeployments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BulkDeployment, name: "member")
    ConfigurationSyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InSync", traits: {"smithy.api#enumValue" => "InSync"}))
    ConfigurationSyncStatus.add_member(:out_of_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OutOfSync", traits: {"smithy.api#enumValue" => "OutOfSync"}))
    ConnectivityInfo.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HostAddress"))
    ConnectivityInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    ConnectivityInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Metadata"))
    ConnectivityInfo.add_member(:port_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PortNumber"))
    ConnectivityInfo.type = Types::ConnectivityInfo
    Connector.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Connector.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Connector.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Parameters"))
    Connector.type = Types::Connector
    ConnectorDefinitionVersion.add_member(:connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconnector, name: "Connectors"))
    ConnectorDefinitionVersion.type = Types::ConnectorDefinitionVersion
    Core.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Core.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Core.add_member(:sync_shadow, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SyncShadow"))
    Core.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThingArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Core.type = Types::Core
    CoreDefinitionVersion.add_member(:cores, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcore, name: "Cores"))
    CoreDefinitionVersion.type = Types::CoreDefinitionVersion
    CreateConnectorDefinitionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateConnectorDefinitionRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDefinitionVersion, name: "InitialVersion"))
    CreateConnectorDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateConnectorDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateConnectorDefinitionRequest.type = Types::CreateConnectorDefinitionRequest
    CreateConnectorDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateConnectorDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateConnectorDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateConnectorDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateConnectorDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateConnectorDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateConnectorDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateConnectorDefinitionResponse.type = Types::CreateConnectorDefinitionResponse
    CreateConnectorDefinitionVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateConnectorDefinitionVersionRequest.add_member(:connector_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConnectorDefinitionVersionRequest.add_member(:connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconnector, name: "Connectors"))
    CreateConnectorDefinitionVersionRequest.type = Types::CreateConnectorDefinitionVersionRequest
    CreateConnectorDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateConnectorDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateConnectorDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateConnectorDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateConnectorDefinitionVersionResponse.type = Types::CreateConnectorDefinitionVersionResponse
    CreateCoreDefinitionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateCoreDefinitionRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDefinitionVersion, name: "InitialVersion"))
    CreateCoreDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateCoreDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateCoreDefinitionRequest.type = Types::CreateCoreDefinitionRequest
    CreateCoreDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateCoreDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateCoreDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateCoreDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateCoreDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateCoreDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateCoreDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateCoreDefinitionResponse.type = Types::CreateCoreDefinitionResponse
    CreateCoreDefinitionVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateCoreDefinitionVersionRequest.add_member(:core_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCoreDefinitionVersionRequest.add_member(:cores, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcore, name: "Cores"))
    CreateCoreDefinitionVersionRequest.type = Types::CreateCoreDefinitionVersionRequest
    CreateCoreDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateCoreDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateCoreDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateCoreDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateCoreDefinitionVersionResponse.type = Types::CreateCoreDefinitionVersionResponse
    CreateDeploymentRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentId"))
    CreateDeploymentRequest.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "DeploymentType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:group_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupVersionId"))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResponse.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentArn"))
    CreateDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentId"))
    CreateDeploymentResponse.type = Types::CreateDeploymentResponse
    CreateDeviceDefinitionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateDeviceDefinitionRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDefinitionVersion, name: "InitialVersion"))
    CreateDeviceDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateDeviceDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateDeviceDefinitionRequest.type = Types::CreateDeviceDefinitionRequest
    CreateDeviceDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateDeviceDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateDeviceDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateDeviceDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateDeviceDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateDeviceDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateDeviceDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateDeviceDefinitionResponse.type = Types::CreateDeviceDefinitionResponse
    CreateDeviceDefinitionVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateDeviceDefinitionVersionRequest.add_member(:device_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeviceDefinitionVersionRequest.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdevice, name: "Devices"))
    CreateDeviceDefinitionVersionRequest.type = Types::CreateDeviceDefinitionVersionRequest
    CreateDeviceDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateDeviceDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateDeviceDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateDeviceDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateDeviceDefinitionVersionResponse.type = Types::CreateDeviceDefinitionVersionResponse
    CreateFunctionDefinitionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateFunctionDefinitionRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionDefinitionVersion, name: "InitialVersion"))
    CreateFunctionDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateFunctionDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateFunctionDefinitionRequest.type = Types::CreateFunctionDefinitionRequest
    CreateFunctionDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateFunctionDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateFunctionDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateFunctionDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateFunctionDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateFunctionDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateFunctionDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateFunctionDefinitionResponse.type = Types::CreateFunctionDefinitionResponse
    CreateFunctionDefinitionVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateFunctionDefinitionVersionRequest.add_member(:default_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionDefaultConfig, name: "DefaultConfig"))
    CreateFunctionDefinitionVersionRequest.add_member(:function_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFunctionDefinitionVersionRequest.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoffunction, name: "Functions"))
    CreateFunctionDefinitionVersionRequest.type = Types::CreateFunctionDefinitionVersionRequest
    CreateFunctionDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateFunctionDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateFunctionDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateFunctionDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateFunctionDefinitionVersionResponse.type = Types::CreateFunctionDefinitionVersionResponse
    CreateGroupCertificateAuthorityRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateGroupCertificateAuthorityRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGroupCertificateAuthorityRequest.type = Types::CreateGroupCertificateAuthorityRequest
    CreateGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupCertificateAuthorityArn"))
    CreateGroupCertificateAuthorityResponse.type = Types::CreateGroupCertificateAuthorityResponse
    CreateGroupRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateGroupRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupVersion, name: "InitialVersion"))
    CreateGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateGroupResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateGroupResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateGroupResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateGroupResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateGroupResponse.type = Types::CreateGroupResponse
    CreateGroupVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateGroupVersionRequest.add_member(:connector_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:core_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:device_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:function_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGroupVersionRequest.add_member(:logger_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:resource_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:subscription_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionVersionArn"))
    CreateGroupVersionRequest.type = Types::CreateGroupVersionRequest
    CreateGroupVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateGroupVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateGroupVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateGroupVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateGroupVersionResponse.type = Types::CreateGroupVersionResponse
    CreateLoggerDefinitionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateLoggerDefinitionRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggerDefinitionVersion, name: "InitialVersion"))
    CreateLoggerDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateLoggerDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateLoggerDefinitionRequest.type = Types::CreateLoggerDefinitionRequest
    CreateLoggerDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateLoggerDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateLoggerDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateLoggerDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateLoggerDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateLoggerDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateLoggerDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateLoggerDefinitionResponse.type = Types::CreateLoggerDefinitionResponse
    CreateLoggerDefinitionVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateLoggerDefinitionVersionRequest.add_member(:logger_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLoggerDefinitionVersionRequest.add_member(:loggers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflogger, name: "Loggers"))
    CreateLoggerDefinitionVersionRequest.type = Types::CreateLoggerDefinitionVersionRequest
    CreateLoggerDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateLoggerDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateLoggerDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateLoggerDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateLoggerDefinitionVersionResponse.type = Types::CreateLoggerDefinitionVersionResponse
    CreateResourceDefinitionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateResourceDefinitionRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDefinitionVersion, name: "InitialVersion"))
    CreateResourceDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateResourceDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateResourceDefinitionRequest.type = Types::CreateResourceDefinitionRequest
    CreateResourceDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateResourceDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateResourceDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateResourceDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateResourceDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateResourceDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateResourceDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateResourceDefinitionResponse.type = Types::CreateResourceDefinitionResponse
    CreateResourceDefinitionVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateResourceDefinitionVersionRequest.add_member(:resource_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourceDefinitionVersionRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources"))
    CreateResourceDefinitionVersionRequest.type = Types::CreateResourceDefinitionVersionRequest
    CreateResourceDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateResourceDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateResourceDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateResourceDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateResourceDefinitionVersionResponse.type = Types::CreateResourceDefinitionVersionResponse
    CreateSoftwareUpdateJobRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateSoftwareUpdateJobRequest.add_member(:s3_url_signer_role, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UrlSignerRole, name: "S3UrlSignerRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:software_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareToUpdate, name: "SoftwareToUpdate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:update_agent_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAgentLogLevel, name: "UpdateAgentLogLevel"))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTargets, name: "UpdateTargets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTargetsArchitecture, name: "UpdateTargetsArchitecture", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets_operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTargetsOperatingSystem, name: "UpdateTargetsOperatingSystem", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSoftwareUpdateJobRequest.type = Types::CreateSoftwareUpdateJobRequest
    CreateSoftwareUpdateJobResponse.add_member(:iot_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IotJobArn"))
    CreateSoftwareUpdateJobResponse.add_member(:iot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IotJobId"))
    CreateSoftwareUpdateJobResponse.add_member(:platform_software_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformSoftwareVersion"))
    CreateSoftwareUpdateJobResponse.type = Types::CreateSoftwareUpdateJobResponse
    CreateSubscriptionDefinitionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateSubscriptionDefinitionRequest.add_member(:initial_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDefinitionVersion, name: "InitialVersion"))
    CreateSubscriptionDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateSubscriptionDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateSubscriptionDefinitionRequest.type = Types::CreateSubscriptionDefinitionRequest
    CreateSubscriptionDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateSubscriptionDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateSubscriptionDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateSubscriptionDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    CreateSubscriptionDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    CreateSubscriptionDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    CreateSubscriptionDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreateSubscriptionDefinitionResponse.type = Types::CreateSubscriptionDefinitionResponse
    CreateSubscriptionDefinitionVersionRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    CreateSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSubscriptionDefinitionVersionRequest.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsubscription, name: "Subscriptions"))
    CreateSubscriptionDefinitionVersionRequest.type = Types::CreateSubscriptionDefinitionVersionRequest
    CreateSubscriptionDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateSubscriptionDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    CreateSubscriptionDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    CreateSubscriptionDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateSubscriptionDefinitionVersionResponse.type = Types::CreateSubscriptionDefinitionVersionResponse
    DefinitionInformation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DefinitionInformation.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    DefinitionInformation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    DefinitionInformation.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    DefinitionInformation.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    DefinitionInformation.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    DefinitionInformation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DefinitionInformation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DefinitionInformation.type = Types::DefinitionInformation
    DeleteConnectorDefinitionRequest.add_member(:connector_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorDefinitionRequest.type = Types::DeleteConnectorDefinitionRequest
    DeleteConnectorDefinitionResponse.type = Types::DeleteConnectorDefinitionResponse
    DeleteCoreDefinitionRequest.add_member(:core_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreDefinitionRequest.type = Types::DeleteCoreDefinitionRequest
    DeleteCoreDefinitionResponse.type = Types::DeleteCoreDefinitionResponse
    DeleteDeviceDefinitionRequest.add_member(:device_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceDefinitionRequest.type = Types::DeleteDeviceDefinitionRequest
    DeleteDeviceDefinitionResponse.type = Types::DeleteDeviceDefinitionResponse
    DeleteFunctionDefinitionRequest.add_member(:function_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionDefinitionRequest.type = Types::DeleteFunctionDefinitionRequest
    DeleteFunctionDefinitionResponse.type = Types::DeleteFunctionDefinitionResponse
    DeleteGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    DeleteLoggerDefinitionRequest.add_member(:logger_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLoggerDefinitionRequest.type = Types::DeleteLoggerDefinitionRequest
    DeleteLoggerDefinitionResponse.type = Types::DeleteLoggerDefinitionResponse
    DeleteResourceDefinitionRequest.add_member(:resource_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceDefinitionRequest.type = Types::DeleteResourceDefinitionRequest
    DeleteResourceDefinitionResponse.type = Types::DeleteResourceDefinitionResponse
    DeleteSubscriptionDefinitionRequest.add_member(:subscription_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSubscriptionDefinitionRequest.type = Types::DeleteSubscriptionDefinitionRequest
    DeleteSubscriptionDefinitionResponse.type = Types::DeleteSubscriptionDefinitionResponse
    Deployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt"))
    Deployment.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentArn"))
    Deployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentId"))
    Deployment.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "DeploymentType"))
    Deployment.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupArn"))
    Deployment.type = Types::Deployment
    DeploymentType.add_member(:new_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NewDeployment", traits: {"smithy.api#enumValue" => "NewDeployment"}))
    DeploymentType.add_member(:redeployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Redeployment", traits: {"smithy.api#enumValue" => "Redeployment"}))
    DeploymentType.add_member(:reset_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResetDeployment", traits: {"smithy.api#enumValue" => "ResetDeployment"}))
    DeploymentType.add_member(:force_reset_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForceResetDeployment", traits: {"smithy.api#enumValue" => "ForceResetDeployment"}))
    Deployments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Deployment, name: "member")
    Device.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Device.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Device.add_member(:sync_shadow, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SyncShadow"))
    Device.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThingArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Device.type = Types::Device
    DeviceDefinitionVersion.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdevice, name: "Devices"))
    DeviceDefinitionVersion.type = Types::DeviceDefinitionVersion
    DisassociateRoleFromGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRoleFromGroupRequest.type = Types::DisassociateRoleFromGroupRequest
    DisassociateRoleFromGroupResponse.add_member(:disassociated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisassociatedAt"))
    DisassociateRoleFromGroupResponse.type = Types::DisassociateRoleFromGroupResponse
    DisassociateServiceRoleFromAccountRequest.type = Types::DisassociateServiceRoleFromAccountRequest
    DisassociateServiceRoleFromAccountResponse.add_member(:disassociated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisassociatedAt"))
    DisassociateServiceRoleFromAccountResponse.type = Types::DisassociateServiceRoleFromAccountResponse
    EncodingType.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "binary", traits: {"smithy.api#enumValue" => "binary"}))
    EncodingType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "json", traits: {"smithy.api#enumValue" => "json"}))
    ErrorDetail.add_member(:detailed_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DetailedErrorCode"))
    ErrorDetail.add_member(:detailed_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DetailedErrorMessage"))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "member")
    Function.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionArn"))
    Function.add_member(:function_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "FunctionConfiguration"))
    Function.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Function.type = Types::Function
    FunctionConfiguration.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType"))
    FunctionConfiguration.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfigurationEnvironment, name: "Environment"))
    FunctionConfiguration.add_member(:exec_args, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecArgs"))
    FunctionConfiguration.add_member(:executable, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Executable"))
    FunctionConfiguration.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MemorySize"))
    FunctionConfiguration.add_member(:pinned, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Pinned"))
    FunctionConfiguration.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Timeout"))
    FunctionConfiguration.add_member(:function_runtime_override, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionRuntimeOverride"))
    FunctionConfiguration.type = Types::FunctionConfiguration
    FunctionConfigurationEnvironment.add_member(:access_sysfs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AccessSysfs"))
    FunctionConfigurationEnvironment.add_member(:execution, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionExecutionConfig, name: "Execution"))
    FunctionConfigurationEnvironment.add_member(:resource_access_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresourceaccesspolicy, name: "ResourceAccessPolicies"))
    FunctionConfigurationEnvironment.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Variables"))
    FunctionConfigurationEnvironment.type = Types::FunctionConfigurationEnvironment
    FunctionDefaultConfig.add_member(:execution, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionDefaultExecutionConfig, name: "Execution"))
    FunctionDefaultConfig.type = Types::FunctionDefaultConfig
    FunctionDefaultExecutionConfig.add_member(:isolation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionIsolationMode, name: "IsolationMode"))
    FunctionDefaultExecutionConfig.add_member(:run_as, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRunAsConfig, name: "RunAs"))
    FunctionDefaultExecutionConfig.type = Types::FunctionDefaultExecutionConfig
    FunctionDefinitionVersion.add_member(:default_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionDefaultConfig, name: "DefaultConfig"))
    FunctionDefinitionVersion.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoffunction, name: "Functions"))
    FunctionDefinitionVersion.type = Types::FunctionDefinitionVersion
    FunctionExecutionConfig.add_member(:isolation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionIsolationMode, name: "IsolationMode"))
    FunctionExecutionConfig.add_member(:run_as, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRunAsConfig, name: "RunAs"))
    FunctionExecutionConfig.type = Types::FunctionExecutionConfig
    FunctionIsolationMode.add_member(:greengrass_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreengrassContainer", traits: {"smithy.api#enumValue" => "GreengrassContainer"}))
    FunctionIsolationMode.add_member(:no_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoContainer", traits: {"smithy.api#enumValue" => "NoContainer"}))
    FunctionRunAsConfig.add_member(:gid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Gid"))
    FunctionRunAsConfig.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Uid"))
    FunctionRunAsConfig.type = Types::FunctionRunAsConfig
    GetAssociatedRoleRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedRoleRequest.type = Types::GetAssociatedRoleRequest
    GetAssociatedRoleResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssociatedAt"))
    GetAssociatedRoleResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn"))
    GetAssociatedRoleResponse.type = Types::GetAssociatedRoleResponse
    GetBulkDeploymentStatusRequest.add_member(:bulk_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BulkDeploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBulkDeploymentStatusRequest.type = Types::GetBulkDeploymentStatusRequest
    GetBulkDeploymentStatusResponse.add_member(:bulk_deployment_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkDeploymentMetrics, name: "BulkDeploymentMetrics"))
    GetBulkDeploymentStatusResponse.add_member(:bulk_deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkDeploymentStatus, name: "BulkDeploymentStatus"))
    GetBulkDeploymentStatusResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt"))
    GetBulkDeploymentStatusResponse.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    GetBulkDeploymentStatusResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    GetBulkDeploymentStatusResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetBulkDeploymentStatusResponse.type = Types::GetBulkDeploymentStatusResponse
    GetConnectivityInfoRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectivityInfoRequest.type = Types::GetConnectivityInfoRequest
    GetConnectivityInfoResponse.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconnectivityinfo, name: "ConnectivityInfo"))
    GetConnectivityInfoResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    GetConnectivityInfoResponse.type = Types::GetConnectivityInfoResponse
    GetConnectorDefinitionRequest.add_member(:connector_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorDefinitionRequest.type = Types::GetConnectorDefinitionRequest
    GetConnectorDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetConnectorDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetConnectorDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetConnectorDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetConnectorDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetConnectorDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetConnectorDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetConnectorDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetConnectorDefinitionResponse.type = Types::GetConnectorDefinitionResponse
    GetConnectorDefinitionVersionRequest.add_member(:connector_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorDefinitionVersionRequest.add_member(:connector_definition_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorDefinitionVersionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetConnectorDefinitionVersionRequest.type = Types::GetConnectorDefinitionVersionRequest
    GetConnectorDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetConnectorDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetConnectorDefinitionVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDefinitionVersion, name: "Definition"))
    GetConnectorDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetConnectorDefinitionVersionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetConnectorDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetConnectorDefinitionVersionResponse.type = Types::GetConnectorDefinitionVersionResponse
    GetCoreDefinitionRequest.add_member(:core_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDefinitionRequest.type = Types::GetCoreDefinitionRequest
    GetCoreDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetCoreDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetCoreDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetCoreDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetCoreDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetCoreDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetCoreDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetCoreDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetCoreDefinitionResponse.type = Types::GetCoreDefinitionResponse
    GetCoreDefinitionVersionRequest.add_member(:core_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDefinitionVersionRequest.add_member(:core_definition_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDefinitionVersionRequest.type = Types::GetCoreDefinitionVersionRequest
    GetCoreDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetCoreDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetCoreDefinitionVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDefinitionVersion, name: "Definition"))
    GetCoreDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetCoreDefinitionVersionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetCoreDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetCoreDefinitionVersionResponse.type = Types::GetCoreDefinitionVersionResponse
    GetDeploymentStatusRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentStatusRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentStatusRequest.type = Types::GetDeploymentStatusRequest
    GetDeploymentStatusResponse.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentStatus"))
    GetDeploymentStatusResponse.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "DeploymentType"))
    GetDeploymentStatusResponse.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    GetDeploymentStatusResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    GetDeploymentStatusResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UpdatedAt"))
    GetDeploymentStatusResponse.type = Types::GetDeploymentStatusResponse
    GetDeviceDefinitionRequest.add_member(:device_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceDefinitionRequest.type = Types::GetDeviceDefinitionRequest
    GetDeviceDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetDeviceDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetDeviceDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetDeviceDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetDeviceDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetDeviceDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetDeviceDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetDeviceDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetDeviceDefinitionResponse.type = Types::GetDeviceDefinitionResponse
    GetDeviceDefinitionVersionRequest.add_member(:device_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceDefinitionVersionRequest.add_member(:device_definition_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceDefinitionVersionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetDeviceDefinitionVersionRequest.type = Types::GetDeviceDefinitionVersionRequest
    GetDeviceDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetDeviceDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetDeviceDefinitionVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDefinitionVersion, name: "Definition"))
    GetDeviceDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetDeviceDefinitionVersionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetDeviceDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetDeviceDefinitionVersionResponse.type = Types::GetDeviceDefinitionVersionResponse
    GetFunctionDefinitionRequest.add_member(:function_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionDefinitionRequest.type = Types::GetFunctionDefinitionRequest
    GetFunctionDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetFunctionDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetFunctionDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetFunctionDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetFunctionDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetFunctionDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetFunctionDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetFunctionDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetFunctionDefinitionResponse.type = Types::GetFunctionDefinitionResponse
    GetFunctionDefinitionVersionRequest.add_member(:function_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionDefinitionVersionRequest.add_member(:function_definition_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionDefinitionVersionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetFunctionDefinitionVersionRequest.type = Types::GetFunctionDefinitionVersionRequest
    GetFunctionDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetFunctionDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetFunctionDefinitionVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionDefinitionVersion, name: "Definition"))
    GetFunctionDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetFunctionDefinitionVersionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetFunctionDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetFunctionDefinitionVersionResponse.type = Types::GetFunctionDefinitionVersionResponse
    GetGroupCertificateAuthorityRequest.add_member(:certificate_authority_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateAuthorityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^(?!configuration).*$", "smithy.api#required" => {}}))
    GetGroupCertificateAuthorityRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupCertificateAuthorityRequest.type = Types::GetGroupCertificateAuthorityRequest
    GetGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupCertificateAuthorityArn"))
    GetGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupCertificateAuthorityId"))
    GetGroupCertificateAuthorityResponse.add_member(:pem_encoded_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PemEncodedCertificate"))
    GetGroupCertificateAuthorityResponse.type = Types::GetGroupCertificateAuthorityResponse
    GetGroupCertificateConfigurationRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupCertificateConfigurationRequest.type = Types::GetGroupCertificateConfigurationRequest
    GetGroupCertificateConfigurationResponse.add_member(:certificate_authority_expiry_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateAuthorityExpiryInMilliseconds"))
    GetGroupCertificateConfigurationResponse.add_member(:certificate_expiry_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateExpiryInMilliseconds"))
    GetGroupCertificateConfigurationResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId"))
    GetGroupCertificateConfigurationResponse.type = Types::GetGroupCertificateConfigurationResponse
    GetGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetGroupResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetGroupResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetGroupResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetGroupResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetGroupResponse.type = Types::GetGroupResponse
    GetGroupVersionRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupVersionRequest.add_member(:group_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupVersionRequest.type = Types::GetGroupVersionRequest
    GetGroupVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetGroupVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetGroupVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupVersion, name: "Definition"))
    GetGroupVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetGroupVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetGroupVersionResponse.type = Types::GetGroupVersionResponse
    GetLoggerDefinitionRequest.add_member(:logger_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLoggerDefinitionRequest.type = Types::GetLoggerDefinitionRequest
    GetLoggerDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetLoggerDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetLoggerDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetLoggerDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetLoggerDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetLoggerDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetLoggerDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetLoggerDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetLoggerDefinitionResponse.type = Types::GetLoggerDefinitionResponse
    GetLoggerDefinitionVersionRequest.add_member(:logger_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLoggerDefinitionVersionRequest.add_member(:logger_definition_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLoggerDefinitionVersionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetLoggerDefinitionVersionRequest.type = Types::GetLoggerDefinitionVersionRequest
    GetLoggerDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetLoggerDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetLoggerDefinitionVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggerDefinitionVersion, name: "Definition"))
    GetLoggerDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetLoggerDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetLoggerDefinitionVersionResponse.type = Types::GetLoggerDefinitionVersionResponse
    GetResourceDefinitionRequest.add_member(:resource_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceDefinitionRequest.type = Types::GetResourceDefinitionRequest
    GetResourceDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetResourceDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetResourceDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetResourceDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetResourceDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetResourceDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetResourceDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetResourceDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetResourceDefinitionResponse.type = Types::GetResourceDefinitionResponse
    GetResourceDefinitionVersionRequest.add_member(:resource_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceDefinitionVersionRequest.add_member(:resource_definition_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceDefinitionVersionRequest.type = Types::GetResourceDefinitionVersionRequest
    GetResourceDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetResourceDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetResourceDefinitionVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDefinitionVersion, name: "Definition"))
    GetResourceDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetResourceDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetResourceDefinitionVersionResponse.type = Types::GetResourceDefinitionVersionResponse
    GetServiceRoleForAccountRequest.type = Types::GetServiceRoleForAccountRequest
    GetServiceRoleForAccountResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssociatedAt"))
    GetServiceRoleForAccountResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn"))
    GetServiceRoleForAccountResponse.type = Types::GetServiceRoleForAccountResponse
    GetSubscriptionDefinitionRequest.add_member(:subscription_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriptionDefinitionRequest.type = Types::GetSubscriptionDefinitionRequest
    GetSubscriptionDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetSubscriptionDefinitionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetSubscriptionDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetSubscriptionDefinitionResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GetSubscriptionDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GetSubscriptionDefinitionResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GetSubscriptionDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetSubscriptionDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetSubscriptionDefinitionResponse.type = Types::GetSubscriptionDefinitionResponse
    GetSubscriptionDefinitionVersionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionVersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriptionDefinitionVersionRequest.type = Types::GetSubscriptionDefinitionVersionRequest
    GetSubscriptionDefinitionVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetSubscriptionDefinitionVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GetSubscriptionDefinitionVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDefinitionVersion, name: "Definition"))
    GetSubscriptionDefinitionVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GetSubscriptionDefinitionVersionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetSubscriptionDefinitionVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetSubscriptionDefinitionVersionResponse.type = Types::GetSubscriptionDefinitionVersionResponse
    GetThingRuntimeConfigurationRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThingRuntimeConfigurationRequest.type = Types::GetThingRuntimeConfigurationRequest
    GetThingRuntimeConfigurationResponse.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeConfiguration, name: "RuntimeConfiguration"))
    GetThingRuntimeConfigurationResponse.type = Types::GetThingRuntimeConfigurationResponse
    GroupCertificateAuthorityProperties.add_member(:group_certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupCertificateAuthorityArn"))
    GroupCertificateAuthorityProperties.add_member(:group_certificate_authority_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupCertificateAuthorityId"))
    GroupCertificateAuthorityProperties.type = Types::GroupCertificateAuthorityProperties
    GroupInformation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GroupInformation.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    GroupInformation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    GroupInformation.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastUpdatedTimestamp"))
    GroupInformation.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersion"))
    GroupInformation.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestVersionArn"))
    GroupInformation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GroupInformation.type = Types::GroupInformation
    GroupOwnerSetting.add_member(:auto_add_group_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoAddGroupOwner"))
    GroupOwnerSetting.add_member(:group_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupOwner"))
    GroupOwnerSetting.type = Types::GroupOwnerSetting
    GroupVersion.add_member(:connector_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionVersionArn"))
    GroupVersion.add_member(:core_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionVersionArn"))
    GroupVersion.add_member(:device_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionVersionArn"))
    GroupVersion.add_member(:function_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionVersionArn"))
    GroupVersion.add_member(:logger_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionVersionArn"))
    GroupVersion.add_member(:resource_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionVersionArn"))
    GroupVersion.add_member(:subscription_definition_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionVersionArn"))
    GroupVersion.type = Types::GroupVersion
    InternalServerErrorException.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListBulkDeploymentDetailedReportsRequest.add_member(:bulk_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BulkDeploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBulkDeploymentDetailedReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListBulkDeploymentDetailedReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBulkDeploymentDetailedReportsRequest.type = Types::ListBulkDeploymentDetailedReportsRequest
    ListBulkDeploymentDetailedReportsResponse.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkDeploymentResults, name: "Deployments"))
    ListBulkDeploymentDetailedReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBulkDeploymentDetailedReportsResponse.type = Types::ListBulkDeploymentDetailedReportsResponse
    ListBulkDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListBulkDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListBulkDeploymentsRequest.type = Types::ListBulkDeploymentsRequest
    ListBulkDeploymentsResponse.add_member(:bulk_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkDeployments, name: "BulkDeployments"))
    ListBulkDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBulkDeploymentsResponse.type = Types::ListBulkDeploymentsResponse
    ListConnectorDefinitionVersionsRequest.add_member(:connector_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConnectorDefinitionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorDefinitionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConnectorDefinitionVersionsRequest.type = Types::ListConnectorDefinitionVersionsRequest
    ListConnectorDefinitionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListConnectorDefinitionVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListConnectorDefinitionVersionsResponse.type = Types::ListConnectorDefinitionVersionsResponse
    ListConnectorDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConnectorDefinitionsRequest.type = Types::ListConnectorDefinitionsRequest
    ListConnectorDefinitionsResponse.add_member(:definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdefinitioninformation, name: "Definitions"))
    ListConnectorDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListConnectorDefinitionsResponse.type = Types::ListConnectorDefinitionsResponse
    ListCoreDefinitionVersionsRequest.add_member(:core_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCoreDefinitionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCoreDefinitionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCoreDefinitionVersionsRequest.type = Types::ListCoreDefinitionVersionsRequest
    ListCoreDefinitionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListCoreDefinitionVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListCoreDefinitionVersionsResponse.type = Types::ListCoreDefinitionVersionsResponse
    ListCoreDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCoreDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCoreDefinitionsRequest.type = Types::ListCoreDefinitionsRequest
    ListCoreDefinitionsResponse.add_member(:definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdefinitioninformation, name: "Definitions"))
    ListCoreDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListCoreDefinitionsResponse.type = Types::ListCoreDefinitionsResponse
    ListDeploymentsRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListDeploymentsResponse.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: Deployments, name: "Deployments"))
    ListDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDeploymentsResponse.type = Types::ListDeploymentsResponse
    ListDeviceDefinitionVersionsRequest.add_member(:device_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeviceDefinitionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListDeviceDefinitionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDeviceDefinitionVersionsRequest.type = Types::ListDeviceDefinitionVersionsRequest
    ListDeviceDefinitionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDeviceDefinitionVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListDeviceDefinitionVersionsResponse.type = Types::ListDeviceDefinitionVersionsResponse
    ListDeviceDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListDeviceDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDeviceDefinitionsRequest.type = Types::ListDeviceDefinitionsRequest
    ListDeviceDefinitionsResponse.add_member(:definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdefinitioninformation, name: "Definitions"))
    ListDeviceDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDeviceDefinitionsResponse.type = Types::ListDeviceDefinitionsResponse
    ListFunctionDefinitionVersionsRequest.add_member(:function_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionDefinitionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListFunctionDefinitionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListFunctionDefinitionVersionsRequest.type = Types::ListFunctionDefinitionVersionsRequest
    ListFunctionDefinitionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFunctionDefinitionVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListFunctionDefinitionVersionsResponse.type = Types::ListFunctionDefinitionVersionsResponse
    ListFunctionDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListFunctionDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListFunctionDefinitionsRequest.type = Types::ListFunctionDefinitionsRequest
    ListFunctionDefinitionsResponse.add_member(:definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdefinitioninformation, name: "Definitions"))
    ListFunctionDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFunctionDefinitionsResponse.type = Types::ListFunctionDefinitionsResponse
    ListGroupCertificateAuthoritiesRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupCertificateAuthoritiesRequest.type = Types::ListGroupCertificateAuthoritiesRequest
    ListGroupCertificateAuthoritiesResponse.add_member(:group_certificate_authorities, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgroupcertificateauthorityproperties, name: "GroupCertificateAuthorities"))
    ListGroupCertificateAuthoritiesResponse.type = Types::ListGroupCertificateAuthoritiesResponse
    ListGroupVersionsRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListGroupVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListGroupVersionsRequest.type = Types::ListGroupVersionsRequest
    ListGroupVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListGroupVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListGroupVersionsResponse.type = Types::ListGroupVersionsResponse
    ListGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgroupinformation, name: "Groups"))
    ListGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListLoggerDefinitionVersionsRequest.add_member(:logger_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLoggerDefinitionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLoggerDefinitionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLoggerDefinitionVersionsRequest.type = Types::ListLoggerDefinitionVersionsRequest
    ListLoggerDefinitionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLoggerDefinitionVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListLoggerDefinitionVersionsResponse.type = Types::ListLoggerDefinitionVersionsResponse
    ListLoggerDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLoggerDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLoggerDefinitionsRequest.type = Types::ListLoggerDefinitionsRequest
    ListLoggerDefinitionsResponse.add_member(:definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdefinitioninformation, name: "Definitions"))
    ListLoggerDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLoggerDefinitionsResponse.type = Types::ListLoggerDefinitionsResponse
    ListResourceDefinitionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListResourceDefinitionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListResourceDefinitionVersionsRequest.add_member(:resource_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResourceDefinitionVersionsRequest.type = Types::ListResourceDefinitionVersionsRequest
    ListResourceDefinitionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListResourceDefinitionVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListResourceDefinitionVersionsResponse.type = Types::ListResourceDefinitionVersionsResponse
    ListResourceDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListResourceDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListResourceDefinitionsRequest.type = Types::ListResourceDefinitionsRequest
    ListResourceDefinitionsResponse.add_member(:definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdefinitioninformation, name: "Definitions"))
    ListResourceDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListResourceDefinitionsResponse.type = Types::ListResourceDefinitionsResponse
    ListSubscriptionDefinitionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSubscriptionDefinitionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSubscriptionDefinitionVersionsRequest.add_member(:subscription_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubscriptionDefinitionVersionsRequest.type = Types::ListSubscriptionDefinitionVersionsRequest
    ListSubscriptionDefinitionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSubscriptionDefinitionVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversioninformation, name: "Versions"))
    ListSubscriptionDefinitionVersionsResponse.type = Types::ListSubscriptionDefinitionVersionsResponse
    ListSubscriptionDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSubscriptionDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSubscriptionDefinitionsRequest.type = Types::ListSubscriptionDefinitionsRequest
    ListSubscriptionDefinitionsResponse.add_member(:definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdefinitioninformation, name: "Definitions"))
    ListSubscriptionDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSubscriptionDefinitionsResponse.type = Types::ListSubscriptionDefinitionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LocalDeviceResourceData.add_member(:group_owner_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupOwnerSetting, name: "GroupOwnerSetting"))
    LocalDeviceResourceData.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourcePath"))
    LocalDeviceResourceData.type = Types::LocalDeviceResourceData
    LocalVolumeResourceData.add_member(:destination_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationPath"))
    LocalVolumeResourceData.add_member(:group_owner_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupOwnerSetting, name: "GroupOwnerSetting"))
    LocalVolumeResourceData.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourcePath"))
    LocalVolumeResourceData.type = Types::LocalVolumeResourceData
    Logger.add_member(:component, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggerComponent, name: "Component", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Logger.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Logger.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggerLevel, name: "Level", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Logger.add_member(:space, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Space"))
    Logger.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggerType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Logger.type = Types::Logger
    LoggerComponent.add_member(:greengrass_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreengrassSystem", traits: {"smithy.api#enumValue" => "GreengrassSystem"}))
    LoggerComponent.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lambda", traits: {"smithy.api#enumValue" => "Lambda"}))
    LoggerDefinitionVersion.add_member(:loggers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflogger, name: "Loggers"))
    LoggerDefinitionVersion.type = Types::LoggerDefinitionVersion
    LoggerLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    LoggerLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LoggerLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    LoggerLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggerLevel.add_member(:fatal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FATAL", traits: {"smithy.api#enumValue" => "FATAL"}))
    LoggerType.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FileSystem", traits: {"smithy.api#enumValue" => "FileSystem"}))
    LoggerType.add_member(:aws_cloud_watch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSCloudWatch", traits: {"smithy.api#enumValue" => "AWSCloudWatch"}))
    Permission.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ro", traits: {"smithy.api#enumValue" => "ro"}))
    Permission.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "rw", traits: {"smithy.api#enumValue" => "rw"}))
    ResetDeploymentsRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    ResetDeploymentsRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force"))
    ResetDeploymentsRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetDeploymentsRequest.type = Types::ResetDeploymentsRequest
    ResetDeploymentsResponse.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentArn"))
    ResetDeploymentsResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentId"))
    ResetDeploymentsResponse.type = Types::ResetDeploymentsResponse
    Resource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Resource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Resource.add_member(:resource_data_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataContainer, name: "ResourceDataContainer", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Resource.type = Types::Resource
    ResourceAccessPolicy.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission"))
    ResourceAccessPolicy.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceAccessPolicy.type = Types::ResourceAccessPolicy
    ResourceDataContainer.add_member(:local_device_resource_data, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalDeviceResourceData, name: "LocalDeviceResourceData"))
    ResourceDataContainer.add_member(:local_volume_resource_data, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalVolumeResourceData, name: "LocalVolumeResourceData"))
    ResourceDataContainer.add_member(:s3_machine_learning_model_resource_data, ::Smithy::Schema::Shapes::MemberShape.new(target: S3MachineLearningModelResourceData, name: "S3MachineLearningModelResourceData"))
    ResourceDataContainer.add_member(:sage_maker_machine_learning_model_resource_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerMachineLearningModelResourceData, name: "SageMakerMachineLearningModelResourceData"))
    ResourceDataContainer.add_member(:secrets_manager_secret_resource_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerSecretResourceData, name: "SecretsManagerSecretResourceData"))
    ResourceDataContainer.type = Types::ResourceDataContainer
    ResourceDefinitionVersion.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources"))
    ResourceDefinitionVersion.type = Types::ResourceDefinitionVersion
    ResourceDownloadOwnerSetting.add_member(:group_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupOwner", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceDownloadOwnerSetting.add_member(:group_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "GroupPermission", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceDownloadOwnerSetting.type = Types::ResourceDownloadOwnerSetting
    RuntimeConfiguration.add_member(:telemetry_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfiguration, name: "TelemetryConfiguration"))
    RuntimeConfiguration.type = Types::RuntimeConfiguration
    S3MachineLearningModelResourceData.add_member(:destination_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationPath"))
    S3MachineLearningModelResourceData.add_member(:owner_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDownloadOwnerSetting, name: "OwnerSetting"))
    S3MachineLearningModelResourceData.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Uri"))
    S3MachineLearningModelResourceData.type = Types::S3MachineLearningModelResourceData
    SageMakerMachineLearningModelResourceData.add_member(:destination_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationPath"))
    SageMakerMachineLearningModelResourceData.add_member(:owner_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDownloadOwnerSetting, name: "OwnerSetting"))
    SageMakerMachineLearningModelResourceData.add_member(:sage_maker_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SageMakerJobArn"))
    SageMakerMachineLearningModelResourceData.type = Types::SageMakerMachineLearningModelResourceData
    SecretsManagerSecretResourceData.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    SecretsManagerSecretResourceData.add_member(:additional_staging_labels_to_download, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "AdditionalStagingLabelsToDownload"))
    SecretsManagerSecretResourceData.type = Types::SecretsManagerSecretResourceData
    SoftwareToUpdate.add_member(:core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "core", traits: {"smithy.api#enumValue" => "core"}))
    SoftwareToUpdate.add_member(:ota_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ota_agent", traits: {"smithy.api#enumValue" => "ota_agent"}))
    StartBulkDeploymentRequest.add_member(:amzn_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmznClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token"}))
    StartBulkDeploymentRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartBulkDeploymentRequest.add_member(:input_file_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InputFileUri", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartBulkDeploymentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    StartBulkDeploymentRequest.type = Types::StartBulkDeploymentRequest
    StartBulkDeploymentResponse.add_member(:bulk_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BulkDeploymentArn"))
    StartBulkDeploymentResponse.add_member(:bulk_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BulkDeploymentId"))
    StartBulkDeploymentResponse.type = Types::StartBulkDeploymentResponse
    StopBulkDeploymentRequest.add_member(:bulk_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BulkDeploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBulkDeploymentRequest.type = Types::StopBulkDeploymentRequest
    StopBulkDeploymentResponse.type = Types::StopBulkDeploymentResponse
    Subscription.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Subscription.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Subscription.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Subject", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Subscription.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Target", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Subscription.type = Types::Subscription
    SubscriptionDefinitionVersion.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsubscription, name: "Subscriptions"))
    SubscriptionDefinitionVersion.type = Types::SubscriptionDefinitionVersion
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    Telemetry.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "On", traits: {"smithy.api#enumValue" => "On"}))
    Telemetry.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Off", traits: {"smithy.api#enumValue" => "Off"}))
    TelemetryConfiguration.add_member(:configuration_sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSyncStatus, name: "ConfigurationSyncStatus"))
    TelemetryConfiguration.add_member(:telemetry, ::Smithy::Schema::Shapes::MemberShape.new(target: Telemetry, name: "Telemetry", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TelemetryConfiguration.type = Types::TelemetryConfiguration
    TelemetryConfigurationUpdate.add_member(:telemetry, ::Smithy::Schema::Shapes::MemberShape.new(target: Telemetry, name: "Telemetry", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TelemetryConfigurationUpdate.type = Types::TelemetryConfigurationUpdate
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAgentLogLevel.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    UpdateAgentLogLevel.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACE", traits: {"smithy.api#enumValue" => "TRACE"}))
    UpdateAgentLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    UpdateAgentLogLevel.add_member(:verbose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERBOSE", traits: {"smithy.api#enumValue" => "VERBOSE"}))
    UpdateAgentLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    UpdateAgentLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    UpdateAgentLogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    UpdateAgentLogLevel.add_member(:fatal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FATAL", traits: {"smithy.api#enumValue" => "FATAL"}))
    UpdateConnectivityInfoRequest.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconnectivityinfo, name: "ConnectivityInfo"))
    UpdateConnectivityInfoRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.type = Types::UpdateConnectivityInfoRequest
    UpdateConnectivityInfoResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    UpdateConnectivityInfoResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    UpdateConnectivityInfoResponse.type = Types::UpdateConnectivityInfoResponse
    UpdateConnectorDefinitionRequest.add_member(:connector_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectorDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectorDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateConnectorDefinitionRequest.type = Types::UpdateConnectorDefinitionRequest
    UpdateConnectorDefinitionResponse.type = Types::UpdateConnectorDefinitionResponse
    UpdateCoreDefinitionRequest.add_member(:core_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CoreDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCoreDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateCoreDefinitionRequest.type = Types::UpdateCoreDefinitionRequest
    UpdateCoreDefinitionResponse.type = Types::UpdateCoreDefinitionResponse
    UpdateDeviceDefinitionRequest.add_member(:device_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateDeviceDefinitionRequest.type = Types::UpdateDeviceDefinitionRequest
    UpdateDeviceDefinitionResponse.type = Types::UpdateDeviceDefinitionResponse
    UpdateFunctionDefinitionRequest.add_member(:function_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateFunctionDefinitionRequest.type = Types::UpdateFunctionDefinitionRequest
    UpdateFunctionDefinitionResponse.type = Types::UpdateFunctionDefinitionResponse
    UpdateGroupCertificateConfigurationRequest.add_member(:certificate_expiry_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateExpiryInMilliseconds"))
    UpdateGroupCertificateConfigurationRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGroupCertificateConfigurationRequest.type = Types::UpdateGroupCertificateConfigurationRequest
    UpdateGroupCertificateConfigurationResponse.add_member(:certificate_authority_expiry_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateAuthorityExpiryInMilliseconds"))
    UpdateGroupCertificateConfigurationResponse.add_member(:certificate_expiry_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateExpiryInMilliseconds"))
    UpdateGroupCertificateConfigurationResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId"))
    UpdateGroupCertificateConfigurationResponse.type = Types::UpdateGroupCertificateConfigurationResponse
    UpdateGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResponse.type = Types::UpdateGroupResponse
    UpdateLoggerDefinitionRequest.add_member(:logger_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoggerDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLoggerDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateLoggerDefinitionRequest.type = Types::UpdateLoggerDefinitionRequest
    UpdateLoggerDefinitionResponse.type = Types::UpdateLoggerDefinitionResponse
    UpdateResourceDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateResourceDefinitionRequest.add_member(:resource_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceDefinitionRequest.type = Types::UpdateResourceDefinitionRequest
    UpdateResourceDefinitionResponse.type = Types::UpdateResourceDefinitionResponse
    UpdateSubscriptionDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateSubscriptionDefinitionRequest.add_member(:subscription_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriptionDefinitionRequest.type = Types::UpdateSubscriptionDefinitionRequest
    UpdateSubscriptionDefinitionResponse.type = Types::UpdateSubscriptionDefinitionResponse
    UpdateTargets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    UpdateTargetsArchitecture.add_member(:armv6l, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "armv6l", traits: {"smithy.api#enumValue" => "armv6l"}))
    UpdateTargetsArchitecture.add_member(:armv7l, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "armv7l", traits: {"smithy.api#enumValue" => "armv7l"}))
    UpdateTargetsArchitecture.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "x86_64", traits: {"smithy.api#enumValue" => "x86_64"}))
    UpdateTargetsArchitecture.add_member(:aarch64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aarch64", traits: {"smithy.api#enumValue" => "aarch64"}))
    UpdateTargetsOperatingSystem.add_member(:ubuntu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ubuntu", traits: {"smithy.api#enumValue" => "ubuntu"}))
    UpdateTargetsOperatingSystem.add_member(:raspbian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "raspbian", traits: {"smithy.api#enumValue" => "raspbian"}))
    UpdateTargetsOperatingSystem.add_member(:amazon_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "amazon_linux", traits: {"smithy.api#enumValue" => "amazon_linux"}))
    UpdateTargetsOperatingSystem.add_member(:openwrt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "openwrt", traits: {"smithy.api#enumValue" => "openwrt"}))
    UpdateThingRuntimeConfigurationRequest.add_member(:telemetry_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurationUpdate, name: "TelemetryConfiguration"))
    UpdateThingRuntimeConfigurationRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThingRuntimeConfigurationRequest.type = Types::UpdateThingRuntimeConfigurationRequest
    UpdateThingRuntimeConfigurationResponse.type = Types::UpdateThingRuntimeConfigurationResponse
    VersionInformation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    VersionInformation.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationTimestamp"))
    VersionInformation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    VersionInformation.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    VersionInformation.type = Types::VersionInformation
    Listofconnectivityinfo.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityInfo, name: "member")
    Listofconnector.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Connector, name: "member")
    Listofcore.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Core, name: "member")
    Listofdefinitioninformation.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionInformation, name: "member")
    Listofdevice.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "member")
    Listoffunction.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Function, name: "member")
    Listofgroupcertificateauthorityproperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupCertificateAuthorityProperties, name: "member")
    Listofgroupinformation.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupInformation, name: "member")
    Listoflogger.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Logger, name: "member")
    Listofresource.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member")
    Listofresourceaccesspolicy.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAccessPolicy, name: "member")
    Listofsubscription.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "member")
    Listofversioninformation.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VersionInformation, name: "member")
    ListofString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    MapofString.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    MapofString.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")

    Greengrass = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.greengrass#Greengrass"
      service.name = "Greengrass"
      service.version = "2017-06-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Greengrass", "arnNamespace" => "greengrass", "cloudFormationName" => "Greengrass", "cloudTrailEventSource" => "greengrass.amazonaws.com", "endpointPrefix" => "greengrass"}, "aws.auth#sigv4" => {"name" => "greengrass"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWS Greengrass"}
      service.add_operation(:associate_role_to_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#AssociateRoleToGroup"
        operation.name = "AssociateRoleToGroup"
        operation.input = AssociateRoleToGroupRequest
        operation.output = AssociateRoleToGroupResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/groups/{GroupId}/role", "code" => 200}}
      end)
      service.add_operation(:associate_service_role_to_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#AssociateServiceRoleToAccount"
        operation.name = "AssociateServiceRoleToAccount"
        operation.input = AssociateServiceRoleToAccountRequest
        operation.output = AssociateServiceRoleToAccountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:create_connector_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateConnectorDefinition"
        operation.name = "CreateConnectorDefinition"
        operation.input = CreateConnectorDefinitionRequest
        operation.output = CreateConnectorDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/connectors", "code" => 200}}
      end)
      service.add_operation(:create_connector_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateConnectorDefinitionVersion"
        operation.name = "CreateConnectorDefinitionVersion"
        operation.input = CreateConnectorDefinitionVersionRequest
        operation.output = CreateConnectorDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_core_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateCoreDefinition"
        operation.name = "CreateCoreDefinition"
        operation.input = CreateCoreDefinitionRequest
        operation.output = CreateCoreDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/cores", "code" => 200}}
      end)
      service.add_operation(:create_core_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateCoreDefinitionVersion"
        operation.name = "CreateCoreDefinitionVersion"
        operation.input = CreateCoreDefinitionVersionRequest
        operation.output = CreateCoreDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = CreateDeploymentRequest
        operation.output = CreateDeploymentResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/deployments", "code" => 200}}
      end)
      service.add_operation(:create_device_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateDeviceDefinition"
        operation.name = "CreateDeviceDefinition"
        operation.input = CreateDeviceDefinitionRequest
        operation.output = CreateDeviceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/devices", "code" => 200}}
      end)
      service.add_operation(:create_device_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateDeviceDefinitionVersion"
        operation.name = "CreateDeviceDefinitionVersion"
        operation.input = CreateDeviceDefinitionVersionRequest
        operation.output = CreateDeviceDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_function_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateFunctionDefinition"
        operation.name = "CreateFunctionDefinition"
        operation.input = CreateFunctionDefinitionRequest
        operation.output = CreateFunctionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/functions", "code" => 200}}
      end)
      service.add_operation(:create_function_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateFunctionDefinitionVersion"
        operation.name = "CreateFunctionDefinitionVersion"
        operation.input = CreateFunctionDefinitionVersionRequest
        operation.output = CreateFunctionDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = CreateGroupRequest
        operation.output = CreateGroupResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups", "code" => 200}}
      end)
      service.add_operation(:create_group_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateGroupCertificateAuthority"
        operation.name = "CreateGroupCertificateAuthority"
        operation.input = CreateGroupCertificateAuthorityRequest
        operation.output = CreateGroupCertificateAuthorityResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities", "code" => 200}}
      end)
      service.add_operation(:create_group_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateGroupVersion"
        operation.name = "CreateGroupVersion"
        operation.input = CreateGroupVersionRequest
        operation.output = CreateGroupVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_logger_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateLoggerDefinition"
        operation.name = "CreateLoggerDefinition"
        operation.input = CreateLoggerDefinitionRequest
        operation.output = CreateLoggerDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/loggers", "code" => 200}}
      end)
      service.add_operation(:create_logger_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateLoggerDefinitionVersion"
        operation.name = "CreateLoggerDefinitionVersion"
        operation.input = CreateLoggerDefinitionVersionRequest
        operation.output = CreateLoggerDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_resource_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateResourceDefinition"
        operation.name = "CreateResourceDefinition"
        operation.input = CreateResourceDefinitionRequest
        operation.output = CreateResourceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/resources", "code" => 200}}
      end)
      service.add_operation(:create_resource_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateResourceDefinitionVersion"
        operation.name = "CreateResourceDefinitionVersion"
        operation.input = CreateResourceDefinitionVersionRequest
        operation.output = CreateResourceDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:create_software_update_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateSoftwareUpdateJob"
        operation.name = "CreateSoftwareUpdateJob"
        operation.input = CreateSoftwareUpdateJobRequest
        operation.output = CreateSoftwareUpdateJobResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/updates", "code" => 200}}
      end)
      service.add_operation(:create_subscription_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateSubscriptionDefinition"
        operation.name = "CreateSubscriptionDefinition"
        operation.input = CreateSubscriptionDefinitionRequest
        operation.output = CreateSubscriptionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/subscriptions", "code" => 200}}
      end)
      service.add_operation(:create_subscription_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#CreateSubscriptionDefinitionVersion"
        operation.name = "CreateSubscriptionDefinitionVersion"
        operation.input = CreateSubscriptionDefinitionVersionRequest
        operation.output = CreateSubscriptionDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:delete_connector_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteConnectorDefinition"
        operation.name = "DeleteConnectorDefinition"
        operation.input = DeleteConnectorDefinitionRequest
        operation.output = DeleteConnectorDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_core_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteCoreDefinition"
        operation.name = "DeleteCoreDefinition"
        operation.input = DeleteCoreDefinitionRequest
        operation.output = DeleteCoreDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_device_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteDeviceDefinition"
        operation.name = "DeleteDeviceDefinition"
        operation.input = DeleteDeviceDefinitionRequest
        operation.output = DeleteDeviceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_function_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteFunctionDefinition"
        operation.name = "DeleteFunctionDefinition"
        operation.input = DeleteFunctionDefinitionRequest
        operation.output = DeleteFunctionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupRequest
        operation.output = DeleteGroupResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/groups/{GroupId}", "code" => 200}}
      end)
      service.add_operation(:delete_logger_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteLoggerDefinition"
        operation.name = "DeleteLoggerDefinition"
        operation.input = DeleteLoggerDefinitionRequest
        operation.output = DeleteLoggerDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_resource_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteResourceDefinition"
        operation.name = "DeleteResourceDefinition"
        operation.input = DeleteResourceDefinitionRequest
        operation.output = DeleteResourceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:delete_subscription_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DeleteSubscriptionDefinition"
        operation.name = "DeleteSubscriptionDefinition"
        operation.input = DeleteSubscriptionDefinitionRequest
        operation.output = DeleteSubscriptionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_role_from_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DisassociateRoleFromGroup"
        operation.name = "DisassociateRoleFromGroup"
        operation.input = DisassociateRoleFromGroupRequest
        operation.output = DisassociateRoleFromGroupResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/groups/{GroupId}/role", "code" => 200}}
      end)
      service.add_operation(:disassociate_service_role_from_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#DisassociateServiceRoleFromAccount"
        operation.name = "DisassociateServiceRoleFromAccount"
        operation.input = DisassociateServiceRoleFromAccountRequest
        operation.output = DisassociateServiceRoleFromAccountResponse
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:get_associated_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetAssociatedRole"
        operation.name = "GetAssociatedRole"
        operation.input = GetAssociatedRoleRequest
        operation.output = GetAssociatedRoleResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/role", "code" => 200}}
      end)
      service.add_operation(:get_bulk_deployment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetBulkDeploymentStatus"
        operation.name = "GetBulkDeploymentStatus"
        operation.input = GetBulkDeploymentStatusRequest
        operation.output = GetBulkDeploymentStatusResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/bulk/deployments/{BulkDeploymentId}/status", "code" => 200}}
      end)
      service.add_operation(:get_connectivity_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetConnectivityInfo"
        operation.name = "GetConnectivityInfo"
        operation.input = GetConnectivityInfoRequest
        operation.output = GetConnectivityInfoResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/things/{ThingName}/connectivityInfo", "code" => 200}}
      end)
      service.add_operation(:get_connector_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetConnectorDefinition"
        operation.name = "GetConnectorDefinition"
        operation.input = GetConnectorDefinitionRequest
        operation.output = GetConnectorDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_connector_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetConnectorDefinitionVersion"
        operation.name = "GetConnectorDefinitionVersion"
        operation.input = GetConnectorDefinitionVersionRequest
        operation.output = GetConnectorDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_core_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetCoreDefinition"
        operation.name = "GetCoreDefinition"
        operation.input = GetCoreDefinitionRequest
        operation.output = GetCoreDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_core_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetCoreDefinitionVersion"
        operation.name = "GetCoreDefinitionVersion"
        operation.input = GetCoreDefinitionVersionRequest
        operation.output = GetCoreDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_deployment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetDeploymentStatus"
        operation.name = "GetDeploymentStatus"
        operation.input = GetDeploymentStatusRequest
        operation.output = GetDeploymentStatusResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", "code" => 200}}
      end)
      service.add_operation(:get_device_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetDeviceDefinition"
        operation.name = "GetDeviceDefinition"
        operation.input = GetDeviceDefinitionRequest
        operation.output = GetDeviceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_device_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetDeviceDefinitionVersion"
        operation.name = "GetDeviceDefinitionVersion"
        operation.input = GetDeviceDefinitionVersionRequest
        operation.output = GetDeviceDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_function_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetFunctionDefinition"
        operation.name = "GetFunctionDefinition"
        operation.input = GetFunctionDefinitionRequest
        operation.output = GetFunctionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_function_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetFunctionDefinitionVersion"
        operation.name = "GetFunctionDefinitionVersion"
        operation.input = GetFunctionDefinitionVersionRequest
        operation.output = GetFunctionDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroup"
        operation.name = "GetGroup"
        operation.input = GetGroupRequest
        operation.output = GetGroupResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}", "code" => 200}}
      end)
      service.add_operation(:get_group_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroupCertificateAuthority"
        operation.name = "GetGroupCertificateAuthority"
        operation.input = GetGroupCertificateAuthorityRequest
        operation.output = GetGroupCertificateAuthorityResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", "code" => 200}}
      end)
      service.add_operation(:get_group_certificate_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroupCertificateConfiguration"
        operation.name = "GetGroupCertificateConfiguration"
        operation.input = GetGroupCertificateConfigurationRequest
        operation.output = GetGroupCertificateConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", "code" => 200}}
      end)
      service.add_operation(:get_group_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetGroupVersion"
        operation.name = "GetGroupVersion"
        operation.input = GetGroupVersionRequest
        operation.output = GetGroupVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_logger_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetLoggerDefinition"
        operation.name = "GetLoggerDefinition"
        operation.input = GetLoggerDefinitionRequest
        operation.output = GetLoggerDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_logger_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetLoggerDefinitionVersion"
        operation.name = "GetLoggerDefinitionVersion"
        operation.input = GetLoggerDefinitionVersionRequest
        operation.output = GetLoggerDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_resource_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetResourceDefinition"
        operation.name = "GetResourceDefinition"
        operation.input = GetResourceDefinitionRequest
        operation.output = GetResourceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_resource_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetResourceDefinitionVersion"
        operation.name = "GetResourceDefinitionVersion"
        operation.input = GetResourceDefinitionVersionRequest
        operation.output = GetResourceDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_service_role_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetServiceRoleForAccount"
        operation.name = "GetServiceRoleForAccount"
        operation.input = GetServiceRoleForAccountRequest
        operation.output = GetServiceRoleForAccountResponse
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:get_subscription_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetSubscriptionDefinition"
        operation.name = "GetSubscriptionDefinition"
        operation.input = GetSubscriptionDefinitionRequest
        operation.output = GetSubscriptionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_subscription_definition_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetSubscriptionDefinitionVersion"
        operation.name = "GetSubscriptionDefinitionVersion"
        operation.input = GetSubscriptionDefinitionVersionRequest
        operation.output = GetSubscriptionDefinitionVersionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", "code" => 200}}
      end)
      service.add_operation(:get_thing_runtime_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#GetThingRuntimeConfiguration"
        operation.name = "GetThingRuntimeConfiguration"
        operation.input = GetThingRuntimeConfigurationRequest
        operation.output = GetThingRuntimeConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/things/{ThingName}/runtimeconfig", "code" => 200}}
      end)
      service.add_operation(:list_bulk_deployment_detailed_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListBulkDeploymentDetailedReports"
        operation.name = "ListBulkDeploymentDetailedReports"
        operation.input = ListBulkDeploymentDetailedReportsRequest
        operation.output = ListBulkDeploymentDetailedReportsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports", "code" => 200}}
      end)
      service.add_operation(:list_bulk_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListBulkDeployments"
        operation.name = "ListBulkDeployments"
        operation.input = ListBulkDeploymentsRequest
        operation.output = ListBulkDeploymentsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/bulk/deployments", "code" => 200}}
      end)
      service.add_operation(:list_connector_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListConnectorDefinitionVersions"
        operation.name = "ListConnectorDefinitionVersions"
        operation.input = ListConnectorDefinitionVersionsRequest
        operation.output = ListConnectorDefinitionVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_connector_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListConnectorDefinitions"
        operation.name = "ListConnectorDefinitions"
        operation.input = ListConnectorDefinitionsRequest
        operation.output = ListConnectorDefinitionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/connectors", "code" => 200}}
      end)
      service.add_operation(:list_core_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListCoreDefinitionVersions"
        operation.name = "ListCoreDefinitionVersions"
        operation.input = ListCoreDefinitionVersionsRequest
        operation.output = ListCoreDefinitionVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_core_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListCoreDefinitions"
        operation.name = "ListCoreDefinitions"
        operation.input = ListCoreDefinitionsRequest
        operation.output = ListCoreDefinitionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/cores", "code" => 200}}
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ListDeploymentsRequest
        operation.output = ListDeploymentsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/deployments", "code" => 200}}
      end)
      service.add_operation(:list_device_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListDeviceDefinitionVersions"
        operation.name = "ListDeviceDefinitionVersions"
        operation.input = ListDeviceDefinitionVersionsRequest
        operation.output = ListDeviceDefinitionVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_device_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListDeviceDefinitions"
        operation.name = "ListDeviceDefinitions"
        operation.input = ListDeviceDefinitionsRequest
        operation.output = ListDeviceDefinitionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/devices", "code" => 200}}
      end)
      service.add_operation(:list_function_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListFunctionDefinitionVersions"
        operation.name = "ListFunctionDefinitionVersions"
        operation.input = ListFunctionDefinitionVersionsRequest
        operation.output = ListFunctionDefinitionVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_function_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListFunctionDefinitions"
        operation.name = "ListFunctionDefinitions"
        operation.input = ListFunctionDefinitionsRequest
        operation.output = ListFunctionDefinitionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/functions", "code" => 200}}
      end)
      service.add_operation(:list_group_certificate_authorities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListGroupCertificateAuthorities"
        operation.name = "ListGroupCertificateAuthorities"
        operation.input = ListGroupCertificateAuthoritiesRequest
        operation.output = ListGroupCertificateAuthoritiesResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities", "code" => 200}}
      end)
      service.add_operation(:list_group_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListGroupVersions"
        operation.name = "ListGroupVersions"
        operation.input = ListGroupVersionsRequest
        operation.output = ListGroupVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups/{GroupId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListGroups"
        operation.name = "ListGroups"
        operation.input = ListGroupsRequest
        operation.output = ListGroupsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/groups", "code" => 200}}
      end)
      service.add_operation(:list_logger_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListLoggerDefinitionVersions"
        operation.name = "ListLoggerDefinitionVersions"
        operation.input = ListLoggerDefinitionVersionsRequest
        operation.output = ListLoggerDefinitionVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_logger_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListLoggerDefinitions"
        operation.name = "ListLoggerDefinitions"
        operation.input = ListLoggerDefinitionsRequest
        operation.output = ListLoggerDefinitionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/loggers", "code" => 200}}
      end)
      service.add_operation(:list_resource_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListResourceDefinitionVersions"
        operation.name = "ListResourceDefinitionVersions"
        operation.input = ListResourceDefinitionVersionsRequest
        operation.output = ListResourceDefinitionVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_resource_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListResourceDefinitions"
        operation.name = "ListResourceDefinitions"
        operation.input = ListResourceDefinitionsRequest
        operation.output = ListResourceDefinitionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/resources", "code" => 200}}
      end)
      service.add_operation(:list_subscription_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListSubscriptionDefinitionVersions"
        operation.name = "ListSubscriptionDefinitionVersions"
        operation.input = ListSubscriptionDefinitionVersionsRequest
        operation.output = ListSubscriptionDefinitionVersionsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", "code" => 200}}
      end)
      service.add_operation(:list_subscription_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListSubscriptionDefinitions"
        operation.name = "ListSubscriptionDefinitions"
        operation.input = ListSubscriptionDefinitionsRequest
        operation.output = ListSubscriptionDefinitionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/definition/subscriptions", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:reset_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#ResetDeployments"
        operation.name = "ResetDeployments"
        operation.input = ResetDeploymentsRequest
        operation.output = ResetDeploymentsResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/groups/{GroupId}/deployments/$reset", "code" => 200}}
      end)
      service.add_operation(:start_bulk_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#StartBulkDeployment"
        operation.name = "StartBulkDeployment"
        operation.input = StartBulkDeploymentRequest
        operation.output = StartBulkDeploymentResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/bulk/deployments", "code" => 200}}
      end)
      service.add_operation(:stop_bulk_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#StopBulkDeployment"
        operation.name = "StopBulkDeployment"
        operation.input = StopBulkDeploymentRequest
        operation.output = StopBulkDeploymentResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/bulk/deployments/{BulkDeploymentId}/$stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_connectivity_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateConnectivityInfo"
        operation.name = "UpdateConnectivityInfo"
        operation.input = UpdateConnectivityInfoRequest
        operation.output = UpdateConnectivityInfoResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/things/{ThingName}/connectivityInfo", "code" => 200}}
      end)
      service.add_operation(:update_connector_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateConnectorDefinition"
        operation.name = "UpdateConnectorDefinition"
        operation.input = UpdateConnectorDefinitionRequest
        operation.output = UpdateConnectorDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/connectors/{ConnectorDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_core_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateCoreDefinition"
        operation.name = "UpdateCoreDefinition"
        operation.input = UpdateCoreDefinitionRequest
        operation.output = UpdateCoreDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/cores/{CoreDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_device_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateDeviceDefinition"
        operation.name = "UpdateDeviceDefinition"
        operation.input = UpdateDeviceDefinitionRequest
        operation.output = UpdateDeviceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/devices/{DeviceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_function_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateFunctionDefinition"
        operation.name = "UpdateFunctionDefinition"
        operation.input = UpdateFunctionDefinitionRequest
        operation.output = UpdateFunctionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/functions/{FunctionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = UpdateGroupRequest
        operation.output = UpdateGroupResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/groups/{GroupId}", "code" => 200}}
      end)
      service.add_operation(:update_group_certificate_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateGroupCertificateConfiguration"
        operation.name = "UpdateGroupCertificateConfiguration"
        operation.input = UpdateGroupCertificateConfigurationRequest
        operation.output = UpdateGroupCertificateConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", "code" => 200}}
      end)
      service.add_operation(:update_logger_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateLoggerDefinition"
        operation.name = "UpdateLoggerDefinition"
        operation.input = UpdateLoggerDefinitionRequest
        operation.output = UpdateLoggerDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/loggers/{LoggerDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_resource_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateResourceDefinition"
        operation.name = "UpdateResourceDefinition"
        operation.input = UpdateResourceDefinitionRequest
        operation.output = UpdateResourceDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/resources/{ResourceDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_subscription_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateSubscriptionDefinition"
        operation.name = "UpdateSubscriptionDefinition"
        operation.input = UpdateSubscriptionDefinitionRequest
        operation.output = UpdateSubscriptionDefinitionResponse
        operation.errors << BadRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:update_thing_runtime_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrass#UpdateThingRuntimeConfiguration"
        operation.name = "UpdateThingRuntimeConfiguration"
        operation.input = UpdateThingRuntimeConfigurationRequest
        operation.output = UpdateThingRuntimeConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/things/{ThingName}/runtimeconfig", "code" => 200}}
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
