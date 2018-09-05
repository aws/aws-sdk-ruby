# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Greengrass
  # @api private
  module ClientApi

    include Seahorse::Model

    AssociateRoleToGroupRequest = Shapes::StructureShape.new(name: 'AssociateRoleToGroupRequest')
    AssociateRoleToGroupResponse = Shapes::StructureShape.new(name: 'AssociateRoleToGroupResponse')
    AssociateServiceRoleToAccountRequest = Shapes::StructureShape.new(name: 'AssociateServiceRoleToAccountRequest')
    AssociateServiceRoleToAccountResponse = Shapes::StructureShape.new(name: 'AssociateServiceRoleToAccountResponse')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ConnectivityInfo = Shapes::StructureShape.new(name: 'ConnectivityInfo')
    Core = Shapes::StructureShape.new(name: 'Core')
    CoreDefinitionVersion = Shapes::StructureShape.new(name: 'CoreDefinitionVersion')
    CreateCoreDefinitionRequest = Shapes::StructureShape.new(name: 'CreateCoreDefinitionRequest')
    CreateCoreDefinitionResponse = Shapes::StructureShape.new(name: 'CreateCoreDefinitionResponse')
    CreateCoreDefinitionVersionRequest = Shapes::StructureShape.new(name: 'CreateCoreDefinitionVersionRequest')
    CreateCoreDefinitionVersionResponse = Shapes::StructureShape.new(name: 'CreateCoreDefinitionVersionResponse')
    CreateDeploymentRequest = Shapes::StructureShape.new(name: 'CreateDeploymentRequest')
    CreateDeploymentResponse = Shapes::StructureShape.new(name: 'CreateDeploymentResponse')
    CreateDeviceDefinitionRequest = Shapes::StructureShape.new(name: 'CreateDeviceDefinitionRequest')
    CreateDeviceDefinitionResponse = Shapes::StructureShape.new(name: 'CreateDeviceDefinitionResponse')
    CreateDeviceDefinitionVersionRequest = Shapes::StructureShape.new(name: 'CreateDeviceDefinitionVersionRequest')
    CreateDeviceDefinitionVersionResponse = Shapes::StructureShape.new(name: 'CreateDeviceDefinitionVersionResponse')
    CreateFunctionDefinitionRequest = Shapes::StructureShape.new(name: 'CreateFunctionDefinitionRequest')
    CreateFunctionDefinitionResponse = Shapes::StructureShape.new(name: 'CreateFunctionDefinitionResponse')
    CreateFunctionDefinitionVersionRequest = Shapes::StructureShape.new(name: 'CreateFunctionDefinitionVersionRequest')
    CreateFunctionDefinitionVersionResponse = Shapes::StructureShape.new(name: 'CreateFunctionDefinitionVersionResponse')
    CreateGroupCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'CreateGroupCertificateAuthorityRequest')
    CreateGroupCertificateAuthorityResponse = Shapes::StructureShape.new(name: 'CreateGroupCertificateAuthorityResponse')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    CreateGroupVersionRequest = Shapes::StructureShape.new(name: 'CreateGroupVersionRequest')
    CreateGroupVersionResponse = Shapes::StructureShape.new(name: 'CreateGroupVersionResponse')
    CreateLoggerDefinitionRequest = Shapes::StructureShape.new(name: 'CreateLoggerDefinitionRequest')
    CreateLoggerDefinitionResponse = Shapes::StructureShape.new(name: 'CreateLoggerDefinitionResponse')
    CreateLoggerDefinitionVersionRequest = Shapes::StructureShape.new(name: 'CreateLoggerDefinitionVersionRequest')
    CreateLoggerDefinitionVersionResponse = Shapes::StructureShape.new(name: 'CreateLoggerDefinitionVersionResponse')
    CreateResourceDefinitionRequest = Shapes::StructureShape.new(name: 'CreateResourceDefinitionRequest')
    CreateResourceDefinitionResponse = Shapes::StructureShape.new(name: 'CreateResourceDefinitionResponse')
    CreateResourceDefinitionVersionRequest = Shapes::StructureShape.new(name: 'CreateResourceDefinitionVersionRequest')
    CreateResourceDefinitionVersionResponse = Shapes::StructureShape.new(name: 'CreateResourceDefinitionVersionResponse')
    CreateSoftwareUpdateJobRequest = Shapes::StructureShape.new(name: 'CreateSoftwareUpdateJobRequest')
    CreateSoftwareUpdateJobResponse = Shapes::StructureShape.new(name: 'CreateSoftwareUpdateJobResponse')
    CreateSubscriptionDefinitionRequest = Shapes::StructureShape.new(name: 'CreateSubscriptionDefinitionRequest')
    CreateSubscriptionDefinitionResponse = Shapes::StructureShape.new(name: 'CreateSubscriptionDefinitionResponse')
    CreateSubscriptionDefinitionVersionRequest = Shapes::StructureShape.new(name: 'CreateSubscriptionDefinitionVersionRequest')
    CreateSubscriptionDefinitionVersionResponse = Shapes::StructureShape.new(name: 'CreateSubscriptionDefinitionVersionResponse')
    DefinitionInformation = Shapes::StructureShape.new(name: 'DefinitionInformation')
    DeleteCoreDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteCoreDefinitionRequest')
    DeleteCoreDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteCoreDefinitionResponse')
    DeleteDeviceDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteDeviceDefinitionRequest')
    DeleteDeviceDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteDeviceDefinitionResponse')
    DeleteFunctionDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionDefinitionRequest')
    DeleteFunctionDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteFunctionDefinitionResponse')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DeleteLoggerDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteLoggerDefinitionRequest')
    DeleteLoggerDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteLoggerDefinitionResponse')
    DeleteResourceDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteResourceDefinitionRequest')
    DeleteResourceDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteResourceDefinitionResponse')
    DeleteSubscriptionDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteSubscriptionDefinitionRequest')
    DeleteSubscriptionDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteSubscriptionDefinitionResponse')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    Deployments = Shapes::ListShape.new(name: 'Deployments')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceDefinitionVersion = Shapes::StructureShape.new(name: 'DeviceDefinitionVersion')
    DisassociateRoleFromGroupRequest = Shapes::StructureShape.new(name: 'DisassociateRoleFromGroupRequest')
    DisassociateRoleFromGroupResponse = Shapes::StructureShape.new(name: 'DisassociateRoleFromGroupResponse')
    DisassociateServiceRoleFromAccountRequest = Shapes::StructureShape.new(name: 'DisassociateServiceRoleFromAccountRequest')
    DisassociateServiceRoleFromAccountResponse = Shapes::StructureShape.new(name: 'DisassociateServiceRoleFromAccountResponse')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    EncodingType = Shapes::StringShape.new(name: 'EncodingType')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetails = Shapes::ListShape.new(name: 'ErrorDetails')
    Function = Shapes::StructureShape.new(name: 'Function')
    FunctionConfiguration = Shapes::StructureShape.new(name: 'FunctionConfiguration')
    FunctionConfigurationEnvironment = Shapes::StructureShape.new(name: 'FunctionConfigurationEnvironment')
    FunctionDefinitionVersion = Shapes::StructureShape.new(name: 'FunctionDefinitionVersion')
    GeneralError = Shapes::StructureShape.new(name: 'GeneralError')
    GetAssociatedRoleRequest = Shapes::StructureShape.new(name: 'GetAssociatedRoleRequest')
    GetAssociatedRoleResponse = Shapes::StructureShape.new(name: 'GetAssociatedRoleResponse')
    GetConnectivityInfoRequest = Shapes::StructureShape.new(name: 'GetConnectivityInfoRequest')
    GetConnectivityInfoResponse = Shapes::StructureShape.new(name: 'GetConnectivityInfoResponse')
    GetCoreDefinitionRequest = Shapes::StructureShape.new(name: 'GetCoreDefinitionRequest')
    GetCoreDefinitionResponse = Shapes::StructureShape.new(name: 'GetCoreDefinitionResponse')
    GetCoreDefinitionVersionRequest = Shapes::StructureShape.new(name: 'GetCoreDefinitionVersionRequest')
    GetCoreDefinitionVersionResponse = Shapes::StructureShape.new(name: 'GetCoreDefinitionVersionResponse')
    GetDeploymentStatusRequest = Shapes::StructureShape.new(name: 'GetDeploymentStatusRequest')
    GetDeploymentStatusResponse = Shapes::StructureShape.new(name: 'GetDeploymentStatusResponse')
    GetDeviceDefinitionRequest = Shapes::StructureShape.new(name: 'GetDeviceDefinitionRequest')
    GetDeviceDefinitionResponse = Shapes::StructureShape.new(name: 'GetDeviceDefinitionResponse')
    GetDeviceDefinitionVersionRequest = Shapes::StructureShape.new(name: 'GetDeviceDefinitionVersionRequest')
    GetDeviceDefinitionVersionResponse = Shapes::StructureShape.new(name: 'GetDeviceDefinitionVersionResponse')
    GetFunctionDefinitionRequest = Shapes::StructureShape.new(name: 'GetFunctionDefinitionRequest')
    GetFunctionDefinitionResponse = Shapes::StructureShape.new(name: 'GetFunctionDefinitionResponse')
    GetFunctionDefinitionVersionRequest = Shapes::StructureShape.new(name: 'GetFunctionDefinitionVersionRequest')
    GetFunctionDefinitionVersionResponse = Shapes::StructureShape.new(name: 'GetFunctionDefinitionVersionResponse')
    GetGroupCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'GetGroupCertificateAuthorityRequest')
    GetGroupCertificateAuthorityResponse = Shapes::StructureShape.new(name: 'GetGroupCertificateAuthorityResponse')
    GetGroupCertificateConfigurationRequest = Shapes::StructureShape.new(name: 'GetGroupCertificateConfigurationRequest')
    GetGroupCertificateConfigurationResponse = Shapes::StructureShape.new(name: 'GetGroupCertificateConfigurationResponse')
    GetGroupRequest = Shapes::StructureShape.new(name: 'GetGroupRequest')
    GetGroupResponse = Shapes::StructureShape.new(name: 'GetGroupResponse')
    GetGroupVersionRequest = Shapes::StructureShape.new(name: 'GetGroupVersionRequest')
    GetGroupVersionResponse = Shapes::StructureShape.new(name: 'GetGroupVersionResponse')
    GetLoggerDefinitionRequest = Shapes::StructureShape.new(name: 'GetLoggerDefinitionRequest')
    GetLoggerDefinitionResponse = Shapes::StructureShape.new(name: 'GetLoggerDefinitionResponse')
    GetLoggerDefinitionVersionRequest = Shapes::StructureShape.new(name: 'GetLoggerDefinitionVersionRequest')
    GetLoggerDefinitionVersionResponse = Shapes::StructureShape.new(name: 'GetLoggerDefinitionVersionResponse')
    GetResourceDefinitionRequest = Shapes::StructureShape.new(name: 'GetResourceDefinitionRequest')
    GetResourceDefinitionResponse = Shapes::StructureShape.new(name: 'GetResourceDefinitionResponse')
    GetResourceDefinitionVersionRequest = Shapes::StructureShape.new(name: 'GetResourceDefinitionVersionRequest')
    GetResourceDefinitionVersionResponse = Shapes::StructureShape.new(name: 'GetResourceDefinitionVersionResponse')
    GetServiceRoleForAccountRequest = Shapes::StructureShape.new(name: 'GetServiceRoleForAccountRequest')
    GetServiceRoleForAccountResponse = Shapes::StructureShape.new(name: 'GetServiceRoleForAccountResponse')
    GetSubscriptionDefinitionRequest = Shapes::StructureShape.new(name: 'GetSubscriptionDefinitionRequest')
    GetSubscriptionDefinitionResponse = Shapes::StructureShape.new(name: 'GetSubscriptionDefinitionResponse')
    GetSubscriptionDefinitionVersionRequest = Shapes::StructureShape.new(name: 'GetSubscriptionDefinitionVersionRequest')
    GetSubscriptionDefinitionVersionResponse = Shapes::StructureShape.new(name: 'GetSubscriptionDefinitionVersionResponse')
    GroupCertificateAuthorityProperties = Shapes::StructureShape.new(name: 'GroupCertificateAuthorityProperties')
    GroupCertificateConfiguration = Shapes::StructureShape.new(name: 'GroupCertificateConfiguration')
    GroupInformation = Shapes::StructureShape.new(name: 'GroupInformation')
    GroupOwnerSetting = Shapes::StructureShape.new(name: 'GroupOwnerSetting')
    GroupVersion = Shapes::StructureShape.new(name: 'GroupVersion')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListCoreDefinitionVersionsRequest = Shapes::StructureShape.new(name: 'ListCoreDefinitionVersionsRequest')
    ListCoreDefinitionVersionsResponse = Shapes::StructureShape.new(name: 'ListCoreDefinitionVersionsResponse')
    ListCoreDefinitionsRequest = Shapes::StructureShape.new(name: 'ListCoreDefinitionsRequest')
    ListCoreDefinitionsResponse = Shapes::StructureShape.new(name: 'ListCoreDefinitionsResponse')
    ListDefinitionsResponse = Shapes::StructureShape.new(name: 'ListDefinitionsResponse')
    ListDeploymentsRequest = Shapes::StructureShape.new(name: 'ListDeploymentsRequest')
    ListDeploymentsResponse = Shapes::StructureShape.new(name: 'ListDeploymentsResponse')
    ListDeviceDefinitionVersionsRequest = Shapes::StructureShape.new(name: 'ListDeviceDefinitionVersionsRequest')
    ListDeviceDefinitionVersionsResponse = Shapes::StructureShape.new(name: 'ListDeviceDefinitionVersionsResponse')
    ListDeviceDefinitionsRequest = Shapes::StructureShape.new(name: 'ListDeviceDefinitionsRequest')
    ListDeviceDefinitionsResponse = Shapes::StructureShape.new(name: 'ListDeviceDefinitionsResponse')
    ListFunctionDefinitionVersionsRequest = Shapes::StructureShape.new(name: 'ListFunctionDefinitionVersionsRequest')
    ListFunctionDefinitionVersionsResponse = Shapes::StructureShape.new(name: 'ListFunctionDefinitionVersionsResponse')
    ListFunctionDefinitionsRequest = Shapes::StructureShape.new(name: 'ListFunctionDefinitionsRequest')
    ListFunctionDefinitionsResponse = Shapes::StructureShape.new(name: 'ListFunctionDefinitionsResponse')
    ListGroupCertificateAuthoritiesRequest = Shapes::StructureShape.new(name: 'ListGroupCertificateAuthoritiesRequest')
    ListGroupCertificateAuthoritiesResponse = Shapes::StructureShape.new(name: 'ListGroupCertificateAuthoritiesResponse')
    ListGroupVersionsRequest = Shapes::StructureShape.new(name: 'ListGroupVersionsRequest')
    ListGroupVersionsResponse = Shapes::StructureShape.new(name: 'ListGroupVersionsResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListLoggerDefinitionVersionsRequest = Shapes::StructureShape.new(name: 'ListLoggerDefinitionVersionsRequest')
    ListLoggerDefinitionVersionsResponse = Shapes::StructureShape.new(name: 'ListLoggerDefinitionVersionsResponse')
    ListLoggerDefinitionsRequest = Shapes::StructureShape.new(name: 'ListLoggerDefinitionsRequest')
    ListLoggerDefinitionsResponse = Shapes::StructureShape.new(name: 'ListLoggerDefinitionsResponse')
    ListResourceDefinitionVersionsRequest = Shapes::StructureShape.new(name: 'ListResourceDefinitionVersionsRequest')
    ListResourceDefinitionVersionsResponse = Shapes::StructureShape.new(name: 'ListResourceDefinitionVersionsResponse')
    ListResourceDefinitionsRequest = Shapes::StructureShape.new(name: 'ListResourceDefinitionsRequest')
    ListResourceDefinitionsResponse = Shapes::StructureShape.new(name: 'ListResourceDefinitionsResponse')
    ListSubscriptionDefinitionVersionsRequest = Shapes::StructureShape.new(name: 'ListSubscriptionDefinitionVersionsRequest')
    ListSubscriptionDefinitionVersionsResponse = Shapes::StructureShape.new(name: 'ListSubscriptionDefinitionVersionsResponse')
    ListSubscriptionDefinitionsRequest = Shapes::StructureShape.new(name: 'ListSubscriptionDefinitionsRequest')
    ListSubscriptionDefinitionsResponse = Shapes::StructureShape.new(name: 'ListSubscriptionDefinitionsResponse')
    ListVersionsResponse = Shapes::StructureShape.new(name: 'ListVersionsResponse')
    LocalDeviceResourceData = Shapes::StructureShape.new(name: 'LocalDeviceResourceData')
    LocalVolumeResourceData = Shapes::StructureShape.new(name: 'LocalVolumeResourceData')
    Logger = Shapes::StructureShape.new(name: 'Logger')
    LoggerComponent = Shapes::StringShape.new(name: 'LoggerComponent')
    LoggerDefinitionVersion = Shapes::StructureShape.new(name: 'LoggerDefinitionVersion')
    LoggerLevel = Shapes::StringShape.new(name: 'LoggerLevel')
    LoggerType = Shapes::StringShape.new(name: 'LoggerType')
    Permission = Shapes::StringShape.new(name: 'Permission')
    ResetDeploymentsRequest = Shapes::StructureShape.new(name: 'ResetDeploymentsRequest')
    ResetDeploymentsResponse = Shapes::StructureShape.new(name: 'ResetDeploymentsResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceAccessPolicy = Shapes::StructureShape.new(name: 'ResourceAccessPolicy')
    ResourceDataContainer = Shapes::StructureShape.new(name: 'ResourceDataContainer')
    ResourceDefinitionVersion = Shapes::StructureShape.new(name: 'ResourceDefinitionVersion')
    S3MachineLearningModelResourceData = Shapes::StructureShape.new(name: 'S3MachineLearningModelResourceData')
    S3UrlSignerRole = Shapes::StringShape.new(name: 'S3UrlSignerRole')
    SageMakerMachineLearningModelResourceData = Shapes::StructureShape.new(name: 'SageMakerMachineLearningModelResourceData')
    SoftwareToUpdate = Shapes::StringShape.new(name: 'SoftwareToUpdate')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionDefinitionVersion = Shapes::StructureShape.new(name: 'SubscriptionDefinitionVersion')
    UpdateAgentLogLevel = Shapes::StringShape.new(name: 'UpdateAgentLogLevel')
    UpdateConnectivityInfoRequest = Shapes::StructureShape.new(name: 'UpdateConnectivityInfoRequest')
    UpdateConnectivityInfoResponse = Shapes::StructureShape.new(name: 'UpdateConnectivityInfoResponse')
    UpdateCoreDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateCoreDefinitionRequest')
    UpdateCoreDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateCoreDefinitionResponse')
    UpdateDeviceDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateDeviceDefinitionRequest')
    UpdateDeviceDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateDeviceDefinitionResponse')
    UpdateFunctionDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateFunctionDefinitionRequest')
    UpdateFunctionDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateFunctionDefinitionResponse')
    UpdateGroupCertificateConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateGroupCertificateConfigurationRequest')
    UpdateGroupCertificateConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateGroupCertificateConfigurationResponse')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateGroupResponse = Shapes::StructureShape.new(name: 'UpdateGroupResponse')
    UpdateLoggerDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateLoggerDefinitionRequest')
    UpdateLoggerDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateLoggerDefinitionResponse')
    UpdateResourceDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateResourceDefinitionRequest')
    UpdateResourceDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateResourceDefinitionResponse')
    UpdateSubscriptionDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateSubscriptionDefinitionRequest')
    UpdateSubscriptionDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateSubscriptionDefinitionResponse')
    UpdateTargets = Shapes::ListShape.new(name: 'UpdateTargets')
    UpdateTargetsArchitecture = Shapes::StringShape.new(name: 'UpdateTargetsArchitecture')
    UpdateTargetsOperatingSystem = Shapes::StringShape.new(name: 'UpdateTargetsOperatingSystem')
    VersionInformation = Shapes::StructureShape.new(name: 'VersionInformation')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfConnectivityInfo = Shapes::ListShape.new(name: '__listOfConnectivityInfo')
    __listOfCore = Shapes::ListShape.new(name: '__listOfCore')
    __listOfDefinitionInformation = Shapes::ListShape.new(name: '__listOfDefinitionInformation')
    __listOfDevice = Shapes::ListShape.new(name: '__listOfDevice')
    __listOfFunction = Shapes::ListShape.new(name: '__listOfFunction')
    __listOfGroupCertificateAuthorityProperties = Shapes::ListShape.new(name: '__listOfGroupCertificateAuthorityProperties')
    __listOfGroupInformation = Shapes::ListShape.new(name: '__listOfGroupInformation')
    __listOfLogger = Shapes::ListShape.new(name: '__listOfLogger')
    __listOfResource = Shapes::ListShape.new(name: '__listOfResource')
    __listOfResourceAccessPolicy = Shapes::ListShape.new(name: '__listOfResourceAccessPolicy')
    __listOfSubscription = Shapes::ListShape.new(name: '__listOfSubscription')
    __listOfVersionInformation = Shapes::ListShape.new(name: '__listOfVersionInformation')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __timestamp = Shapes::TimestampShape.new(name: '__timestamp')

    AssociateRoleToGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    AssociateRoleToGroupRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RoleArn"))
    AssociateRoleToGroupRequest.struct_class = Types::AssociateRoleToGroupRequest

    AssociateRoleToGroupResponse.add_member(:associated_at, Shapes::ShapeRef.new(shape: __string, location_name: "AssociatedAt"))
    AssociateRoleToGroupResponse.struct_class = Types::AssociateRoleToGroupResponse

    AssociateServiceRoleToAccountRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RoleArn"))
    AssociateServiceRoleToAccountRequest.struct_class = Types::AssociateServiceRoleToAccountRequest

    AssociateServiceRoleToAccountResponse.add_member(:associated_at, Shapes::ShapeRef.new(shape: __string, location_name: "AssociatedAt"))
    AssociateServiceRoleToAccountResponse.struct_class = Types::AssociateServiceRoleToAccountResponse

    ConnectivityInfo.add_member(:host_address, Shapes::ShapeRef.new(shape: __string, location_name: "HostAddress"))
    ConnectivityInfo.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    ConnectivityInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: __string, location_name: "Metadata"))
    ConnectivityInfo.add_member(:port_number, Shapes::ShapeRef.new(shape: __integer, location_name: "PortNumber"))
    ConnectivityInfo.struct_class = Types::ConnectivityInfo

    Core.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateArn"))
    Core.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    Core.add_member(:sync_shadow, Shapes::ShapeRef.new(shape: __boolean, location_name: "SyncShadow"))
    Core.add_member(:thing_arn, Shapes::ShapeRef.new(shape: __string, location_name: "ThingArn"))
    Core.struct_class = Types::Core

    CoreDefinitionVersion.add_member(:cores, Shapes::ShapeRef.new(shape: __listOfCore, location_name: "Cores"))
    CoreDefinitionVersion.struct_class = Types::CoreDefinitionVersion

    CreateCoreDefinitionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateCoreDefinitionRequest.add_member(:initial_version, Shapes::ShapeRef.new(shape: CoreDefinitionVersion, location_name: "InitialVersion"))
    CreateCoreDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateCoreDefinitionRequest.struct_class = Types::CreateCoreDefinitionRequest

    CreateCoreDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateCoreDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateCoreDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateCoreDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    CreateCoreDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    CreateCoreDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    CreateCoreDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateCoreDefinitionResponse.struct_class = Types::CreateCoreDefinitionResponse

    CreateCoreDefinitionVersionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateCoreDefinitionVersionRequest.add_member(:core_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CoreDefinitionId"))
    CreateCoreDefinitionVersionRequest.add_member(:cores, Shapes::ShapeRef.new(shape: __listOfCore, location_name: "Cores"))
    CreateCoreDefinitionVersionRequest.struct_class = Types::CreateCoreDefinitionVersionRequest

    CreateCoreDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateCoreDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateCoreDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateCoreDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    CreateCoreDefinitionVersionResponse.struct_class = Types::CreateCoreDefinitionVersionResponse

    CreateDeploymentRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentId"))
    CreateDeploymentRequest.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "DeploymentType"))
    CreateDeploymentRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    CreateDeploymentRequest.add_member(:group_version_id, Shapes::ShapeRef.new(shape: __string, location_name: "GroupVersionId"))
    CreateDeploymentRequest.struct_class = Types::CreateDeploymentRequest

    CreateDeploymentResponse.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentArn"))
    CreateDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentId"))
    CreateDeploymentResponse.struct_class = Types::CreateDeploymentResponse

    CreateDeviceDefinitionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateDeviceDefinitionRequest.add_member(:initial_version, Shapes::ShapeRef.new(shape: DeviceDefinitionVersion, location_name: "InitialVersion"))
    CreateDeviceDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateDeviceDefinitionRequest.struct_class = Types::CreateDeviceDefinitionRequest

    CreateDeviceDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateDeviceDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateDeviceDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateDeviceDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    CreateDeviceDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    CreateDeviceDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    CreateDeviceDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateDeviceDefinitionResponse.struct_class = Types::CreateDeviceDefinitionResponse

    CreateDeviceDefinitionVersionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateDeviceDefinitionVersionRequest.add_member(:device_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeviceDefinitionId"))
    CreateDeviceDefinitionVersionRequest.add_member(:devices, Shapes::ShapeRef.new(shape: __listOfDevice, location_name: "Devices"))
    CreateDeviceDefinitionVersionRequest.struct_class = Types::CreateDeviceDefinitionVersionRequest

    CreateDeviceDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateDeviceDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateDeviceDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateDeviceDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    CreateDeviceDefinitionVersionResponse.struct_class = Types::CreateDeviceDefinitionVersionResponse

    CreateFunctionDefinitionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateFunctionDefinitionRequest.add_member(:initial_version, Shapes::ShapeRef.new(shape: FunctionDefinitionVersion, location_name: "InitialVersion"))
    CreateFunctionDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateFunctionDefinitionRequest.struct_class = Types::CreateFunctionDefinitionRequest

    CreateFunctionDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateFunctionDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateFunctionDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateFunctionDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    CreateFunctionDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    CreateFunctionDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    CreateFunctionDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateFunctionDefinitionResponse.struct_class = Types::CreateFunctionDefinitionResponse

    CreateFunctionDefinitionVersionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateFunctionDefinitionVersionRequest.add_member(:function_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "FunctionDefinitionId"))
    CreateFunctionDefinitionVersionRequest.add_member(:functions, Shapes::ShapeRef.new(shape: __listOfFunction, location_name: "Functions"))
    CreateFunctionDefinitionVersionRequest.struct_class = Types::CreateFunctionDefinitionVersionRequest

    CreateFunctionDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateFunctionDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateFunctionDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateFunctionDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    CreateFunctionDefinitionVersionResponse.struct_class = Types::CreateFunctionDefinitionVersionResponse

    CreateGroupCertificateAuthorityRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateGroupCertificateAuthorityRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    CreateGroupCertificateAuthorityRequest.struct_class = Types::CreateGroupCertificateAuthorityRequest

    CreateGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_arn, Shapes::ShapeRef.new(shape: __string, location_name: "GroupCertificateAuthorityArn"))
    CreateGroupCertificateAuthorityResponse.struct_class = Types::CreateGroupCertificateAuthorityResponse

    CreateGroupRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateGroupRequest.add_member(:initial_version, Shapes::ShapeRef.new(shape: GroupVersion, location_name: "InitialVersion"))
    CreateGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateGroupResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateGroupResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    CreateGroupResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    CreateGroupResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    CreateGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    CreateGroupVersionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateGroupVersionRequest.add_member(:core_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "CoreDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:device_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DeviceDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:function_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "FunctionDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    CreateGroupVersionRequest.add_member(:logger_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LoggerDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:resource_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "ResourceDefinitionVersionArn"))
    CreateGroupVersionRequest.add_member(:subscription_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SubscriptionDefinitionVersionArn"))
    CreateGroupVersionRequest.struct_class = Types::CreateGroupVersionRequest

    CreateGroupVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateGroupVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateGroupVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateGroupVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    CreateGroupVersionResponse.struct_class = Types::CreateGroupVersionResponse

    CreateLoggerDefinitionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateLoggerDefinitionRequest.add_member(:initial_version, Shapes::ShapeRef.new(shape: LoggerDefinitionVersion, location_name: "InitialVersion"))
    CreateLoggerDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateLoggerDefinitionRequest.struct_class = Types::CreateLoggerDefinitionRequest

    CreateLoggerDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateLoggerDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateLoggerDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateLoggerDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    CreateLoggerDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    CreateLoggerDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    CreateLoggerDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateLoggerDefinitionResponse.struct_class = Types::CreateLoggerDefinitionResponse

    CreateLoggerDefinitionVersionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateLoggerDefinitionVersionRequest.add_member(:logger_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LoggerDefinitionId"))
    CreateLoggerDefinitionVersionRequest.add_member(:loggers, Shapes::ShapeRef.new(shape: __listOfLogger, location_name: "Loggers"))
    CreateLoggerDefinitionVersionRequest.struct_class = Types::CreateLoggerDefinitionVersionRequest

    CreateLoggerDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateLoggerDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateLoggerDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateLoggerDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    CreateLoggerDefinitionVersionResponse.struct_class = Types::CreateLoggerDefinitionVersionResponse

    CreateResourceDefinitionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateResourceDefinitionRequest.add_member(:initial_version, Shapes::ShapeRef.new(shape: ResourceDefinitionVersion, location_name: "InitialVersion"))
    CreateResourceDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateResourceDefinitionRequest.struct_class = Types::CreateResourceDefinitionRequest

    CreateResourceDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateResourceDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateResourceDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateResourceDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    CreateResourceDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    CreateResourceDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    CreateResourceDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateResourceDefinitionResponse.struct_class = Types::CreateResourceDefinitionResponse

    CreateResourceDefinitionVersionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateResourceDefinitionVersionRequest.add_member(:resource_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceDefinitionId"))
    CreateResourceDefinitionVersionRequest.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, location_name: "Resources"))
    CreateResourceDefinitionVersionRequest.struct_class = Types::CreateResourceDefinitionVersionRequest

    CreateResourceDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateResourceDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateResourceDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateResourceDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    CreateResourceDefinitionVersionResponse.struct_class = Types::CreateResourceDefinitionVersionResponse

    CreateSoftwareUpdateJobRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateSoftwareUpdateJobRequest.add_member(:s3_url_signer_role, Shapes::ShapeRef.new(shape: S3UrlSignerRole, location_name: "S3UrlSignerRole"))
    CreateSoftwareUpdateJobRequest.add_member(:software_to_update, Shapes::ShapeRef.new(shape: SoftwareToUpdate, location_name: "SoftwareToUpdate"))
    CreateSoftwareUpdateJobRequest.add_member(:update_agent_log_level, Shapes::ShapeRef.new(shape: UpdateAgentLogLevel, location_name: "UpdateAgentLogLevel"))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets, Shapes::ShapeRef.new(shape: UpdateTargets, location_name: "UpdateTargets"))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets_architecture, Shapes::ShapeRef.new(shape: UpdateTargetsArchitecture, location_name: "UpdateTargetsArchitecture"))
    CreateSoftwareUpdateJobRequest.add_member(:update_targets_operating_system, Shapes::ShapeRef.new(shape: UpdateTargetsOperatingSystem, location_name: "UpdateTargetsOperatingSystem"))
    CreateSoftwareUpdateJobRequest.struct_class = Types::CreateSoftwareUpdateJobRequest

    CreateSoftwareUpdateJobResponse.add_member(:iot_job_arn, Shapes::ShapeRef.new(shape: __string, location_name: "IotJobArn"))
    CreateSoftwareUpdateJobResponse.add_member(:iot_job_id, Shapes::ShapeRef.new(shape: __string, location_name: "IotJobId"))
    CreateSoftwareUpdateJobResponse.struct_class = Types::CreateSoftwareUpdateJobResponse

    CreateSubscriptionDefinitionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateSubscriptionDefinitionRequest.add_member(:initial_version, Shapes::ShapeRef.new(shape: SubscriptionDefinitionVersion, location_name: "InitialVersion"))
    CreateSubscriptionDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateSubscriptionDefinitionRequest.struct_class = Types::CreateSubscriptionDefinitionRequest

    CreateSubscriptionDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateSubscriptionDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateSubscriptionDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateSubscriptionDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    CreateSubscriptionDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    CreateSubscriptionDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    CreateSubscriptionDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreateSubscriptionDefinitionResponse.struct_class = Types::CreateSubscriptionDefinitionResponse

    CreateSubscriptionDefinitionVersionRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    CreateSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SubscriptionDefinitionId"))
    CreateSubscriptionDefinitionVersionRequest.add_member(:subscriptions, Shapes::ShapeRef.new(shape: __listOfSubscription, location_name: "Subscriptions"))
    CreateSubscriptionDefinitionVersionRequest.struct_class = Types::CreateSubscriptionDefinitionVersionRequest

    CreateSubscriptionDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateSubscriptionDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    CreateSubscriptionDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    CreateSubscriptionDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    CreateSubscriptionDefinitionVersionResponse.struct_class = Types::CreateSubscriptionDefinitionVersionResponse

    DefinitionInformation.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    DefinitionInformation.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    DefinitionInformation.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    DefinitionInformation.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    DefinitionInformation.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    DefinitionInformation.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    DefinitionInformation.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    DefinitionInformation.struct_class = Types::DefinitionInformation

    DeleteCoreDefinitionRequest.add_member(:core_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CoreDefinitionId"))
    DeleteCoreDefinitionRequest.struct_class = Types::DeleteCoreDefinitionRequest

    DeleteCoreDefinitionResponse.struct_class = Types::DeleteCoreDefinitionResponse

    DeleteDeviceDefinitionRequest.add_member(:device_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeviceDefinitionId"))
    DeleteDeviceDefinitionRequest.struct_class = Types::DeleteDeviceDefinitionRequest

    DeleteDeviceDefinitionResponse.struct_class = Types::DeleteDeviceDefinitionResponse

    DeleteFunctionDefinitionRequest.add_member(:function_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "FunctionDefinitionId"))
    DeleteFunctionDefinitionRequest.struct_class = Types::DeleteFunctionDefinitionRequest

    DeleteFunctionDefinitionResponse.struct_class = Types::DeleteFunctionDefinitionResponse

    DeleteGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResponse.struct_class = Types::DeleteGroupResponse

    DeleteLoggerDefinitionRequest.add_member(:logger_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LoggerDefinitionId"))
    DeleteLoggerDefinitionRequest.struct_class = Types::DeleteLoggerDefinitionRequest

    DeleteLoggerDefinitionResponse.struct_class = Types::DeleteLoggerDefinitionResponse

    DeleteResourceDefinitionRequest.add_member(:resource_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceDefinitionId"))
    DeleteResourceDefinitionRequest.struct_class = Types::DeleteResourceDefinitionRequest

    DeleteResourceDefinitionResponse.struct_class = Types::DeleteResourceDefinitionResponse

    DeleteSubscriptionDefinitionRequest.add_member(:subscription_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SubscriptionDefinitionId"))
    DeleteSubscriptionDefinitionRequest.struct_class = Types::DeleteSubscriptionDefinitionRequest

    DeleteSubscriptionDefinitionResponse.struct_class = Types::DeleteSubscriptionDefinitionResponse

    Deployment.add_member(:created_at, Shapes::ShapeRef.new(shape: __string, location_name: "CreatedAt"))
    Deployment.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentArn"))
    Deployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentId"))
    Deployment.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "DeploymentType"))
    Deployment.add_member(:group_arn, Shapes::ShapeRef.new(shape: __string, location_name: "GroupArn"))
    Deployment.struct_class = Types::Deployment

    Deployments.member = Shapes::ShapeRef.new(shape: Deployment)

    Device.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateArn"))
    Device.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    Device.add_member(:sync_shadow, Shapes::ShapeRef.new(shape: __boolean, location_name: "SyncShadow"))
    Device.add_member(:thing_arn, Shapes::ShapeRef.new(shape: __string, location_name: "ThingArn"))
    Device.struct_class = Types::Device

    DeviceDefinitionVersion.add_member(:devices, Shapes::ShapeRef.new(shape: __listOfDevice, location_name: "Devices"))
    DeviceDefinitionVersion.struct_class = Types::DeviceDefinitionVersion

    DisassociateRoleFromGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    DisassociateRoleFromGroupRequest.struct_class = Types::DisassociateRoleFromGroupRequest

    DisassociateRoleFromGroupResponse.add_member(:disassociated_at, Shapes::ShapeRef.new(shape: __string, location_name: "DisassociatedAt"))
    DisassociateRoleFromGroupResponse.struct_class = Types::DisassociateRoleFromGroupResponse

    DisassociateServiceRoleFromAccountRequest.struct_class = Types::DisassociateServiceRoleFromAccountRequest

    DisassociateServiceRoleFromAccountResponse.add_member(:disassociated_at, Shapes::ShapeRef.new(shape: __string, location_name: "DisassociatedAt"))
    DisassociateServiceRoleFromAccountResponse.struct_class = Types::DisassociateServiceRoleFromAccountResponse

    Empty.struct_class = Types::Empty

    ErrorDetail.add_member(:detailed_error_code, Shapes::ShapeRef.new(shape: __string, location_name: "DetailedErrorCode"))
    ErrorDetail.add_member(:detailed_error_message, Shapes::ShapeRef.new(shape: __string, location_name: "DetailedErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetails.member = Shapes::ShapeRef.new(shape: ErrorDetail)

    Function.add_member(:function_arn, Shapes::ShapeRef.new(shape: __string, location_name: "FunctionArn"))
    Function.add_member(:function_configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "FunctionConfiguration"))
    Function.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    Function.struct_class = Types::Function

    FunctionConfiguration.add_member(:encoding_type, Shapes::ShapeRef.new(shape: EncodingType, location_name: "EncodingType"))
    FunctionConfiguration.add_member(:environment, Shapes::ShapeRef.new(shape: FunctionConfigurationEnvironment, location_name: "Environment"))
    FunctionConfiguration.add_member(:exec_args, Shapes::ShapeRef.new(shape: __string, location_name: "ExecArgs"))
    FunctionConfiguration.add_member(:executable, Shapes::ShapeRef.new(shape: __string, location_name: "Executable"))
    FunctionConfiguration.add_member(:memory_size, Shapes::ShapeRef.new(shape: __integer, location_name: "MemorySize"))
    FunctionConfiguration.add_member(:pinned, Shapes::ShapeRef.new(shape: __boolean, location_name: "Pinned"))
    FunctionConfiguration.add_member(:timeout, Shapes::ShapeRef.new(shape: __integer, location_name: "Timeout"))
    FunctionConfiguration.struct_class = Types::FunctionConfiguration

    FunctionConfigurationEnvironment.add_member(:access_sysfs, Shapes::ShapeRef.new(shape: __boolean, location_name: "AccessSysfs"))
    FunctionConfigurationEnvironment.add_member(:resource_access_policies, Shapes::ShapeRef.new(shape: __listOfResourceAccessPolicy, location_name: "ResourceAccessPolicies"))
    FunctionConfigurationEnvironment.add_member(:variables, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "Variables"))
    FunctionConfigurationEnvironment.struct_class = Types::FunctionConfigurationEnvironment

    FunctionDefinitionVersion.add_member(:functions, Shapes::ShapeRef.new(shape: __listOfFunction, location_name: "Functions"))
    FunctionDefinitionVersion.struct_class = Types::FunctionDefinitionVersion

    GeneralError.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    GeneralError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    GeneralError.struct_class = Types::GeneralError

    GetAssociatedRoleRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    GetAssociatedRoleRequest.struct_class = Types::GetAssociatedRoleRequest

    GetAssociatedRoleResponse.add_member(:associated_at, Shapes::ShapeRef.new(shape: __string, location_name: "AssociatedAt"))
    GetAssociatedRoleResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RoleArn"))
    GetAssociatedRoleResponse.struct_class = Types::GetAssociatedRoleResponse

    GetConnectivityInfoRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ThingName"))
    GetConnectivityInfoRequest.struct_class = Types::GetConnectivityInfoRequest

    GetConnectivityInfoResponse.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: __listOfConnectivityInfo, location_name: "ConnectivityInfo"))
    GetConnectivityInfoResponse.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    GetConnectivityInfoResponse.struct_class = Types::GetConnectivityInfoResponse

    GetCoreDefinitionRequest.add_member(:core_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CoreDefinitionId"))
    GetCoreDefinitionRequest.struct_class = Types::GetCoreDefinitionRequest

    GetCoreDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetCoreDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetCoreDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetCoreDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GetCoreDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GetCoreDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GetCoreDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetCoreDefinitionResponse.struct_class = Types::GetCoreDefinitionResponse

    GetCoreDefinitionVersionRequest.add_member(:core_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CoreDefinitionId"))
    GetCoreDefinitionVersionRequest.add_member(:core_definition_version_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CoreDefinitionVersionId"))
    GetCoreDefinitionVersionRequest.struct_class = Types::GetCoreDefinitionVersionRequest

    GetCoreDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetCoreDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetCoreDefinitionVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: CoreDefinitionVersion, location_name: "Definition"))
    GetCoreDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetCoreDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    GetCoreDefinitionVersionResponse.struct_class = Types::GetCoreDefinitionVersionResponse

    GetDeploymentStatusRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeploymentId"))
    GetDeploymentStatusRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    GetDeploymentStatusRequest.struct_class = Types::GetDeploymentStatusRequest

    GetDeploymentStatusResponse.add_member(:deployment_status, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentStatus"))
    GetDeploymentStatusResponse.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "DeploymentType"))
    GetDeploymentStatusResponse.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    GetDeploymentStatusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "ErrorMessage"))
    GetDeploymentStatusResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: __string, location_name: "UpdatedAt"))
    GetDeploymentStatusResponse.struct_class = Types::GetDeploymentStatusResponse

    GetDeviceDefinitionRequest.add_member(:device_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeviceDefinitionId"))
    GetDeviceDefinitionRequest.struct_class = Types::GetDeviceDefinitionRequest

    GetDeviceDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetDeviceDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetDeviceDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetDeviceDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GetDeviceDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GetDeviceDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GetDeviceDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetDeviceDefinitionResponse.struct_class = Types::GetDeviceDefinitionResponse

    GetDeviceDefinitionVersionRequest.add_member(:device_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeviceDefinitionId"))
    GetDeviceDefinitionVersionRequest.add_member(:device_definition_version_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeviceDefinitionVersionId"))
    GetDeviceDefinitionVersionRequest.struct_class = Types::GetDeviceDefinitionVersionRequest

    GetDeviceDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetDeviceDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetDeviceDefinitionVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: DeviceDefinitionVersion, location_name: "Definition"))
    GetDeviceDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetDeviceDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    GetDeviceDefinitionVersionResponse.struct_class = Types::GetDeviceDefinitionVersionResponse

    GetFunctionDefinitionRequest.add_member(:function_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "FunctionDefinitionId"))
    GetFunctionDefinitionRequest.struct_class = Types::GetFunctionDefinitionRequest

    GetFunctionDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetFunctionDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetFunctionDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetFunctionDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GetFunctionDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GetFunctionDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GetFunctionDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetFunctionDefinitionResponse.struct_class = Types::GetFunctionDefinitionResponse

    GetFunctionDefinitionVersionRequest.add_member(:function_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "FunctionDefinitionId"))
    GetFunctionDefinitionVersionRequest.add_member(:function_definition_version_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "FunctionDefinitionVersionId"))
    GetFunctionDefinitionVersionRequest.struct_class = Types::GetFunctionDefinitionVersionRequest

    GetFunctionDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetFunctionDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetFunctionDefinitionVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: FunctionDefinitionVersion, location_name: "Definition"))
    GetFunctionDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetFunctionDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    GetFunctionDefinitionVersionResponse.struct_class = Types::GetFunctionDefinitionVersionResponse

    GetGroupCertificateAuthorityRequest.add_member(:certificate_authority_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CertificateAuthorityId"))
    GetGroupCertificateAuthorityRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    GetGroupCertificateAuthorityRequest.struct_class = Types::GetGroupCertificateAuthorityRequest

    GetGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_arn, Shapes::ShapeRef.new(shape: __string, location_name: "GroupCertificateAuthorityArn"))
    GetGroupCertificateAuthorityResponse.add_member(:group_certificate_authority_id, Shapes::ShapeRef.new(shape: __string, location_name: "GroupCertificateAuthorityId"))
    GetGroupCertificateAuthorityResponse.add_member(:pem_encoded_certificate, Shapes::ShapeRef.new(shape: __string, location_name: "PemEncodedCertificate"))
    GetGroupCertificateAuthorityResponse.struct_class = Types::GetGroupCertificateAuthorityResponse

    GetGroupCertificateConfigurationRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    GetGroupCertificateConfigurationRequest.struct_class = Types::GetGroupCertificateConfigurationRequest

    GetGroupCertificateConfigurationResponse.add_member(:certificate_authority_expiry_in_milliseconds, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateAuthorityExpiryInMilliseconds"))
    GetGroupCertificateConfigurationResponse.add_member(:certificate_expiry_in_milliseconds, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateExpiryInMilliseconds"))
    GetGroupCertificateConfigurationResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, location_name: "GroupId"))
    GetGroupCertificateConfigurationResponse.struct_class = Types::GetGroupCertificateConfigurationResponse

    GetGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    GetGroupRequest.struct_class = Types::GetGroupRequest

    GetGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetGroupResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetGroupResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GetGroupResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GetGroupResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GetGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetGroupResponse.struct_class = Types::GetGroupResponse

    GetGroupVersionRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    GetGroupVersionRequest.add_member(:group_version_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupVersionId"))
    GetGroupVersionRequest.struct_class = Types::GetGroupVersionRequest

    GetGroupVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetGroupVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetGroupVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: GroupVersion, location_name: "Definition"))
    GetGroupVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetGroupVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    GetGroupVersionResponse.struct_class = Types::GetGroupVersionResponse

    GetLoggerDefinitionRequest.add_member(:logger_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LoggerDefinitionId"))
    GetLoggerDefinitionRequest.struct_class = Types::GetLoggerDefinitionRequest

    GetLoggerDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetLoggerDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetLoggerDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetLoggerDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GetLoggerDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GetLoggerDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GetLoggerDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetLoggerDefinitionResponse.struct_class = Types::GetLoggerDefinitionResponse

    GetLoggerDefinitionVersionRequest.add_member(:logger_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LoggerDefinitionId"))
    GetLoggerDefinitionVersionRequest.add_member(:logger_definition_version_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LoggerDefinitionVersionId"))
    GetLoggerDefinitionVersionRequest.struct_class = Types::GetLoggerDefinitionVersionRequest

    GetLoggerDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetLoggerDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetLoggerDefinitionVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: LoggerDefinitionVersion, location_name: "Definition"))
    GetLoggerDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetLoggerDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    GetLoggerDefinitionVersionResponse.struct_class = Types::GetLoggerDefinitionVersionResponse

    GetResourceDefinitionRequest.add_member(:resource_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceDefinitionId"))
    GetResourceDefinitionRequest.struct_class = Types::GetResourceDefinitionRequest

    GetResourceDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetResourceDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetResourceDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetResourceDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GetResourceDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GetResourceDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GetResourceDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetResourceDefinitionResponse.struct_class = Types::GetResourceDefinitionResponse

    GetResourceDefinitionVersionRequest.add_member(:resource_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceDefinitionId"))
    GetResourceDefinitionVersionRequest.add_member(:resource_definition_version_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceDefinitionVersionId"))
    GetResourceDefinitionVersionRequest.struct_class = Types::GetResourceDefinitionVersionRequest

    GetResourceDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetResourceDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetResourceDefinitionVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: ResourceDefinitionVersion, location_name: "Definition"))
    GetResourceDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetResourceDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    GetResourceDefinitionVersionResponse.struct_class = Types::GetResourceDefinitionVersionResponse

    GetServiceRoleForAccountRequest.struct_class = Types::GetServiceRoleForAccountRequest

    GetServiceRoleForAccountResponse.add_member(:associated_at, Shapes::ShapeRef.new(shape: __string, location_name: "AssociatedAt"))
    GetServiceRoleForAccountResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RoleArn"))
    GetServiceRoleForAccountResponse.struct_class = Types::GetServiceRoleForAccountResponse

    GetSubscriptionDefinitionRequest.add_member(:subscription_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SubscriptionDefinitionId"))
    GetSubscriptionDefinitionRequest.struct_class = Types::GetSubscriptionDefinitionRequest

    GetSubscriptionDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetSubscriptionDefinitionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetSubscriptionDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetSubscriptionDefinitionResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GetSubscriptionDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GetSubscriptionDefinitionResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GetSubscriptionDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetSubscriptionDefinitionResponse.struct_class = Types::GetSubscriptionDefinitionResponse

    GetSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SubscriptionDefinitionId"))
    GetSubscriptionDefinitionVersionRequest.add_member(:subscription_definition_version_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SubscriptionDefinitionVersionId"))
    GetSubscriptionDefinitionVersionRequest.struct_class = Types::GetSubscriptionDefinitionVersionRequest

    GetSubscriptionDefinitionVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetSubscriptionDefinitionVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GetSubscriptionDefinitionVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: SubscriptionDefinitionVersion, location_name: "Definition"))
    GetSubscriptionDefinitionVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GetSubscriptionDefinitionVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    GetSubscriptionDefinitionVersionResponse.struct_class = Types::GetSubscriptionDefinitionVersionResponse

    GroupCertificateAuthorityProperties.add_member(:group_certificate_authority_arn, Shapes::ShapeRef.new(shape: __string, location_name: "GroupCertificateAuthorityArn"))
    GroupCertificateAuthorityProperties.add_member(:group_certificate_authority_id, Shapes::ShapeRef.new(shape: __string, location_name: "GroupCertificateAuthorityId"))
    GroupCertificateAuthorityProperties.struct_class = Types::GroupCertificateAuthorityProperties

    GroupCertificateConfiguration.add_member(:certificate_authority_expiry_in_milliseconds, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateAuthorityExpiryInMilliseconds"))
    GroupCertificateConfiguration.add_member(:certificate_expiry_in_milliseconds, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateExpiryInMilliseconds"))
    GroupCertificateConfiguration.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, location_name: "GroupId"))
    GroupCertificateConfiguration.struct_class = Types::GroupCertificateConfiguration

    GroupInformation.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GroupInformation.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    GroupInformation.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    GroupInformation.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "LastUpdatedTimestamp"))
    GroupInformation.add_member(:latest_version, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersion"))
    GroupInformation.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LatestVersionArn"))
    GroupInformation.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GroupInformation.struct_class = Types::GroupInformation

    GroupOwnerSetting.add_member(:auto_add_group_owner, Shapes::ShapeRef.new(shape: __boolean, location_name: "AutoAddGroupOwner"))
    GroupOwnerSetting.add_member(:group_owner, Shapes::ShapeRef.new(shape: __string, location_name: "GroupOwner"))
    GroupOwnerSetting.struct_class = Types::GroupOwnerSetting

    GroupVersion.add_member(:core_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "CoreDefinitionVersionArn"))
    GroupVersion.add_member(:device_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DeviceDefinitionVersionArn"))
    GroupVersion.add_member(:function_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "FunctionDefinitionVersionArn"))
    GroupVersion.add_member(:logger_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "LoggerDefinitionVersionArn"))
    GroupVersion.add_member(:resource_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "ResourceDefinitionVersionArn"))
    GroupVersion.add_member(:subscription_definition_version_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SubscriptionDefinitionVersionArn"))
    GroupVersion.struct_class = Types::GroupVersion

    ListCoreDefinitionVersionsRequest.add_member(:core_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CoreDefinitionId"))
    ListCoreDefinitionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListCoreDefinitionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListCoreDefinitionVersionsRequest.struct_class = Types::ListCoreDefinitionVersionsRequest

    ListCoreDefinitionVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListCoreDefinitionVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListCoreDefinitionVersionsResponse.struct_class = Types::ListCoreDefinitionVersionsResponse

    ListCoreDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListCoreDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListCoreDefinitionsRequest.struct_class = Types::ListCoreDefinitionsRequest

    ListCoreDefinitionsResponse.add_member(:definitions, Shapes::ShapeRef.new(shape: __listOfDefinitionInformation, location_name: "Definitions"))
    ListCoreDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListCoreDefinitionsResponse.struct_class = Types::ListCoreDefinitionsResponse

    ListDefinitionsResponse.add_member(:definitions, Shapes::ShapeRef.new(shape: __listOfDefinitionInformation, location_name: "Definitions"))
    ListDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListDefinitionsResponse.struct_class = Types::ListDefinitionsResponse

    ListDeploymentsRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    ListDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListDeploymentsRequest.struct_class = Types::ListDeploymentsRequest

    ListDeploymentsResponse.add_member(:deployments, Shapes::ShapeRef.new(shape: Deployments, location_name: "Deployments"))
    ListDeploymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListDeploymentsResponse.struct_class = Types::ListDeploymentsResponse

    ListDeviceDefinitionVersionsRequest.add_member(:device_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeviceDefinitionId"))
    ListDeviceDefinitionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListDeviceDefinitionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListDeviceDefinitionVersionsRequest.struct_class = Types::ListDeviceDefinitionVersionsRequest

    ListDeviceDefinitionVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListDeviceDefinitionVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListDeviceDefinitionVersionsResponse.struct_class = Types::ListDeviceDefinitionVersionsResponse

    ListDeviceDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListDeviceDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListDeviceDefinitionsRequest.struct_class = Types::ListDeviceDefinitionsRequest

    ListDeviceDefinitionsResponse.add_member(:definitions, Shapes::ShapeRef.new(shape: __listOfDefinitionInformation, location_name: "Definitions"))
    ListDeviceDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListDeviceDefinitionsResponse.struct_class = Types::ListDeviceDefinitionsResponse

    ListFunctionDefinitionVersionsRequest.add_member(:function_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "FunctionDefinitionId"))
    ListFunctionDefinitionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListFunctionDefinitionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListFunctionDefinitionVersionsRequest.struct_class = Types::ListFunctionDefinitionVersionsRequest

    ListFunctionDefinitionVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListFunctionDefinitionVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListFunctionDefinitionVersionsResponse.struct_class = Types::ListFunctionDefinitionVersionsResponse

    ListFunctionDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListFunctionDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListFunctionDefinitionsRequest.struct_class = Types::ListFunctionDefinitionsRequest

    ListFunctionDefinitionsResponse.add_member(:definitions, Shapes::ShapeRef.new(shape: __listOfDefinitionInformation, location_name: "Definitions"))
    ListFunctionDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListFunctionDefinitionsResponse.struct_class = Types::ListFunctionDefinitionsResponse

    ListGroupCertificateAuthoritiesRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    ListGroupCertificateAuthoritiesRequest.struct_class = Types::ListGroupCertificateAuthoritiesRequest

    ListGroupCertificateAuthoritiesResponse.add_member(:group_certificate_authorities, Shapes::ShapeRef.new(shape: __listOfGroupCertificateAuthorityProperties, location_name: "GroupCertificateAuthorities"))
    ListGroupCertificateAuthoritiesResponse.struct_class = Types::ListGroupCertificateAuthoritiesResponse

    ListGroupVersionsRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    ListGroupVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListGroupVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListGroupVersionsRequest.struct_class = Types::ListGroupVersionsRequest

    ListGroupVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListGroupVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListGroupVersionsResponse.struct_class = Types::ListGroupVersionsResponse

    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: __listOfGroupInformation, location_name: "Groups"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListLoggerDefinitionVersionsRequest.add_member(:logger_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LoggerDefinitionId"))
    ListLoggerDefinitionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListLoggerDefinitionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListLoggerDefinitionVersionsRequest.struct_class = Types::ListLoggerDefinitionVersionsRequest

    ListLoggerDefinitionVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListLoggerDefinitionVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListLoggerDefinitionVersionsResponse.struct_class = Types::ListLoggerDefinitionVersionsResponse

    ListLoggerDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListLoggerDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListLoggerDefinitionsRequest.struct_class = Types::ListLoggerDefinitionsRequest

    ListLoggerDefinitionsResponse.add_member(:definitions, Shapes::ShapeRef.new(shape: __listOfDefinitionInformation, location_name: "Definitions"))
    ListLoggerDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListLoggerDefinitionsResponse.struct_class = Types::ListLoggerDefinitionsResponse

    ListResourceDefinitionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListResourceDefinitionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListResourceDefinitionVersionsRequest.add_member(:resource_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceDefinitionId"))
    ListResourceDefinitionVersionsRequest.struct_class = Types::ListResourceDefinitionVersionsRequest

    ListResourceDefinitionVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListResourceDefinitionVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListResourceDefinitionVersionsResponse.struct_class = Types::ListResourceDefinitionVersionsResponse

    ListResourceDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListResourceDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListResourceDefinitionsRequest.struct_class = Types::ListResourceDefinitionsRequest

    ListResourceDefinitionsResponse.add_member(:definitions, Shapes::ShapeRef.new(shape: __listOfDefinitionInformation, location_name: "Definitions"))
    ListResourceDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListResourceDefinitionsResponse.struct_class = Types::ListResourceDefinitionsResponse

    ListSubscriptionDefinitionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListSubscriptionDefinitionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListSubscriptionDefinitionVersionsRequest.add_member(:subscription_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SubscriptionDefinitionId"))
    ListSubscriptionDefinitionVersionsRequest.struct_class = Types::ListSubscriptionDefinitionVersionsRequest

    ListSubscriptionDefinitionVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListSubscriptionDefinitionVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListSubscriptionDefinitionVersionsResponse.struct_class = Types::ListSubscriptionDefinitionVersionsResponse

    ListSubscriptionDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "MaxResults"))
    ListSubscriptionDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListSubscriptionDefinitionsRequest.struct_class = Types::ListSubscriptionDefinitionsRequest

    ListSubscriptionDefinitionsResponse.add_member(:definitions, Shapes::ShapeRef.new(shape: __listOfDefinitionInformation, location_name: "Definitions"))
    ListSubscriptionDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListSubscriptionDefinitionsResponse.struct_class = Types::ListSubscriptionDefinitionsResponse

    ListVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionInformation, location_name: "Versions"))
    ListVersionsResponse.struct_class = Types::ListVersionsResponse

    LocalDeviceResourceData.add_member(:group_owner_setting, Shapes::ShapeRef.new(shape: GroupOwnerSetting, location_name: "GroupOwnerSetting"))
    LocalDeviceResourceData.add_member(:source_path, Shapes::ShapeRef.new(shape: __string, location_name: "SourcePath"))
    LocalDeviceResourceData.struct_class = Types::LocalDeviceResourceData

    LocalVolumeResourceData.add_member(:destination_path, Shapes::ShapeRef.new(shape: __string, location_name: "DestinationPath"))
    LocalVolumeResourceData.add_member(:group_owner_setting, Shapes::ShapeRef.new(shape: GroupOwnerSetting, location_name: "GroupOwnerSetting"))
    LocalVolumeResourceData.add_member(:source_path, Shapes::ShapeRef.new(shape: __string, location_name: "SourcePath"))
    LocalVolumeResourceData.struct_class = Types::LocalVolumeResourceData

    Logger.add_member(:component, Shapes::ShapeRef.new(shape: LoggerComponent, location_name: "Component"))
    Logger.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    Logger.add_member(:level, Shapes::ShapeRef.new(shape: LoggerLevel, location_name: "Level"))
    Logger.add_member(:space, Shapes::ShapeRef.new(shape: __integer, location_name: "Space"))
    Logger.add_member(:type, Shapes::ShapeRef.new(shape: LoggerType, location_name: "Type"))
    Logger.struct_class = Types::Logger

    LoggerDefinitionVersion.add_member(:loggers, Shapes::ShapeRef.new(shape: __listOfLogger, location_name: "Loggers"))
    LoggerDefinitionVersion.struct_class = Types::LoggerDefinitionVersion

    ResetDeploymentsRequest.add_member(:amzn_client_token, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "X-Amzn-Client-Token"))
    ResetDeploymentsRequest.add_member(:force, Shapes::ShapeRef.new(shape: __boolean, location_name: "Force"))
    ResetDeploymentsRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    ResetDeploymentsRequest.struct_class = Types::ResetDeploymentsRequest

    ResetDeploymentsResponse.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentArn"))
    ResetDeploymentsResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, location_name: "DeploymentId"))
    ResetDeploymentsResponse.struct_class = Types::ResetDeploymentsResponse

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    Resource.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    Resource.add_member(:resource_data_container, Shapes::ShapeRef.new(shape: ResourceDataContainer, location_name: "ResourceDataContainer"))
    Resource.struct_class = Types::Resource

    ResourceAccessPolicy.add_member(:permission, Shapes::ShapeRef.new(shape: Permission, location_name: "Permission"))
    ResourceAccessPolicy.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "ResourceId"))
    ResourceAccessPolicy.struct_class = Types::ResourceAccessPolicy

    ResourceDataContainer.add_member(:local_device_resource_data, Shapes::ShapeRef.new(shape: LocalDeviceResourceData, location_name: "LocalDeviceResourceData"))
    ResourceDataContainer.add_member(:local_volume_resource_data, Shapes::ShapeRef.new(shape: LocalVolumeResourceData, location_name: "LocalVolumeResourceData"))
    ResourceDataContainer.add_member(:s3_machine_learning_model_resource_data, Shapes::ShapeRef.new(shape: S3MachineLearningModelResourceData, location_name: "S3MachineLearningModelResourceData"))
    ResourceDataContainer.add_member(:sage_maker_machine_learning_model_resource_data, Shapes::ShapeRef.new(shape: SageMakerMachineLearningModelResourceData, location_name: "SageMakerMachineLearningModelResourceData"))
    ResourceDataContainer.struct_class = Types::ResourceDataContainer

    ResourceDefinitionVersion.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, location_name: "Resources"))
    ResourceDefinitionVersion.struct_class = Types::ResourceDefinitionVersion

    S3MachineLearningModelResourceData.add_member(:destination_path, Shapes::ShapeRef.new(shape: __string, location_name: "DestinationPath"))
    S3MachineLearningModelResourceData.add_member(:s3_uri, Shapes::ShapeRef.new(shape: __string, location_name: "S3Uri"))
    S3MachineLearningModelResourceData.struct_class = Types::S3MachineLearningModelResourceData

    SageMakerMachineLearningModelResourceData.add_member(:destination_path, Shapes::ShapeRef.new(shape: __string, location_name: "DestinationPath"))
    SageMakerMachineLearningModelResourceData.add_member(:sage_maker_job_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SageMakerJobArn"))
    SageMakerMachineLearningModelResourceData.struct_class = Types::SageMakerMachineLearningModelResourceData

    Subscription.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    Subscription.add_member(:source, Shapes::ShapeRef.new(shape: __string, location_name: "Source"))
    Subscription.add_member(:subject, Shapes::ShapeRef.new(shape: __string, location_name: "Subject"))
    Subscription.add_member(:target, Shapes::ShapeRef.new(shape: __string, location_name: "Target"))
    Subscription.struct_class = Types::Subscription

    SubscriptionDefinitionVersion.add_member(:subscriptions, Shapes::ShapeRef.new(shape: __listOfSubscription, location_name: "Subscriptions"))
    SubscriptionDefinitionVersion.struct_class = Types::SubscriptionDefinitionVersion

    UpdateConnectivityInfoRequest.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: __listOfConnectivityInfo, location_name: "ConnectivityInfo"))
    UpdateConnectivityInfoRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ThingName"))
    UpdateConnectivityInfoRequest.struct_class = Types::UpdateConnectivityInfoRequest

    UpdateConnectivityInfoResponse.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    UpdateConnectivityInfoResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    UpdateConnectivityInfoResponse.struct_class = Types::UpdateConnectivityInfoResponse

    UpdateCoreDefinitionRequest.add_member(:core_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "CoreDefinitionId"))
    UpdateCoreDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateCoreDefinitionRequest.struct_class = Types::UpdateCoreDefinitionRequest

    UpdateCoreDefinitionResponse.struct_class = Types::UpdateCoreDefinitionResponse

    UpdateDeviceDefinitionRequest.add_member(:device_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "DeviceDefinitionId"))
    UpdateDeviceDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateDeviceDefinitionRequest.struct_class = Types::UpdateDeviceDefinitionRequest

    UpdateDeviceDefinitionResponse.struct_class = Types::UpdateDeviceDefinitionResponse

    UpdateFunctionDefinitionRequest.add_member(:function_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "FunctionDefinitionId"))
    UpdateFunctionDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateFunctionDefinitionRequest.struct_class = Types::UpdateFunctionDefinitionRequest

    UpdateFunctionDefinitionResponse.struct_class = Types::UpdateFunctionDefinitionResponse

    UpdateGroupCertificateConfigurationRequest.add_member(:certificate_expiry_in_milliseconds, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateExpiryInMilliseconds"))
    UpdateGroupCertificateConfigurationRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    UpdateGroupCertificateConfigurationRequest.struct_class = Types::UpdateGroupCertificateConfigurationRequest

    UpdateGroupCertificateConfigurationResponse.add_member(:certificate_authority_expiry_in_milliseconds, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateAuthorityExpiryInMilliseconds"))
    UpdateGroupCertificateConfigurationResponse.add_member(:certificate_expiry_in_milliseconds, Shapes::ShapeRef.new(shape: __string, location_name: "CertificateExpiryInMilliseconds"))
    UpdateGroupCertificateConfigurationResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, location_name: "GroupId"))
    UpdateGroupCertificateConfigurationResponse.struct_class = Types::UpdateGroupCertificateConfigurationResponse

    UpdateGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "GroupId"))
    UpdateGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateGroupRequest.struct_class = Types::UpdateGroupRequest

    UpdateGroupResponse.struct_class = Types::UpdateGroupResponse

    UpdateLoggerDefinitionRequest.add_member(:logger_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LoggerDefinitionId"))
    UpdateLoggerDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateLoggerDefinitionRequest.struct_class = Types::UpdateLoggerDefinitionRequest

    UpdateLoggerDefinitionResponse.struct_class = Types::UpdateLoggerDefinitionResponse

    UpdateResourceDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateResourceDefinitionRequest.add_member(:resource_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceDefinitionId"))
    UpdateResourceDefinitionRequest.struct_class = Types::UpdateResourceDefinitionRequest

    UpdateResourceDefinitionResponse.struct_class = Types::UpdateResourceDefinitionResponse

    UpdateSubscriptionDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    UpdateSubscriptionDefinitionRequest.add_member(:subscription_definition_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SubscriptionDefinitionId"))
    UpdateSubscriptionDefinitionRequest.struct_class = Types::UpdateSubscriptionDefinitionRequest

    UpdateSubscriptionDefinitionResponse.struct_class = Types::UpdateSubscriptionDefinitionResponse

    UpdateTargets.member = Shapes::ShapeRef.new(shape: __string)

    VersionInformation.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    VersionInformation.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: __string, location_name: "CreationTimestamp"))
    VersionInformation.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "Id"))
    VersionInformation.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "Version"))
    VersionInformation.struct_class = Types::VersionInformation

    __listOfConnectivityInfo.member = Shapes::ShapeRef.new(shape: ConnectivityInfo)

    __listOfCore.member = Shapes::ShapeRef.new(shape: Core)

    __listOfDefinitionInformation.member = Shapes::ShapeRef.new(shape: DefinitionInformation)

    __listOfDevice.member = Shapes::ShapeRef.new(shape: Device)

    __listOfFunction.member = Shapes::ShapeRef.new(shape: Function)

    __listOfGroupCertificateAuthorityProperties.member = Shapes::ShapeRef.new(shape: GroupCertificateAuthorityProperties)

    __listOfGroupInformation.member = Shapes::ShapeRef.new(shape: GroupInformation)

    __listOfLogger.member = Shapes::ShapeRef.new(shape: Logger)

    __listOfResource.member = Shapes::ShapeRef.new(shape: Resource)

    __listOfResourceAccessPolicy.member = Shapes::ShapeRef.new(shape: ResourceAccessPolicy)

    __listOfSubscription.member = Shapes::ShapeRef.new(shape: Subscription)

    __listOfVersionInformation.member = Shapes::ShapeRef.new(shape: VersionInformation)

    __mapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__string.value = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-06-07"

      api.metadata = {
        "apiVersion" => "2017-06-07",
        "endpointPrefix" => "greengrass",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Greengrass",
        "signatureVersion" => "v4",
        "signingName" => "greengrass",
        "uid" => "greengrass-2017-06-07",
      }

      api.add_operation(:associate_role_to_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateRoleToGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/groups/{GroupId}/role"
        o.input = Shapes::ShapeRef.new(shape: AssociateRoleToGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateRoleToGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:associate_service_role_to_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateServiceRoleToAccount"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/servicerole"
        o.input = Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_core_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCoreDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/cores"
        o.input = Shapes::ShapeRef.new(shape: CreateCoreDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCoreDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_core_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCoreDefinitionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/cores/{CoreDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateCoreDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCoreDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/groups/{GroupId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_device_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeviceDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/devices"
        o.input = Shapes::ShapeRef.new(shape: CreateDeviceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeviceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_device_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeviceDefinitionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/devices/{DeviceDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateDeviceDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeviceDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_function_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunctionDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/functions"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFunctionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_function_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunctionDefinitionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/functions/{FunctionDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFunctionDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/groups"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_group_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroupCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/groups/{GroupId}/certificateauthorities"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupCertificateAuthorityResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_group_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroupVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/groups/{GroupId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_logger_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoggerDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/loggers"
        o.input = Shapes::ShapeRef.new(shape: CreateLoggerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoggerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_logger_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoggerDefinitionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateLoggerDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoggerDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_resource_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/resources"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_resource_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceDefinitionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/resources/{ResourceDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_software_update_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSoftwareUpdateJob"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/updates"
        o.input = Shapes::ShapeRef.new(shape: CreateSoftwareUpdateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSoftwareUpdateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_subscription_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriptionDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_subscription_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriptionDefinitionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_core_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCoreDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/definition/cores/{CoreDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCoreDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCoreDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_device_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeviceDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/definition/devices/{DeviceDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeviceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_function_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunctionDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/definition/functions/{FunctionDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFunctionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/groups/{GroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_logger_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoggerDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/definition/loggers/{LoggerDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoggerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoggerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_resource_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/definition/resources/{ResourceDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_subscription_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriptionDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriptionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:disassociate_role_from_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateRoleFromGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/groups/{GroupId}/role"
        o.input = Shapes::ShapeRef.new(shape: DisassociateRoleFromGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateRoleFromGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:disassociate_service_role_from_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateServiceRoleFromAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/servicerole"
        o.input = Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_associated_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssociatedRole"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/role"
        o.input = Shapes::ShapeRef.new(shape: GetAssociatedRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssociatedRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_connectivity_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectivityInfo"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/things/{ThingName}/connectivityInfo"
        o.input = Shapes::ShapeRef.new(shape: GetConnectivityInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectivityInfoResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_core_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoreDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/cores/{CoreDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: GetCoreDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoreDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_core_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoreDefinitionVersion"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetCoreDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoreDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_deployment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentStatus"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_device_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/devices/{DeviceDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_device_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceDefinitionVersion"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_function_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/functions/{FunctionDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_function_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionDefinitionVersion"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroup"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}"
        o.input = Shapes::ShapeRef.new(shape: GetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_group_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupCertificateAuthority"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}"
        o.input = Shapes::ShapeRef.new(shape: GetGroupCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupCertificateAuthorityResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group_certificate_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupCertificateConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry"
        o.input = Shapes::ShapeRef.new(shape: GetGroupCertificateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupCertificateConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupVersion"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/versions/{GroupVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetGroupVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_logger_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoggerDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/loggers/{LoggerDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: GetLoggerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoggerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_logger_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoggerDefinitionVersion"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetLoggerDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoggerDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_resource_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/resources/{ResourceDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: GetResourceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_resource_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceDefinitionVersion"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetResourceDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_service_role_for_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceRoleForAccount"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/servicerole"
        o.input = Shapes::ShapeRef.new(shape: GetServiceRoleForAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceRoleForAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_subscription_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriptionDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_subscription_definition_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriptionDefinitionVersion"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionDefinitionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_core_definition_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoreDefinitionVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/cores/{CoreDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListCoreDefinitionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoreDefinitionVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_core_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoreDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/cores"
        o.input = Shapes::ShapeRef.new(shape: ListCoreDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoreDefinitionsResponse)
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_device_definition_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceDefinitionVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/devices/{DeviceDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceDefinitionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceDefinitionVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_device_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/devices"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceDefinitionsResponse)
      end)

      api.add_operation(:list_function_definition_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctionDefinitionVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/functions/{FunctionDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionDefinitionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionDefinitionVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_function_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctionDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/functions"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionDefinitionsResponse)
      end)

      api.add_operation(:list_group_certificate_authorities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupCertificateAuthorities"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/certificateauthorities"
        o.input = Shapes::ShapeRef.new(shape: ListGroupCertificateAuthoritiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupCertificateAuthoritiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_group_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups/{GroupId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListGroupVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/groups"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
      end)

      api.add_operation(:list_logger_definition_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLoggerDefinitionVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListLoggerDefinitionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLoggerDefinitionVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_logger_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLoggerDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/loggers"
        o.input = Shapes::ShapeRef.new(shape: ListLoggerDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLoggerDefinitionsResponse)
      end)

      api.add_operation(:list_resource_definition_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceDefinitionVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/resources/{ResourceDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListResourceDefinitionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceDefinitionVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_resource_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/resources"
        o.input = Shapes::ShapeRef.new(shape: ListResourceDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceDefinitionsResponse)
      end)

      api.add_operation(:list_subscription_definition_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptionDefinitionVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_subscription_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptionDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/definition/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionDefinitionsResponse)
      end)

      api.add_operation(:reset_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/groups/{GroupId}/deployments/$reset"
        o.input = Shapes::ShapeRef.new(shape: ResetDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_connectivity_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectivityInfo"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/things/{ThingName}/connectivityInfo"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectivityInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectivityInfoResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_core_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCoreDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/definition/cores/{CoreDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCoreDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCoreDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_device_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeviceDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/definition/devices/{DeviceDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_function_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/definition/functions/{FunctionDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFunctionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/groups/{GroupId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_group_certificate_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroupCertificateConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupCertificateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupCertificateConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_logger_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLoggerDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/definition/loggers/{LoggerDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLoggerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLoggerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_resource_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/definition/resources/{ResourceDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_subscription_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriptionDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)
    end

  end
end
