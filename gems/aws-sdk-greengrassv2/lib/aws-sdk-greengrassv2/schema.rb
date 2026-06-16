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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateClientDeviceWithCoreDeviceEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "thingName", traits: {"smithy.api#required" => {}}))
    AssociateClientDeviceWithCoreDeviceEntry.type = Types::AssociateClientDeviceWithCoreDeviceEntry
    AssociateClientDeviceWithCoreDeviceEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateClientDeviceWithCoreDeviceEntry)
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "thingName"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "code"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "message"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.type = Types::AssociateClientDeviceWithCoreDeviceErrorEntry
    AssociateClientDeviceWithCoreDeviceErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateClientDeviceWithCoreDeviceErrorEntry)
    AssociateServiceRoleToAccountRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "roleArn", traits: {"smithy.api#jsonName" => "RoleArn", "smithy.api#required" => {}}))
    AssociateServiceRoleToAccountRequest.type = Types::AssociateServiceRoleToAccountRequest
    AssociateServiceRoleToAccountResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "associatedAt", traits: {"smithy.api#jsonName" => "AssociatedAt"}))
    AssociateServiceRoleToAccountResponse.type = Types::AssociateServiceRoleToAccountResponse
    AssociatedClientDevice.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "thingName"))
    AssociatedClientDevice.add_member(:association_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "associationTimestamp"))
    AssociatedClientDevice.type = Types::AssociatedClientDevice
    AssociatedClientDeviceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedClientDevice)
    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateClientDeviceWithCoreDeviceEntryList, location_name: "entries"))
    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateClientDeviceWithCoreDeviceRequest.type = Types::BatchAssociateClientDeviceWithCoreDeviceRequest
    BatchAssociateClientDeviceWithCoreDeviceResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateClientDeviceWithCoreDeviceErrorList, location_name: "errorEntries"))
    BatchAssociateClientDeviceWithCoreDeviceResponse.type = Types::BatchAssociateClientDeviceWithCoreDeviceResponse
    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateClientDeviceFromCoreDeviceEntryList, location_name: "entries"))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.type = Types::BatchDisassociateClientDeviceFromCoreDeviceRequest
    BatchDisassociateClientDeviceFromCoreDeviceResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateClientDeviceFromCoreDeviceErrorList, location_name: "errorEntries"))
    BatchDisassociateClientDeviceFromCoreDeviceResponse.type = Types::BatchDisassociateClientDeviceFromCoreDeviceResponse
    CancelDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelDeploymentRequest.type = Types::CancelDeploymentRequest
    CancelDeploymentResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "message"))
    CancelDeploymentResponse.type = Types::CancelDeploymentResponse
    CloudComponentState.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUESTED", traits: {"smithy.api#enumValue" => "REQUESTED"}))
    CloudComponentState.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIATED", traits: {"smithy.api#enumValue" => "INITIATED"}))
    CloudComponentState.add_member(:deployable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYABLE", traits: {"smithy.api#enumValue" => "DEPLOYABLE"}))
    CloudComponentState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CloudComponentState.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    CloudComponentStatus.add_member(:component_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudComponentState, location_name: "componentState"))
    CloudComponentStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "message"))
    CloudComponentStatus.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "errors"))
    CloudComponentStatus.add_member(:vendor_guidance, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorGuidance, location_name: "vendorGuidance"))
    CloudComponentStatus.add_member(:vendor_guidance_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "vendorGuidanceMessage"))
    CloudComponentStatus.type = Types::CloudComponentStatus
    Component.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentARN, location_name: "arn"))
    Component.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName"))
    Component.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentLatestVersion, location_name: "latestVersion"))
    Component.type = Types::Component
    ComponentCandidate.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName"))
    ComponentCandidate.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion"))
    ComponentCandidate.add_member(:version_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionRequirementMap, location_name: "versionRequirements"))
    ComponentCandidate.type = Types::ComponentCandidate
    ComponentCandidateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentCandidate)
    ComponentConfigurationPathList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationPath)
    ComponentConfigurationUpdate.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationString, location_name: "merge"))
    ComponentConfigurationUpdate.add_member(:reset, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationPathList, location_name: "reset"))
    ComponentConfigurationUpdate.type = Types::ComponentConfigurationUpdate
    ComponentDependencyMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    ComponentDependencyMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDependencyRequirement)
    ComponentDependencyRequirement.add_member(:version_requirement, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "versionRequirement"))
    ComponentDependencyRequirement.add_member(:dependency_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDependencyType, location_name: "dependencyType"))
    ComponentDependencyRequirement.type = Types::ComponentDependencyRequirement
    ComponentDependencyType.add_member(:hard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HARD", traits: {"smithy.api#enumValue" => "HARD"}))
    ComponentDependencyType.add_member(:soft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOFT", traits: {"smithy.api#enumValue" => "SOFT"}))
    ComponentDeploymentSpecification.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion", traits: {"smithy.api#required" => {}}))
    ComponentDeploymentSpecification.add_member(:configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationUpdate, location_name: "configurationUpdate"))
    ComponentDeploymentSpecification.add_member(:run_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentRunWith, location_name: "runWith"))
    ComponentDeploymentSpecification.type = Types::ComponentDeploymentSpecification
    ComponentDeploymentSpecifications.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    ComponentDeploymentSpecifications.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDeploymentSpecification)
    ComponentLatestVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn"))
    ComponentLatestVersion.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion"))
    ComponentLatestVersion.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTimestamp"))
    ComponentLatestVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ComponentLatestVersion.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "publisher"))
    ComponentLatestVersion.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPlatformList, location_name: "platforms"))
    ComponentLatestVersion.type = Types::ComponentLatestVersion
    ComponentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Component)
    ComponentPlatform.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "name"))
    ComponentPlatform.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformAttributesMap, location_name: "attributes"))
    ComponentPlatform.type = Types::ComponentPlatform
    ComponentPlatformList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPlatform)
    ComponentRunWith.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "posixUser"))
    ComponentRunWith.add_member(:system_resource_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemResourceLimits, location_name: "systemResourceLimits"))
    ComponentRunWith.add_member(:windows_user, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "windowsUser"))
    ComponentRunWith.type = Types::ComponentRunWith
    ComponentVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionListItem)
    ComponentVersionListItem.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName"))
    ComponentVersionListItem.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion"))
    ComponentVersionListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "arn"))
    ComponentVersionListItem.type = Types::ComponentVersionListItem
    ComponentVersionRequirementMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    ComponentVersionRequirementMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    ComponentVisibilityScope.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ComponentVisibilityScope.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectivityInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id", traits: {"smithy.api#jsonName" => "Id"}))
    ConnectivityInfo.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "hostAddress", traits: {"smithy.api#jsonName" => "HostAddress"}))
    ConnectivityInfo.add_member(:port_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumberInt, location_name: "portNumber", traits: {"smithy.api#default" => 0, "smithy.api#jsonName" => "PortNumber"}))
    ConnectivityInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "metadata", traits: {"smithy.api#jsonName" => "Metadata"}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    CoreDevice.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "coreDeviceThingName"))
    CoreDevice.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceStatus, location_name: "status"))
    CoreDevice.add_member(:last_status_update_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastStatusUpdateTimestamp"))
    CoreDevice.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDevicePlatformString, location_name: "platform"))
    CoreDevice.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceArchitectureString, location_name: "architecture"))
    CoreDevice.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceRuntimeString, location_name: "runtime"))
    CoreDevice.type = Types::CoreDevice
    CoreDeviceStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CoreDeviceStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CoreDevicesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDevice)
    CreateComponentVersionRequest.add_member(:inline_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeBlob, location_name: "inlineRecipe"))
    CreateComponentVersionRequest.add_member(:lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecipeSource, location_name: "lambdaFunction"))
    CreateComponentVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateComponentVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateComponentVersionRequest.type = Types::CreateComponentVersionRequest
    CreateComponentVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn"))
    CreateComponentVersionResponse.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTimestamp", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudComponentStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateComponentVersionResponse.type = Types::CreateComponentVersionResponse
    CreateDeploymentRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, location_name: "targetArn", traits: {"smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentNameString, location_name: "deploymentName"))
    CreateDeploymentRequest.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDeploymentSpecifications, location_name: "components"))
    CreateDeploymentRequest.add_member(:iot_job_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIoTJobConfiguration, location_name: "iotJobConfiguration"))
    CreateDeploymentRequest.add_member(:deployment_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentPolicies, location_name: "deploymentPolicies"))
    CreateDeploymentRequest.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingGroupARN, location_name: "parentTargetArn"))
    CreateDeploymentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateDeploymentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deploymentId"))
    CreateDeploymentResponse.add_member(:iot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "iotJobId"))
    CreateDeploymentResponse.add_member(:iot_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobARN, location_name: "iotJobArn"))
    CreateDeploymentResponse.type = Types::CreateDeploymentResponse
    DeleteComponentRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentRequest.type = Types::DeleteComponentRequest
    DeleteCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCoreDeviceRequest.type = Types::DeleteCoreDeviceRequest
    DeleteDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.type = Types::DeleteDeploymentRequest
    Deployment.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, location_name: "targetArn"))
    Deployment.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "revisionId"))
    Deployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deploymentId"))
    Deployment.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deploymentName"))
    Deployment.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTimestamp"))
    Deployment.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "deploymentStatus"))
    Deployment.add_member(:is_latest_for_target, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLatestForTarget, location_name: "isLatestForTarget", traits: {"smithy.api#default" => false}))
    Deployment.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingGroupARN, location_name: "parentTargetArn"))
    Deployment.type = Types::Deployment
    DeploymentComponentUpdatePolicy.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    DeploymentComponentUpdatePolicy.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentComponentUpdatePolicyAction, location_name: "action"))
    DeploymentComponentUpdatePolicy.type = Types::DeploymentComponentUpdatePolicy
    DeploymentComponentUpdatePolicyAction.add_member(:notify_components, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOTIFY_COMPONENTS", traits: {"smithy.api#enumValue" => "NOTIFY_COMPONENTS"}))
    DeploymentComponentUpdatePolicyAction.add_member(:skip_notify_components, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIP_NOTIFY_COMPONENTS", traits: {"smithy.api#enumValue" => "SKIP_NOTIFY_COMPONENTS"}))
    DeploymentConfigurationValidationPolicy.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    DeploymentConfigurationValidationPolicy.type = Types::DeploymentConfigurationValidationPolicy
    DeploymentFailureHandlingPolicy.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    DeploymentFailureHandlingPolicy.add_member(:do_nothing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO_NOTHING", traits: {"smithy.api#enumValue" => "DO_NOTHING"}))
    DeploymentHistoryFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    DeploymentHistoryFilter.add_member(:latest_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LATEST_ONLY", traits: {"smithy.api#enumValue" => "LATEST_ONLY"}))
    DeploymentIoTJobConfiguration.add_member(:job_executions_rollout_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobExecutionsRolloutConfig, location_name: "jobExecutionsRolloutConfig"))
    DeploymentIoTJobConfiguration.add_member(:abort_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobAbortConfig, location_name: "abortConfig"))
    DeploymentIoTJobConfiguration.add_member(:timeout_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobTimeoutConfig, location_name: "timeoutConfig"))
    DeploymentIoTJobConfiguration.type = Types::DeploymentIoTJobConfiguration
    DeploymentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Deployment)
    DeploymentPolicies.add_member(:failure_handling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentFailureHandlingPolicy, location_name: "failureHandlingPolicy"))
    DeploymentPolicies.add_member(:component_update_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentComponentUpdatePolicy, location_name: "componentUpdatePolicy"))
    DeploymentPolicies.add_member(:configuration_validation_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigurationValidationPolicy, location_name: "configurationValidationPolicy"))
    DeploymentPolicies.type = Types::DeploymentPolicies
    DeploymentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeploymentStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    DeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DescribeComponentRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeComponentRequest.type = Types::DescribeComponentRequest
    DescribeComponentResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn"))
    DescribeComponentResponse.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName"))
    DescribeComponentResponse.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion"))
    DescribeComponentResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTimestamp"))
    DescribeComponentResponse.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: PublisherString, location_name: "publisher"))
    DescribeComponentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, location_name: "description"))
    DescribeComponentResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudComponentStatus, location_name: "status"))
    DescribeComponentResponse.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPlatformList, location_name: "platforms"))
    DescribeComponentResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    DescribeComponentResponse.type = Types::DescribeComponentResponse
    DisassociateClientDeviceFromCoreDeviceEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "thingName", traits: {"smithy.api#required" => {}}))
    DisassociateClientDeviceFromCoreDeviceEntry.type = Types::DisassociateClientDeviceFromCoreDeviceEntry
    DisassociateClientDeviceFromCoreDeviceEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateClientDeviceFromCoreDeviceEntry)
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "thingName"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "code"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "message"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.type = Types::DisassociateClientDeviceFromCoreDeviceErrorEntry
    DisassociateClientDeviceFromCoreDeviceErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateClientDeviceFromCoreDeviceErrorEntry)
    DisassociateServiceRoleFromAccountRequest.type = Types::DisassociateServiceRoleFromAccountRequest
    DisassociateServiceRoleFromAccountResponse.add_member(:disassociated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "disassociatedAt", traits: {"smithy.api#jsonName" => "DisassociatedAt"}))
    DisassociateServiceRoleFromAccountResponse.type = Types::DisassociateServiceRoleFromAccountResponse
    EffectiveDeployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentID, location_name: "deploymentId", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentName, location_name: "deploymentName", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:iot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobId, location_name: "iotJobId"))
    EffectiveDeployment.add_member(:iot_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobARN, location_name: "iotJobArn"))
    EffectiveDeployment.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    EffectiveDeployment.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, location_name: "targetArn", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:core_device_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeploymentExecutionStatus, location_name: "coreDeviceExecutionStatus", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, location_name: "reason"))
    EffectiveDeployment.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTimestamp", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "modifiedTimestamp", traits: {"smithy.api#required" => {}}))
    EffectiveDeployment.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeploymentStatusDetails, location_name: "statusDetails"))
    EffectiveDeployment.type = Types::EffectiveDeployment
    EffectiveDeploymentErrorStack.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeploymentErrorCode)
    EffectiveDeploymentErrorTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeploymentErrorType)
    EffectiveDeploymentExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    EffectiveDeploymentExecutionStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    EffectiveDeploymentExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EffectiveDeploymentExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EffectiveDeploymentExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    EffectiveDeploymentExecutionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    EffectiveDeploymentExecutionStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    EffectiveDeploymentExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    EffectiveDeploymentStatusDetails.add_member(:error_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeploymentErrorStack, location_name: "errorStack"))
    EffectiveDeploymentStatusDetails.add_member(:error_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeploymentErrorTypeList, location_name: "errorTypes"))
    EffectiveDeploymentStatusDetails.type = Types::EffectiveDeploymentStatusDetails
    EffectiveDeploymentsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeployment)
    GetComponentRequest.add_member(:recipe_output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeOutputFormat, location_name: "recipeOutputFormat", traits: {"smithy.api#httpQuery" => "recipeOutputFormat"}))
    GetComponentRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentRequest.type = Types::GetComponentRequest
    GetComponentResponse.add_member(:recipe_output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeOutputFormat, location_name: "recipeOutputFormat", traits: {"smithy.api#required" => {}}))
    GetComponentResponse.add_member(:recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeBlob, location_name: "recipe", traits: {"smithy.api#required" => {}}))
    GetComponentResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetComponentResponse.type = Types::GetComponentResponse
    GetComponentVersionArtifactRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentVersionArtifactRequest.add_member(:artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "artifactName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentVersionArtifactRequest.add_member(:s3_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3EndpointType, location_name: "s3EndpointType", traits: {"smithy.api#httpQuery" => "s3EndpointType"}))
    GetComponentVersionArtifactRequest.add_member(:iot_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IotEndpointType, location_name: "iotEndpointType", traits: {"smithy.api#httpHeader" => "x-amz-iot-endpoint-type"}))
    GetComponentVersionArtifactRequest.type = Types::GetComponentVersionArtifactRequest
    GetComponentVersionArtifactResponse.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "preSignedUrl", traits: {"smithy.api#required" => {}}))
    GetComponentVersionArtifactResponse.type = Types::GetComponentVersionArtifactResponse
    GetConnectivityInfoRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectivityInfoRequest.type = Types::GetConnectivityInfoRequest
    GetConnectivityInfoResponse.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityInfoList, location_name: "connectivityInfo", traits: {"smithy.api#jsonName" => "ConnectivityInfo"}))
    GetConnectivityInfoResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#jsonName" => "Message"}))
    GetConnectivityInfoResponse.type = Types::GetConnectivityInfoResponse
    GetCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoreDeviceRequest.type = Types::GetCoreDeviceRequest
    GetCoreDeviceResponse.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "coreDeviceThingName"))
    GetCoreDeviceResponse.add_member(:core_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GGCVersion, location_name: "coreVersion"))
    GetCoreDeviceResponse.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDevicePlatformString, location_name: "platform"))
    GetCoreDeviceResponse.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceArchitectureString, location_name: "architecture"))
    GetCoreDeviceResponse.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceRuntimeString, location_name: "runtime"))
    GetCoreDeviceResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceStatus, location_name: "status"))
    GetCoreDeviceResponse.add_member(:last_status_update_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastStatusUpdateTimestamp"))
    GetCoreDeviceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetCoreDeviceResponse.type = Types::GetCoreDeviceResponse
    GetDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentResponse.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, location_name: "targetArn"))
    GetDeploymentResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "revisionId"))
    GetDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deploymentId"))
    GetDeploymentResponse.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, location_name: "deploymentName"))
    GetDeploymentResponse.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "deploymentStatus"))
    GetDeploymentResponse.add_member(:iot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, location_name: "iotJobId"))
    GetDeploymentResponse.add_member(:iot_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobARN, location_name: "iotJobArn"))
    GetDeploymentResponse.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDeploymentSpecifications, location_name: "components"))
    GetDeploymentResponse.add_member(:deployment_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentPolicies, location_name: "deploymentPolicies"))
    GetDeploymentResponse.add_member(:iot_job_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIoTJobConfiguration, location_name: "iotJobConfiguration"))
    GetDeploymentResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTimestamp"))
    GetDeploymentResponse.add_member(:is_latest_for_target, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLatestForTarget, location_name: "isLatestForTarget", traits: {"smithy.api#default" => false}))
    GetDeploymentResponse.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingGroupARN, location_name: "parentTargetArn"))
    GetDeploymentResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetDeploymentResponse.type = Types::GetDeploymentResponse
    GetServiceRoleForAccountRequest.type = Types::GetServiceRoleForAccountRequest
    GetServiceRoleForAccountResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "associatedAt", traits: {"smithy.api#jsonName" => "AssociatedAt"}))
    GetServiceRoleForAccountResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "roleArn", traits: {"smithy.api#jsonName" => "RoleArn"}))
    GetServiceRoleForAccountResponse.type = Types::GetServiceRoleForAccountResponse
    InstalledComponent.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName"))
    InstalledComponent.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion"))
    InstalledComponent.add_member(:lifecycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstalledComponentLifecycleState, location_name: "lifecycleState"))
    InstalledComponent.add_member(:lifecycle_state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleStateDetails, location_name: "lifecycleStateDetails"))
    InstalledComponent.add_member(:is_root, ::Smithy::Schema::Shapes::MemberShape.new(target: IsRoot, location_name: "isRoot", traits: {"smithy.api#default" => false}))
    InstalledComponent.add_member(:last_status_change_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastStatusChangeTimestamp"))
    InstalledComponent.add_member(:last_reported_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastReportedTimestamp"))
    InstalledComponent.add_member(:last_installation_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "lastInstallationSource"))
    InstalledComponent.add_member(:lifecycle_status_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstalledComponentLifecycleStatusCodeList, location_name: "lifecycleStatusCodes"))
    InstalledComponent.type = Types::InstalledComponent
    InstalledComponentLifecycleState.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    InstalledComponentLifecycleState.add_member(:installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTALLED", traits: {"smithy.api#enumValue" => "INSTALLED"}))
    InstalledComponentLifecycleState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    InstalledComponentLifecycleState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstalledComponentLifecycleState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    InstalledComponentLifecycleState.add_member(:errored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERRORED", traits: {"smithy.api#enumValue" => "ERRORED"}))
    InstalledComponentLifecycleState.add_member(:broken, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BROKEN", traits: {"smithy.api#enumValue" => "BROKEN"}))
    InstalledComponentLifecycleState.add_member(:finished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FINISHED", traits: {"smithy.api#enumValue" => "FINISHED"}))
    InstalledComponentLifecycleStatusCodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstalledComponentLifecycleStatusCode)
    InstalledComponentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstalledComponent)
    InstalledComponentTopologyFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    InstalledComponentTopologyFilter.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROOT", traits: {"smithy.api#enumValue" => "ROOT"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, location_name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IoTJobAbortAction.add_member(:cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCEL", traits: {"smithy.api#enumValue" => "CANCEL"}))
    IoTJobAbortConfig.add_member(:criteria_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobAbortCriteriaList, location_name: "criteriaList", traits: {"smithy.api#required" => {}}))
    IoTJobAbortConfig.type = Types::IoTJobAbortConfig
    IoTJobAbortCriteria.add_member(:failure_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobExecutionFailureType, location_name: "failureType", traits: {"smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobAbortAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:threshold_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobAbortThresholdPercentage, location_name: "thresholdPercentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    IoTJobAbortCriteria.add_member(:min_number_of_executed_things, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobMinimumNumberOfExecutedThings, location_name: "minNumberOfExecutedThings", traits: {"smithy.api#required" => {}}))
    IoTJobAbortCriteria.type = Types::IoTJobAbortCriteria
    IoTJobAbortCriteriaList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobAbortCriteria)
    IoTJobExecutionFailureType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IoTJobExecutionFailureType.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    IoTJobExecutionFailureType.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    IoTJobExecutionFailureType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    IoTJobExecutionsRolloutConfig.add_member(:exponential_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobExponentialRolloutRate, location_name: "exponentialRate"))
    IoTJobExecutionsRolloutConfig.add_member(:maximum_per_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobMaxExecutionsPerMin, location_name: "maximumPerMinute"))
    IoTJobExecutionsRolloutConfig.type = Types::IoTJobExecutionsRolloutConfig
    IoTJobExponentialRolloutRate.add_member(:base_rate_per_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobRolloutBaseRatePerMinute, location_name: "baseRatePerMinute", traits: {"smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.add_member(:increment_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobRolloutIncrementFactor, location_name: "incrementFactor", traits: {"smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.add_member(:rate_increase_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobRateIncreaseCriteria, location_name: "rateIncreaseCriteria", traits: {"smithy.api#required" => {}}))
    IoTJobExponentialRolloutRate.type = Types::IoTJobExponentialRolloutRate
    IoTJobRateIncreaseCriteria.add_member(:number_of_notified_things, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobNumberOfThings, location_name: "numberOfNotifiedThings"))
    IoTJobRateIncreaseCriteria.add_member(:number_of_succeeded_things, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobNumberOfThings, location_name: "numberOfSucceededThings"))
    IoTJobRateIncreaseCriteria.type = Types::IoTJobRateIncreaseCriteria
    IoTJobTimeoutConfig.add_member(:in_progress_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTJobInProgressTimeoutInMinutes, location_name: "inProgressTimeoutInMinutes", traits: {"smithy.api#default" => nil}))
    IoTJobTimeoutConfig.type = Types::IoTJobTimeoutConfig
    IotEndpointType.add_member(:fips, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "fips", traits: {"smithy.api#enumValue" => "fips"}))
    IotEndpointType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "standard", traits: {"smithy.api#enumValue" => "standard"}))
    LambdaContainerParams.add_member(:memory_size_in_kb, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "memorySizeInKB", traits: {"smithy.api#default" => nil}))
    LambdaContainerParams.add_member(:mount_ro_sysfs, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, location_name: "mountROSysfs", traits: {"smithy.api#default" => nil}))
    LambdaContainerParams.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaVolumeList, location_name: "volumes"))
    LambdaContainerParams.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaDeviceList, location_name: "devices"))
    LambdaContainerParams.type = Types::LambdaContainerParams
    LambdaDeviceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaDeviceMount)
    LambdaDeviceMount.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemPath, location_name: "path", traits: {"smithy.api#required" => {}}))
    LambdaDeviceMount.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFilesystemPermission, location_name: "permission"))
    LambdaDeviceMount.add_member(:add_group_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, location_name: "addGroupOwner", traits: {"smithy.api#default" => nil}))
    LambdaDeviceMount.type = Types::LambdaDeviceMount
    LambdaEnvironmentVariables.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    LambdaEnvironmentVariables.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    LambdaEventSource.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicString, location_name: "topic", traits: {"smithy.api#required" => {}}))
    LambdaEventSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEventSourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    LambdaEventSource.type = Types::LambdaEventSource
    LambdaEventSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEventSource)
    LambdaEventSourceType.add_member(:pub_sub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUB_SUB", traits: {"smithy.api#enumValue" => "PUB_SUB"}))
    LambdaEventSourceType.add_member(:iot_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IOT_CORE", traits: {"smithy.api#enumValue" => "IOT_CORE"}))
    LambdaExecArgsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaExecArg)
    LambdaExecutionParameters.add_member(:event_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEventSourceList, location_name: "eventSources"))
    LambdaExecutionParameters.add_member(:max_queue_size, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "maxQueueSize", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:max_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "maxInstancesCount", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:max_idle_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "maxIdleTimeInSeconds", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:status_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalInteger, location_name: "statusTimeoutInSeconds", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:pinned, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, location_name: "pinned", traits: {"smithy.api#default" => nil}))
    LambdaExecutionParameters.add_member(:input_payload_encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaInputPayloadEncodingType, location_name: "inputPayloadEncodingType"))
    LambdaExecutionParameters.add_member(:exec_args, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaExecArgsList, location_name: "execArgs"))
    LambdaExecutionParameters.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEnvironmentVariables, location_name: "environmentVariables"))
    LambdaExecutionParameters.add_member(:linux_process_params, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaLinuxProcessParams, location_name: "linuxProcessParams"))
    LambdaExecutionParameters.type = Types::LambdaExecutionParameters
    LambdaFilesystemPermission.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RO", traits: {"smithy.api#enumValue" => "ro"}))
    LambdaFilesystemPermission.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RW", traits: {"smithy.api#enumValue" => "rw"}))
    LambdaFunctionRecipeSource.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "lambdaArn", traits: {"smithy.api#required" => {}}))
    LambdaFunctionRecipeSource.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName"))
    LambdaFunctionRecipeSource.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion"))
    LambdaFunctionRecipeSource.add_member(:component_platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPlatformList, location_name: "componentPlatforms"))
    LambdaFunctionRecipeSource.add_member(:component_dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDependencyMap, location_name: "componentDependencies"))
    LambdaFunctionRecipeSource.add_member(:component_lambda_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaExecutionParameters, location_name: "componentLambdaParameters"))
    LambdaFunctionRecipeSource.type = Types::LambdaFunctionRecipeSource
    LambdaInputPayloadEncodingType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    LambdaInputPayloadEncodingType.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BINARY", traits: {"smithy.api#enumValue" => "binary"}))
    LambdaIsolationMode.add_member(:greengrass_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREENGRASS_CONTAINER", traits: {"smithy.api#enumValue" => "GreengrassContainer"}))
    LambdaIsolationMode.add_member(:no_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_CONTAINER", traits: {"smithy.api#enumValue" => "NoContainer"}))
    LambdaLinuxProcessParams.add_member(:isolation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaIsolationMode, location_name: "isolationMode"))
    LambdaLinuxProcessParams.add_member(:container_params, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaContainerParams, location_name: "containerParams"))
    LambdaLinuxProcessParams.type = Types::LambdaLinuxProcessParams
    LambdaVolumeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaVolumeMount)
    LambdaVolumeMount.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemPath, location_name: "sourcePath", traits: {"smithy.api#required" => {}}))
    LambdaVolumeMount.add_member(:destination_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemPath, location_name: "destinationPath", traits: {"smithy.api#required" => {}}))
    LambdaVolumeMount.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFilesystemPermission, location_name: "permission"))
    LambdaVolumeMount.add_member(:add_group_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, location_name: "addGroupOwner", traits: {"smithy.api#default" => nil}))
    LambdaVolumeMount.type = Types::LambdaVolumeMount
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.type = Types::ListClientDevicesAssociatedWithCoreDeviceRequest
    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:associated_client_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedClientDeviceList, location_name: "associatedClientDevices"))
    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken"))
    ListClientDevicesAssociatedWithCoreDeviceResponse.type = Types::ListClientDevicesAssociatedWithCoreDeviceResponse
    ListComponentVersionsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentARN, location_name: "arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComponentVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComponentVersionsRequest.type = Types::ListComponentVersionsRequest
    ListComponentVersionsResponse.add_member(:component_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionList, location_name: "componentVersions"))
    ListComponentVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken"))
    ListComponentVersionsResponse.type = Types::ListComponentVersionsResponse
    ListComponentsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVisibilityScope, location_name: "scope", traits: {"smithy.api#httpQuery" => "scope"}))
    ListComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentList, location_name: "components"))
    ListComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken"))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListCoreDevicesRequest.add_member(:thing_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingGroupARN, location_name: "thingGroupArn", traits: {"smithy.api#httpQuery" => "thingGroupArn"}))
    ListCoreDevicesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListCoreDevicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCoreDevicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCoreDevicesRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceRuntimeString, location_name: "runtime", traits: {"smithy.api#httpQuery" => "runtime"}))
    ListCoreDevicesRequest.type = Types::ListCoreDevicesRequest
    ListCoreDevicesResponse.add_member(:core_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDevicesList, location_name: "coreDevices"))
    ListCoreDevicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken"))
    ListCoreDevicesResponse.type = Types::ListCoreDevicesResponse
    ListDeploymentsRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, location_name: "targetArn", traits: {"smithy.api#httpQuery" => "targetArn"}))
    ListDeploymentsRequest.add_member(:history_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentHistoryFilter, location_name: "historyFilter", traits: {"smithy.api#httpQuery" => "historyFilter"}))
    ListDeploymentsRequest.add_member(:parent_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingGroupARN, location_name: "parentTargetArn", traits: {"smithy.api#httpQuery" => "parentTargetArn"}))
    ListDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListDeploymentsResponse.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentList, location_name: "deployments"))
    ListDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken"))
    ListDeploymentsResponse.type = Types::ListDeploymentsResponse
    ListEffectiveDeploymentsRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEffectiveDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEffectiveDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEffectiveDeploymentsRequest.type = Types::ListEffectiveDeploymentsRequest
    ListEffectiveDeploymentsResponse.add_member(:effective_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDeploymentsList, location_name: "effectiveDeployments"))
    ListEffectiveDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken"))
    ListEffectiveDeploymentsResponse.type = Types::ListEffectiveDeploymentsResponse
    ListInstalledComponentsRequest.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "coreDeviceThingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInstalledComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListInstalledComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInstalledComponentsRequest.add_member(:topology_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InstalledComponentTopologyFilter, location_name: "topologyFilter", traits: {"smithy.api#httpQuery" => "topologyFilter"}))
    ListInstalledComponentsRequest.type = Types::ListInstalledComponentsRequest
    ListInstalledComponentsResponse.add_member(:installed_components, ::Smithy::Schema::Shapes::MemberShape.new(target: InstalledComponentList, location_name: "installedComponents"))
    ListInstalledComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "nextToken"))
    ListInstalledComponentsResponse.type = Types::ListInstalledComponentsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericV2ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    PlatformAttributesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    PlatformAttributesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    RecipeOutputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    RecipeOutputFormat.add_member(:yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    RequestAlreadyInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    RequestAlreadyInProgressException.type = Types::RequestAlreadyInProgressException
    ResolveComponentCandidatesRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPlatform, location_name: "platform"))
    ResolveComponentCandidatesRequest.add_member(:component_candidates, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentCandidateList, location_name: "componentCandidates"))
    ResolveComponentCandidatesRequest.type = Types::ResolveComponentCandidatesRequest
    ResolveComponentCandidatesResponse.add_member(:resolved_component_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedComponentVersionsList, location_name: "resolvedComponentVersions"))
    ResolveComponentCandidatesResponse.type = Types::ResolveComponentCandidatesResponse
    ResolvedComponentVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionARN, location_name: "arn"))
    ResolvedComponentVersion.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentNameString, location_name: "componentName"))
    ResolvedComponentVersion.add_member(:component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionString, location_name: "componentVersion"))
    ResolvedComponentVersion.add_member(:recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeBlob, location_name: "recipe"))
    ResolvedComponentVersion.add_member(:vendor_guidance, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorGuidance, location_name: "vendorGuidance"))
    ResolvedComponentVersion.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "message"))
    ResolvedComponentVersion.type = Types::ResolvedComponentVersion
    ResolvedComponentVersionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedComponentVersion)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3EndpointType.add_member(:regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    S3EndpointType.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLOBAL", traits: {"smithy.api#enumValue" => "GLOBAL"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    SystemResourceLimits.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: Memory, location_name: "memory", traits: {"smithy.api#default" => 0}))
    SystemResourceLimits.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: CPU, location_name: "cpus", traits: {"smithy.api#default" => 0}))
    SystemResourceLimits.type = Types::SystemResourceLimits
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericV2ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, location_name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericV2ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectivityInfoRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "ThingName", "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityInfoList, location_name: "connectivityInfo", traits: {"smithy.api#jsonName" => "ConnectivityInfo", "smithy.api#required" => {}}))
    UpdateConnectivityInfoRequest.type = Types::UpdateConnectivityInfoRequest
    UpdateConnectivityInfoResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "version", traits: {"smithy.api#jsonName" => "Version"}))
    UpdateConnectivityInfoResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#jsonName" => "Message"}))
    UpdateConnectivityInfoResponse.type = Types::UpdateConnectivityInfoResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, location_name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VendorGuidance.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VendorGuidance.add_member(:discontinued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCONTINUED", traits: {"smithy.api#enumValue" => "DISCONTINUED"}))
    VendorGuidance.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ConnectivityInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityInfo)

    GreengrassV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.greengrassv2#GreengrassV2"
      service.name = "GreengrassV2"
      service.version = "2020-11-30"
      service.traits = {"aws.api#service" => {"sdkId" => "GreengrassV2", "arnNamespace" => "greengrass", "cloudFormationName" => "GreengrassV2", "cloudTrailEventSource" => "greengrass.amazonaws.com", "endpointPrefix" => "greengrass"}, "aws.auth#sigv4" => {"name" => "greengrass"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Greengrass V2"}
      service.add_operation(:associate_service_role_to_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#AssociateServiceRoleToAccount"
        operation.name = "AssociateServiceRoleToAccount"
        operation.input = AssociateServiceRoleToAccountRequest
        operation.output = AssociateServiceRoleToAccountResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:batch_associate_client_device_with_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#BatchAssociateClientDeviceWithCoreDevice"
        operation.name = "BatchAssociateClientDeviceWithCoreDevice"
        operation.input = BatchAssociateClientDeviceWithCoreDeviceRequest
        operation.output = BatchAssociateClientDeviceWithCoreDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_client_device_from_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#BatchDisassociateClientDeviceFromCoreDevice"
        operation.name = "BatchDisassociateClientDeviceFromCoreDevice"
        operation.input = BatchDisassociateClientDeviceFromCoreDeviceRequest
        operation.output = BatchDisassociateClientDeviceFromCoreDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices", "code" => 200}}
      end)
      service.add_operation(:cancel_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CancelDeployment"
        operation.name = "CancelDeployment"
        operation.input = CancelDeploymentRequest
        operation.output = CancelDeploymentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/deployments/{deploymentId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_component_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CreateComponentVersion"
        operation.name = "CreateComponentVersion"
        operation.input = CreateComponentVersionRequest
        operation.output = CreateComponentVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestAlreadyInProgressException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/createComponentVersion", "code" => 201}}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = CreateDeploymentRequest
        operation.output = CreateDeploymentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestAlreadyInProgressException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/deployments", "code" => 201}}
      end)
      service.add_operation(:delete_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = DeleteComponentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/components/{arn}", "code" => 204}}
      end)
      service.add_operation(:delete_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteCoreDevice"
        operation.name = "DeleteCoreDevice"
        operation.input = DeleteCoreDeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}", "code" => 204}}
      end)
      service.add_operation(:delete_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = DeleteDeploymentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/v2/deployments/{deploymentId}", "code" => 204}}
      end)
      service.add_operation(:describe_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DescribeComponent"
        operation.name = "DescribeComponent"
        operation.input = DescribeComponentRequest
        operation.output = DescribeComponentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/metadata", "code" => 200}}
      end)
      service.add_operation(:disassociate_service_role_from_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#DisassociateServiceRoleFromAccount"
        operation.name = "DisassociateServiceRoleFromAccount"
        operation.input = DisassociateServiceRoleFromAccountRequest
        operation.output = DisassociateServiceRoleFromAccountResponse
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:get_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetComponent"
        operation.name = "GetComponent"
        operation.input = GetComponentRequest
        operation.output = GetComponentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}", "code" => 200}}
      end)
      service.add_operation(:get_component_version_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetComponentVersionArtifact"
        operation.name = "GetComponentVersionArtifact"
        operation.input = GetComponentVersionArtifactRequest
        operation.output = GetComponentVersionArtifactResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/artifacts/{artifactName+}", "code" => 200}}
      end)
      service.add_operation(:get_connectivity_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetConnectivityInfo"
        operation.name = "GetConnectivityInfo"
        operation.input = GetConnectivityInfoRequest
        operation.output = GetConnectivityInfoResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/things/{thingName}/connectivityInfo", "code" => 200}}
      end)
      service.add_operation(:get_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetCoreDevice"
        operation.name = "GetCoreDevice"
        operation.input = GetCoreDeviceRequest
        operation.output = GetCoreDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}", "code" => 200}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = GetDeploymentRequest
        operation.output = GetDeploymentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/deployments/{deploymentId}", "code" => 200}}
      end)
      service.add_operation(:get_service_role_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#GetServiceRoleForAccount"
        operation.name = "GetServiceRoleForAccount"
        operation.input = GetServiceRoleForAccountRequest
        operation.output = GetServiceRoleForAccountResponse
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/servicerole", "code" => 200}}
      end)
      service.add_operation(:list_client_devices_associated_with_core_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListClientDevicesAssociatedWithCoreDevice"
        operation.name = "ListClientDevicesAssociatedWithCoreDevice"
        operation.input = ListClientDevicesAssociatedWithCoreDeviceRequest
        operation.output = ListClientDevicesAssociatedWithCoreDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices", "code" => 200}}
        operation[:paginator] = Paginators::ListClientDevicesAssociatedWithCoreDevice.new
      end)
      service.add_operation(:list_component_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListComponentVersions"
        operation.name = "ListComponentVersions"
        operation.input = ListComponentVersionsRequest
        operation.output = ListComponentVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components/{arn}/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListComponentVersions.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListComponents"
        operation.name = "ListComponents"
        operation.input = ListComponentsRequest
        operation.output = ListComponentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/components", "code" => 200}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_core_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListCoreDevices"
        operation.name = "ListCoreDevices"
        operation.input = ListCoreDevicesRequest
        operation.output = ListCoreDevicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices", "code" => 200}}
        operation[:paginator] = Paginators::ListCoreDevices.new
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ListDeploymentsRequest
        operation.output = ListDeploymentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/deployments", "code" => 200}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_effective_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListEffectiveDeployments"
        operation.name = "ListEffectiveDeployments"
        operation.input = ListEffectiveDeploymentsRequest
        operation.output = ListEffectiveDeploymentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments", "code" => 200}}
        operation[:paginator] = Paginators::ListEffectiveDeployments.new
      end)
      service.add_operation(:list_installed_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListInstalledComponents"
        operation.name = "ListInstalledComponents"
        operation.input = ListInstalledComponentsRequest
        operation.output = ListInstalledComponentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents", "code" => 200}}
        operation[:paginator] = Paginators::ListInstalledComponents.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:resolve_component_candidates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#ResolveComponentCandidates"
        operation.name = "ResolveComponentCandidates"
        operation.input = ResolveComponentCandidatesRequest
        operation.output = ResolveComponentCandidatesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/greengrass/v2/resolveComponentCandidates", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_connectivity_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.greengrassv2#UpdateConnectivityInfo"
        operation.name = "UpdateConnectivityInfo"
        operation.input = UpdateConnectivityInfoRequest
        operation.output = UpdateConnectivityInfoResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
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
