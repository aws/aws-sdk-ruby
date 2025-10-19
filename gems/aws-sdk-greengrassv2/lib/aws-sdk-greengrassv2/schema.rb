# frozen_string_literal: true

# This is generated code!

module Aws::GreengrassV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AssociateClientDeviceWithCoreDeviceEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceEntry", name: "AssociateClientDeviceWithCoreDeviceEntry")
    AssociateClientDeviceWithCoreDeviceEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceEntryList", name: "AssociateClientDeviceWithCoreDeviceEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AssociateClientDeviceWithCoreDeviceErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceErrorEntry", name: "AssociateClientDeviceWithCoreDeviceErrorEntry")
    AssociateClientDeviceWithCoreDeviceErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#AssociateClientDeviceWithCoreDeviceErrorList", name: "AssociateClientDeviceWithCoreDeviceErrorList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AssociateServiceRoleToAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#AssociateServiceRoleToAccountRequest", name: "AssociateServiceRoleToAccountRequest")
    AssociateServiceRoleToAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#AssociateServiceRoleToAccountResponse", name: "AssociateServiceRoleToAccountResponse")
    AssociatedClientDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#AssociatedClientDevice", name: "AssociatedClientDevice")
    AssociatedClientDeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#AssociatedClientDeviceList", name: "AssociatedClientDeviceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchAssociateClientDeviceWithCoreDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#BatchAssociateClientDeviceWithCoreDeviceRequest", name: "BatchAssociateClientDeviceWithCoreDeviceRequest")
    BatchAssociateClientDeviceWithCoreDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#BatchAssociateClientDeviceWithCoreDeviceResponse", name: "BatchAssociateClientDeviceWithCoreDeviceResponse")
    BatchDisassociateClientDeviceFromCoreDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#BatchDisassociateClientDeviceFromCoreDeviceRequest", name: "BatchDisassociateClientDeviceFromCoreDeviceRequest")
    BatchDisassociateClientDeviceFromCoreDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#BatchDisassociateClientDeviceFromCoreDeviceResponse", name: "BatchDisassociateClientDeviceFromCoreDeviceResponse")
    CPU = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.greengrassv2#CPU", name: "CPU", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CancelDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CancelDeploymentRequest", name: "CancelDeploymentRequest")
    CancelDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CancelDeploymentResponse", name: "CancelDeploymentResponse")
    ClientTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ClientTokenString", name: "ClientTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    CloudComponentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#CloudComponentState", name: "CloudComponentState")
    CloudComponentStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CloudComponentStatus", name: "CloudComponentStatus")
    Component = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#Component", name: "Component")
    ComponentARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ComponentARN", name: "ComponentARN", traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:(aws|[0-9]+):components:[^:]+$"})
    ComponentCandidate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentCandidate", name: "ComponentCandidate")
    ComponentCandidateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#ComponentCandidateList", name: "ComponentCandidateList")
    ComponentConfigurationPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ComponentConfigurationPath", name: "ComponentConfigurationPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ComponentConfigurationPathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#ComponentConfigurationPathList", name: "ComponentConfigurationPathList")
    ComponentConfigurationString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ComponentConfigurationString", name: "ComponentConfigurationString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    ComponentConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentConfigurationUpdate", name: "ComponentConfigurationUpdate")
    ComponentDependencyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrassv2#ComponentDependencyMap", name: "ComponentDependencyMap")
    ComponentDependencyRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentDependencyRequirement", name: "ComponentDependencyRequirement")
    ComponentDependencyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#ComponentDependencyType", name: "ComponentDependencyType")
    ComponentDeploymentSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentDeploymentSpecification", name: "ComponentDeploymentSpecification")
    ComponentDeploymentSpecifications = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrassv2#ComponentDeploymentSpecifications", name: "ComponentDeploymentSpecifications")
    ComponentLatestVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentLatestVersion", name: "ComponentLatestVersion")
    ComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#ComponentList", name: "ComponentList")
    ComponentNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ComponentNameString", name: "ComponentNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ComponentPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentPlatform", name: "ComponentPlatform")
    ComponentPlatformList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#ComponentPlatformList", name: "ComponentPlatformList")
    ComponentRunWith = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentRunWith", name: "ComponentRunWith")
    ComponentVersionARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ComponentVersionARN", name: "ComponentVersionARN", traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:(aws|[0-9]+):components:[^:]+:versions:[^:]+$"})
    ComponentVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#ComponentVersionList", name: "ComponentVersionList")
    ComponentVersionListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ComponentVersionListItem", name: "ComponentVersionListItem")
    ComponentVersionRequirementMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrassv2#ComponentVersionRequirementMap", name: "ComponentVersionRequirementMap")
    ComponentVersionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ComponentVersionString", name: "ComponentVersionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ComponentVisibilityScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#ComponentVisibilityScope", name: "ComponentVisibilityScope")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectivityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ConnectivityInfo", name: "ConnectivityInfo")
    CoreDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CoreDevice", name: "CoreDevice")
    CoreDeviceArchitectureString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#CoreDeviceArchitectureString", name: "CoreDeviceArchitectureString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CoreDevicePlatformString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#CoreDevicePlatformString", name: "CoreDevicePlatformString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CoreDeviceRuntimeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#CoreDeviceRuntimeString", name: "CoreDeviceRuntimeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CoreDeviceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#CoreDeviceStatus", name: "CoreDeviceStatus")
    CoreDeviceThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#CoreDeviceThingName", name: "CoreDeviceThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    CoreDevicesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#CoreDevicesList", name: "CoreDevicesList")
    CreateComponentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CreateComponentVersionRequest", name: "CreateComponentVersionRequest")
    CreateComponentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CreateComponentVersionResponse", name: "CreateComponentVersionResponse")
    CreateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CreateDeploymentRequest", name: "CreateDeploymentRequest")
    CreateDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#CreateDeploymentResponse", name: "CreateDeploymentResponse")
    DefaultMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#DefaultMaxResults", name: "DefaultMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DeleteComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DeleteComponentRequest", name: "DeleteComponentRequest")
    DeleteCoreDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DeleteCoreDeviceRequest", name: "DeleteCoreDeviceRequest")
    DeleteDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DeleteDeploymentRequest", name: "DeleteDeploymentRequest")
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#Deployment", name: "Deployment")
    DeploymentComponentUpdatePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DeploymentComponentUpdatePolicy", name: "DeploymentComponentUpdatePolicy")
    DeploymentComponentUpdatePolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#DeploymentComponentUpdatePolicyAction", name: "DeploymentComponentUpdatePolicyAction")
    DeploymentConfigurationValidationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DeploymentConfigurationValidationPolicy", name: "DeploymentConfigurationValidationPolicy")
    DeploymentFailureHandlingPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#DeploymentFailureHandlingPolicy", name: "DeploymentFailureHandlingPolicy")
    DeploymentHistoryFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#DeploymentHistoryFilter", name: "DeploymentHistoryFilter")
    DeploymentID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#DeploymentID", name: "DeploymentID")
    DeploymentIoTJobConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DeploymentIoTJobConfiguration", name: "DeploymentIoTJobConfiguration")
    DeploymentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#DeploymentList", name: "DeploymentList")
    DeploymentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#DeploymentName", name: "DeploymentName")
    DeploymentNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#DeploymentNameString", name: "DeploymentNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DeploymentPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DeploymentPolicies", name: "DeploymentPolicies")
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#DeploymentStatus", name: "DeploymentStatus")
    DescribeComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DescribeComponentRequest", name: "DescribeComponentRequest")
    DescribeComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DescribeComponentResponse", name: "DescribeComponentResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#DescriptionString", name: "DescriptionString")
    DisassociateClientDeviceFromCoreDeviceEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceEntry", name: "DisassociateClientDeviceFromCoreDeviceEntry")
    DisassociateClientDeviceFromCoreDeviceEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceEntryList", name: "DisassociateClientDeviceFromCoreDeviceEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DisassociateClientDeviceFromCoreDeviceErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceErrorEntry", name: "DisassociateClientDeviceFromCoreDeviceErrorEntry")
    DisassociateClientDeviceFromCoreDeviceErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#DisassociateClientDeviceFromCoreDeviceErrorList", name: "DisassociateClientDeviceFromCoreDeviceErrorList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DisassociateServiceRoleFromAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DisassociateServiceRoleFromAccountRequest", name: "DisassociateServiceRoleFromAccountRequest")
    DisassociateServiceRoleFromAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#DisassociateServiceRoleFromAccountResponse", name: "DisassociateServiceRoleFromAccountResponse")
    EffectiveDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeployment", name: "EffectiveDeployment")
    EffectiveDeploymentErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeploymentErrorCode", name: "EffectiveDeploymentErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EffectiveDeploymentErrorStack = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeploymentErrorStack", name: "EffectiveDeploymentErrorStack")
    EffectiveDeploymentErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeploymentErrorType", name: "EffectiveDeploymentErrorType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EffectiveDeploymentErrorTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeploymentErrorTypeList", name: "EffectiveDeploymentErrorTypeList")
    EffectiveDeploymentExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeploymentExecutionStatus", name: "EffectiveDeploymentExecutionStatus")
    EffectiveDeploymentStatusDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeploymentStatusDetails", name: "EffectiveDeploymentStatusDetails")
    EffectiveDeploymentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#EffectiveDeploymentsList", name: "EffectiveDeploymentsList")
    FileSystemPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#FileSystemPath", name: "FileSystemPath")
    GGCVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#GGCVersion", name: "GGCVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GenericV2ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#GenericV2ARN", name: "GenericV2ARN", traits: {"smithy.api#pattern" => "^arn:[^:]*:greengrass:[^:]*:(aws|[0-9]+):(components|deployments|coreDevices):"})
    GetComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetComponentRequest", name: "GetComponentRequest")
    GetComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetComponentResponse", name: "GetComponentResponse")
    GetComponentVersionArtifactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetComponentVersionArtifactRequest", name: "GetComponentVersionArtifactRequest")
    GetComponentVersionArtifactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetComponentVersionArtifactResponse", name: "GetComponentVersionArtifactResponse")
    GetConnectivityInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetConnectivityInfoRequest", name: "GetConnectivityInfoRequest")
    GetConnectivityInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetConnectivityInfoResponse", name: "GetConnectivityInfoResponse")
    GetCoreDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetCoreDeviceRequest", name: "GetCoreDeviceRequest")
    GetCoreDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetCoreDeviceResponse", name: "GetCoreDeviceResponse")
    GetDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetDeploymentRequest", name: "GetDeploymentRequest")
    GetDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetDeploymentResponse", name: "GetDeploymentResponse")
    GetServiceRoleForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetServiceRoleForAccountRequest", name: "GetServiceRoleForAccountRequest")
    GetServiceRoleForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#GetServiceRoleForAccountResponse", name: "GetServiceRoleForAccountResponse")
    InstalledComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#InstalledComponent", name: "InstalledComponent")
    InstalledComponentLifecycleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#InstalledComponentLifecycleState", name: "InstalledComponentLifecycleState")
    InstalledComponentLifecycleStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#InstalledComponentLifecycleStatusCode", name: "InstalledComponentLifecycleStatusCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    InstalledComponentLifecycleStatusCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#InstalledComponentLifecycleStatusCodeList", name: "InstalledComponentLifecycleStatusCodeList")
    InstalledComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#InstalledComponentList", name: "InstalledComponentList")
    InstalledComponentTopologyFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#InstalledComponentTopologyFilter", name: "InstalledComponentTopologyFilter")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IoTJobARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#IoTJobARN", name: "IoTJobARN", traits: {"smithy.api#pattern" => "^arn:[^:]*:iot:[^:]+:[0-9]+:job/.+$"})
    IoTJobAbortAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#IoTJobAbortAction", name: "IoTJobAbortAction")
    IoTJobAbortConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#IoTJobAbortConfig", name: "IoTJobAbortConfig")
    IoTJobAbortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#IoTJobAbortCriteria", name: "IoTJobAbortCriteria")
    IoTJobAbortCriteriaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#IoTJobAbortCriteriaList", name: "IoTJobAbortCriteriaList", traits: {"smithy.api#length" => {"min" => 1}})
    IoTJobAbortThresholdPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.greengrassv2#IoTJobAbortThresholdPercentage", name: "IoTJobAbortThresholdPercentage", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 100}})
    IoTJobExecutionFailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#IoTJobExecutionFailureType", name: "IoTJobExecutionFailureType")
    IoTJobExecutionsRolloutConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#IoTJobExecutionsRolloutConfig", name: "IoTJobExecutionsRolloutConfig")
    IoTJobExponentialRolloutRate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#IoTJobExponentialRolloutRate", name: "IoTJobExponentialRolloutRate")
    IoTJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#IoTJobId", name: "IoTJobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    IoTJobInProgressTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#IoTJobInProgressTimeoutInMinutes", name: "IoTJobInProgressTimeoutInMinutes", traits: {"smithy.api#default" => 0})
    IoTJobMaxExecutionsPerMin = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#IoTJobMaxExecutionsPerMin", name: "IoTJobMaxExecutionsPerMin", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    IoTJobMinimumNumberOfExecutedThings = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#IoTJobMinimumNumberOfExecutedThings", name: "IoTJobMinimumNumberOfExecutedThings", traits: {"smithy.api#range" => {"min" => 1}})
    IoTJobNumberOfThings = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#IoTJobNumberOfThings", name: "IoTJobNumberOfThings", traits: {"smithy.api#range" => {"min" => 1}})
    IoTJobRateIncreaseCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#IoTJobRateIncreaseCriteria", name: "IoTJobRateIncreaseCriteria")
    IoTJobRolloutBaseRatePerMinute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#IoTJobRolloutBaseRatePerMinute", name: "IoTJobRolloutBaseRatePerMinute", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    IoTJobRolloutIncrementFactor = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.greengrassv2#IoTJobRolloutIncrementFactor", name: "IoTJobRolloutIncrementFactor", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    IoTJobTimeoutConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#IoTJobTimeoutConfig", name: "IoTJobTimeoutConfig")
    IoTThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#IoTThingName", name: "IoTThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    IotEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#IotEndpointType", name: "IotEndpointType")
    IsLatestForTarget = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.greengrassv2#IsLatestForTarget", name: "IsLatestForTarget", traits: {"smithy.api#default" => false})
    IsRoot = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.greengrassv2#IsRoot", name: "IsRoot", traits: {"smithy.api#default" => false})
    LambdaContainerParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#LambdaContainerParams", name: "LambdaContainerParams")
    LambdaDeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#LambdaDeviceList", name: "LambdaDeviceList")
    LambdaDeviceMount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#LambdaDeviceMount", name: "LambdaDeviceMount")
    LambdaEnvironmentVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrassv2#LambdaEnvironmentVariables", name: "LambdaEnvironmentVariables")
    LambdaEventSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#LambdaEventSource", name: "LambdaEventSource")
    LambdaEventSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#LambdaEventSourceList", name: "LambdaEventSourceList")
    LambdaEventSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#LambdaEventSourceType", name: "LambdaEventSourceType")
    LambdaExecArg = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#LambdaExecArg", name: "LambdaExecArg")
    LambdaExecArgsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#LambdaExecArgsList", name: "LambdaExecArgsList")
    LambdaExecutionParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#LambdaExecutionParameters", name: "LambdaExecutionParameters")
    LambdaFilesystemPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#LambdaFilesystemPermission", name: "LambdaFilesystemPermission")
    LambdaFunctionRecipeSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#LambdaFunctionRecipeSource", name: "LambdaFunctionRecipeSource")
    LambdaInputPayloadEncodingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#LambdaInputPayloadEncodingType", name: "LambdaInputPayloadEncodingType")
    LambdaIsolationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#LambdaIsolationMode", name: "LambdaIsolationMode")
    LambdaLinuxProcessParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#LambdaLinuxProcessParams", name: "LambdaLinuxProcessParams")
    LambdaVolumeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#LambdaVolumeList", name: "LambdaVolumeList")
    LambdaVolumeMount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#LambdaVolumeMount", name: "LambdaVolumeMount")
    LifecycleStateDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#LifecycleStateDetails", name: "LifecycleStateDetails", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ListClientDevicesAssociatedWithCoreDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListClientDevicesAssociatedWithCoreDeviceRequest", name: "ListClientDevicesAssociatedWithCoreDeviceRequest")
    ListClientDevicesAssociatedWithCoreDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListClientDevicesAssociatedWithCoreDeviceResponse", name: "ListClientDevicesAssociatedWithCoreDeviceResponse")
    ListComponentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListComponentVersionsRequest", name: "ListComponentVersionsRequest")
    ListComponentVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListComponentVersionsResponse", name: "ListComponentVersionsResponse")
    ListComponentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListComponentsRequest", name: "ListComponentsRequest")
    ListComponentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListComponentsResponse", name: "ListComponentsResponse")
    ListCoreDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListCoreDevicesRequest", name: "ListCoreDevicesRequest")
    ListCoreDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListCoreDevicesResponse", name: "ListCoreDevicesResponse")
    ListDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListDeploymentsRequest", name: "ListDeploymentsRequest")
    ListDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListDeploymentsResponse", name: "ListDeploymentsResponse")
    ListEffectiveDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListEffectiveDeploymentsRequest", name: "ListEffectiveDeploymentsRequest")
    ListEffectiveDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListEffectiveDeploymentsResponse", name: "ListEffectiveDeploymentsResponse")
    ListInstalledComponentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListInstalledComponentsRequest", name: "ListInstalledComponentsRequest")
    ListInstalledComponentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListInstalledComponentsResponse", name: "ListInstalledComponentsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Memory = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#Memory", name: "Memory", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 9223372036854771712}})
    NextTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#NextTokenString", name: "NextTokenString")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    NullableString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#NullableString", name: "NullableString")
    OptionalBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.greengrassv2#OptionalBoolean", name: "OptionalBoolean", traits: {"smithy.api#default" => false})
    OptionalInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#OptionalInteger", name: "OptionalInteger", traits: {"smithy.api#default" => 0})
    PlatformAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrassv2#PlatformAttributesMap", name: "PlatformAttributesMap")
    PortNumberInt = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#PortNumberInt", name: "PortNumberInt", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 65535}})
    PublisherString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#PublisherString", name: "PublisherString")
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#Reason", name: "Reason")
    RecipeBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.greengrassv2#RecipeBlob", name: "RecipeBlob")
    RecipeOutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#RecipeOutputFormat", name: "RecipeOutputFormat")
    RequestAlreadyInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#RequestAlreadyInProgressException", name: "RequestAlreadyInProgressException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResolveComponentCandidatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ResolveComponentCandidatesRequest", name: "ResolveComponentCandidatesRequest")
    ResolveComponentCandidatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ResolveComponentCandidatesResponse", name: "ResolveComponentCandidatesResponse")
    ResolvedComponentVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ResolvedComponentVersion", name: "ResolvedComponentVersion")
    ResolvedComponentVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#ResolvedComponentVersionsList", name: "ResolvedComponentVersionsList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.greengrassv2#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    S3EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#S3EndpointType", name: "S3EndpointType")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#String", name: "String")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrassv2#StringMap", name: "StringMap")
    SystemResourceLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#SystemResourceLimits", name: "SystemResourceLimits")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.greengrassv2#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#TargetARN", name: "TargetARN", traits: {"smithy.api#pattern" => "^arn:[^:]*:iot:[^:]*:[0-9]+:(thing|thinggroup)/.+$"})
    ThingGroupARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#ThingGroupARN", name: "ThingGroupARN", traits: {"smithy.api#pattern" => "^arn:[^:]*:iot:[^:]*:[0-9]+:thinggroup/.+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.greengrassv2#Timestamp", name: "Timestamp")
    TopicString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.greengrassv2#TopicString", name: "TopicString")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConnectivityInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#UpdateConnectivityInfoRequest", name: "UpdateConnectivityInfoRequest")
    UpdateConnectivityInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#UpdateConnectivityInfoResponse", name: "UpdateConnectivityInfoResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.greengrassv2#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#ValidationExceptionReason", name: "ValidationExceptionReason")
    VendorGuidance = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.greengrassv2#VendorGuidance", name: "VendorGuidance")
    ConnectivityInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.greengrassv2#connectivityInfoList", name: "ConnectivityInfoList")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateClientDeviceWithCoreDeviceEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName", traits: {"smithy.api#required" => {}}))
    AssociateClientDeviceWithCoreDeviceEntry.type = Types::AssociateClientDeviceWithCoreDeviceEntry
    AssociateClientDeviceWithCoreDeviceEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceEntry)
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "code"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.type = Types::AssociateClientDeviceWithCoreDeviceErrorEntry
    AssociateClientDeviceWithCoreDeviceErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceErrorEntry)
    AssociateServiceRoleToAccountRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "roleArn", traits: {"smithy.api#jsonName" => "RoleArn", "smithy.api#required" => {}}))
    AssociateServiceRoleToAccountRequest.type = Types::AssociateServiceRoleToAccountRequest
    AssociateServiceRoleToAccountResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "associatedAt", traits: {"smithy.api#jsonName" => "AssociatedAt"}))
    AssociateServiceRoleToAccountResponse.type = Types::AssociateServiceRoleToAccountResponse
    AssociatedClientDevice.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName"))
    AssociatedClientDevice.add_member(:association_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "associationTimestamp"))
    AssociatedClientDevice.type = Types::AssociatedClientDevice
    AssociatedClientDeviceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClientDevice)
    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceEntryList, location_name: "entries"))
    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateClientDeviceWithCoreDeviceRequest.type = Types::BatchAssociateClientDeviceWithCoreDeviceRequest
    BatchAssociateClientDeviceWithCoreDeviceResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceErrorList, location_name: "errorEntries"))
    BatchAssociateClientDeviceWithCoreDeviceResponse.type = Types::BatchAssociateClientDeviceWithCoreDeviceResponse
    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceEntryList, location_name: "entries"))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.type = Types::BatchDisassociateClientDeviceFromCoreDeviceRequest
    BatchDisassociateClientDeviceFromCoreDeviceResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceErrorList, location_name: "errorEntries"))
    BatchDisassociateClientDeviceFromCoreDeviceResponse.type = Types::BatchDisassociateClientDeviceFromCoreDeviceResponse
    CancelDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelDeploymentRequest.type = Types::CancelDeploymentRequest
    CancelDeploymentResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    CancelDeploymentResponse.type = Types::CancelDeploymentResponse
    CloudComponentState.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUESTED", traits: {"smithy.api#enumValue" => "REQUESTED"}))
    CloudComponentState.add_member(:initiated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIATED", traits: {"smithy.api#enumValue" => "INITIATED"}))
    CloudComponentState.add_member(:deployable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYABLE", traits: {"smithy.api#enumValue" => "DEPLOYABLE"}))
    CloudComponentState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CloudComponentState.add_member(:deprecated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    CloudComponentStatus.add_member(:component_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudComponentState, location_name: "componentState"))
    CloudComponentStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    CloudComponentStatus.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "errors"))
    CloudComponentStatus.add_member(:vendor_guidance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VendorGuidance, location_name: "vendorGuidance"))
    CloudComponentStatus.add_member(:vendor_guidance_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "vendorGuidanceMessage"))
    CloudComponentStatus.type = Types::CloudComponentStatus
    Component.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentARN, location_name: "arn"))
    Component.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    Component.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentLatestVersion, location_name: "latestVersion"))
    Component.type = Types::Component
    ComponentCandidate.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    ComponentCandidate.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ComponentCandidate.add_member(:version_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionRequirementMap, location_name: "versionRequirements"))
    ComponentCandidate.type = Types::ComponentCandidate
    ComponentCandidateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentCandidate)
    ComponentConfigurationPathList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationPath)
    ComponentConfigurationUpdate.add_member(:merge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationString, location_name: "merge"))
    ComponentConfigurationUpdate.add_member(:reset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationPathList, location_name: "reset"))
    ComponentConfigurationUpdate.type = Types::ComponentConfigurationUpdate
    ComponentDependencyMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentDependencyMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDependencyRequirement)
    ComponentDependencyRequirement.add_member(:version_requirement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "versionRequirement"))
    ComponentDependencyRequirement.add_member(:dependency_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDependencyType, location_name: "dependencyType"))
    ComponentDependencyRequirement.type = Types::ComponentDependencyRequirement
    ComponentDependencyType.add_member(:hard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HARD", traits: {"smithy.api#enumValue" => "HARD"}))
    ComponentDependencyType.add_member(:soft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOFT", traits: {"smithy.api#enumValue" => "SOFT"}))
    ComponentDeploymentSpecification.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion", traits: {"smithy.api#required" => {}}))
    ComponentDeploymentSpecification.add_member(:configuration_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConfigurationUpdate, location_name: "configurationUpdate"))
    ComponentDeploymentSpecification.add_member(:run_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentRunWith, location_name: "runWith"))
    ComponentDeploymentSpecification.type = Types::ComponentDeploymentSpecification
    ComponentDeploymentSpecifications.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentDeploymentSpecifications.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentSpecification)
    ComponentLatestVersion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    ComponentLatestVersion.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ComponentLatestVersion.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    ComponentLatestVersion.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ComponentLatestVersion.add_member(:publisher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "publisher"))
    ComponentLatestVersion.add_member(:platforms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: "platforms"))
    ComponentLatestVersion.type = Types::ComponentLatestVersion
    ComponentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Component)
    ComponentPlatform.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ComponentPlatform.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformAttributesMap, location_name: "attributes"))
    ComponentPlatform.type = Types::ComponentPlatform
    ComponentPlatformList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatform)
    ComponentRunWith.add_member(:posix_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "posixUser"))
    ComponentRunWith.add_member(:system_resource_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemResourceLimits, location_name: "systemResourceLimits"))
    ComponentRunWith.add_member(:windows_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "windowsUser"))
    ComponentRunWith.type = Types::ComponentRunWith
    ComponentVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionListItem)
    ComponentVersionListItem.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    ComponentVersionListItem.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ComponentVersionListItem.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ComponentVersionListItem.type = Types::ComponentVersionListItem
    ComponentVersionRequirementMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentVersionRequirementMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentVisibilityScope.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ComponentVisibilityScope.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectivityInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "id", traits: {"smithy.api#jsonName" => "Id"}))
    ConnectivityInfo.add_member(:host_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "hostAddress", traits: {"smithy.api#jsonName" => "HostAddress"}))
    ConnectivityInfo.add_member(:port_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumberInt, location_name: "portNumber", traits: {"smithy.api#default" => 0, "smithy.api#jsonName" => "PortNumber"}))
    ConnectivityInfo.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "metadata", traits: {"smithy.api#jsonName" => "Metadata"}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    CoreDevice.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName"))
    CoreDevice.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: "status"))
    CoreDevice.add_member(:last_status_update_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusUpdateTimestamp"))
    CoreDevice.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevicePlatformString, location_name: "platform"))
    CoreDevice.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceArchitectureString, location_name: "architecture"))
    CoreDevice.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceRuntimeString, location_name: "runtime"))
    CoreDevice.type = Types::CoreDevice
    CoreDeviceStatus.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CoreDeviceStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CoreDevicesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevice)
    CreateComponentVersionRequest.add_member(:inline_recipe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeBlob, location_name: "inlineRecipe"))
    CreateComponentVersionRequest.add_member(:lambda_function, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionRecipeSource, location_name: "lambdaFunction"))
    CreateComponentVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateComponentVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateComponentVersionRequest.type = Types::CreateComponentVersionRequest
    CreateComponentVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    CreateComponentVersionResponse.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudComponentStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.type = Types::CreateComponentVersionResponse
    CreateDeploymentRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: "targetArn", traits: {"smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentNameString, location_name: "deploymentName"))
    CreateDeploymentRequest.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentSpecifications, location_name: "components"))
    CreateDeploymentRequest.add_member(:iot_job_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIoTJobConfiguration, location_name: "iotJobConfiguration"))
    CreateDeploymentRequest.add_member(:deployment_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPolicies, location_name: "deploymentPolicies"))
    CreateDeploymentRequest.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "parentTargetArn"))
    CreateDeploymentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDeploymentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId"))
    CreateDeploymentResponse.add_member(:iot_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "iotJobId"))
    CreateDeploymentResponse.add_member(:iot_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobARN, location_name: "iotJobArn"))
    CreateDeploymentResponse.type = Types::CreateDeploymentResponse
    DeleteComponentRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentRequest.type = Types::DeleteComponentRequest
    DeleteCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreDeviceRequest.type = Types::DeleteCoreDeviceRequest
    DeleteDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.type = Types::DeleteDeploymentRequest
    Deployment.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: "targetArn"))
    Deployment.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "revisionId"))
    Deployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId"))
    Deployment.add_member(:deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentName"))
    Deployment.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    Deployment.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    Deployment.add_member(:is_latest_for_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsLatestForTarget, location_name: "isLatestForTarget", traits: {"smithy.api#default" => false}))
    Deployment.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "parentTargetArn"))
    Deployment.type = Types::Deployment
    DeploymentComponentUpdatePolicy.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    DeploymentComponentUpdatePolicy.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentComponentUpdatePolicyAction, location_name: "action"))
    DeploymentComponentUpdatePolicy.type = Types::DeploymentComponentUpdatePolicy
    DeploymentComponentUpdatePolicyAction.add_member(:notify_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOTIFY_COMPONENTS", traits: {"smithy.api#enumValue" => "NOTIFY_COMPONENTS"}))
    DeploymentComponentUpdatePolicyAction.add_member(:skip_notify_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIP_NOTIFY_COMPONENTS", traits: {"smithy.api#enumValue" => "SKIP_NOTIFY_COMPONENTS"}))
    DeploymentConfigurationValidationPolicy.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    DeploymentConfigurationValidationPolicy.type = Types::DeploymentConfigurationValidationPolicy
    DeploymentFailureHandlingPolicy.add_member(:rollback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    DeploymentFailureHandlingPolicy.add_member(:do_nothing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO_NOTHING", traits: {"smithy.api#enumValue" => "DO_NOTHING"}))
    DeploymentHistoryFilter.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    DeploymentHistoryFilter.add_member(:latest_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LATEST_ONLY", traits: {"smithy.api#enumValue" => "LATEST_ONLY"}))
    DeploymentIoTJobConfiguration.add_member(:job_executions_rollout_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobExecutionsRolloutConfig, location_name: "jobExecutionsRolloutConfig"))
    DeploymentIoTJobConfiguration.add_member(:abort_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortConfig, location_name: "abortConfig"))
    DeploymentIoTJobConfiguration.add_member(:timeout_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobTimeoutConfig, location_name: "timeoutConfig"))
    DeploymentIoTJobConfiguration.type = Types::DeploymentIoTJobConfiguration
    DeploymentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment)
    DeploymentPolicies.add_member(:failure_handling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFailureHandlingPolicy, location_name: "failureHandlingPolicy"))
    DeploymentPolicies.add_member(:component_update_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentComponentUpdatePolicy, location_name: "componentUpdatePolicy"))
    DeploymentPolicies.add_member(:configuration_validation_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigurationValidationPolicy, location_name: "configurationValidationPolicy"))
    DeploymentPolicies.type = Types::DeploymentPolicies
    DeploymentStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeploymentStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    DeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DescribeComponentRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeComponentRequest.type = Types::DescribeComponentRequest
    DescribeComponentResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    DescribeComponentResponse.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    DescribeComponentResponse.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    DescribeComponentResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    DescribeComponentResponse.add_member(:publisher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublisherString, location_name: "publisher"))
    DescribeComponentResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: "description"))
    DescribeComponentResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudComponentStatus, location_name: "status"))
    DescribeComponentResponse.add_member(:platforms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: "platforms"))
    DescribeComponentResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeComponentResponse.type = Types::DescribeComponentResponse
    DisassociateClientDeviceFromCoreDeviceEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName", traits: {"smithy.api#required" => {}}))
    DisassociateClientDeviceFromCoreDeviceEntry.type = Types::DisassociateClientDeviceFromCoreDeviceEntry
    DisassociateClientDeviceFromCoreDeviceEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceEntry)
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "code"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.type = Types::DisassociateClientDeviceFromCoreDeviceErrorEntry
    DisassociateClientDeviceFromCoreDeviceErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceErrorEntry)
    DisassociateServiceRoleFromAccountRequest.type = Types::DisassociateServiceRoleFromAccountRequest
    DisassociateServiceRoleFromAccountResponse.add_member(:disassociated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "disassociatedAt", traits: {"smithy.api#jsonName" => "DisassociatedAt"}))
    DisassociateServiceRoleFromAccountResponse.type = Types::DisassociateServiceRoleFromAccountResponse
    EffectiveDeployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentID, location_name: "deploymentId", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentName, location_name: "deploymentName", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:iot_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobId, location_name: "iotJobId"))
    EffectiveDeployment.add_member(:iot_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobARN, location_name: "iotJobArn"))
    EffectiveDeployment.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EffectiveDeployment.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: "targetArn", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:core_device_execution_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentExecutionStatus, location_name: "coreDeviceExecutionStatus", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    EffectiveDeployment.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedTimestamp", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentStatusDetails, location_name: "statusDetails"))
    EffectiveDeployment.type = Types::EffectiveDeployment
    EffectiveDeploymentErrorStack.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorCode)
    EffectiveDeploymentErrorTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorType)
    EffectiveDeploymentExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    EffectiveDeploymentExecutionStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    EffectiveDeploymentExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EffectiveDeploymentExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EffectiveDeploymentExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    EffectiveDeploymentExecutionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    EffectiveDeploymentExecutionStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    EffectiveDeploymentExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    EffectiveDeploymentStatusDetails.add_member(:error_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorStack, location_name: "errorStack"))
    EffectiveDeploymentStatusDetails.add_member(:error_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorTypeList, location_name: "errorTypes"))
    EffectiveDeploymentStatusDetails.type = Types::EffectiveDeploymentStatusDetails
    EffectiveDeploymentsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeployment)
    GetComponentRequest.add_member(:recipe_output_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeOutputFormat, location_name: "recipeOutputFormat", traits: {"smithy.api#httpQuery" => "recipeOutputFormat"}))
    GetComponentRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentRequest.type = Types::GetComponentRequest
    GetComponentResponse.add_member(:recipe_output_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeOutputFormat, location_name: "recipeOutputFormat", traits: {"smithy.api#required" => {}}))
    GetComponentResponse.add_member(:recipe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeBlob, location_name: "recipe", traits: {"smithy.api#required" => {}}))
    GetComponentResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetComponentResponse.type = Types::GetComponentResponse
    GetComponentVersionArtifactRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentVersionArtifactRequest.add_member(:artifact_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "artifactName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentVersionArtifactRequest.add_member(:s3_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3EndpointType, location_name: "s3EndpointType", traits: {"smithy.api#httpQuery" => "s3EndpointType"}))
    GetComponentVersionArtifactRequest.add_member(:iot_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotEndpointType, location_name: "iotEndpointType", traits: {"smithy.api#httpHeader" => "x-amz-iot-endpoint-type"}))
    GetComponentVersionArtifactRequest.type = Types::GetComponentVersionArtifactRequest
    GetComponentVersionArtifactResponse.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "preSignedUrl", traits: {"smithy.api#required" => {}}))
    GetComponentVersionArtifactResponse.type = Types::GetComponentVersionArtifactResponse
    GetConnectivityInfoRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectivityInfoRequest.type = Types::GetConnectivityInfoRequest
    GetConnectivityInfoResponse.add_member(:connectivity_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfoList, location_name: "connectivityInfo", traits: {"smithy.api#jsonName" => "ConnectivityInfo"}))
    GetConnectivityInfoResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#jsonName" => "Message"}))
    GetConnectivityInfoResponse.type = Types::GetConnectivityInfoResponse
    GetCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDeviceRequest.type = Types::GetCoreDeviceRequest
    GetCoreDeviceResponse.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName"))
    GetCoreDeviceResponse.add_member(:core_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GGCVersion, location_name: "coreVersion"))
    GetCoreDeviceResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevicePlatformString, location_name: "platform"))
    GetCoreDeviceResponse.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceArchitectureString, location_name: "architecture"))
    GetCoreDeviceResponse.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceRuntimeString, location_name: "runtime"))
    GetCoreDeviceResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: "status"))
    GetCoreDeviceResponse.add_member(:last_status_update_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusUpdateTimestamp"))
    GetCoreDeviceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCoreDeviceResponse.type = Types::GetCoreDeviceResponse
    GetDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentResponse.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: "targetArn"))
    GetDeploymentResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "revisionId"))
    GetDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId"))
    GetDeploymentResponse.add_member(:deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableString, location_name: "deploymentName"))
    GetDeploymentResponse.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    GetDeploymentResponse.add_member(:iot_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableString, location_name: "iotJobId"))
    GetDeploymentResponse.add_member(:iot_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobARN, location_name: "iotJobArn"))
    GetDeploymentResponse.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDeploymentSpecifications, location_name: "components"))
    GetDeploymentResponse.add_member(:deployment_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPolicies, location_name: "deploymentPolicies"))
    GetDeploymentResponse.add_member(:iot_job_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIoTJobConfiguration, location_name: "iotJobConfiguration"))
    GetDeploymentResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    GetDeploymentResponse.add_member(:is_latest_for_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsLatestForTarget, location_name: "isLatestForTarget", traits: {"smithy.api#default" => false}))
    GetDeploymentResponse.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "parentTargetArn"))
    GetDeploymentResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetDeploymentResponse.type = Types::GetDeploymentResponse
    GetServiceRoleForAccountRequest.type = Types::GetServiceRoleForAccountRequest
    GetServiceRoleForAccountResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "associatedAt", traits: {"smithy.api#jsonName" => "AssociatedAt"}))
    GetServiceRoleForAccountResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "roleArn", traits: {"smithy.api#jsonName" => "RoleArn"}))
    GetServiceRoleForAccountResponse.type = Types::GetServiceRoleForAccountResponse
    InstalledComponent.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    InstalledComponent.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    InstalledComponent.add_member(:lifecycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentLifecycleState, location_name: "lifecycleState"))
    InstalledComponent.add_member(:lifecycle_state_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleStateDetails, location_name: "lifecycleStateDetails"))
    InstalledComponent.add_member(:is_root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsRoot, location_name: "isRoot", traits: {"smithy.api#default" => false}))
    InstalledComponent.add_member(:last_status_change_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusChangeTimestamp"))
    InstalledComponent.add_member(:last_reported_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastReportedTimestamp"))
    InstalledComponent.add_member(:last_installation_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "lastInstallationSource"))
    InstalledComponent.add_member(:lifecycle_status_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentLifecycleStatusCodeList, location_name: "lifecycleStatusCodes"))
    InstalledComponent.type = Types::InstalledComponent
    InstalledComponentLifecycleState.add_member(:new, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    InstalledComponentLifecycleState.add_member(:installed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTALLED", traits: {"smithy.api#enumValue" => "INSTALLED"}))
    InstalledComponentLifecycleState.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    InstalledComponentLifecycleState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstalledComponentLifecycleState.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    InstalledComponentLifecycleState.add_member(:errored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERRORED", traits: {"smithy.api#enumValue" => "ERRORED"}))
    InstalledComponentLifecycleState.add_member(:broken, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BROKEN", traits: {"smithy.api#enumValue" => "BROKEN"}))
    InstalledComponentLifecycleState.add_member(:finished, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FINISHED", traits: {"smithy.api#enumValue" => "FINISHED"}))
    InstalledComponentLifecycleStatusCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentLifecycleStatusCode)
    InstalledComponentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponent)
    InstalledComponentTopologyFilter.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    InstalledComponentTopologyFilter.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROOT", traits: {"smithy.api#enumValue" => "ROOT"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IoTJobAbortAction.add_member(:cancel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCEL", traits: {"smithy.api#enumValue" => "CANCEL"}))
    IoTJobAbortConfig.add_member(:criteria_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortCriteriaList, location_name: "criteriaList", traits: {"smithy.api#required" => {}}))
    IoTJobAbortConfig.type = Types::IoTJobAbortConfig
    IoTJobAbortCriteria.add_member(:failure_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobExecutionFailureType, location_name: "failureType", traits: {"smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:threshold_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortThresholdPercentage, location_name: "thresholdPercentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:min_number_of_executed_things, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobMinimumNumberOfExecutedThings, location_name: "minNumberOfExecutedThings", traits: {"smithy.api#required" => {}}))
    IoTJobAbortCriteria.type = Types::IoTJobAbortCriteria
    IoTJobAbortCriteriaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobAbortCriteria)
    IoTJobExecutionFailureType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IoTJobExecutionFailureType.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    IoTJobExecutionFailureType.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    IoTJobExecutionFailureType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    IoTJobExecutionsRolloutConfig.add_member(:exponential_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobExponentialRolloutRate, location_name: "exponentialRate"))
    IoTJobExecutionsRolloutConfig.add_member(:maximum_per_minute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobMaxExecutionsPerMin, location_name: "maximumPerMinute"))
    IoTJobExecutionsRolloutConfig.type = Types::IoTJobExecutionsRolloutConfig
    IoTJobExponentialRolloutRate.add_member(:base_rate_per_minute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobRolloutBaseRatePerMinute, location_name: "baseRatePerMinute", traits: {"smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.add_member(:increment_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobRolloutIncrementFactor, location_name: "incrementFactor", traits: {"smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.add_member(:rate_increase_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobRateIncreaseCriteria, location_name: "rateIncreaseCriteria", traits: {"smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.type = Types::IoTJobExponentialRolloutRate
    IoTJobRateIncreaseCriteria.add_member(:number_of_notified_things, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobNumberOfThings, location_name: "numberOfNotifiedThings"))
    IoTJobRateIncreaseCriteria.add_member(:number_of_succeeded_things, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobNumberOfThings, location_name: "numberOfSucceededThings"))
    IoTJobRateIncreaseCriteria.type = Types::IoTJobRateIncreaseCriteria
    IoTJobTimeoutConfig.add_member(:in_progress_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTJobInProgressTimeoutInMinutes, location_name: "inProgressTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    IoTJobTimeoutConfig.type = Types::IoTJobTimeoutConfig
    IotEndpointType.add_member(:fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "fips", traits: {"smithy.api#enumValue" => "fips"}))
    IotEndpointType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "standard", traits: {"smithy.api#enumValue" => "standard"}))
    LambdaContainerParams.add_member(:memory_size_in_kb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "memorySizeInKB", traits: {"smithy.api#default" => nil}))
    LambdaContainerParams.add_member(:mount_ro_sysfs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "mountROSysfs", traits: {"smithy.api#default" => nil}))
    LambdaContainerParams.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaVolumeList, location_name: "volumes"))
    LambdaContainerParams.add_member(:devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDeviceList, location_name: "devices"))
    LambdaContainerParams.type = Types::LambdaContainerParams
    LambdaDeviceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDeviceMount)
    LambdaDeviceMount.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemPath, location_name: "path", traits: {"smithy.api#required" => {}}))
    LambdaDeviceMount.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFilesystemPermission, location_name: "permission"))
    LambdaDeviceMount.add_member(:add_group_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "addGroupOwner", traits: {"smithy.api#default" => nil}))
    LambdaDeviceMount.type = Types::LambdaDeviceMount
    LambdaEnvironmentVariables.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    LambdaEnvironmentVariables.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LambdaEventSource.add_member(:topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TopicString, location_name: "topic", traits: {"smithy.api#required" => {}}))
    LambdaEventSource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventSourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    LambdaEventSource.type = Types::LambdaEventSource
    LambdaEventSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventSource)
    LambdaEventSourceType.add_member(:pub_sub, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUB_SUB", traits: {"smithy.api#enumValue" => "PUB_SUB"}))
    LambdaEventSourceType.add_member(:iot_core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IOT_CORE", traits: {"smithy.api#enumValue" => "IOT_CORE"}))
    LambdaExecArgsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaExecArg)
    LambdaExecutionParameters.add_member(:event_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventSourceList, location_name: "eventSources"))
    LambdaExecutionParameters.add_member(:max_queue_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "maxQueueSize", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:max_instances_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "maxInstancesCount", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:max_idle_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "maxIdleTimeInSeconds", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:status_timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "statusTimeoutInSeconds", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:pinned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "pinned", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:input_payload_encoding_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaInputPayloadEncodingType, location_name: "inputPayloadEncodingType"))
    LambdaExecutionParameters.add_member(:exec_args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaExecArgsList, location_name: "execArgs"))
    LambdaExecutionParameters.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEnvironmentVariables, location_name: "environmentVariables"))
    LambdaExecutionParameters.add_member(:linux_process_params, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaLinuxProcessParams, location_name: "linuxProcessParams"))
    LambdaExecutionParameters.type = Types::LambdaExecutionParameters
    LambdaFilesystemPermission.add_member(:ro, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RO", traits: {"smithy.api#enumValue" => "ro"}))
    LambdaFilesystemPermission.add_member(:rw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RW", traits: {"smithy.api#enumValue" => "rw"}))
    LambdaFunctionRecipeSource.add_member(:lambda_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "lambdaArn", traits: {"smithy.api#required" => {}}))
    LambdaFunctionRecipeSource.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    LambdaFunctionRecipeSource.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    LambdaFunctionRecipeSource.add_member(:component_platforms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: "componentPlatforms"))
    LambdaFunctionRecipeSource.add_member(:component_dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDependencyMap, location_name: "componentDependencies"))
    LambdaFunctionRecipeSource.add_member(:component_lambda_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaExecutionParameters, location_name: "componentLambdaParameters"))
    LambdaFunctionRecipeSource.type = Types::LambdaFunctionRecipeSource
    LambdaInputPayloadEncodingType.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    LambdaInputPayloadEncodingType.add_member(:binary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BINARY", traits: {"smithy.api#enumValue" => "binary"}))
    LambdaIsolationMode.add_member(:greengrass_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREENGRASS_CONTAINER", traits: {"smithy.api#enumValue" => "GreengrassContainer"}))
    LambdaIsolationMode.add_member(:no_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_CONTAINER", traits: {"smithy.api#enumValue" => "NoContainer"}))
    LambdaLinuxProcessParams.add_member(:isolation_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaIsolationMode, location_name: "isolationMode"))
    LambdaLinuxProcessParams.add_member(:container_params, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaContainerParams, location_name: "containerParams"))
    LambdaLinuxProcessParams.type = Types::LambdaLinuxProcessParams
    LambdaVolumeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaVolumeMount)
    LambdaVolumeMount.add_member(:source_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemPath, location_name: "sourcePath", traits: {"smithy.api#required" => {}}))
    LambdaVolumeMount.add_member(:destination_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemPath, location_name: "destinationPath", traits: {"smithy.api#required" => {}}))
    LambdaVolumeMount.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFilesystemPermission, location_name: "permission"))
    LambdaVolumeMount.add_member(:add_group_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "addGroupOwner", traits: {"smithy.api#default" => nil}))
    LambdaVolumeMount.type = Types::LambdaVolumeMount
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IoTThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.type = Types::ListClientDevicesAssociatedWithCoreDeviceRequest
    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:associated_client_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClientDeviceList, location_name: "associatedClientDevices"))
    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListClientDevicesAssociatedWithCoreDeviceResponse.type = Types::ListClientDevicesAssociatedWithCoreDeviceResponse
    ListComponentVersionsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComponentVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComponentVersionsRequest.type = Types::ListComponentVersionsRequest
    ListComponentVersionsResponse.add_member(:component_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionList, location_name: "componentVersions"))
    ListComponentVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListComponentVersionsResponse.type = Types::ListComponentVersionsResponse
    ListComponentsRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVisibilityScope, location_name: "scope", traits: {"smithy.api#httpQuery" => "scope"}))
    ListComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentList, location_name: "components"))
    ListComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListCoreDevicesRequest.add_member(:thing_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "thingGroupArn", traits: {"smithy.api#httpQuery" => "thingGroupArn"}))
    ListCoreDevicesRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListCoreDevicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCoreDevicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCoreDevicesRequest.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceRuntimeString, location_name: "runtime", traits: {"smithy.api#httpQuery" => "runtime"}))
    ListCoreDevicesRequest.type = Types::ListCoreDevicesRequest
    ListCoreDevicesResponse.add_member(:core_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDevicesList, location_name: "coreDevices"))
    ListCoreDevicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListCoreDevicesResponse.type = Types::ListCoreDevicesResponse
    ListDeploymentsRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: "targetArn", traits: {"smithy.api#httpQuery" => "targetArn"}))
    ListDeploymentsRequest.add_member(:history_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentHistoryFilter, location_name: "historyFilter", traits: {"smithy.api#httpQuery" => "historyFilter"}))
    ListDeploymentsRequest.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "parentTargetArn", traits: {"smithy.api#httpQuery" => "parentTargetArn"}))
    ListDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListDeploymentsResponse.add_member(:deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentList, location_name: "deployments"))
    ListDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListDeploymentsResponse.type = Types::ListDeploymentsResponse
    ListEffectiveDeploymentsRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEffectiveDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEffectiveDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEffectiveDeploymentsRequest.type = Types::ListEffectiveDeploymentsRequest
    ListEffectiveDeploymentsResponse.add_member(:effective_deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDeploymentsList, location_name: "effectiveDeployments"))
    ListEffectiveDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListEffectiveDeploymentsResponse.type = Types::ListEffectiveDeploymentsResponse
    ListInstalledComponentsRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInstalledComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListInstalledComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInstalledComponentsRequest.add_member(:topology_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentTopologyFilter, location_name: "topologyFilter", traits: {"smithy.api#httpQuery" => "topologyFilter"}))
    ListInstalledComponentsRequest.type = Types::ListInstalledComponentsRequest
    ListInstalledComponentsResponse.add_member(:installed_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstalledComponentList, location_name: "installedComponents"))
    ListInstalledComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListInstalledComponentsResponse.type = Types::ListInstalledComponentsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericV2ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    PlatformAttributesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    PlatformAttributesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    RecipeOutputFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    RecipeOutputFormat.add_member(:yaml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    RequestAlreadyInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    RequestAlreadyInProgressException.type = Types::RequestAlreadyInProgressException
    ResolveComponentCandidatesRequest.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPlatform, location_name: "platform"))
    ResolveComponentCandidatesRequest.add_member(:component_candidates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentCandidateList, location_name: "componentCandidates"))
    ResolveComponentCandidatesRequest.type = Types::ResolveComponentCandidatesRequest
    ResolveComponentCandidatesResponse.add_member(:resolved_component_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedComponentVersionsList, location_name: "resolvedComponentVersions"))
    ResolveComponentCandidatesResponse.type = Types::ResolveComponentCandidatesResponse
    ResolvedComponentVersion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    ResolvedComponentVersion.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    ResolvedComponentVersion.add_member(:component_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ResolvedComponentVersion.add_member(:recipe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeBlob, location_name: "recipe"))
    ResolvedComponentVersion.add_member(:vendor_guidance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VendorGuidance, location_name: "vendorGuidance"))
    ResolvedComponentVersion.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    ResolvedComponentVersion.type = Types::ResolvedComponentVersion
    ResolvedComponentVersionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedComponentVersion)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3EndpointType.add_member(:regional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    S3EndpointType.add_member(:global, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLOBAL", traits: {"smithy.api#enumValue" => "GLOBAL"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    SystemResourceLimits.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Memory, location_name: "memory", traits: {"smithy.api#default" => 0}))
    SystemResourceLimits.add_member(:cpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CPU, location_name: "cpus", traits: {"smithy.api#default" => 0}))
    SystemResourceLimits.type = Types::SystemResourceLimits
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericV2ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericV2ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectivityInfoRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "ThingName", "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.add_member(:connectivity_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfoList, location_name: "connectivityInfo", traits: {"smithy.api#jsonName" => "ConnectivityInfo", "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.type = Types::UpdateConnectivityInfoRequest
    UpdateConnectivityInfoResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "version", traits: {"smithy.api#jsonName" => "Version"}))
    UpdateConnectivityInfoResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#jsonName" => "Message"}))
    UpdateConnectivityInfoResponse.type = Types::UpdateConnectivityInfoResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VendorGuidance.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VendorGuidance.add_member(:discontinued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCONTINUED", traits: {"smithy.api#enumValue" => "DISCONTINUED"}))
    VendorGuidance.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ConnectivityInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo)

    GreengrassV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.greengrassv2#GreengrassV2"
      service.name = "GreengrassV2"
      service.version = "2020-11-30"
      service.traits = {"aws.api#service" => {"sdkId" => "GreengrassV2", "arnNamespace" => "greengrass", "cloudFormationName" => "GreengrassV2", "cloudTrailEventSource" => "greengrass.amazonaws.com", "endpointPrefix" => "greengrass"}, "aws.auth#sigv4" => {"name" => "greengrass"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Greengrass V2"}
      service.add_operation(:associate_service_role_to_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#AssociateServiceRoleToAccount"
        operation.name = "AssociateServiceRoleToAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:batch_associate_client_device_with_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#BatchAssociateClientDeviceWithCoreDevice"
        operation.name = "BatchAssociateClientDeviceWithCoreDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateClientDeviceWithCoreDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateClientDeviceWithCoreDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_client_device_from_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#BatchDisassociateClientDeviceFromCoreDevice"
        operation.name = "BatchDisassociateClientDeviceFromCoreDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateClientDeviceFromCoreDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateClientDeviceFromCoreDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices", "code" => 200}}
      end)
      service.add_operation(:cancel_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CancelDeployment"
        operation.name = "CancelDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/deployments/{deploymentId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_component_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CreateComponentVersion"
        operation.name = "CreateComponentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestAlreadyInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/createComponentVersion", "code" => 201}}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestAlreadyInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/deployments", "code" => 201}}
      end)
      service.add_operation(:delete_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/components/{arn}", "code" => 204}}
      end)
      service.add_operation(:delete_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteCoreDevice"
        operation.name = "DeleteCoreDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCoreDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}", "code" => 204}}
      end)
      service.add_operation(:delete_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/deployments/{deploymentId}", "code" => 204}}
      end)
      service.add_operation(:describe_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DescribeComponent"
        operation.name = "DescribeComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComponentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/metadata", "code" => 200}}
      end)
      service.add_operation(:disassociate_service_role_from_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DisassociateServiceRoleFromAccount"
        operation.name = "DisassociateServiceRoleFromAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:get_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetComponent"
        operation.name = "GetComponent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}", "code" => 200}}
      end)
      service.add_operation(:get_component_version_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetComponentVersionArtifact"
        operation.name = "GetComponentVersionArtifact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentVersionArtifactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentVersionArtifactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/artifacts/{artifactName+}", "code" => 200}}
      end)
      service.add_operation(:get_connectivity_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetConnectivityInfo"
        operation.name = "GetConnectivityInfo"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectivityInfoRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectivityInfoResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/things/{thingName}/connectivityInfo", "code" => 200}}
      end)
      service.add_operation(:get_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetCoreDevice"
        operation.name = "GetCoreDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCoreDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}", "code" => 200}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/deployments/{deploymentId}", "code" => 200}}
      end)
      service.add_operation(:get_service_role_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetServiceRoleForAccount"
        operation.name = "GetServiceRoleForAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceRoleForAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceRoleForAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:list_client_devices_associated_with_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListClientDevicesAssociatedWithCoreDevice"
        operation.name = "ListClientDevicesAssociatedWithCoreDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClientDevicesAssociatedWithCoreDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClientDevicesAssociatedWithCoreDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices", "code" => 200}}
        operation[:paginator] = Paginators::ListClientDevicesAssociatedWithCoreDevice.new
      end)
      service.add_operation(:list_component_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListComponentVersions"
        operation.name = "ListComponentVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListComponentVersions.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListComponents"
        operation.name = "ListComponents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components", "code" => 200}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_core_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListCoreDevices"
        operation.name = "ListCoreDevices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDevicesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCoreDevicesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices", "code" => 200}}
        operation[:paginator] = Paginators::ListCoreDevices.new
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/deployments", "code" => 200}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_effective_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListEffectiveDeployments"
        operation.name = "ListEffectiveDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectiveDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectiveDeploymentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments", "code" => 200}}
        operation[:paginator] = Paginators::ListEffectiveDeployments.new
      end)
      service.add_operation(:list_installed_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListInstalledComponents"
        operation.name = "ListInstalledComponents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstalledComponentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstalledComponentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents", "code" => 200}}
        operation[:paginator] = Paginators::ListInstalledComponents.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:resolve_component_candidates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ResolveComponentCandidates"
        operation.name = "ResolveComponentCandidates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveComponentCandidatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveComponentCandidatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/resolveComponentCandidates", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_connectivity_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#UpdateConnectivityInfo"
        operation.name = "UpdateConnectivityInfo"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityInfoRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityInfoResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/things/{thingName}/connectivityInfo", "code" => 200}}
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
