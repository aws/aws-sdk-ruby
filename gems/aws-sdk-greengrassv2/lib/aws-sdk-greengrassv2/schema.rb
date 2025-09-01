# frozen_string_literal: true

# This is generated code!

module Aws::GreengrassV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AssociateClientDeviceWithCoreDeviceEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceEntry', name: 'AssociateClientDeviceWithCoreDeviceEntry')
    AssociateClientDeviceWithCoreDeviceEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceEntryList', name: 'AssociateClientDeviceWithCoreDeviceEntryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AssociateClientDeviceWithCoreDeviceErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceErrorEntry', name: 'AssociateClientDeviceWithCoreDeviceErrorEntry')
    AssociateClientDeviceWithCoreDeviceErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceErrorList', name: 'AssociateClientDeviceWithCoreDeviceErrorList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AssociateServiceRoleToAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#AssociateServiceRoleToAccountRequest', name: 'AssociateServiceRoleToAccountRequest')
    AssociateServiceRoleToAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#AssociateServiceRoleToAccountResponse', name: 'AssociateServiceRoleToAccountResponse')
    AssociatedClientDevice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#AssociatedClientDevice', name: 'AssociatedClientDevice')
    AssociatedClientDeviceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#AssociatedClientDeviceList', name: 'AssociatedClientDeviceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchAssociateClientDeviceWithCoreDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#BatchAssociateClientDeviceWithCoreDeviceRequest', name: 'BatchAssociateClientDeviceWithCoreDeviceRequest')
    BatchAssociateClientDeviceWithCoreDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#BatchAssociateClientDeviceWithCoreDeviceResponse', name: 'BatchAssociateClientDeviceWithCoreDeviceResponse')
    BatchDisassociateClientDeviceFromCoreDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#BatchDisassociateClientDeviceFromCoreDeviceRequest', name: 'BatchDisassociateClientDeviceFromCoreDeviceRequest')
    BatchDisassociateClientDeviceFromCoreDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#BatchDisassociateClientDeviceFromCoreDeviceResponse', name: 'BatchDisassociateClientDeviceFromCoreDeviceResponse')
    CPU = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.greengrassv2#CPU', name: 'CPU', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CancelDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CancelDeploymentRequest', name: 'CancelDeploymentRequest')
    CancelDeploymentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CancelDeploymentResponse', name: 'CancelDeploymentResponse')
    ClientTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ClientTokenString', name: 'ClientTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    CloudComponentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#CloudComponentState', name: 'CloudComponentState')
    CloudComponentStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CloudComponentStatus', name: 'CloudComponentStatus')
    Component = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#Component', name: 'Component')
    ComponentARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ComponentARN', name: 'ComponentARN', traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:(aws|[0-9]+):components:[^:]+$"})
    ComponentCandidate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentCandidate', name: 'ComponentCandidate')
    ComponentCandidateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#ComponentCandidateList', name: 'ComponentCandidateList')
    ComponentConfigurationPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ComponentConfigurationPath', name: 'ComponentConfigurationPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ComponentConfigurationPathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#ComponentConfigurationPathList', name: 'ComponentConfigurationPathList')
    ComponentConfigurationString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ComponentConfigurationString', name: 'ComponentConfigurationString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    ComponentConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentConfigurationUpdate', name: 'ComponentConfigurationUpdate')
    ComponentDependencyMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrassv2#ComponentDependencyMap', name: 'ComponentDependencyMap')
    ComponentDependencyRequirement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentDependencyRequirement', name: 'ComponentDependencyRequirement')
    ComponentDependencyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#ComponentDependencyType', name: 'ComponentDependencyType')
    ComponentDeploymentSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentDeploymentSpecification', name: 'ComponentDeploymentSpecification')
    ComponentDeploymentSpecifications = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrassv2#ComponentDeploymentSpecifications', name: 'ComponentDeploymentSpecifications')
    ComponentLatestVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentLatestVersion', name: 'ComponentLatestVersion')
    ComponentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#ComponentList', name: 'ComponentList')
    ComponentNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ComponentNameString', name: 'ComponentNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ComponentPlatform = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentPlatform', name: 'ComponentPlatform')
    ComponentPlatformList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#ComponentPlatformList', name: 'ComponentPlatformList')
    ComponentRunWith = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentRunWith', name: 'ComponentRunWith')
    ComponentVersionARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ComponentVersionARN', name: 'ComponentVersionARN', traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:(aws|[0-9]+):components:[^:]+:versions:[^:]+$"})
    ComponentVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#ComponentVersionList', name: 'ComponentVersionList')
    ComponentVersionListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ComponentVersionListItem', name: 'ComponentVersionListItem')
    ComponentVersionRequirementMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrassv2#ComponentVersionRequirementMap', name: 'ComponentVersionRequirementMap')
    ComponentVersionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ComponentVersionString', name: 'ComponentVersionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ComponentVisibilityScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#ComponentVisibilityScope', name: 'ComponentVisibilityScope')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectivityInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ConnectivityInfo', name: 'ConnectivityInfo')
    CoreDevice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CoreDevice', name: 'CoreDevice')
    CoreDeviceArchitectureString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#CoreDeviceArchitectureString', name: 'CoreDeviceArchitectureString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CoreDevicePlatformString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#CoreDevicePlatformString', name: 'CoreDevicePlatformString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CoreDeviceRuntimeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#CoreDeviceRuntimeString', name: 'CoreDeviceRuntimeString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CoreDeviceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#CoreDeviceStatus', name: 'CoreDeviceStatus')
    CoreDeviceThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#CoreDeviceThingName', name: 'CoreDeviceThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    CoreDevicesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#CoreDevicesList', name: 'CoreDevicesList')
    CreateComponentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CreateComponentVersionRequest', name: 'CreateComponentVersionRequest')
    CreateComponentVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CreateComponentVersionResponse', name: 'CreateComponentVersionResponse')
    CreateDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CreateDeploymentRequest', name: 'CreateDeploymentRequest')
    CreateDeploymentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#CreateDeploymentResponse', name: 'CreateDeploymentResponse')
    DefaultMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#DefaultMaxResults', name: 'DefaultMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DeleteComponentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DeleteComponentRequest', name: 'DeleteComponentRequest')
    DeleteCoreDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DeleteCoreDeviceRequest', name: 'DeleteCoreDeviceRequest')
    DeleteDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DeleteDeploymentRequest', name: 'DeleteDeploymentRequest')
    Deployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#Deployment', name: 'Deployment')
    DeploymentComponentUpdatePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DeploymentComponentUpdatePolicy', name: 'DeploymentComponentUpdatePolicy')
    DeploymentComponentUpdatePolicyAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#DeploymentComponentUpdatePolicyAction', name: 'DeploymentComponentUpdatePolicyAction')
    DeploymentConfigurationValidationPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DeploymentConfigurationValidationPolicy', name: 'DeploymentConfigurationValidationPolicy')
    DeploymentFailureHandlingPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#DeploymentFailureHandlingPolicy', name: 'DeploymentFailureHandlingPolicy')
    DeploymentHistoryFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#DeploymentHistoryFilter', name: 'DeploymentHistoryFilter')
    DeploymentID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#DeploymentID', name: 'DeploymentID')
    DeploymentIoTJobConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DeploymentIoTJobConfiguration', name: 'DeploymentIoTJobConfiguration')
    DeploymentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#DeploymentList', name: 'DeploymentList')
    DeploymentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#DeploymentName', name: 'DeploymentName')
    DeploymentNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#DeploymentNameString', name: 'DeploymentNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DeploymentPolicies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DeploymentPolicies', name: 'DeploymentPolicies')
    DeploymentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#DeploymentStatus', name: 'DeploymentStatus')
    DescribeComponentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DescribeComponentRequest', name: 'DescribeComponentRequest')
    DescribeComponentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DescribeComponentResponse', name: 'DescribeComponentResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#DescriptionString', name: 'DescriptionString')
    DisassociateClientDeviceFromCoreDeviceEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceEntry', name: 'DisassociateClientDeviceFromCoreDeviceEntry')
    DisassociateClientDeviceFromCoreDeviceEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceEntryList', name: 'DisassociateClientDeviceFromCoreDeviceEntryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DisassociateClientDeviceFromCoreDeviceErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceErrorEntry', name: 'DisassociateClientDeviceFromCoreDeviceErrorEntry')
    DisassociateClientDeviceFromCoreDeviceErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceErrorList', name: 'DisassociateClientDeviceFromCoreDeviceErrorList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DisassociateServiceRoleFromAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DisassociateServiceRoleFromAccountRequest', name: 'DisassociateServiceRoleFromAccountRequest')
    DisassociateServiceRoleFromAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#DisassociateServiceRoleFromAccountResponse', name: 'DisassociateServiceRoleFromAccountResponse')
    EffectiveDeployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeployment', name: 'EffectiveDeployment')
    EffectiveDeploymentErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeploymentErrorCode', name: 'EffectiveDeploymentErrorCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EffectiveDeploymentErrorStack = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeploymentErrorStack', name: 'EffectiveDeploymentErrorStack')
    EffectiveDeploymentErrorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeploymentErrorType', name: 'EffectiveDeploymentErrorType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EffectiveDeploymentErrorTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeploymentErrorTypeList', name: 'EffectiveDeploymentErrorTypeList')
    EffectiveDeploymentExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeploymentExecutionStatus', name: 'EffectiveDeploymentExecutionStatus')
    EffectiveDeploymentStatusDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeploymentStatusDetails', name: 'EffectiveDeploymentStatusDetails')
    EffectiveDeploymentsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#EffectiveDeploymentsList', name: 'EffectiveDeploymentsList')
    FileSystemPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#FileSystemPath', name: 'FileSystemPath')
    GGCVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#GGCVersion', name: 'GGCVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GenericV2ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#GenericV2ARN', name: 'GenericV2ARN', traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:(aws|[0-9]+):(components|deployments|coreDevices):"})
    GetComponentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetComponentRequest', name: 'GetComponentRequest')
    GetComponentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetComponentResponse', name: 'GetComponentResponse')
    GetComponentVersionArtifactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetComponentVersionArtifactRequest', name: 'GetComponentVersionArtifactRequest')
    GetComponentVersionArtifactResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetComponentVersionArtifactResponse', name: 'GetComponentVersionArtifactResponse')
    GetConnectivityInfoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetConnectivityInfoRequest', name: 'GetConnectivityInfoRequest')
    GetConnectivityInfoResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetConnectivityInfoResponse', name: 'GetConnectivityInfoResponse')
    GetCoreDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetCoreDeviceRequest', name: 'GetCoreDeviceRequest')
    GetCoreDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetCoreDeviceResponse', name: 'GetCoreDeviceResponse')
    GetDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetDeploymentRequest', name: 'GetDeploymentRequest')
    GetDeploymentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetDeploymentResponse', name: 'GetDeploymentResponse')
    GetServiceRoleForAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetServiceRoleForAccountRequest', name: 'GetServiceRoleForAccountRequest')
    GetServiceRoleForAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#GetServiceRoleForAccountResponse', name: 'GetServiceRoleForAccountResponse')
    InstalledComponent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#InstalledComponent', name: 'InstalledComponent')
    InstalledComponentLifecycleState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#InstalledComponentLifecycleState', name: 'InstalledComponentLifecycleState')
    InstalledComponentLifecycleStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#InstalledComponentLifecycleStatusCode', name: 'InstalledComponentLifecycleStatusCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    InstalledComponentLifecycleStatusCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#InstalledComponentLifecycleStatusCodeList', name: 'InstalledComponentLifecycleStatusCodeList')
    InstalledComponentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#InstalledComponentList', name: 'InstalledComponentList')
    InstalledComponentTopologyFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#InstalledComponentTopologyFilter', name: 'InstalledComponentTopologyFilter')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IoTJobARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#IoTJobARN', name: 'IoTJobARN', traits: {"smithy.api#pattern" => "^arn:[^:]*:iot:[^:]+:[0-9]+:job/.+$"})
    IoTJobAbortAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#IoTJobAbortAction', name: 'IoTJobAbortAction')
    IoTJobAbortConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#IoTJobAbortConfig', name: 'IoTJobAbortConfig')
    IoTJobAbortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#IoTJobAbortCriteria', name: 'IoTJobAbortCriteria')
    IoTJobAbortCriteriaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#IoTJobAbortCriteriaList', name: 'IoTJobAbortCriteriaList', traits: {"smithy.api#length" => {"min" => 1}})
    IoTJobAbortThresholdPercentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.greengrassv2#IoTJobAbortThresholdPercentage', name: 'IoTJobAbortThresholdPercentage', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 100}})
    IoTJobExecutionFailureType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#IoTJobExecutionFailureType', name: 'IoTJobExecutionFailureType')
    IoTJobExecutionsRolloutConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#IoTJobExecutionsRolloutConfig', name: 'IoTJobExecutionsRolloutConfig')
    IoTJobExponentialRolloutRate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#IoTJobExponentialRolloutRate', name: 'IoTJobExponentialRolloutRate')
    IoTJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#IoTJobId', name: 'IoTJobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    IoTJobInProgressTimeoutInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#IoTJobInProgressTimeoutInMinutes', name: 'IoTJobInProgressTimeoutInMinutes', traits: {"smithy.api#default" => 0})
    IoTJobMaxExecutionsPerMin = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#IoTJobMaxExecutionsPerMin', name: 'IoTJobMaxExecutionsPerMin', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    IoTJobMinimumNumberOfExecutedThings = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#IoTJobMinimumNumberOfExecutedThings', name: 'IoTJobMinimumNumberOfExecutedThings', traits: {"smithy.api#range" => {"min" => 1}})
    IoTJobNumberOfThings = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#IoTJobNumberOfThings', name: 'IoTJobNumberOfThings', traits: {"smithy.api#range" => {"min" => 1}})
    IoTJobRateIncreaseCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#IoTJobRateIncreaseCriteria', name: 'IoTJobRateIncreaseCriteria')
    IoTJobRolloutBaseRatePerMinute = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#IoTJobRolloutBaseRatePerMinute', name: 'IoTJobRolloutBaseRatePerMinute', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    IoTJobRolloutIncrementFactor = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.greengrassv2#IoTJobRolloutIncrementFactor', name: 'IoTJobRolloutIncrementFactor', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    IoTJobTimeoutConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#IoTJobTimeoutConfig', name: 'IoTJobTimeoutConfig')
    IoTThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#IoTThingName', name: 'IoTThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    IotEndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#IotEndpointType', name: 'IotEndpointType')
    IsLatestForTarget = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.greengrassv2#IsLatestForTarget', name: 'IsLatestForTarget', traits: {"smithy.api#default" => false})
    IsRoot = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.greengrassv2#IsRoot', name: 'IsRoot', traits: {"smithy.api#default" => false})
    LambdaContainerParams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#LambdaContainerParams', name: 'LambdaContainerParams')
    LambdaDeviceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#LambdaDeviceList', name: 'LambdaDeviceList')
    LambdaDeviceMount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#LambdaDeviceMount', name: 'LambdaDeviceMount')
    LambdaEnvironmentVariables = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrassv2#LambdaEnvironmentVariables', name: 'LambdaEnvironmentVariables')
    LambdaEventSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#LambdaEventSource', name: 'LambdaEventSource')
    LambdaEventSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#LambdaEventSourceList', name: 'LambdaEventSourceList')
    LambdaEventSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#LambdaEventSourceType', name: 'LambdaEventSourceType')
    LambdaExecArg = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#LambdaExecArg', name: 'LambdaExecArg')
    LambdaExecArgsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#LambdaExecArgsList', name: 'LambdaExecArgsList')
    LambdaExecutionParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#LambdaExecutionParameters', name: 'LambdaExecutionParameters')
    LambdaFilesystemPermission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#LambdaFilesystemPermission', name: 'LambdaFilesystemPermission')
    LambdaFunctionRecipeSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#LambdaFunctionRecipeSource', name: 'LambdaFunctionRecipeSource')
    LambdaInputPayloadEncodingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#LambdaInputPayloadEncodingType', name: 'LambdaInputPayloadEncodingType')
    LambdaIsolationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#LambdaIsolationMode', name: 'LambdaIsolationMode')
    LambdaLinuxProcessParams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#LambdaLinuxProcessParams', name: 'LambdaLinuxProcessParams')
    LambdaVolumeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#LambdaVolumeList', name: 'LambdaVolumeList')
    LambdaVolumeMount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#LambdaVolumeMount', name: 'LambdaVolumeMount')
    LifecycleStateDetails = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#LifecycleStateDetails', name: 'LifecycleStateDetails', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ListClientDevicesAssociatedWithCoreDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListClientDevicesAssociatedWithCoreDeviceRequest', name: 'ListClientDevicesAssociatedWithCoreDeviceRequest')
    ListClientDevicesAssociatedWithCoreDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListClientDevicesAssociatedWithCoreDeviceResponse', name: 'ListClientDevicesAssociatedWithCoreDeviceResponse')
    ListComponentVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListComponentVersionsRequest', name: 'ListComponentVersionsRequest')
    ListComponentVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListComponentVersionsResponse', name: 'ListComponentVersionsResponse')
    ListComponentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListComponentsRequest', name: 'ListComponentsRequest')
    ListComponentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListComponentsResponse', name: 'ListComponentsResponse')
    ListCoreDevicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListCoreDevicesRequest', name: 'ListCoreDevicesRequest')
    ListCoreDevicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListCoreDevicesResponse', name: 'ListCoreDevicesResponse')
    ListDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListDeploymentsRequest', name: 'ListDeploymentsRequest')
    ListDeploymentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListDeploymentsResponse', name: 'ListDeploymentsResponse')
    ListEffectiveDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListEffectiveDeploymentsRequest', name: 'ListEffectiveDeploymentsRequest')
    ListEffectiveDeploymentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListEffectiveDeploymentsResponse', name: 'ListEffectiveDeploymentsResponse')
    ListInstalledComponentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListInstalledComponentsRequest', name: 'ListInstalledComponentsRequest')
    ListInstalledComponentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListInstalledComponentsResponse', name: 'ListInstalledComponentsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Memory = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#Memory', name: 'Memory', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 9223372036854771712}})
    NextTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#NextTokenString', name: 'NextTokenString')
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1}})
    NullableString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#NullableString', name: 'NullableString')
    OptionalBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.greengrassv2#OptionalBoolean', name: 'OptionalBoolean', traits: {"smithy.api#default" => false})
    OptionalInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#OptionalInteger', name: 'OptionalInteger', traits: {"smithy.api#default" => 0})
    PlatformAttributesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrassv2#PlatformAttributesMap', name: 'PlatformAttributesMap')
    PortNumberInt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#PortNumberInt', name: 'PortNumberInt', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 65535}})
    PublisherString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#PublisherString', name: 'PublisherString')
    Reason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#Reason', name: 'Reason')
    RecipeBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.greengrassv2#RecipeBlob', name: 'RecipeBlob')
    RecipeOutputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#RecipeOutputFormat', name: 'RecipeOutputFormat')
    RequestAlreadyInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#RequestAlreadyInProgressException', name: 'RequestAlreadyInProgressException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResolveComponentCandidatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ResolveComponentCandidatesRequest', name: 'ResolveComponentCandidatesRequest')
    ResolveComponentCandidatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ResolveComponentCandidatesResponse', name: 'ResolveComponentCandidatesResponse')
    ResolvedComponentVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ResolvedComponentVersion', name: 'ResolvedComponentVersion')
    ResolvedComponentVersionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#ResolvedComponentVersionsList', name: 'ResolvedComponentVersionsList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.greengrassv2#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    S3EndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#S3EndpointType', name: 'S3EndpointType')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#String', name: 'String')
    StringMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrassv2#StringMap', name: 'StringMap')
    SystemResourceLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#SystemResourceLimits', name: 'SystemResourceLimits')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.greengrassv2#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#TargetARN', name: 'TargetARN', traits: {"smithy.api#pattern" => "^arn:[^:]*:iot:[^:]*:[0-9]+:(thing|thinggroup)/.+$"})
    ThingGroupARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#ThingGroupARN', name: 'ThingGroupARN', traits: {"smithy.api#pattern" => "^arn:[^:]*:iot:[^:]*:[0-9]+:thinggroup/.+$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.greengrassv2#Timestamp', name: 'Timestamp')
    TopicString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.greengrassv2#TopicString', name: 'TopicString')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateConnectivityInfoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#UpdateConnectivityInfoRequest', name: 'UpdateConnectivityInfoRequest')
    UpdateConnectivityInfoResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#UpdateConnectivityInfoResponse', name: 'UpdateConnectivityInfoResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.greengrassv2#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VendorGuidance = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.greengrassv2#VendorGuidance', name: 'VendorGuidance')
    ConnectivityInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.greengrassv2#connectivityInfoList', name: 'ConnectivityInfoList')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateClientDeviceWithCoreDeviceEntry.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing that represents the client device to associate.</p>", "smithy.api#required" => {}}))
    AssociateClientDeviceWithCoreDeviceEntry.type = Types::AssociateClientDeviceWithCoreDeviceEntry
    AssociateClientDeviceWithCoreDeviceEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceEntry)
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing whose associate request failed.</p>"}))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code for the request.</p>"}))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that provides additional information about the error.</p>"}))
    AssociateClientDeviceWithCoreDeviceErrorEntry.type = Types::AssociateClientDeviceWithCoreDeviceErrorEntry
    AssociateClientDeviceWithCoreDeviceErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceErrorEntry)
    AssociateServiceRoleToAccountRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role to associate with IoT Greengrass for your\n      Amazon Web Services account in this Amazon Web Services Region.</p>", "smithy.api#jsonName" => "RoleArn", "smithy.api#required" => {}}))
    AssociateServiceRoleToAccountRequest.type = Types::AssociateServiceRoleToAccountRequest
    AssociateServiceRoleToAccountResponse.add_member(:associated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associatedAt', traits: {"smithy.api#documentation" => "<p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this\n      Amazon Web Services Region.</p>", "smithy.api#jsonName" => "AssociatedAt"}))
    AssociateServiceRoleToAccountResponse.type = Types::AssociateServiceRoleToAccountResponse
    AssociatedClientDevice.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing that represents the associated client device.</p>"}))
    AssociatedClientDevice.add_member(:association_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'associationTimestamp', traits: {"smithy.api#documentation" => "<p>The time that the client device was associated, expressed in ISO 8601 format.</p>"}))
    AssociatedClientDevice.type = Types::AssociatedClientDevice
    AssociatedClientDeviceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClientDevice)
    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceEntryList, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>The list of client devices to associate.</p>"}))
    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateClientDeviceWithCoreDeviceRequest.type = Types::BatchAssociateClientDeviceWithCoreDeviceRequest
    BatchAssociateClientDeviceWithCoreDeviceResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceErrorList, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>The list of any errors for the entries in the request. Each error entry contains the name\n      of the IoT thing that failed to associate.</p>"}))
    BatchAssociateClientDeviceWithCoreDeviceResponse.type = Types::BatchAssociateClientDeviceWithCoreDeviceResponse
    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceEntryList, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>The list of client devices to disassociate.</p>"}))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.type = Types::BatchDisassociateClientDeviceFromCoreDeviceRequest
    BatchDisassociateClientDeviceFromCoreDeviceResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceErrorList, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>The list of any errors for the entries in the request. Each error entry contains the name\n      of the IoT thing that failed to disassociate.</p>"}))
    BatchDisassociateClientDeviceFromCoreDeviceResponse.type = Types::BatchDisassociateClientDeviceFromCoreDeviceResponse
    CancelDeploymentRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelDeploymentRequest.type = Types::CancelDeploymentRequest
    CancelDeploymentResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that communicates if the cancel was successful.</p>"}))
    CancelDeploymentResponse.type = Types::CancelDeploymentResponse
    CloudComponentState.add_member(:requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "REQUESTED"}))
    CloudComponentState.add_member(:initiated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIATED', traits: {"smithy.api#enumValue" => "INITIATED"}))
    CloudComponentState.add_member(:deployable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYABLE', traits: {"smithy.api#enumValue" => "DEPLOYABLE"}))
    CloudComponentState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CloudComponentState.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    CloudComponentStatus.add_member(:component_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudComponentState, location_name: 'componentState', traits: {"smithy.api#documentation" => "<p>The state of the component version.</p>"}))
    CloudComponentStatus.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that communicates details, such as errors, about the status of the component\n      version.</p>"}))
    CloudComponentStatus.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A dictionary of errors that communicate why the component version is in an error state.\n      For example, if IoT Greengrass can't access an artifact for the component version, then\n        <code>errors</code> contains the artifact's URI as a key, and the error message as the value\n      for that key.</p>"}))
    CloudComponentStatus.add_member(:vendor_guidance, Smithy::Schema::Shapes::ShapeRef.new(shape: VendorGuidance, location_name: 'vendorGuidance', traits: {"smithy.api#documentation" => "<p>The vendor guidance state for the component version. This state indicates whether\n      the component version has any issues that you should consider before you deploy it. The vendor guidance state can be:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> – This component version is available and recommended for use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISCONTINUED</code> – This component version has been discontinued by its publisher.\n          You can deploy this component version, but we recommend that you use a different version of this component.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETED</code> – This component version has been deleted by its publisher, so you can't\n          deploy it. If you have any existing deployments that specify this component version, those deployments will fail.</p>\n            </li>\n         </ul>"}))
    CloudComponentStatus.add_member(:vendor_guidance_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'vendorGuidanceMessage', traits: {"smithy.api#documentation" => "<p>A message that communicates details about the vendor guidance state\n    of the component version. This message communicates why a component version is discontinued or deleted.</p>"}))
    CloudComponentStatus.type = Types::CloudComponentStatus
    Component.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"}))
    Component.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    Component.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentLatestVersion, location_name: 'latestVersion', traits: {"smithy.api#documentation" => "<p>The latest version of the component and its details.</p>"}))
    Component.type = Types::Component
    ComponentCandidate.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    ComponentCandidate.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>"}))
    ComponentCandidate.add_member(:version_requirements, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionRequirementMap, location_name: 'versionRequirements', traits: {"smithy.api#documentation" => "<p>The version requirements for the component's dependencies. Greengrass core devices get the\n      version requirements from component recipes.</p>\n         <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href=\"https://semver.org/\">Semantic Versioning</a>.</p>"}))
    ComponentCandidate.type = Types::ComponentCandidate
    ComponentCandidateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentCandidate)
    ComponentConfigurationPathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationPath)
    ComponentConfigurationUpdate.add_member(:merge, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationString, location_name: 'merge', traits: {"smithy.api#documentation" => "<p>A serialized JSON string that contains the configuration object to merge to target\n      devices. The core device merges this configuration with the component's existing\n      configuration. If this is the first time a component deploys on a device, the core device\n      merges this configuration with the component's default configuration. This means that the core\n      device keeps it's existing configuration for keys and values that you don't specify in this\n      object. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#merge-configuration-update\">Merge configuration updates</a> in the <i>IoT Greengrass V2 Developer\n      Guide</i>.</p>"}))
    ComponentConfigurationUpdate.add_member(:reset, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationPathList, location_name: 'reset', traits: {"smithy.api#documentation" => "<p>The list of configuration nodes to reset to default values on target devices. Use JSON\n      pointers to specify each node to reset. JSON pointers start with a forward slash\n        (<code>/</code>) and use forward slashes to separate the key for each level in the object.\n      For more information, see the <a href=\"https://tools.ietf.org/html/rfc6901\">JSON pointer\n        specification</a> and <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#reset-configuration-update\">Reset configuration updates</a> in the <i>IoT Greengrass V2 Developer\n      Guide</i>.</p>"}))
    ComponentConfigurationUpdate.type = Types::ComponentConfigurationUpdate
    ComponentDependencyMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentDependencyMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDependencyRequirement)
    ComponentDependencyRequirement.add_member(:version_requirement, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'versionRequirement', traits: {"smithy.api#documentation" => "<p>The component version requirement for the component dependency.</p>\n         <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href=\"https://semver.org/\">Semantic Versioning</a>.</p>"}))
    ComponentDependencyRequirement.add_member(:dependency_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDependencyType, location_name: 'dependencyType', traits: {"smithy.api#documentation" => "<p>The type of this dependency. Choose from the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SOFT</code> – The component doesn't restart if the dependency changes\n          state.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HARD</code> – The component restarts if the dependency changes\n          state.</p>\n            </li>\n         </ul>\n         <p>Default: <code>HARD</code>\n         </p>"}))
    ComponentDependencyRequirement.type = Types::ComponentDependencyRequirement
    ComponentDependencyType.add_member(:hard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HARD', traits: {"smithy.api#enumValue" => "HARD"}))
    ComponentDependencyType.add_member(:soft, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOFT', traits: {"smithy.api#enumValue" => "SOFT"}))
    ComponentDeploymentSpecification.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>", "smithy.api#required" => {}}))
    ComponentDeploymentSpecification.add_member(:configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationUpdate, location_name: 'configurationUpdate', traits: {"smithy.api#documentation" => "<p>The configuration updates to deploy for the component. You can define\n        <i>reset</i> updates and <i>merge</i> updates. A reset updates\n      the keys that you specify to the default configuration for the component. A merge updates the\n      core device's component configuration with the keys and values that you specify. The IoT Greengrass Core\n      software applies reset updates before it applies merge updates. For more information, see\n        <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html\">Update component\n        configurations</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    ComponentDeploymentSpecification.add_member(:run_with, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentRunWith, location_name: 'runWith', traits: {"smithy.api#documentation" => "<p>The system user and group that the IoT Greengrass Core software uses to run component processes on the\n      core device. If you omit this parameter, the IoT Greengrass Core software uses the system user and group\n      that you configure for the core device. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user\">Configure the user and group that run components</a> in the <i>IoT Greengrass V2 Developer\n        Guide</i>.</p>"}))
    ComponentDeploymentSpecification.type = Types::ComponentDeploymentSpecification
    ComponentDeploymentSpecifications.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentDeploymentSpecifications.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentSpecification)
    ComponentLatestVersion.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"}))
    ComponentLatestVersion.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>"}))
    ComponentLatestVersion.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the component was created, expressed in ISO 8601 format.</p>"}))
    ComponentLatestVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the component version.</p>"}))
    ComponentLatestVersion.add_member(:publisher, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'publisher', traits: {"smithy.api#documentation" => "<p>The publisher of the component version.</p>"}))
    ComponentLatestVersion.add_member(:platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: 'platforms', traits: {"smithy.api#documentation" => "<p>The platforms that the component version supports.</p>"}))
    ComponentLatestVersion.type = Types::ComponentLatestVersion
    ComponentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Component)
    ComponentPlatform.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The friendly name of the platform. This name helps you identify the platform.</p>\n         <p>If you omit this parameter, IoT Greengrass creates a friendly name from the <code>os</code> and\n        <code>architecture</code> of the platform.</p>"}))
    ComponentPlatform.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformAttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>A dictionary of attributes for the platform. The IoT Greengrass Core software defines the\n        <code>os</code> and <code>architecture</code> by default. You can specify additional\n      platform attributes for a core device when you deploy the Greengrass nucleus component. For more\n      information, see the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html\">Greengrass nucleus\n        component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    ComponentPlatform.type = Types::ComponentPlatform
    ComponentPlatformList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatform)
    ComponentRunWith.add_member(:posix_user, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'posixUser', traits: {"smithy.api#documentation" => "<p>The POSIX system user and, optionally, group to use to run this component on Linux core\n      devices. The user, and group if specified, must exist on each Linux core device. Specify the\n      user and group separated by a colon (<code>:</code>) in the following format:\n        <code>user:group</code>. The group is optional. If you don't specify a group, the IoT Greengrass Core\n      software uses the primary user for the group.</p>\n         <p>If you omit this parameter, the IoT Greengrass Core software uses the default system user and group that\n      you configure on the Greengrass nucleus component. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user\">Configure the user and group that run components</a>.</p>"}))
    ComponentRunWith.add_member(:system_resource_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemResourceLimits, location_name: 'systemResourceLimits', traits: {"smithy.api#documentation" => "<p>The system resource limits to apply to this component's process on the core device. IoT Greengrass\n      currently supports this feature on only Linux core devices.</p>\n         <p>If you omit this parameter, the IoT Greengrass Core software uses the default system resource limits\n      that you configure on the Greengrass nucleus component. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits\">Configure system resource limits for components</a>.</p>"}))
    ComponentRunWith.add_member(:windows_user, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'windowsUser', traits: {"smithy.api#documentation" => "<p>The Windows user to use to run this component on Windows core devices. The user must exist\n      on each Windows core device, and its name and password must be in the LocalSystem account's\n      Credentials Manager instance.</p>\n         <p>If you omit this parameter, the IoT Greengrass Core software uses the default Windows user that you\n      configure on the Greengrass nucleus component. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user\">Configure the user and group that run components</a>.</p>"}))
    ComponentRunWith.type = Types::ComponentRunWith
    ComponentVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionListItem)
    ComponentVersionListItem.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    ComponentVersionListItem.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>"}))
    ComponentVersionListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"}))
    ComponentVersionListItem.type = Types::ComponentVersionListItem
    ComponentVersionRequirementMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentVersionRequirementMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentVisibilityScope.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ComponentVisibilityScope.add_member(:public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that conflicts with the request.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that conflicts with the request.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectivityInfo.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>An ID for the connectivity information.</p>", "smithy.api#jsonName" => "Id"}))
    ConnectivityInfo.add_member(:host_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'hostAddress', traits: {"smithy.api#documentation" => "<p>The IP address or DNS address where client devices can connect to an MQTT broker on the\n      Greengrass core device.</p>", "smithy.api#jsonName" => "HostAddress"}))
    ConnectivityInfo.add_member(:port_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumberInt, location_name: 'portNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The port where the MQTT broker operates on the core device. This port is typically 8883,\n      which is the default port for the MQTT broker component that runs on core devices.</p>", "smithy.api#jsonName" => "PortNumber"}))
    ConnectivityInfo.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Additional metadata to provide to client devices that connect to this core device.</p>", "smithy.api#jsonName" => "Metadata"}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    CoreDevice.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>"}))
    CoreDevice.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the core device. Core devices can have the following\n      statuses:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state\n          on the core device.</p>\n            </li>\n         </ul>"}))
    CoreDevice.add_member(:last_status_update_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStatusUpdateTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the core device's status last updated, expressed in ISO 8601\n      format.</p>"}))
    CoreDevice.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevicePlatformString, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The operating system platform that the core device runs.</p>"}))
    CoreDevice.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceArchitectureString, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The computer architecture of the core device.</p>"}))
    CoreDevice.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceRuntimeString, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>The runtime for the core device. The runtime can be:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>aws_nucleus_classic</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>aws_nucleus_lite</code>\n               </p>\n            </li>\n         </ul>"}))
    CoreDevice.type = Types::CoreDevice
    CoreDeviceStatus.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CoreDeviceStatus.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CoreDevicesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevice)
    CreateComponentVersionRequest.add_member(:inline_recipe, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeBlob, location_name: 'inlineRecipe', traits: {"smithy.api#documentation" => "<p>The recipe to use to create the component. The recipe defines the component's metadata,\n      parameters, dependencies, lifecycle, artifacts, and platform compatibility.</p>\n         <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>"}))
    CreateComponentVersionRequest.add_member(:lambda_function, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionRecipeSource, location_name: 'lambdaFunction', traits: {"smithy.api#documentation" => "<p>The parameters to create a component from a Lambda function.</p>\n         <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>"}))
    CreateComponentVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    CreateComponentVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. \n    Idempotency means that the request is successfully processed only once, even if you send the request multiple times. \n    When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service \n    returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for \n    idempotent requests for up to 8 hours.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateComponentVersionRequest.type = Types::CreateComponentVersionRequest
    CreateComponentVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"}))
    CreateComponentVersionResponse.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>", "smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the component was created, expressed in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudComponentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the component version in IoT Greengrass V2. This status\n      is different from the status of the component on a core device.</p>", "smithy.api#required" => {}}))
    CreateComponentVersionResponse.type = Types::CreateComponentVersionResponse
    CreateDeploymentRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group. When creating a subdeployment, the targetARN can only be a thing group.</p>", "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:deployment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentNameString, location_name: 'deploymentName', traits: {"smithy.api#documentation" => "<p>The name of the deployment.</p>"}))
    CreateDeploymentRequest.add_member(:components, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentSpecifications, location_name: 'components', traits: {"smithy.api#documentation" => "<p>The components to deploy. This is a dictionary, where each key is the name of a component,\n        and each key's value is the version and configuration to deploy for that component.</p>"}))
    CreateDeploymentRequest.add_member(:iot_job_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIoTJobConfiguration, location_name: 'iotJobConfiguration', traits: {"smithy.api#documentation" => "<p>The job configuration for the deployment configuration. The job configuration specifies\n      the rollout, timeout, and stop configurations for the deployment configuration.</p>"}))
    CreateDeploymentRequest.add_member(:deployment_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPolicies, location_name: 'deploymentPolicies', traits: {"smithy.api#documentation" => "<p>The deployment policies for the deployment. These policies define how the deployment\n      updates components and handles failure.</p>"}))
    CreateDeploymentRequest.add_member(:parent_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: 'parentTargetArn', traits: {"smithy.api#documentation" => "<p>The parent deployment's target <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> within a subdeployment.</p>"}))
    CreateDeploymentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    CreateDeploymentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. \n    Idempotency means that the request is successfully processed only once, even if you send the request multiple times. \n    When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service \n    returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for \n    idempotent requests for up to 8 hours.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResponse.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>"}))
    CreateDeploymentResponse.add_member(:iot_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'iotJobId', traits: {"smithy.api#documentation" => "<p>The ID of the IoT job that applies the deployment to target devices.</p>"}))
    CreateDeploymentResponse.add_member(:iot_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobARN, location_name: 'iotJobArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT job that applies the deployment to target devices.</p>"}))
    CreateDeploymentResponse.type = Types::CreateDeploymentResponse
    DeleteComponentRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentRequest.type = Types::DeleteComponentRequest
    DeleteCoreDeviceRequest.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreDeviceRequest.type = Types::DeleteCoreDeviceRequest
    DeleteDeploymentRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.type = Types::DeleteDeploymentRequest
    Deployment.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group. When creating a subdeployment, the targetARN can only be a thing group.</p>"}))
    Deployment.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision number of the deployment.</p>"}))
    Deployment.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>"}))
    Deployment.add_member(:deployment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'deploymentName', traits: {"smithy.api#documentation" => "<p>The name of the deployment.</p>"}))
    Deployment.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the deployment was created, expressed in ISO 8601 format.</p>"}))
    Deployment.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The status of the deployment.</p>"}))
    Deployment.add_member(:is_latest_for_target, Smithy::Schema::Shapes::ShapeRef.new(shape: IsLatestForTarget, location_name: 'isLatestForTarget', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether or not the deployment is the latest revision for its target.</p>"}))
    Deployment.add_member(:parent_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: 'parentTargetArn', traits: {"smithy.api#documentation" => "<p>The parent deployment's target <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> within a subdeployment.</p>"}))
    Deployment.type = Types::Deployment
    DeploymentComponentUpdatePolicy.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'timeoutInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time in seconds that each component on a device has to report that it's safe\n      to update. If the component waits for longer than this timeout, then the deployment proceeds\n      on the device.</p>\n         <p>Default: <code>60</code>\n         </p>"}))
    DeploymentComponentUpdatePolicy.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentComponentUpdatePolicyAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Whether or not to notify components and wait for components to become safe to update.\n      Choose from the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NOTIFY_COMPONENTS</code> – The deployment notifies each component before\n          it stops and updates that component. Components can use the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetocomponentupdates\">SubscribeToComponentUpdates</a> IPC operation to receive these notifications. Then,\n          components can respond with the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-defercomponentupdate\">DeferComponentUpdate</a> IPC operation. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html\">Create\n            deployments</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SKIP_NOTIFY_COMPONENTS</code> – The deployment doesn't notify components\n          or wait for them to be safe to update.</p>\n            </li>\n         </ul>\n         <p>Default: <code>NOTIFY_COMPONENTS</code>\n         </p>"}))
    DeploymentComponentUpdatePolicy.type = Types::DeploymentComponentUpdatePolicy
    DeploymentComponentUpdatePolicyAction.add_member(:notify_components, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOTIFY_COMPONENTS', traits: {"smithy.api#enumValue" => "NOTIFY_COMPONENTS"}))
    DeploymentComponentUpdatePolicyAction.add_member(:skip_notify_components, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP_NOTIFY_COMPONENTS', traits: {"smithy.api#enumValue" => "SKIP_NOTIFY_COMPONENTS"}))
    DeploymentConfigurationValidationPolicy.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'timeoutInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time in seconds that a component can validate its configuration updates. If\n      the validation time exceeds this timeout, then the deployment proceeds for the device.</p>\n         <p>Default: <code>30</code>\n         </p>"}))
    DeploymentConfigurationValidationPolicy.type = Types::DeploymentConfigurationValidationPolicy
    DeploymentFailureHandlingPolicy.add_member(:rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK', traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    DeploymentFailureHandlingPolicy.add_member(:do_nothing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DO_NOTHING', traits: {"smithy.api#enumValue" => "DO_NOTHING"}))
    DeploymentHistoryFilter.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    DeploymentHistoryFilter.add_member(:latest_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST_ONLY', traits: {"smithy.api#enumValue" => "LATEST_ONLY"}))
    DeploymentIoTJobConfiguration.add_member(:job_executions_rollout_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobExecutionsRolloutConfig, location_name: 'jobExecutionsRolloutConfig', traits: {"smithy.api#documentation" => "<p>The rollout configuration for the job. This configuration defines the rate at which the\n      job rolls out to the fleet of target devices.</p>"}))
    DeploymentIoTJobConfiguration.add_member(:abort_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortConfig, location_name: 'abortConfig', traits: {"smithy.api#documentation" => "<p>The stop configuration for the job. This configuration defines when and how to stop a job\n      rollout.</p>"}))
    DeploymentIoTJobConfiguration.add_member(:timeout_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobTimeoutConfig, location_name: 'timeoutConfig', traits: {"smithy.api#documentation" => "<p>The timeout configuration for the job. This configuration defines the amount of time each\n      device has to complete the job.</p>"}))
    DeploymentIoTJobConfiguration.type = Types::DeploymentIoTJobConfiguration
    DeploymentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment)
    DeploymentPolicies.add_member(:failure_handling_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFailureHandlingPolicy, location_name: 'failureHandlingPolicy', traits: {"smithy.api#documentation" => "<p>The failure handling policy for the configuration deployment. This policy defines what to\n      do if the deployment fails.</p>\n         <p>Default: <code>ROLLBACK</code>\n         </p>"}))
    DeploymentPolicies.add_member(:component_update_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentComponentUpdatePolicy, location_name: 'componentUpdatePolicy', traits: {"smithy.api#documentation" => "<p>The component update policy for the configuration deployment. This policy defines when\n      it's safe to deploy the configuration to devices.</p>"}))
    DeploymentPolicies.add_member(:configuration_validation_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigurationValidationPolicy, location_name: 'configurationValidationPolicy', traits: {"smithy.api#documentation" => "<p>The configuration validation policy for the configuration deployment. This policy defines\n      how long each component has to validate its configure updates.</p>"}))
    DeploymentPolicies.type = Types::DeploymentPolicies
    DeploymentStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeploymentStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    DeploymentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DescribeComponentRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeComponentRequest.type = Types::DescribeComponentRequest
    DescribeComponentResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"}))
    DescribeComponentResponse.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    DescribeComponentResponse.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>"}))
    DescribeComponentResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the component was created, expressed in ISO 8601 format.</p>"}))
    DescribeComponentResponse.add_member(:publisher, Smithy::Schema::Shapes::ShapeRef.new(shape: PublisherString, location_name: 'publisher', traits: {"smithy.api#documentation" => "<p>The publisher of the component version.</p>"}))
    DescribeComponentResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the component version.</p>"}))
    DescribeComponentResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudComponentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the component version in IoT Greengrass V2. This status\n      is different from the status of the component on a core device.</p>"}))
    DescribeComponentResponse.add_member(:platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: 'platforms', traits: {"smithy.api#documentation" => "<p>The platforms that the component version supports.</p>"}))
    DescribeComponentResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    DescribeComponentResponse.type = Types::DescribeComponentResponse
    DisassociateClientDeviceFromCoreDeviceEntry.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing that represents the client device to disassociate.</p>", "smithy.api#required" => {}}))
    DisassociateClientDeviceFromCoreDeviceEntry.type = Types::DisassociateClientDeviceFromCoreDeviceEntry
    DisassociateClientDeviceFromCoreDeviceEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceEntry)
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing whose disassociate request failed.</p>"}))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code for the request.</p>"}))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that provides additional information about the error.</p>"}))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.type = Types::DisassociateClientDeviceFromCoreDeviceErrorEntry
    DisassociateClientDeviceFromCoreDeviceErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceErrorEntry)
    DisassociateServiceRoleFromAccountRequest.type = Types::DisassociateServiceRoleFromAccountRequest
    DisassociateServiceRoleFromAccountResponse.add_member(:disassociated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'disassociatedAt', traits: {"smithy.api#documentation" => "<p>The time when the service role was disassociated from IoT Greengrass for your Amazon Web Services account in this\n      Amazon Web Services Region.</p>", "smithy.api#jsonName" => "DisassociatedAt"}))
    DisassociateServiceRoleFromAccountResponse.type = Types::DisassociateServiceRoleFromAccountResponse
    EffectiveDeployment.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentID, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>", "smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:deployment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentName, location_name: 'deploymentName', traits: {"smithy.api#documentation" => "<p>The name of the deployment.</p>", "smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:iot_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobId, location_name: 'iotJobId', traits: {"smithy.api#documentation" => "<p>The ID of the IoT job that applies the deployment to target devices.</p>"}))
    EffectiveDeployment.add_member(:iot_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobARN, location_name: 'iotJobArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT job that applies the deployment to target devices.</p>"}))
    EffectiveDeployment.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the deployment job.</p>"}))
    EffectiveDeployment.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>", "smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:core_device_execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentExecutionStatus, location_name: 'coreDeviceExecutionStatus', traits: {"smithy.api#documentation" => "<p>The status of the deployment job on the Greengrass core device.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> – The deployment job is running.</p>\n            </li>\n            <li>\n               <p>\n                  <code>QUEUED</code> – The deployment job is in the job queue and waiting to\n          run.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The deployment failed. For more information, see the\n            <code>statusDetails</code> field.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED</code> – The deployment to an IoT thing was completed\n          successfully.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TIMED_OUT</code> – The deployment didn't complete in the allotted time.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELED</code> – The deployment was canceled by the user.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REJECTED</code> – The deployment was rejected. For more information, see\n          the <code>statusDetails</code> field.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCEEDED</code> – The deployment to an IoT thing group was completed\n          successfully.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason code for the update, if the job was updated.</p>"}))
    EffectiveDeployment.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the deployment was created, expressed in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:modified_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'modifiedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the deployment job was last modified, expressed in ISO 8601\n      format.</p>", "smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentStatusDetails, location_name: 'statusDetails', traits: {"smithy.api#documentation" => "<p>The status details that explain why a deployment has an error. This response will be null\n      if the deployment is in a success state.</p>"}))
    EffectiveDeployment.type = Types::EffectiveDeployment
    EffectiveDeploymentErrorStack.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorCode)
    EffectiveDeploymentErrorTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorType)
    EffectiveDeploymentExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    EffectiveDeploymentExecutionStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    EffectiveDeploymentExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    EffectiveDeploymentExecutionStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EffectiveDeploymentExecutionStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    EffectiveDeploymentExecutionStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    EffectiveDeploymentExecutionStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    EffectiveDeploymentExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    EffectiveDeploymentStatusDetails.add_member(:error_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorStack, location_name: 'errorStack', traits: {"smithy.api#documentation" => "<p>Contains an ordered list of short error codes that range from the most generic error to\n      the most specific one. The error codes describe the reason for failure whenever the\n        <code>coreDeviceExecutionStatus</code> is in a failed state. The response will be an empty\n      list if there is no error.</p>"}))
    EffectiveDeploymentStatusDetails.add_member(:error_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorTypeList, location_name: 'errorTypes', traits: {"smithy.api#documentation" => "<p>Contains tags which describe the error. You can use the error types to classify errors to\n      assist with remediating the failure. The response will be an empty list if there is no\n      error.</p>"}))
    EffectiveDeploymentStatusDetails.type = Types::EffectiveDeploymentStatusDetails
    EffectiveDeploymentsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeployment)
    GetComponentRequest.add_member(:recipe_output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeOutputFormat, location_name: 'recipeOutputFormat', traits: {"smithy.api#documentation" => "<p>The format of the recipe.</p>", "smithy.api#httpQuery" => "recipeOutputFormat"}))
    GetComponentRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentRequest.type = Types::GetComponentRequest
    GetComponentResponse.add_member(:recipe_output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeOutputFormat, location_name: 'recipeOutputFormat', traits: {"smithy.api#documentation" => "<p>The format of the recipe.</p>", "smithy.api#required" => {}}))
    GetComponentResponse.add_member(:recipe, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeBlob, location_name: 'recipe', traits: {"smithy.api#documentation" => "<p>The recipe of the component version.</p>", "smithy.api#required" => {}}))
    GetComponentResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    GetComponentResponse.type = Types::GetComponentResponse
    GetComponentVersionArtifactRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version. Specify the ARN of a public or a Lambda component version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentVersionArtifactRequest.add_member(:artifact_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'artifactName', traits: {"smithy.api#documentation" => "<p>The name of the artifact.</p>\n         <p>You can use the <a href=\"https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html\">GetComponent</a> operation to\n      download the component recipe, which includes the URI of the artifact. The artifact name is\n      the section of the URI after the scheme. For example, in the artifact URI\n        <code>greengrass:SomeArtifact.zip</code>, the artifact name is\n      <code>SomeArtifact.zip</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentVersionArtifactRequest.add_member(:s3_endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EndpointType, location_name: 's3EndpointType', traits: {"smithy.api#documentation" => "<p>Specifies the endpoint to use when getting Amazon S3 pre-signed URLs.</p>\n         <p>All Amazon Web Services Regions except US East (N. Virginia) use <code>REGIONAL</code> in all cases.\n      In the US East (N. Virginia) Region the default is <code>GLOBAL</code>, but you can change it\n      to <code>REGIONAL</code> with this parameter.</p>", "smithy.api#httpQuery" => "s3EndpointType"}))
    GetComponentVersionArtifactRequest.add_member(:iot_endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IotEndpointType, location_name: 'iotEndpointType', traits: {"smithy.api#documentation" => "<p>Determines if the Amazon S3 URL returned is a FIPS pre-signed URL endpoint. \n      Specify <code>fips</code> if you want the returned Amazon S3 pre-signed URL to point to \n      an Amazon S3 FIPS endpoint. If you don't specify a value, the default is <code>standard</code>.</p>", "smithy.api#httpHeader" => "x-amz-iot-endpoint-type"}))
    GetComponentVersionArtifactRequest.type = Types::GetComponentVersionArtifactRequest
    GetComponentVersionArtifactResponse.add_member(:pre_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'preSignedUrl', traits: {"smithy.api#documentation" => "<p>The URL of the artifact.</p>", "smithy.api#required" => {}}))
    GetComponentVersionArtifactResponse.type = Types::GetComponentVersionArtifactResponse
    GetConnectivityInfoRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectivityInfoRequest.type = Types::GetConnectivityInfoRequest
    GetConnectivityInfoResponse.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfoList, location_name: 'connectivityInfo', traits: {"smithy.api#documentation" => "<p>The connectivity information for the core device.</p>", "smithy.api#jsonName" => "ConnectivityInfo"}))
    GetConnectivityInfoResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the connectivity information request.</p>", "smithy.api#jsonName" => "Message"}))
    GetConnectivityInfoResponse.type = Types::GetConnectivityInfoResponse
    GetCoreDeviceRequest.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDeviceRequest.type = Types::GetCoreDeviceRequest
    GetCoreDeviceResponse.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>"}))
    GetCoreDeviceResponse.add_member(:core_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GGCVersion, location_name: 'coreVersion', traits: {"smithy.api#documentation" => "<p>The version of the IoT Greengrass Core software that the core device runs. This version is equivalent to\n      the version of the Greengrass nucleus component that runs on the core device. For more information,\n      see the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html\">Greengrass nucleus\n        component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    GetCoreDeviceResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevicePlatformString, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The operating system platform that the core device runs.</p>"}))
    GetCoreDeviceResponse.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceArchitectureString, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The computer architecture of the core device.</p>"}))
    GetCoreDeviceResponse.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceRuntimeString, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>The runtime for the core device. The runtime can be:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>aws_nucleus_classic</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>aws_nucleus_lite</code>\n               </p>\n            </li>\n         </ul>"}))
    GetCoreDeviceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the core device. The core device status can be:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state\n          on the core device.</p>\n            </li>\n         </ul>"}))
    GetCoreDeviceResponse.add_member(:last_status_update_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStatusUpdateTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the core device's status last updated, expressed in ISO 8601\n      format.</p>"}))
    GetCoreDeviceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    GetCoreDeviceResponse.type = Types::GetCoreDeviceResponse
    GetDeploymentRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentResponse.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>"}))
    GetDeploymentResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision number of the deployment.</p>"}))
    GetDeploymentResponse.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment.</p>"}))
    GetDeploymentResponse.add_member(:deployment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableString, location_name: 'deploymentName', traits: {"smithy.api#documentation" => "<p>The name of the deployment.</p>"}))
    GetDeploymentResponse.add_member(:deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'deploymentStatus', traits: {"smithy.api#documentation" => "<p>The status of the deployment.</p>"}))
    GetDeploymentResponse.add_member(:iot_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableString, location_name: 'iotJobId', traits: {"smithy.api#documentation" => "<p>The ID of the IoT job that applies the deployment to target devices.</p>"}))
    GetDeploymentResponse.add_member(:iot_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobARN, location_name: 'iotJobArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT job that applies the deployment to target devices.</p>"}))
    GetDeploymentResponse.add_member(:components, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentSpecifications, location_name: 'components', traits: {"smithy.api#documentation" => "<p>The components to deploy. This is a dictionary, where each key is the name of a component,\n        and each key's value is the version and configuration to deploy for that component.</p>"}))
    GetDeploymentResponse.add_member(:deployment_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPolicies, location_name: 'deploymentPolicies', traits: {"smithy.api#documentation" => "<p>The deployment policies for the deployment. These policies define how the deployment\n      updates components and handles failure.</p>"}))
    GetDeploymentResponse.add_member(:iot_job_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIoTJobConfiguration, location_name: 'iotJobConfiguration', traits: {"smithy.api#documentation" => "<p>The job configuration for the deployment configuration. The job configuration specifies\n      the rollout, timeout, and stop configurations for the deployment configuration.</p>"}))
    GetDeploymentResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the deployment was created, expressed in ISO 8601 format.</p>"}))
    GetDeploymentResponse.add_member(:is_latest_for_target, Smithy::Schema::Shapes::ShapeRef.new(shape: IsLatestForTarget, location_name: 'isLatestForTarget', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether or not the deployment is the latest revision for its target.</p>"}))
    GetDeploymentResponse.add_member(:parent_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: 'parentTargetArn', traits: {"smithy.api#documentation" => "<p>The parent deployment's target <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> within a subdeployment.</p>"}))
    GetDeploymentResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    GetDeploymentResponse.type = Types::GetDeploymentResponse
    GetServiceRoleForAccountRequest.type = Types::GetServiceRoleForAccountRequest
    GetServiceRoleForAccountResponse.add_member(:associated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associatedAt', traits: {"smithy.api#documentation" => "<p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this\n      Amazon Web Services Region.</p>", "smithy.api#jsonName" => "AssociatedAt"}))
    GetServiceRoleForAccountResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the service role that is associated with IoT Greengrass for your Amazon Web Services account in this\n      Amazon Web Services Region.</p>", "smithy.api#jsonName" => "RoleArn"}))
    GetServiceRoleForAccountResponse.type = Types::GetServiceRoleForAccountResponse
    InstalledComponent.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    InstalledComponent.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>"}))
    InstalledComponent.add_member(:lifecycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentLifecycleState, location_name: 'lifecycleState', traits: {"smithy.api#documentation" => "<p>The lifecycle state of the component.</p>"}))
    InstalledComponent.add_member(:lifecycle_state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleStateDetails, location_name: 'lifecycleStateDetails', traits: {"smithy.api#documentation" => "<p>A detailed response about the lifecycle state of the component that explains the reason\n      why a component has an error or is broken.</p>"}))
    InstalledComponent.add_member(:is_root, Smithy::Schema::Shapes::ShapeRef.new(shape: IsRoot, location_name: 'isRoot', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether or not the component is a root component.</p>"}))
    InstalledComponent.add_member(:last_status_change_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStatusChangeTimestamp', traits: {"smithy.api#documentation" => "<p>The status of how current the data is.</p>\n         <p>This response is based off of component state changes. The status reflects component\n      disruptions and deployments. If a component only sees a configuration update during a\n      deployment, it might not undergo a state change and this status would not be updated.</p>"}))
    InstalledComponent.add_member(:last_reported_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastReportedTimestamp', traits: {"smithy.api#documentation" => "<p>The last time the Greengrass core device sent a message containing a component's state to the\n      Amazon Web Services Cloud.</p>\n         <p>A component does not need to see a state change for this field to update.</p>"}))
    InstalledComponent.add_member(:last_installation_source, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'lastInstallationSource', traits: {"smithy.api#documentation" => "<p>The most recent deployment source that brought the component to the Greengrass core device. For\n      a thing group deployment or thing deployment, the source will be the ID of the last deployment\n      that contained the component. For local deployments it will be <code>LOCAL</code>.</p>\n         <note>\n            <p>Any deployment will attempt to reinstall currently broken components on the device,\n        which will update the last installation source.</p>\n         </note>"}))
    InstalledComponent.add_member(:lifecycle_status_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentLifecycleStatusCodeList, location_name: 'lifecycleStatusCodes', traits: {"smithy.api#documentation" => "<p>The status codes that indicate the reason for failure whenever the\n        <code>lifecycleState</code> has an error or is in a broken state.</p>\n         <note>\n            <p>Greengrass nucleus v2.8.0 or later is required to get an accurate\n          <code>lifecycleStatusCodes</code> response. This response can be inaccurate in earlier\n        Greengrass nucleus versions.</p>\n         </note>"}))
    InstalledComponent.type = Types::InstalledComponent
    InstalledComponentLifecycleState.add_member(:new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW', traits: {"smithy.api#enumValue" => "NEW"}))
    InstalledComponentLifecycleState.add_member(:installed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTALLED', traits: {"smithy.api#enumValue" => "INSTALLED"}))
    InstalledComponentLifecycleState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    InstalledComponentLifecycleState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstalledComponentLifecycleState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    InstalledComponentLifecycleState.add_member(:errored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERRORED', traits: {"smithy.api#enumValue" => "ERRORED"}))
    InstalledComponentLifecycleState.add_member(:broken, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BROKEN', traits: {"smithy.api#enumValue" => "BROKEN"}))
    InstalledComponentLifecycleState.add_member(:finished, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINISHED', traits: {"smithy.api#enumValue" => "FINISHED"}))
    InstalledComponentLifecycleStatusCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentLifecycleStatusCode)
    InstalledComponentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponent)
    InstalledComponentTopologyFilter.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    InstalledComponentTopologyFilter.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time to wait before you retry the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IoTJobAbortAction.add_member(:cancel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL', traits: {"smithy.api#enumValue" => "CANCEL"}))
    IoTJobAbortConfig.add_member(:criteria_list, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortCriteriaList, location_name: 'criteriaList', traits: {"smithy.api#documentation" => "<p>The list of criteria that define when and how to cancel the configuration\n      deployment.</p>", "smithy.api#required" => {}}))
    IoTJobAbortConfig.type = Types::IoTJobAbortConfig
    IoTJobAbortCriteria.add_member(:failure_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobExecutionFailureType, location_name: 'failureType', traits: {"smithy.api#documentation" => "<p>The type of job deployment failure that can cancel a job.</p>", "smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action to perform when the criteria are met.</p>", "smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:threshold_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortThresholdPercentage, location_name: 'thresholdPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum percentage of <code>failureType</code> failures that occur before the job can\n      cancel.</p>\n         <p>This parameter supports up to two digits after the decimal (for example, you can specify\n        <code>10.9</code> or <code>10.99</code>, but not <code>10.999</code>).</p>", "smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:min_number_of_executed_things, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobMinimumNumberOfExecutedThings, location_name: 'minNumberOfExecutedThings', traits: {"smithy.api#documentation" => "<p>The minimum number of things that receive the configuration before the job can\n      cancel.</p>", "smithy.api#required" => {}}))
    IoTJobAbortCriteria.type = Types::IoTJobAbortCriteria
    IoTJobAbortCriteriaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortCriteria)
    IoTJobExecutionFailureType.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IoTJobExecutionFailureType.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    IoTJobExecutionFailureType.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    IoTJobExecutionFailureType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    IoTJobExecutionsRolloutConfig.add_member(:exponential_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobExponentialRolloutRate, location_name: 'exponentialRate', traits: {"smithy.api#documentation" => "<p>The exponential rate to increase the job rollout rate.</p>"}))
    IoTJobExecutionsRolloutConfig.add_member(:maximum_per_minute, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobMaxExecutionsPerMin, location_name: 'maximumPerMinute', traits: {"smithy.api#documentation" => "<p>The maximum number of devices that receive a pending job notification, per minute.</p>"}))
    IoTJobExecutionsRolloutConfig.type = Types::IoTJobExecutionsRolloutConfig
    IoTJobExponentialRolloutRate.add_member(:base_rate_per_minute, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobRolloutBaseRatePerMinute, location_name: 'baseRatePerMinute', traits: {"smithy.api#documentation" => "<p>The minimum number of devices that receive a pending job notification, per minute, when\n      the job starts. This parameter defines the initial rollout rate of the job.</p>", "smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.add_member(:increment_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobRolloutIncrementFactor, location_name: 'incrementFactor', traits: {"smithy.api#documentation" => "<p>The exponential factor to increase the rollout rate for the job.</p>\n         <p>This parameter supports up to one digit after the decimal (for example, you can specify\n        <code>1.5</code>, but not <code>1.55</code>).</p>", "smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.add_member(:rate_increase_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobRateIncreaseCriteria, location_name: 'rateIncreaseCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to increase the rollout rate for the job.</p>", "smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.type = Types::IoTJobExponentialRolloutRate
    IoTJobRateIncreaseCriteria.add_member(:number_of_notified_things, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobNumberOfThings, location_name: 'numberOfNotifiedThings', traits: {"smithy.api#documentation" => "<p>The number of devices to receive the job notification before the rollout rate\n      increases.</p>"}))
    IoTJobRateIncreaseCriteria.add_member(:number_of_succeeded_things, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobNumberOfThings, location_name: 'numberOfSucceededThings', traits: {"smithy.api#documentation" => "<p>The number of devices to successfully run the configuration job before the rollout rate\n      increases.</p>"}))
    IoTJobRateIncreaseCriteria.type = Types::IoTJobRateIncreaseCriteria
    IoTJobTimeoutConfig.add_member(:in_progress_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobInProgressTimeoutInMinutes, location_name: 'inProgressTimeoutInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time, in minutes, that devices have to complete the job. The timer starts\n      when the job status is set to <code>IN_PROGRESS</code>. If the job status doesn't change to a\n      terminal state before the time expires, then the job status is set to\n      <code>TIMED_OUT</code>.</p>\n         <p>The timeout interval must be between 1 minute and 7 days (10080 minutes).</p>"}))
    IoTJobTimeoutConfig.type = Types::IoTJobTimeoutConfig
    IotEndpointType.add_member(:fips, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fips', traits: {"smithy.api#enumValue" => "fips"}))
    IotEndpointType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'standard', traits: {"smithy.api#enumValue" => "standard"}))
    LambdaContainerParams.add_member(:memory_size_in_kb, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'memorySizeInKB', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The memory size of the container, expressed in kilobytes.</p>\n         <p>Default: <code>16384</code> (16 MB)</p>"}))
    LambdaContainerParams.add_member(:mount_ro_sysfs, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: 'mountROSysfs', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Whether or not the container can read information from the device's <code>/sys</code>\n      folder.</p>\n         <p>Default: <code>false</code>\n         </p>"}))
    LambdaContainerParams.add_member(:volumes, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaVolumeList, location_name: 'volumes', traits: {"smithy.api#documentation" => "<p>The list of volumes that the container can access.</p>"}))
    LambdaContainerParams.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDeviceList, location_name: 'devices', traits: {"smithy.api#documentation" => "<p>The list of system devices that the container can access.</p>"}))
    LambdaContainerParams.type = Types::LambdaContainerParams
    LambdaDeviceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDeviceMount)
    LambdaDeviceMount.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The mount path for the device in the file system.</p>", "smithy.api#required" => {}}))
    LambdaDeviceMount.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFilesystemPermission, location_name: 'permission', traits: {"smithy.api#documentation" => "<p>The permission to access the device: read/only (<code>ro</code>) or read/write\n        (<code>rw</code>).</p>\n         <p>Default: <code>ro</code>\n         </p>"}))
    LambdaDeviceMount.add_member(:add_group_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: 'addGroupOwner', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Whether or not to add the component's system user as an owner of the device.</p>\n         <p>Default: <code>false</code>\n         </p>"}))
    LambdaDeviceMount.type = Types::LambdaDeviceMount
    LambdaEnvironmentVariables.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    LambdaEnvironmentVariables.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LambdaEventSource.add_member(:topic, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicString, location_name: 'topic', traits: {"smithy.api#documentation" => "<p>The topic to which to subscribe to receive event messages.</p>", "smithy.api#required" => {}}))
    LambdaEventSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of event source. Choose from the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PUB_SUB</code> – Subscribe to local publish/subscribe messages. This\n          event source type doesn't support MQTT wildcards (<code>+</code> and <code>#</code>) in\n          the event source topic.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IOT_CORE</code> – Subscribe to Amazon Web Services IoT Core MQTT messages. This event source\n          type supports MQTT wildcards (<code>+</code> and <code>#</code>) in the event source\n          topic.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    LambdaEventSource.type = Types::LambdaEventSource
    LambdaEventSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventSource)
    LambdaEventSourceType.add_member(:pub_sub, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUB_SUB', traits: {"smithy.api#enumValue" => "PUB_SUB"}))
    LambdaEventSourceType.add_member(:iot_core, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IOT_CORE', traits: {"smithy.api#enumValue" => "IOT_CORE"}))
    LambdaExecArgsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaExecArg)
    LambdaExecutionParameters.add_member(:event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventSourceList, location_name: 'eventSources', traits: {"smithy.api#documentation" => "<p>The list of event sources to which to subscribe to receive work messages. The Lambda\n      function runs when it receives a message from an event source. You can subscribe this function\n      to local publish/subscribe messages and Amazon Web Services IoT Core MQTT messages.</p>"}))
    LambdaExecutionParameters.add_member(:max_queue_size, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'maxQueueSize', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum size of the message queue for the Lambda function component. The IoT Greengrass core\n      stores messages in a FIFO (first-in-first-out) queue until it can run the Lambda function to\n      consume each message.</p>"}))
    LambdaExecutionParameters.add_member(:max_instances_count, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'maxInstancesCount', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of instances that a non-pinned Lambda function can run at the same\n      time.</p>"}))
    LambdaExecutionParameters.add_member(:max_idle_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'maxIdleTimeInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum amount of time in seconds that a non-pinned Lambda function can idle before the\n      IoT Greengrass Core software stops its process.</p>"}))
    LambdaExecutionParameters.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'timeoutInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum amount of time in seconds that the Lambda function can process a work\n      item.</p>"}))
    LambdaExecutionParameters.add_member(:status_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: 'statusTimeoutInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The interval in seconds at which a pinned (also known as long-lived) Lambda function\n      component sends status updates to the Lambda manager component.</p>"}))
    LambdaExecutionParameters.add_member(:pinned, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: 'pinned', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Whether or not the Lambda function is pinned, or long-lived.</p>\n         <ul>\n            <li>\n               <p>A pinned Lambda function starts when IoT Greengrass starts and keeps running in its own\n          container.</p>\n            </li>\n            <li>\n               <p>A non-pinned Lambda function starts only when it receives a work item and exists after\n          it idles for <code>maxIdleTimeInSeconds</code>. If the function has multiple work items,\n          the IoT Greengrass Core software creates multiple instances of the function.</p>\n            </li>\n         </ul>\n         <p>Default: <code>true</code>\n         </p>"}))
    LambdaExecutionParameters.add_member(:input_payload_encoding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaInputPayloadEncodingType, location_name: 'inputPayloadEncodingType', traits: {"smithy.api#documentation" => "<p>The encoding type that the Lambda function supports.</p>\n         <p>Default: <code>json</code>\n         </p>"}))
    LambdaExecutionParameters.add_member(:exec_args, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaExecArgsList, location_name: 'execArgs', traits: {"smithy.api#documentation" => "<p>The list of arguments to pass to the Lambda function when it runs.</p>"}))
    LambdaExecutionParameters.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The map of environment variables that are available to the Lambda function when it\n      runs.</p>"}))
    LambdaExecutionParameters.add_member(:linux_process_params, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLinuxProcessParams, location_name: 'linuxProcessParams', traits: {"smithy.api#documentation" => "<p>The parameters for the Linux process that contains the Lambda function.</p>"}))
    LambdaExecutionParameters.type = Types::LambdaExecutionParameters
    LambdaFilesystemPermission.add_member(:ro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RO', traits: {"smithy.api#enumValue" => "ro"}))
    LambdaFilesystemPermission.add_member(:rw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RW', traits: {"smithy.api#enumValue" => "rw"}))
    LambdaFunctionRecipeSource.add_member(:lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'lambdaArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Lambda function. The ARN must include the version of the function to\n      import. You can't use version aliases like <code>$LATEST</code>.</p>", "smithy.api#required" => {}}))
    LambdaFunctionRecipeSource.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>\n         <p>Defaults to the name of the Lambda function.</p>"}))
    LambdaFunctionRecipeSource.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>\n         <p>Defaults to the version of the Lambda function as a semantic version. For example, if your\n      function version is <code>3</code>, the component version becomes <code>3.0.0</code>.</p>"}))
    LambdaFunctionRecipeSource.add_member(:component_platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: 'componentPlatforms', traits: {"smithy.api#documentation" => "<p>The platforms that the component version supports.</p>"}))
    LambdaFunctionRecipeSource.add_member(:component_dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDependencyMap, location_name: 'componentDependencies', traits: {"smithy.api#documentation" => "<p>The component versions on which this Lambda function component depends.</p>"}))
    LambdaFunctionRecipeSource.add_member(:component_lambda_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaExecutionParameters, location_name: 'componentLambdaParameters', traits: {"smithy.api#documentation" => "<p>The system and runtime parameters for the Lambda function as it runs on the Greengrass core\n      device.</p>"}))
    LambdaFunctionRecipeSource.type = Types::LambdaFunctionRecipeSource
    LambdaInputPayloadEncodingType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "json"}))
    LambdaInputPayloadEncodingType.add_member(:binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINARY', traits: {"smithy.api#enumValue" => "binary"}))
    LambdaIsolationMode.add_member(:greengrass_container, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREENGRASS_CONTAINER', traits: {"smithy.api#enumValue" => "GreengrassContainer"}))
    LambdaIsolationMode.add_member(:no_container, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_CONTAINER', traits: {"smithy.api#enumValue" => "NoContainer"}))
    LambdaLinuxProcessParams.add_member(:isolation_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaIsolationMode, location_name: 'isolationMode', traits: {"smithy.api#documentation" => "<p>The isolation mode for the process that contains the Lambda function. The process can run\n      in an isolated runtime environment inside the IoT Greengrass container, or as a regular process outside\n      any container.</p>\n         <p>Default: <code>GreengrassContainer</code>\n         </p>"}))
    LambdaLinuxProcessParams.add_member(:container_params, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaContainerParams, location_name: 'containerParams', traits: {"smithy.api#documentation" => "<p>The parameters for the container in which the Lambda function runs.</p>"}))
    LambdaLinuxProcessParams.type = Types::LambdaLinuxProcessParams
    LambdaVolumeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaVolumeMount)
    LambdaVolumeMount.add_member(:source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemPath, location_name: 'sourcePath', traits: {"smithy.api#documentation" => "<p>The path to the physical volume in the file system.</p>", "smithy.api#required" => {}}))
    LambdaVolumeMount.add_member(:destination_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemPath, location_name: 'destinationPath', traits: {"smithy.api#documentation" => "<p>The path to the logical volume in the file system.</p>", "smithy.api#required" => {}}))
    LambdaVolumeMount.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFilesystemPermission, location_name: 'permission', traits: {"smithy.api#documentation" => "<p>The permission to access the volume: read/only (<code>ro</code>) or read/write\n        (<code>rw</code>).</p>\n         <p>Default: <code>ro</code>\n         </p>"}))
    LambdaVolumeMount.add_member(:add_group_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: 'addGroupOwner', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Whether or not to add the IoT Greengrass user group as an owner of the volume.</p>\n         <p>Default: <code>false</code>\n         </p>"}))
    LambdaVolumeMount.type = Types::LambdaVolumeMount
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.type = Types::ListClientDevicesAssociatedWithCoreDeviceRequest
    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:associated_client_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClientDeviceList, location_name: 'associatedClientDevices', traits: {"smithy.api#documentation" => "<p>A list that describes the client devices that are associated with the core device.</p>"}))
    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListClientDevicesAssociatedWithCoreDeviceResponse.type = Types::ListClientDevicesAssociatedWithCoreDeviceResponse
    ListComponentVersionsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListComponentVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListComponentVersionsRequest.type = Types::ListComponentVersionsRequest
    ListComponentVersionsResponse.add_member(:component_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionList, location_name: 'componentVersions', traits: {"smithy.api#documentation" => "<p>A list of versions that exist for the component.</p>"}))
    ListComponentVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListComponentVersionsResponse.type = Types::ListComponentVersionsResponse
    ListComponentsRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVisibilityScope, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>The scope of the components to list.</p>\n         <p>Default: <code>PRIVATE</code>\n         </p>", "smithy.api#httpQuery" => "scope"}))
    ListComponentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListComponentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:components, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentList, location_name: 'components', traits: {"smithy.api#documentation" => "<p>A list that summarizes each component.</p>"}))
    ListComponentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListCoreDevicesRequest.add_member(:thing_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: 'thingGroupArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT thing group by which to filter. If you specify this parameter,\n      the list includes only core devices that have successfully deployed a deployment that targets\n      the thing group. When you remove a core device from a thing group, the list continues to\n      include that core device.</p>", "smithy.api#httpQuery" => "thingGroupArn"}))
    ListCoreDevicesRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The core device status by which to filter. If you specify this parameter, the list\n      includes only core devices that have this status. Choose one of the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state\n          on the core device.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "status"}))
    ListCoreDevicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCoreDevicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCoreDevicesRequest.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceRuntimeString, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>The runtime to be used by the core device. The runtime can be:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>aws_nucleus_classic</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>aws_nucleus_lite</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "runtime"}))
    ListCoreDevicesRequest.type = Types::ListCoreDevicesRequest
    ListCoreDevicesResponse.add_member(:core_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevicesList, location_name: 'coreDevices', traits: {"smithy.api#documentation" => "<p>A list that summarizes each core device.</p>"}))
    ListCoreDevicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListCoreDevicesResponse.type = Types::ListCoreDevicesResponse
    ListDeploymentsRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>", "smithy.api#httpQuery" => "targetArn"}))
    ListDeploymentsRequest.add_member(:history_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentHistoryFilter, location_name: 'historyFilter', traits: {"smithy.api#documentation" => "<p>The filter for the list of deployments. Choose one of the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALL</code> – The list includes all deployments.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LATEST_ONLY</code> – The list includes only the latest revision of each\n          deployment.</p>\n            </li>\n         </ul>\n         <p>Default: <code>LATEST_ONLY</code>\n         </p>", "smithy.api#httpQuery" => "historyFilter"}))
    ListDeploymentsRequest.add_member(:parent_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: 'parentTargetArn', traits: {"smithy.api#documentation" => "<p>The parent deployment's target <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> within a subdeployment.</p>", "smithy.api#httpQuery" => "parentTargetArn"}))
    ListDeploymentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per paginated request.</p>\n         <p>Default: <code>50</code>\n         </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDeploymentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListDeploymentsResponse.add_member(:deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentList, location_name: 'deployments', traits: {"smithy.api#documentation" => "<p>A list that summarizes each deployment.</p>"}))
    ListDeploymentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListDeploymentsResponse.type = Types::ListDeploymentsResponse
    ListEffectiveDeploymentsRequest.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEffectiveDeploymentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEffectiveDeploymentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEffectiveDeploymentsRequest.type = Types::ListEffectiveDeploymentsRequest
    ListEffectiveDeploymentsResponse.add_member(:effective_deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentsList, location_name: 'effectiveDeployments', traits: {"smithy.api#documentation" => "<p>A list that summarizes each deployment on the core device.</p>"}))
    ListEffectiveDeploymentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListEffectiveDeploymentsResponse.type = Types::ListEffectiveDeploymentsResponse
    ListInstalledComponentsRequest.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInstalledComponentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListInstalledComponentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInstalledComponentsRequest.add_member(:topology_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentTopologyFilter, location_name: 'topologyFilter', traits: {"smithy.api#documentation" => "<p>The filter for the list of components. Choose from the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALL</code> – The list includes all components installed on the core\n          device.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ROOT</code> – The list includes only <i>root</i>\n          components, which are components that you specify in a deployment. When you choose this\n          option, the list doesn't include components that the core device installs as dependencies\n          of other components.</p>\n            </li>\n         </ul>\n         <p>Default: <code>ROOT</code>\n         </p>", "smithy.api#httpQuery" => "topologyFilter"}))
    ListInstalledComponentsRequest.type = Types::ListInstalledComponentsRequest
    ListInstalledComponentsResponse.add_member(:installed_components, Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentList, location_name: 'installedComponents', traits: {"smithy.api#documentation" => "<p>A list that summarizes each component on the core device.</p>\n         <note>\n            <p>Greengrass nucleus v2.7.0 or later is required to get an accurate\n          <code>lastStatusChangeTimestamp</code> response. This response can be inaccurate in\n        earlier Greengrass nucleus versions.</p>\n         </note>\n         <note>\n            <p>Greengrass nucleus v2.8.0 or later is required to get an accurate\n          <code>lastInstallationSource</code> and <code>lastReportedTimestamp</code> response. This\n        response can be inaccurate or null in earlier Greengrass nucleus versions.</p>\n         </note>"}))
    ListInstalledComponentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListInstalledComponentsResponse.type = Types::ListInstalledComponentsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericV2ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    PlatformAttributesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    PlatformAttributesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    RecipeOutputFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    RecipeOutputFormat.add_member(:yaml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YAML', traits: {"smithy.api#enumValue" => "YAML"}))
    RequestAlreadyInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    RequestAlreadyInProgressException.type = Types::RequestAlreadyInProgressException
    ResolveComponentCandidatesRequest.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform to use to resolve compatible components.</p>"}))
    ResolveComponentCandidatesRequest.add_member(:component_candidates, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentCandidateList, location_name: 'componentCandidates', traits: {"smithy.api#documentation" => "<p>The list of components to resolve.</p>"}))
    ResolveComponentCandidatesRequest.type = Types::ResolveComponentCandidatesRequest
    ResolveComponentCandidatesResponse.add_member(:resolved_component_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedComponentVersionsList, location_name: 'resolvedComponentVersions', traits: {"smithy.api#documentation" => "<p>A list of components that meet the requirements that you specify in the request. This list\n      includes each component's recipe that you can use to install the component.</p>"}))
    ResolveComponentCandidatesResponse.type = Types::ResolveComponentCandidatesResponse
    ResolvedComponentVersion.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"}))
    ResolvedComponentVersion.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>"}))
    ResolvedComponentVersion.add_member(:component_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: 'componentVersion', traits: {"smithy.api#documentation" => "<p>The version of the component.</p>"}))
    ResolvedComponentVersion.add_member(:recipe, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeBlob, location_name: 'recipe', traits: {"smithy.api#documentation" => "<p>The recipe of the component version.</p>"}))
    ResolvedComponentVersion.add_member(:vendor_guidance, Smithy::Schema::Shapes::ShapeRef.new(shape: VendorGuidance, location_name: 'vendorGuidance', traits: {"smithy.api#documentation" => "<p>The vendor guidance state for the component version. This state indicates whether\n      the component version has any issues that you should consider before you deploy it. The vendor guidance state can be:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> – This component version is available and recommended for use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISCONTINUED</code> – This component version has been discontinued by its publisher.\n          You can deploy this component version, but we recommend that you use a different version of this component.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETED</code> – This component version has been deleted by its publisher, so you can't\n          deploy it. If you have any existing deployments that specify this component version, those deployments will fail.</p>\n            </li>\n         </ul>"}))
    ResolvedComponentVersion.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that communicates details about the vendor guidance state\n    of the component version. This message communicates why a component version is discontinued or deleted.</p>"}))
    ResolvedComponentVersion.type = Types::ResolvedComponentVersion
    ResolvedComponentVersionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedComponentVersion)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that isn't found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that isn't found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3EndpointType.add_member(:regional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGIONAL', traits: {"smithy.api#enumValue" => "REGIONAL"}))
    S3EndpointType.add_member(:global, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL', traits: {"smithy.api#enumValue" => "GLOBAL"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that exceeds the service quota.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that exceeds the service quota.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The code for the quota in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the service in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    StringMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    SystemResourceLimits.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Memory, location_name: 'memory', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum amount of RAM, expressed in kilobytes, that a component's processes can use on\n      the core device.</p>"}))
    SystemResourceLimits.add_member(:cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: CPU, location_name: 'cpus', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum amount of CPU time that a component's processes can use on the core device. A\n      core device's total CPU time is equivalent to the device's number of CPU cores. For example,\n      on a core device with 4 CPU cores, you can set this value to <code>2</code> to limit the\n      component's processes to 50 percent usage of each CPU core. On a device with 1 CPU core, you\n      can set this value to <code>0.25</code> to limit the component's processes to 25 percent usage\n      of the CPU. If you set this value to a number greater than the number of CPU cores, the IoT Greengrass Core\n      software doesn't limit the component's CPU usage.</p>"}))
    SystemResourceLimits.type = Types::SystemResourceLimits
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericV2ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more\n      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your\n        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The code for the quota in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>"}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the service in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time to wait before you retry the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericV2ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to untag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of keys for tags to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectivityInfoRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the core device. This is also the name of the IoT thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "ThingName", "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfoList, location_name: 'connectivityInfo', traits: {"smithy.api#documentation" => "<p>The connectivity information for the core device.</p>", "smithy.api#jsonName" => "ConnectivityInfo", "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.type = Types::UpdateConnectivityInfoRequest
    UpdateConnectivityInfoResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The new version of the connectivity information for the core device.</p>", "smithy.api#jsonName" => "Version"}))
    UpdateConnectivityInfoResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the connectivity information update request.</p>", "smithy.api#jsonName" => "Message"}))
    UpdateConnectivityInfoResponse.type = Types::UpdateConnectivityInfoResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the validation exception.</p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The list of fields that failed to validate.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the exception field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message of the exception field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    VendorGuidance.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VendorGuidance.add_member(:discontinued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCONTINUED', traits: {"smithy.api#enumValue" => "DISCONTINUED"}))
    VendorGuidance.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ConnectivityInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo)

    GreengrassV2 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.greengrassv2#GreengrassV2"
      service.name = "GreengrassV2"
      service.version = "2020-11-30"
      service.traits = {"aws.api#service" => {"sdkId" => "GreengrassV2", "arnNamespace" => "greengrass", "cloudFormationName" => "GreengrassV2", "cloudTrailEventSource" => "greengrass.amazonaws.com", "endpointPrefix" => "greengrass"}, "aws.auth#sigv4" => {"name" => "greengrass"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Greengrass V2"}
      service.add_operation(:associate_service_role_to_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#AssociateServiceRoleToAccount"
        operation.name = "AssociateServiceRoleToAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:batch_associate_client_device_with_core_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#BatchAssociateClientDeviceWithCoreDevice"
        operation.name = "BatchAssociateClientDeviceWithCoreDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateClientDeviceWithCoreDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateClientDeviceWithCoreDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_client_device_from_core_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#BatchDisassociateClientDeviceFromCoreDevice"
        operation.name = "BatchDisassociateClientDeviceFromCoreDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateClientDeviceFromCoreDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateClientDeviceFromCoreDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices", "code" => 200}}
      end)
      service.add_operation(:cancel_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CancelDeployment"
        operation.name = "CancelDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/deployments/{deploymentId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_component_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CreateComponentVersion"
        operation.name = "CreateComponentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestAlreadyInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/createComponentVersion", "code" => 201}}
      end)
      service.add_operation(:create_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestAlreadyInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/deployments", "code" => 201}}
      end)
      service.add_operation(:delete_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/components/{arn}", "code" => 204}}
      end)
      service.add_operation(:delete_core_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteCoreDevice"
        operation.name = "DeleteCoreDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}", "code" => 204}}
      end)
      service.add_operation(:delete_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/deployments/{deploymentId}", "code" => 204}}
      end)
      service.add_operation(:describe_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DescribeComponent"
        operation.name = "DescribeComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/metadata", "code" => 200}}
      end)
      service.add_operation(:disassociate_service_role_from_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DisassociateServiceRoleFromAccount"
        operation.name = "DisassociateServiceRoleFromAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:get_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetComponent"
        operation.name = "GetComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}", "code" => 200}}
      end)
      service.add_operation(:get_component_version_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetComponentVersionArtifact"
        operation.name = "GetComponentVersionArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentVersionArtifactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentVersionArtifactResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/artifacts/{artifactName+}", "code" => 200}}
      end)
      service.add_operation(:get_connectivity_info, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetConnectivityInfo"
        operation.name = "GetConnectivityInfo"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectivityInfoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectivityInfoResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/things/{thingName}/connectivityInfo", "code" => 200}}
      end)
      service.add_operation(:get_core_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetCoreDevice"
        operation.name = "GetCoreDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}", "code" => 200}}
      end)
      service.add_operation(:get_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/deployments/{deploymentId}", "code" => 200}}
      end)
      service.add_operation(:get_service_role_for_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetServiceRoleForAccount"
        operation.name = "GetServiceRoleForAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceRoleForAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceRoleForAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:list_client_devices_associated_with_core_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListClientDevicesAssociatedWithCoreDevice"
        operation.name = "ListClientDevicesAssociatedWithCoreDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClientDevicesAssociatedWithCoreDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClientDevicesAssociatedWithCoreDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices", "code" => 200}}
        operation[:paginator] = Paginators::ListClientDevicesAssociatedWithCoreDevice.new
      end)
      service.add_operation(:list_component_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListComponentVersions"
        operation.name = "ListComponentVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListComponentVersions.new
      end)
      service.add_operation(:list_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListComponents"
        operation.name = "ListComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components", "code" => 200}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_core_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListCoreDevices"
        operation.name = "ListCoreDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDevicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDevicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices", "code" => 200}}
        operation[:paginator] = Paginators::ListCoreDevices.new
      end)
      service.add_operation(:list_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/deployments", "code" => 200}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_effective_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListEffectiveDeployments"
        operation.name = "ListEffectiveDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectiveDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectiveDeploymentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments", "code" => 200}}
        operation[:paginator] = Paginators::ListEffectiveDeployments.new
      end)
      service.add_operation(:list_installed_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListInstalledComponents"
        operation.name = "ListInstalledComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstalledComponentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstalledComponentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents", "code" => 200}}
        operation[:paginator] = Paginators::ListInstalledComponents.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:resolve_component_candidates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ResolveComponentCandidates"
        operation.name = "ResolveComponentCandidates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveComponentCandidatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveComponentCandidatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/resolveComponentCandidates", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_connectivity_info, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#UpdateConnectivityInfo"
        operation.name = "UpdateConnectivityInfo"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityInfoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityInfoResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/things/{thingName}/connectivityInfo", "code" => 200}}
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
