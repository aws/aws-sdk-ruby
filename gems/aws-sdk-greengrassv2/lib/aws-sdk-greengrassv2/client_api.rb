# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GreengrassV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociateClientDeviceWithCoreDeviceEntry = Shapes::StructureShape.new(name: 'AssociateClientDeviceWithCoreDeviceEntry')
    AssociateClientDeviceWithCoreDeviceEntryList = Shapes::ListShape.new(name: 'AssociateClientDeviceWithCoreDeviceEntryList')
    AssociateClientDeviceWithCoreDeviceErrorEntry = Shapes::StructureShape.new(name: 'AssociateClientDeviceWithCoreDeviceErrorEntry')
    AssociateClientDeviceWithCoreDeviceErrorList = Shapes::ListShape.new(name: 'AssociateClientDeviceWithCoreDeviceErrorList')
    AssociateServiceRoleToAccountRequest = Shapes::StructureShape.new(name: 'AssociateServiceRoleToAccountRequest')
    AssociateServiceRoleToAccountResponse = Shapes::StructureShape.new(name: 'AssociateServiceRoleToAccountResponse')
    AssociatedClientDevice = Shapes::StructureShape.new(name: 'AssociatedClientDevice')
    AssociatedClientDeviceList = Shapes::ListShape.new(name: 'AssociatedClientDeviceList')
    BatchAssociateClientDeviceWithCoreDeviceRequest = Shapes::StructureShape.new(name: 'BatchAssociateClientDeviceWithCoreDeviceRequest')
    BatchAssociateClientDeviceWithCoreDeviceResponse = Shapes::StructureShape.new(name: 'BatchAssociateClientDeviceWithCoreDeviceResponse')
    BatchDisassociateClientDeviceFromCoreDeviceRequest = Shapes::StructureShape.new(name: 'BatchDisassociateClientDeviceFromCoreDeviceRequest')
    BatchDisassociateClientDeviceFromCoreDeviceResponse = Shapes::StructureShape.new(name: 'BatchDisassociateClientDeviceFromCoreDeviceResponse')
    CPU = Shapes::FloatShape.new(name: 'CPU')
    CancelDeploymentRequest = Shapes::StructureShape.new(name: 'CancelDeploymentRequest')
    CancelDeploymentResponse = Shapes::StructureShape.new(name: 'CancelDeploymentResponse')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    CloudComponentState = Shapes::StringShape.new(name: 'CloudComponentState')
    CloudComponentStatus = Shapes::StructureShape.new(name: 'CloudComponentStatus')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentARN = Shapes::StringShape.new(name: 'ComponentARN')
    ComponentCandidate = Shapes::StructureShape.new(name: 'ComponentCandidate')
    ComponentCandidateList = Shapes::ListShape.new(name: 'ComponentCandidateList')
    ComponentConfigurationPath = Shapes::StringShape.new(name: 'ComponentConfigurationPath')
    ComponentConfigurationPathList = Shapes::ListShape.new(name: 'ComponentConfigurationPathList')
    ComponentConfigurationString = Shapes::StringShape.new(name: 'ComponentConfigurationString')
    ComponentConfigurationUpdate = Shapes::StructureShape.new(name: 'ComponentConfigurationUpdate')
    ComponentDependencyMap = Shapes::MapShape.new(name: 'ComponentDependencyMap')
    ComponentDependencyRequirement = Shapes::StructureShape.new(name: 'ComponentDependencyRequirement')
    ComponentDependencyType = Shapes::StringShape.new(name: 'ComponentDependencyType')
    ComponentDeploymentSpecification = Shapes::StructureShape.new(name: 'ComponentDeploymentSpecification')
    ComponentDeploymentSpecifications = Shapes::MapShape.new(name: 'ComponentDeploymentSpecifications')
    ComponentLatestVersion = Shapes::StructureShape.new(name: 'ComponentLatestVersion')
    ComponentList = Shapes::ListShape.new(name: 'ComponentList')
    ComponentNameString = Shapes::StringShape.new(name: 'ComponentNameString')
    ComponentPlatform = Shapes::StructureShape.new(name: 'ComponentPlatform')
    ComponentPlatformList = Shapes::ListShape.new(name: 'ComponentPlatformList')
    ComponentRunWith = Shapes::StructureShape.new(name: 'ComponentRunWith')
    ComponentVersionARN = Shapes::StringShape.new(name: 'ComponentVersionARN')
    ComponentVersionList = Shapes::ListShape.new(name: 'ComponentVersionList')
    ComponentVersionListItem = Shapes::StructureShape.new(name: 'ComponentVersionListItem')
    ComponentVersionRequirementMap = Shapes::MapShape.new(name: 'ComponentVersionRequirementMap')
    ComponentVersionString = Shapes::StringShape.new(name: 'ComponentVersionString')
    ComponentVisibilityScope = Shapes::StringShape.new(name: 'ComponentVisibilityScope')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectivityInfo = Shapes::StructureShape.new(name: 'ConnectivityInfo')
    CoreDevice = Shapes::StructureShape.new(name: 'CoreDevice')
    CoreDeviceArchitectureString = Shapes::StringShape.new(name: 'CoreDeviceArchitectureString')
    CoreDevicePlatformString = Shapes::StringShape.new(name: 'CoreDevicePlatformString')
    CoreDeviceStatus = Shapes::StringShape.new(name: 'CoreDeviceStatus')
    CoreDeviceThingName = Shapes::StringShape.new(name: 'CoreDeviceThingName')
    CoreDevicesList = Shapes::ListShape.new(name: 'CoreDevicesList')
    CreateComponentVersionRequest = Shapes::StructureShape.new(name: 'CreateComponentVersionRequest')
    CreateComponentVersionResponse = Shapes::StructureShape.new(name: 'CreateComponentVersionResponse')
    CreateDeploymentRequest = Shapes::StructureShape.new(name: 'CreateDeploymentRequest')
    CreateDeploymentResponse = Shapes::StructureShape.new(name: 'CreateDeploymentResponse')
    DefaultMaxResults = Shapes::IntegerShape.new(name: 'DefaultMaxResults')
    DeleteComponentRequest = Shapes::StructureShape.new(name: 'DeleteComponentRequest')
    DeleteCoreDeviceRequest = Shapes::StructureShape.new(name: 'DeleteCoreDeviceRequest')
    DeleteDeploymentRequest = Shapes::StructureShape.new(name: 'DeleteDeploymentRequest')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentComponentUpdatePolicy = Shapes::StructureShape.new(name: 'DeploymentComponentUpdatePolicy')
    DeploymentComponentUpdatePolicyAction = Shapes::StringShape.new(name: 'DeploymentComponentUpdatePolicyAction')
    DeploymentConfigurationValidationPolicy = Shapes::StructureShape.new(name: 'DeploymentConfigurationValidationPolicy')
    DeploymentFailureHandlingPolicy = Shapes::StringShape.new(name: 'DeploymentFailureHandlingPolicy')
    DeploymentHistoryFilter = Shapes::StringShape.new(name: 'DeploymentHistoryFilter')
    DeploymentID = Shapes::StringShape.new(name: 'DeploymentID')
    DeploymentIoTJobConfiguration = Shapes::StructureShape.new(name: 'DeploymentIoTJobConfiguration')
    DeploymentList = Shapes::ListShape.new(name: 'DeploymentList')
    DeploymentName = Shapes::StringShape.new(name: 'DeploymentName')
    DeploymentNameString = Shapes::StringShape.new(name: 'DeploymentNameString')
    DeploymentPolicies = Shapes::StructureShape.new(name: 'DeploymentPolicies')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DescribeComponentRequest = Shapes::StructureShape.new(name: 'DescribeComponentRequest')
    DescribeComponentResponse = Shapes::StructureShape.new(name: 'DescribeComponentResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DisassociateClientDeviceFromCoreDeviceEntry = Shapes::StructureShape.new(name: 'DisassociateClientDeviceFromCoreDeviceEntry')
    DisassociateClientDeviceFromCoreDeviceEntryList = Shapes::ListShape.new(name: 'DisassociateClientDeviceFromCoreDeviceEntryList')
    DisassociateClientDeviceFromCoreDeviceErrorEntry = Shapes::StructureShape.new(name: 'DisassociateClientDeviceFromCoreDeviceErrorEntry')
    DisassociateClientDeviceFromCoreDeviceErrorList = Shapes::ListShape.new(name: 'DisassociateClientDeviceFromCoreDeviceErrorList')
    DisassociateServiceRoleFromAccountRequest = Shapes::StructureShape.new(name: 'DisassociateServiceRoleFromAccountRequest')
    DisassociateServiceRoleFromAccountResponse = Shapes::StructureShape.new(name: 'DisassociateServiceRoleFromAccountResponse')
    EffectiveDeployment = Shapes::StructureShape.new(name: 'EffectiveDeployment')
    EffectiveDeploymentErrorCode = Shapes::StringShape.new(name: 'EffectiveDeploymentErrorCode')
    EffectiveDeploymentErrorStack = Shapes::ListShape.new(name: 'EffectiveDeploymentErrorStack')
    EffectiveDeploymentErrorType = Shapes::StringShape.new(name: 'EffectiveDeploymentErrorType')
    EffectiveDeploymentErrorTypeList = Shapes::ListShape.new(name: 'EffectiveDeploymentErrorTypeList')
    EffectiveDeploymentExecutionStatus = Shapes::StringShape.new(name: 'EffectiveDeploymentExecutionStatus')
    EffectiveDeploymentStatusDetails = Shapes::StructureShape.new(name: 'EffectiveDeploymentStatusDetails')
    EffectiveDeploymentsList = Shapes::ListShape.new(name: 'EffectiveDeploymentsList')
    FileSystemPath = Shapes::StringShape.new(name: 'FileSystemPath')
    GGCVersion = Shapes::StringShape.new(name: 'GGCVersion')
    GenericV2ARN = Shapes::StringShape.new(name: 'GenericV2ARN')
    GetComponentRequest = Shapes::StructureShape.new(name: 'GetComponentRequest')
    GetComponentResponse = Shapes::StructureShape.new(name: 'GetComponentResponse')
    GetComponentVersionArtifactRequest = Shapes::StructureShape.new(name: 'GetComponentVersionArtifactRequest')
    GetComponentVersionArtifactResponse = Shapes::StructureShape.new(name: 'GetComponentVersionArtifactResponse')
    GetConnectivityInfoRequest = Shapes::StructureShape.new(name: 'GetConnectivityInfoRequest')
    GetConnectivityInfoResponse = Shapes::StructureShape.new(name: 'GetConnectivityInfoResponse')
    GetCoreDeviceRequest = Shapes::StructureShape.new(name: 'GetCoreDeviceRequest')
    GetCoreDeviceResponse = Shapes::StructureShape.new(name: 'GetCoreDeviceResponse')
    GetDeploymentRequest = Shapes::StructureShape.new(name: 'GetDeploymentRequest')
    GetDeploymentResponse = Shapes::StructureShape.new(name: 'GetDeploymentResponse')
    GetServiceRoleForAccountRequest = Shapes::StructureShape.new(name: 'GetServiceRoleForAccountRequest')
    GetServiceRoleForAccountResponse = Shapes::StructureShape.new(name: 'GetServiceRoleForAccountResponse')
    InstalledComponent = Shapes::StructureShape.new(name: 'InstalledComponent')
    InstalledComponentLifecycleState = Shapes::StringShape.new(name: 'InstalledComponentLifecycleState')
    InstalledComponentLifecycleStatusCode = Shapes::StringShape.new(name: 'InstalledComponentLifecycleStatusCode')
    InstalledComponentLifecycleStatusCodeList = Shapes::ListShape.new(name: 'InstalledComponentLifecycleStatusCodeList')
    InstalledComponentList = Shapes::ListShape.new(name: 'InstalledComponentList')
    InstalledComponentTopologyFilter = Shapes::StringShape.new(name: 'InstalledComponentTopologyFilter')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IoTJobARN = Shapes::StringShape.new(name: 'IoTJobARN')
    IoTJobAbortAction = Shapes::StringShape.new(name: 'IoTJobAbortAction')
    IoTJobAbortConfig = Shapes::StructureShape.new(name: 'IoTJobAbortConfig')
    IoTJobAbortCriteria = Shapes::StructureShape.new(name: 'IoTJobAbortCriteria')
    IoTJobAbortCriteriaList = Shapes::ListShape.new(name: 'IoTJobAbortCriteriaList')
    IoTJobAbortThresholdPercentage = Shapes::FloatShape.new(name: 'IoTJobAbortThresholdPercentage')
    IoTJobExecutionFailureType = Shapes::StringShape.new(name: 'IoTJobExecutionFailureType')
    IoTJobExecutionsRolloutConfig = Shapes::StructureShape.new(name: 'IoTJobExecutionsRolloutConfig')
    IoTJobExponentialRolloutRate = Shapes::StructureShape.new(name: 'IoTJobExponentialRolloutRate')
    IoTJobId = Shapes::StringShape.new(name: 'IoTJobId')
    IoTJobInProgressTimeoutInMinutes = Shapes::IntegerShape.new(name: 'IoTJobInProgressTimeoutInMinutes')
    IoTJobMaxExecutionsPerMin = Shapes::IntegerShape.new(name: 'IoTJobMaxExecutionsPerMin')
    IoTJobMinimumNumberOfExecutedThings = Shapes::IntegerShape.new(name: 'IoTJobMinimumNumberOfExecutedThings')
    IoTJobNumberOfThings = Shapes::IntegerShape.new(name: 'IoTJobNumberOfThings')
    IoTJobRateIncreaseCriteria = Shapes::StructureShape.new(name: 'IoTJobRateIncreaseCriteria')
    IoTJobRolloutBaseRatePerMinute = Shapes::IntegerShape.new(name: 'IoTJobRolloutBaseRatePerMinute')
    IoTJobRolloutIncrementFactor = Shapes::FloatShape.new(name: 'IoTJobRolloutIncrementFactor')
    IoTJobTimeoutConfig = Shapes::StructureShape.new(name: 'IoTJobTimeoutConfig')
    IoTThingName = Shapes::StringShape.new(name: 'IoTThingName')
    IsLatestForTarget = Shapes::BooleanShape.new(name: 'IsLatestForTarget')
    IsRoot = Shapes::BooleanShape.new(name: 'IsRoot')
    LambdaContainerParams = Shapes::StructureShape.new(name: 'LambdaContainerParams')
    LambdaDeviceList = Shapes::ListShape.new(name: 'LambdaDeviceList')
    LambdaDeviceMount = Shapes::StructureShape.new(name: 'LambdaDeviceMount')
    LambdaEnvironmentVariables = Shapes::MapShape.new(name: 'LambdaEnvironmentVariables')
    LambdaEventSource = Shapes::StructureShape.new(name: 'LambdaEventSource')
    LambdaEventSourceList = Shapes::ListShape.new(name: 'LambdaEventSourceList')
    LambdaEventSourceType = Shapes::StringShape.new(name: 'LambdaEventSourceType')
    LambdaExecArg = Shapes::StringShape.new(name: 'LambdaExecArg')
    LambdaExecArgsList = Shapes::ListShape.new(name: 'LambdaExecArgsList')
    LambdaExecutionParameters = Shapes::StructureShape.new(name: 'LambdaExecutionParameters')
    LambdaFilesystemPermission = Shapes::StringShape.new(name: 'LambdaFilesystemPermission')
    LambdaFunctionRecipeSource = Shapes::StructureShape.new(name: 'LambdaFunctionRecipeSource')
    LambdaInputPayloadEncodingType = Shapes::StringShape.new(name: 'LambdaInputPayloadEncodingType')
    LambdaIsolationMode = Shapes::StringShape.new(name: 'LambdaIsolationMode')
    LambdaLinuxProcessParams = Shapes::StructureShape.new(name: 'LambdaLinuxProcessParams')
    LambdaVolumeList = Shapes::ListShape.new(name: 'LambdaVolumeList')
    LambdaVolumeMount = Shapes::StructureShape.new(name: 'LambdaVolumeMount')
    LifecycleStateDetails = Shapes::StringShape.new(name: 'LifecycleStateDetails')
    ListClientDevicesAssociatedWithCoreDeviceRequest = Shapes::StructureShape.new(name: 'ListClientDevicesAssociatedWithCoreDeviceRequest')
    ListClientDevicesAssociatedWithCoreDeviceResponse = Shapes::StructureShape.new(name: 'ListClientDevicesAssociatedWithCoreDeviceResponse')
    ListComponentVersionsRequest = Shapes::StructureShape.new(name: 'ListComponentVersionsRequest')
    ListComponentVersionsResponse = Shapes::StructureShape.new(name: 'ListComponentVersionsResponse')
    ListComponentsRequest = Shapes::StructureShape.new(name: 'ListComponentsRequest')
    ListComponentsResponse = Shapes::StructureShape.new(name: 'ListComponentsResponse')
    ListCoreDevicesRequest = Shapes::StructureShape.new(name: 'ListCoreDevicesRequest')
    ListCoreDevicesResponse = Shapes::StructureShape.new(name: 'ListCoreDevicesResponse')
    ListDeploymentsRequest = Shapes::StructureShape.new(name: 'ListDeploymentsRequest')
    ListDeploymentsResponse = Shapes::StructureShape.new(name: 'ListDeploymentsResponse')
    ListEffectiveDeploymentsRequest = Shapes::StructureShape.new(name: 'ListEffectiveDeploymentsRequest')
    ListEffectiveDeploymentsResponse = Shapes::StructureShape.new(name: 'ListEffectiveDeploymentsResponse')
    ListInstalledComponentsRequest = Shapes::StructureShape.new(name: 'ListInstalledComponentsRequest')
    ListInstalledComponentsResponse = Shapes::StructureShape.new(name: 'ListInstalledComponentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Memory = Shapes::IntegerShape.new(name: 'Memory')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NullableString = Shapes::StringShape.new(name: 'NullableString')
    OptionalBoolean = Shapes::BooleanShape.new(name: 'OptionalBoolean')
    OptionalInteger = Shapes::IntegerShape.new(name: 'OptionalInteger')
    PlatformAttributesMap = Shapes::MapShape.new(name: 'PlatformAttributesMap')
    PortNumberInt = Shapes::IntegerShape.new(name: 'PortNumberInt')
    PublisherString = Shapes::StringShape.new(name: 'PublisherString')
    Reason = Shapes::StringShape.new(name: 'Reason')
    RecipeBlob = Shapes::BlobShape.new(name: 'RecipeBlob')
    RecipeOutputFormat = Shapes::StringShape.new(name: 'RecipeOutputFormat')
    RequestAlreadyInProgressException = Shapes::StructureShape.new(name: 'RequestAlreadyInProgressException')
    ResolveComponentCandidatesRequest = Shapes::StructureShape.new(name: 'ResolveComponentCandidatesRequest')
    ResolveComponentCandidatesResponse = Shapes::StructureShape.new(name: 'ResolveComponentCandidatesResponse')
    ResolvedComponentVersion = Shapes::StructureShape.new(name: 'ResolvedComponentVersion')
    ResolvedComponentVersionsList = Shapes::ListShape.new(name: 'ResolvedComponentVersionsList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SystemResourceLimits = Shapes::StructureShape.new(name: 'SystemResourceLimits')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetARN = Shapes::StringShape.new(name: 'TargetARN')
    ThingGroupARN = Shapes::StringShape.new(name: 'ThingGroupARN')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TopicString = Shapes::StringShape.new(name: 'TopicString')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectivityInfoRequest = Shapes::StructureShape.new(name: 'UpdateConnectivityInfoRequest')
    UpdateConnectivityInfoResponse = Shapes::StructureShape.new(name: 'UpdateConnectivityInfoResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VendorGuidance = Shapes::StringShape.new(name: 'VendorGuidance')
    connectivityInfoList = Shapes::ListShape.new(name: 'connectivityInfoList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateClientDeviceWithCoreDeviceEntry.add_member(:thing_name, Shapes::ShapeRef.new(shape: IoTThingName, required: true, location_name: "thingName"))
    AssociateClientDeviceWithCoreDeviceEntry.struct_class = Types::AssociateClientDeviceWithCoreDeviceEntry

    AssociateClientDeviceWithCoreDeviceEntryList.member = Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceEntry)

    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:thing_name, Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "code"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    AssociateClientDeviceWithCoreDeviceErrorEntry.struct_class = Types::AssociateClientDeviceWithCoreDeviceErrorEntry

    AssociateClientDeviceWithCoreDeviceErrorList.member = Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceErrorEntry)

    AssociateServiceRoleToAccountRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    AssociateServiceRoleToAccountRequest.struct_class = Types::AssociateServiceRoleToAccountRequest

    AssociateServiceRoleToAccountResponse.add_member(:associated_at, Shapes::ShapeRef.new(shape: String, location_name: "AssociatedAt"))
    AssociateServiceRoleToAccountResponse.struct_class = Types::AssociateServiceRoleToAccountResponse

    AssociatedClientDevice.add_member(:thing_name, Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName"))
    AssociatedClientDevice.add_member(:association_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "associationTimestamp"))
    AssociatedClientDevice.struct_class = Types::AssociatedClientDevice

    AssociatedClientDeviceList.member = Shapes::ShapeRef.new(shape: AssociatedClientDevice)

    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:entries, Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceEntryList, location_name: "entries"))
    BatchAssociateClientDeviceWithCoreDeviceRequest.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: IoTThingName, required: true, location: "uri", location_name: "coreDeviceThingName"))
    BatchAssociateClientDeviceWithCoreDeviceRequest.struct_class = Types::BatchAssociateClientDeviceWithCoreDeviceRequest

    BatchAssociateClientDeviceWithCoreDeviceResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: AssociateClientDeviceWithCoreDeviceErrorList, location_name: "errorEntries"))
    BatchAssociateClientDeviceWithCoreDeviceResponse.struct_class = Types::BatchAssociateClientDeviceWithCoreDeviceResponse

    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:entries, Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceEntryList, location_name: "entries"))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: IoTThingName, required: true, location: "uri", location_name: "coreDeviceThingName"))
    BatchDisassociateClientDeviceFromCoreDeviceRequest.struct_class = Types::BatchDisassociateClientDeviceFromCoreDeviceRequest

    BatchDisassociateClientDeviceFromCoreDeviceResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceErrorList, location_name: "errorEntries"))
    BatchDisassociateClientDeviceFromCoreDeviceResponse.struct_class = Types::BatchDisassociateClientDeviceFromCoreDeviceResponse

    CancelDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "deploymentId"))
    CancelDeploymentRequest.struct_class = Types::CancelDeploymentRequest

    CancelDeploymentResponse.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    CancelDeploymentResponse.struct_class = Types::CancelDeploymentResponse

    CloudComponentStatus.add_member(:component_state, Shapes::ShapeRef.new(shape: CloudComponentState, location_name: "componentState"))
    CloudComponentStatus.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    CloudComponentStatus.add_member(:errors, Shapes::ShapeRef.new(shape: StringMap, location_name: "errors"))
    CloudComponentStatus.add_member(:vendor_guidance, Shapes::ShapeRef.new(shape: VendorGuidance, location_name: "vendorGuidance"))
    CloudComponentStatus.add_member(:vendor_guidance_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "vendorGuidanceMessage"))
    CloudComponentStatus.struct_class = Types::CloudComponentStatus

    Component.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentARN, location_name: "arn"))
    Component.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    Component.add_member(:latest_version, Shapes::ShapeRef.new(shape: ComponentLatestVersion, location_name: "latestVersion"))
    Component.struct_class = Types::Component

    ComponentCandidate.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    ComponentCandidate.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ComponentCandidate.add_member(:version_requirements, Shapes::ShapeRef.new(shape: ComponentVersionRequirementMap, location_name: "versionRequirements"))
    ComponentCandidate.struct_class = Types::ComponentCandidate

    ComponentCandidateList.member = Shapes::ShapeRef.new(shape: ComponentCandidate)

    ComponentConfigurationPathList.member = Shapes::ShapeRef.new(shape: ComponentConfigurationPath)

    ComponentConfigurationUpdate.add_member(:merge, Shapes::ShapeRef.new(shape: ComponentConfigurationString, location_name: "merge"))
    ComponentConfigurationUpdate.add_member(:reset, Shapes::ShapeRef.new(shape: ComponentConfigurationPathList, location_name: "reset"))
    ComponentConfigurationUpdate.struct_class = Types::ComponentConfigurationUpdate

    ComponentDependencyMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentDependencyMap.value = Shapes::ShapeRef.new(shape: ComponentDependencyRequirement)

    ComponentDependencyRequirement.add_member(:version_requirement, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "versionRequirement"))
    ComponentDependencyRequirement.add_member(:dependency_type, Shapes::ShapeRef.new(shape: ComponentDependencyType, location_name: "dependencyType"))
    ComponentDependencyRequirement.struct_class = Types::ComponentDependencyRequirement

    ComponentDeploymentSpecification.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ComponentDeploymentSpecification.add_member(:configuration_update, Shapes::ShapeRef.new(shape: ComponentConfigurationUpdate, location_name: "configurationUpdate"))
    ComponentDeploymentSpecification.add_member(:run_with, Shapes::ShapeRef.new(shape: ComponentRunWith, location_name: "runWith"))
    ComponentDeploymentSpecification.struct_class = Types::ComponentDeploymentSpecification

    ComponentDeploymentSpecifications.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentDeploymentSpecifications.value = Shapes::ShapeRef.new(shape: ComponentDeploymentSpecification)

    ComponentLatestVersion.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    ComponentLatestVersion.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ComponentLatestVersion.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    ComponentLatestVersion.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ComponentLatestVersion.add_member(:publisher, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "publisher"))
    ComponentLatestVersion.add_member(:platforms, Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: "platforms"))
    ComponentLatestVersion.struct_class = Types::ComponentLatestVersion

    ComponentList.member = Shapes::ShapeRef.new(shape: Component)

    ComponentPlatform.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ComponentPlatform.add_member(:attributes, Shapes::ShapeRef.new(shape: PlatformAttributesMap, location_name: "attributes"))
    ComponentPlatform.struct_class = Types::ComponentPlatform

    ComponentPlatformList.member = Shapes::ShapeRef.new(shape: ComponentPlatform)

    ComponentRunWith.add_member(:posix_user, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "posixUser"))
    ComponentRunWith.add_member(:system_resource_limits, Shapes::ShapeRef.new(shape: SystemResourceLimits, location_name: "systemResourceLimits"))
    ComponentRunWith.add_member(:windows_user, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "windowsUser"))
    ComponentRunWith.struct_class = Types::ComponentRunWith

    ComponentVersionList.member = Shapes::ShapeRef.new(shape: ComponentVersionListItem)

    ComponentVersionListItem.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    ComponentVersionListItem.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ComponentVersionListItem.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ComponentVersionListItem.struct_class = Types::ComponentVersionListItem

    ComponentVersionRequirementMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    ComponentVersionRequirementMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConnectivityInfo.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    ConnectivityInfo.add_member(:host_address, Shapes::ShapeRef.new(shape: String, location_name: "HostAddress"))
    ConnectivityInfo.add_member(:port_number, Shapes::ShapeRef.new(shape: PortNumberInt, location_name: "PortNumber"))
    ConnectivityInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: String, location_name: "Metadata"))
    ConnectivityInfo.struct_class = Types::ConnectivityInfo

    CoreDevice.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName"))
    CoreDevice.add_member(:status, Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: "status"))
    CoreDevice.add_member(:last_status_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusUpdateTimestamp"))
    CoreDevice.struct_class = Types::CoreDevice

    CoreDevicesList.member = Shapes::ShapeRef.new(shape: CoreDevice)

    CreateComponentVersionRequest.add_member(:inline_recipe, Shapes::ShapeRef.new(shape: RecipeBlob, location_name: "inlineRecipe"))
    CreateComponentVersionRequest.add_member(:lambda_function, Shapes::ShapeRef.new(shape: LambdaFunctionRecipeSource, location_name: "lambdaFunction"))
    CreateComponentVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateComponentVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateComponentVersionRequest.struct_class = Types::CreateComponentVersionRequest

    CreateComponentVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    CreateComponentVersionResponse.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, required: true, location_name: "componentName"))
    CreateComponentVersionResponse.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, required: true, location_name: "componentVersion"))
    CreateComponentVersionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTimestamp"))
    CreateComponentVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: CloudComponentStatus, required: true, location_name: "status"))
    CreateComponentVersionResponse.struct_class = Types::CreateComponentVersionResponse

    CreateDeploymentRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, required: true, location_name: "targetArn"))
    CreateDeploymentRequest.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentNameString, location_name: "deploymentName"))
    CreateDeploymentRequest.add_member(:components, Shapes::ShapeRef.new(shape: ComponentDeploymentSpecifications, location_name: "components"))
    CreateDeploymentRequest.add_member(:iot_job_configuration, Shapes::ShapeRef.new(shape: DeploymentIoTJobConfiguration, location_name: "iotJobConfiguration"))
    CreateDeploymentRequest.add_member(:deployment_policies, Shapes::ShapeRef.new(shape: DeploymentPolicies, location_name: "deploymentPolicies"))
    CreateDeploymentRequest.add_member(:parent_target_arn, Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "parentTargetArn"))
    CreateDeploymentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDeploymentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDeploymentRequest.struct_class = Types::CreateDeploymentRequest

    CreateDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId"))
    CreateDeploymentResponse.add_member(:iot_job_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "iotJobId"))
    CreateDeploymentResponse.add_member(:iot_job_arn, Shapes::ShapeRef.new(shape: IoTJobARN, location_name: "iotJobArn"))
    CreateDeploymentResponse.struct_class = Types::CreateDeploymentResponse

    DeleteComponentRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, required: true, location: "uri", location_name: "arn"))
    DeleteComponentRequest.struct_class = Types::DeleteComponentRequest

    DeleteCoreDeviceRequest.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, required: true, location: "uri", location_name: "coreDeviceThingName"))
    DeleteCoreDeviceRequest.struct_class = Types::DeleteCoreDeviceRequest

    DeleteDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "deploymentId"))
    DeleteDeploymentRequest.struct_class = Types::DeleteDeploymentRequest

    Deployment.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "targetArn"))
    Deployment.add_member(:revision_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "revisionId"))
    Deployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId"))
    Deployment.add_member(:deployment_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentName"))
    Deployment.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    Deployment.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    Deployment.add_member(:is_latest_for_target, Shapes::ShapeRef.new(shape: IsLatestForTarget, location_name: "isLatestForTarget"))
    Deployment.add_member(:parent_target_arn, Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "parentTargetArn"))
    Deployment.struct_class = Types::Deployment

    DeploymentComponentUpdatePolicy.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "timeoutInSeconds", metadata: {"box"=>true}))
    DeploymentComponentUpdatePolicy.add_member(:action, Shapes::ShapeRef.new(shape: DeploymentComponentUpdatePolicyAction, location_name: "action"))
    DeploymentComponentUpdatePolicy.struct_class = Types::DeploymentComponentUpdatePolicy

    DeploymentConfigurationValidationPolicy.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "timeoutInSeconds", metadata: {"box"=>true}))
    DeploymentConfigurationValidationPolicy.struct_class = Types::DeploymentConfigurationValidationPolicy

    DeploymentIoTJobConfiguration.add_member(:job_executions_rollout_config, Shapes::ShapeRef.new(shape: IoTJobExecutionsRolloutConfig, location_name: "jobExecutionsRolloutConfig"))
    DeploymentIoTJobConfiguration.add_member(:abort_config, Shapes::ShapeRef.new(shape: IoTJobAbortConfig, location_name: "abortConfig"))
    DeploymentIoTJobConfiguration.add_member(:timeout_config, Shapes::ShapeRef.new(shape: IoTJobTimeoutConfig, location_name: "timeoutConfig"))
    DeploymentIoTJobConfiguration.struct_class = Types::DeploymentIoTJobConfiguration

    DeploymentList.member = Shapes::ShapeRef.new(shape: Deployment)

    DeploymentPolicies.add_member(:failure_handling_policy, Shapes::ShapeRef.new(shape: DeploymentFailureHandlingPolicy, location_name: "failureHandlingPolicy"))
    DeploymentPolicies.add_member(:component_update_policy, Shapes::ShapeRef.new(shape: DeploymentComponentUpdatePolicy, location_name: "componentUpdatePolicy"))
    DeploymentPolicies.add_member(:configuration_validation_policy, Shapes::ShapeRef.new(shape: DeploymentConfigurationValidationPolicy, location_name: "configurationValidationPolicy"))
    DeploymentPolicies.struct_class = Types::DeploymentPolicies

    DescribeComponentRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, required: true, location: "uri", location_name: "arn"))
    DescribeComponentRequest.struct_class = Types::DescribeComponentRequest

    DescribeComponentResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    DescribeComponentResponse.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    DescribeComponentResponse.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    DescribeComponentResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    DescribeComponentResponse.add_member(:publisher, Shapes::ShapeRef.new(shape: PublisherString, location_name: "publisher"))
    DescribeComponentResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "description"))
    DescribeComponentResponse.add_member(:status, Shapes::ShapeRef.new(shape: CloudComponentStatus, location_name: "status"))
    DescribeComponentResponse.add_member(:platforms, Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: "platforms"))
    DescribeComponentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeComponentResponse.struct_class = Types::DescribeComponentResponse

    DisassociateClientDeviceFromCoreDeviceEntry.add_member(:thing_name, Shapes::ShapeRef.new(shape: IoTThingName, required: true, location_name: "thingName"))
    DisassociateClientDeviceFromCoreDeviceEntry.struct_class = Types::DisassociateClientDeviceFromCoreDeviceEntry

    DisassociateClientDeviceFromCoreDeviceEntryList.member = Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceEntry)

    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:thing_name, Shapes::ShapeRef.new(shape: IoTThingName, location_name: "thingName"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "code"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    DisassociateClientDeviceFromCoreDeviceErrorEntry.struct_class = Types::DisassociateClientDeviceFromCoreDeviceErrorEntry

    DisassociateClientDeviceFromCoreDeviceErrorList.member = Shapes::ShapeRef.new(shape: DisassociateClientDeviceFromCoreDeviceErrorEntry)

    DisassociateServiceRoleFromAccountRequest.struct_class = Types::DisassociateServiceRoleFromAccountRequest

    DisassociateServiceRoleFromAccountResponse.add_member(:disassociated_at, Shapes::ShapeRef.new(shape: String, location_name: "DisassociatedAt"))
    DisassociateServiceRoleFromAccountResponse.struct_class = Types::DisassociateServiceRoleFromAccountResponse

    EffectiveDeployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentID, required: true, location_name: "deploymentId"))
    EffectiveDeployment.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentName, required: true, location_name: "deploymentName"))
    EffectiveDeployment.add_member(:iot_job_id, Shapes::ShapeRef.new(shape: IoTJobId, location_name: "iotJobId"))
    EffectiveDeployment.add_member(:iot_job_arn, Shapes::ShapeRef.new(shape: IoTJobARN, location_name: "iotJobArn"))
    EffectiveDeployment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EffectiveDeployment.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, required: true, location_name: "targetArn"))
    EffectiveDeployment.add_member(:core_device_execution_status, Shapes::ShapeRef.new(shape: EffectiveDeploymentExecutionStatus, required: true, location_name: "coreDeviceExecutionStatus"))
    EffectiveDeployment.add_member(:reason, Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    EffectiveDeployment.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTimestamp"))
    EffectiveDeployment.add_member(:modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedTimestamp"))
    EffectiveDeployment.add_member(:status_details, Shapes::ShapeRef.new(shape: EffectiveDeploymentStatusDetails, location_name: "statusDetails"))
    EffectiveDeployment.struct_class = Types::EffectiveDeployment

    EffectiveDeploymentErrorStack.member = Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorCode)

    EffectiveDeploymentErrorTypeList.member = Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorType)

    EffectiveDeploymentStatusDetails.add_member(:error_stack, Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorStack, location_name: "errorStack"))
    EffectiveDeploymentStatusDetails.add_member(:error_types, Shapes::ShapeRef.new(shape: EffectiveDeploymentErrorTypeList, location_name: "errorTypes"))
    EffectiveDeploymentStatusDetails.struct_class = Types::EffectiveDeploymentStatusDetails

    EffectiveDeploymentsList.member = Shapes::ShapeRef.new(shape: EffectiveDeployment)

    GetComponentRequest.add_member(:recipe_output_format, Shapes::ShapeRef.new(shape: RecipeOutputFormat, location: "querystring", location_name: "recipeOutputFormat"))
    GetComponentRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, required: true, location: "uri", location_name: "arn"))
    GetComponentRequest.struct_class = Types::GetComponentRequest

    GetComponentResponse.add_member(:recipe_output_format, Shapes::ShapeRef.new(shape: RecipeOutputFormat, required: true, location_name: "recipeOutputFormat"))
    GetComponentResponse.add_member(:recipe, Shapes::ShapeRef.new(shape: RecipeBlob, required: true, location_name: "recipe"))
    GetComponentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetComponentResponse.struct_class = Types::GetComponentResponse

    GetComponentVersionArtifactRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, required: true, location: "uri", location_name: "arn"))
    GetComponentVersionArtifactRequest.add_member(:artifact_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "artifactName"))
    GetComponentVersionArtifactRequest.struct_class = Types::GetComponentVersionArtifactRequest

    GetComponentVersionArtifactResponse.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "preSignedUrl"))
    GetComponentVersionArtifactResponse.struct_class = Types::GetComponentVersionArtifactResponse

    GetConnectivityInfoRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, required: true, location: "uri", location_name: "thingName"))
    GetConnectivityInfoRequest.struct_class = Types::GetConnectivityInfoRequest

    GetConnectivityInfoResponse.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: connectivityInfoList, location_name: "ConnectivityInfo"))
    GetConnectivityInfoResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    GetConnectivityInfoResponse.struct_class = Types::GetConnectivityInfoResponse

    GetCoreDeviceRequest.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, required: true, location: "uri", location_name: "coreDeviceThingName"))
    GetCoreDeviceRequest.struct_class = Types::GetCoreDeviceRequest

    GetCoreDeviceResponse.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: "coreDeviceThingName"))
    GetCoreDeviceResponse.add_member(:core_version, Shapes::ShapeRef.new(shape: GGCVersion, location_name: "coreVersion"))
    GetCoreDeviceResponse.add_member(:platform, Shapes::ShapeRef.new(shape: CoreDevicePlatformString, location_name: "platform"))
    GetCoreDeviceResponse.add_member(:architecture, Shapes::ShapeRef.new(shape: CoreDeviceArchitectureString, location_name: "architecture"))
    GetCoreDeviceResponse.add_member(:status, Shapes::ShapeRef.new(shape: CoreDeviceStatus, location_name: "status"))
    GetCoreDeviceResponse.add_member(:last_status_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusUpdateTimestamp"))
    GetCoreDeviceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCoreDeviceResponse.struct_class = Types::GetCoreDeviceResponse

    GetDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "deploymentId"))
    GetDeploymentRequest.struct_class = Types::GetDeploymentRequest

    GetDeploymentResponse.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "targetArn"))
    GetDeploymentResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "revisionId"))
    GetDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deploymentId"))
    GetDeploymentResponse.add_member(:deployment_name, Shapes::ShapeRef.new(shape: NullableString, location_name: "deploymentName"))
    GetDeploymentResponse.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    GetDeploymentResponse.add_member(:iot_job_id, Shapes::ShapeRef.new(shape: NullableString, location_name: "iotJobId"))
    GetDeploymentResponse.add_member(:iot_job_arn, Shapes::ShapeRef.new(shape: IoTJobARN, location_name: "iotJobArn"))
    GetDeploymentResponse.add_member(:components, Shapes::ShapeRef.new(shape: ComponentDeploymentSpecifications, location_name: "components"))
    GetDeploymentResponse.add_member(:deployment_policies, Shapes::ShapeRef.new(shape: DeploymentPolicies, location_name: "deploymentPolicies"))
    GetDeploymentResponse.add_member(:iot_job_configuration, Shapes::ShapeRef.new(shape: DeploymentIoTJobConfiguration, location_name: "iotJobConfiguration"))
    GetDeploymentResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    GetDeploymentResponse.add_member(:is_latest_for_target, Shapes::ShapeRef.new(shape: IsLatestForTarget, location_name: "isLatestForTarget"))
    GetDeploymentResponse.add_member(:parent_target_arn, Shapes::ShapeRef.new(shape: ThingGroupARN, location_name: "parentTargetArn"))
    GetDeploymentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetDeploymentResponse.struct_class = Types::GetDeploymentResponse

    GetServiceRoleForAccountRequest.struct_class = Types::GetServiceRoleForAccountRequest

    GetServiceRoleForAccountResponse.add_member(:associated_at, Shapes::ShapeRef.new(shape: String, location_name: "AssociatedAt"))
    GetServiceRoleForAccountResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    GetServiceRoleForAccountResponse.struct_class = Types::GetServiceRoleForAccountResponse

    InstalledComponent.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    InstalledComponent.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    InstalledComponent.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: InstalledComponentLifecycleState, location_name: "lifecycleState"))
    InstalledComponent.add_member(:lifecycle_state_details, Shapes::ShapeRef.new(shape: LifecycleStateDetails, location_name: "lifecycleStateDetails"))
    InstalledComponent.add_member(:is_root, Shapes::ShapeRef.new(shape: IsRoot, location_name: "isRoot"))
    InstalledComponent.add_member(:last_status_change_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusChangeTimestamp"))
    InstalledComponent.add_member(:last_reported_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastReportedTimestamp"))
    InstalledComponent.add_member(:last_installation_source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "lastInstallationSource"))
    InstalledComponent.add_member(:lifecycle_status_codes, Shapes::ShapeRef.new(shape: InstalledComponentLifecycleStatusCodeList, location_name: "lifecycleStatusCodes"))
    InstalledComponent.struct_class = Types::InstalledComponent

    InstalledComponentLifecycleStatusCodeList.member = Shapes::ShapeRef.new(shape: InstalledComponentLifecycleStatusCode)

    InstalledComponentList.member = Shapes::ShapeRef.new(shape: InstalledComponent)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    IoTJobAbortConfig.add_member(:criteria_list, Shapes::ShapeRef.new(shape: IoTJobAbortCriteriaList, required: true, location_name: "criteriaList"))
    IoTJobAbortConfig.struct_class = Types::IoTJobAbortConfig

    IoTJobAbortCriteria.add_member(:failure_type, Shapes::ShapeRef.new(shape: IoTJobExecutionFailureType, required: true, location_name: "failureType"))
    IoTJobAbortCriteria.add_member(:action, Shapes::ShapeRef.new(shape: IoTJobAbortAction, required: true, location_name: "action"))
    IoTJobAbortCriteria.add_member(:threshold_percentage, Shapes::ShapeRef.new(shape: IoTJobAbortThresholdPercentage, required: true, location_name: "thresholdPercentage"))
    IoTJobAbortCriteria.add_member(:min_number_of_executed_things, Shapes::ShapeRef.new(shape: IoTJobMinimumNumberOfExecutedThings, required: true, location_name: "minNumberOfExecutedThings"))
    IoTJobAbortCriteria.struct_class = Types::IoTJobAbortCriteria

    IoTJobAbortCriteriaList.member = Shapes::ShapeRef.new(shape: IoTJobAbortCriteria)

    IoTJobExecutionsRolloutConfig.add_member(:exponential_rate, Shapes::ShapeRef.new(shape: IoTJobExponentialRolloutRate, location_name: "exponentialRate"))
    IoTJobExecutionsRolloutConfig.add_member(:maximum_per_minute, Shapes::ShapeRef.new(shape: IoTJobMaxExecutionsPerMin, location_name: "maximumPerMinute", metadata: {"box"=>true}))
    IoTJobExecutionsRolloutConfig.struct_class = Types::IoTJobExecutionsRolloutConfig

    IoTJobExponentialRolloutRate.add_member(:base_rate_per_minute, Shapes::ShapeRef.new(shape: IoTJobRolloutBaseRatePerMinute, required: true, location_name: "baseRatePerMinute"))
    IoTJobExponentialRolloutRate.add_member(:increment_factor, Shapes::ShapeRef.new(shape: IoTJobRolloutIncrementFactor, required: true, location_name: "incrementFactor"))
    IoTJobExponentialRolloutRate.add_member(:rate_increase_criteria, Shapes::ShapeRef.new(shape: IoTJobRateIncreaseCriteria, required: true, location_name: "rateIncreaseCriteria"))
    IoTJobExponentialRolloutRate.struct_class = Types::IoTJobExponentialRolloutRate

    IoTJobRateIncreaseCriteria.add_member(:number_of_notified_things, Shapes::ShapeRef.new(shape: IoTJobNumberOfThings, location_name: "numberOfNotifiedThings", metadata: {"box"=>true}))
    IoTJobRateIncreaseCriteria.add_member(:number_of_succeeded_things, Shapes::ShapeRef.new(shape: IoTJobNumberOfThings, location_name: "numberOfSucceededThings", metadata: {"box"=>true}))
    IoTJobRateIncreaseCriteria.struct_class = Types::IoTJobRateIncreaseCriteria

    IoTJobTimeoutConfig.add_member(:in_progress_timeout_in_minutes, Shapes::ShapeRef.new(shape: IoTJobInProgressTimeoutInMinutes, location_name: "inProgressTimeoutInMinutes", metadata: {"box"=>true}))
    IoTJobTimeoutConfig.struct_class = Types::IoTJobTimeoutConfig

    LambdaContainerParams.add_member(:memory_size_in_kb, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "memorySizeInKB", metadata: {"box"=>true}))
    LambdaContainerParams.add_member(:mount_ro_sysfs, Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "mountROSysfs", metadata: {"box"=>true}))
    LambdaContainerParams.add_member(:volumes, Shapes::ShapeRef.new(shape: LambdaVolumeList, location_name: "volumes"))
    LambdaContainerParams.add_member(:devices, Shapes::ShapeRef.new(shape: LambdaDeviceList, location_name: "devices"))
    LambdaContainerParams.struct_class = Types::LambdaContainerParams

    LambdaDeviceList.member = Shapes::ShapeRef.new(shape: LambdaDeviceMount)

    LambdaDeviceMount.add_member(:path, Shapes::ShapeRef.new(shape: FileSystemPath, required: true, location_name: "path"))
    LambdaDeviceMount.add_member(:permission, Shapes::ShapeRef.new(shape: LambdaFilesystemPermission, location_name: "permission"))
    LambdaDeviceMount.add_member(:add_group_owner, Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "addGroupOwner", metadata: {"box"=>true}))
    LambdaDeviceMount.struct_class = Types::LambdaDeviceMount

    LambdaEnvironmentVariables.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    LambdaEnvironmentVariables.value = Shapes::ShapeRef.new(shape: String)

    LambdaEventSource.add_member(:topic, Shapes::ShapeRef.new(shape: TopicString, required: true, location_name: "topic"))
    LambdaEventSource.add_member(:type, Shapes::ShapeRef.new(shape: LambdaEventSourceType, required: true, location_name: "type"))
    LambdaEventSource.struct_class = Types::LambdaEventSource

    LambdaEventSourceList.member = Shapes::ShapeRef.new(shape: LambdaEventSource)

    LambdaExecArgsList.member = Shapes::ShapeRef.new(shape: LambdaExecArg)

    LambdaExecutionParameters.add_member(:event_sources, Shapes::ShapeRef.new(shape: LambdaEventSourceList, location_name: "eventSources"))
    LambdaExecutionParameters.add_member(:max_queue_size, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "maxQueueSize", metadata: {"box"=>true}))
    LambdaExecutionParameters.add_member(:max_instances_count, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "maxInstancesCount", metadata: {"box"=>true}))
    LambdaExecutionParameters.add_member(:max_idle_time_in_seconds, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "maxIdleTimeInSeconds", metadata: {"box"=>true}))
    LambdaExecutionParameters.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "timeoutInSeconds", metadata: {"box"=>true}))
    LambdaExecutionParameters.add_member(:status_timeout_in_seconds, Shapes::ShapeRef.new(shape: OptionalInteger, location_name: "statusTimeoutInSeconds", metadata: {"box"=>true}))
    LambdaExecutionParameters.add_member(:pinned, Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "pinned", metadata: {"box"=>true}))
    LambdaExecutionParameters.add_member(:input_payload_encoding_type, Shapes::ShapeRef.new(shape: LambdaInputPayloadEncodingType, location_name: "inputPayloadEncodingType"))
    LambdaExecutionParameters.add_member(:exec_args, Shapes::ShapeRef.new(shape: LambdaExecArgsList, location_name: "execArgs"))
    LambdaExecutionParameters.add_member(:environment_variables, Shapes::ShapeRef.new(shape: LambdaEnvironmentVariables, location_name: "environmentVariables"))
    LambdaExecutionParameters.add_member(:linux_process_params, Shapes::ShapeRef.new(shape: LambdaLinuxProcessParams, location_name: "linuxProcessParams"))
    LambdaExecutionParameters.struct_class = Types::LambdaExecutionParameters

    LambdaFunctionRecipeSource.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "lambdaArn"))
    LambdaFunctionRecipeSource.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    LambdaFunctionRecipeSource.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    LambdaFunctionRecipeSource.add_member(:component_platforms, Shapes::ShapeRef.new(shape: ComponentPlatformList, location_name: "componentPlatforms"))
    LambdaFunctionRecipeSource.add_member(:component_dependencies, Shapes::ShapeRef.new(shape: ComponentDependencyMap, location_name: "componentDependencies"))
    LambdaFunctionRecipeSource.add_member(:component_lambda_parameters, Shapes::ShapeRef.new(shape: LambdaExecutionParameters, location_name: "componentLambdaParameters"))
    LambdaFunctionRecipeSource.struct_class = Types::LambdaFunctionRecipeSource

    LambdaLinuxProcessParams.add_member(:isolation_mode, Shapes::ShapeRef.new(shape: LambdaIsolationMode, location_name: "isolationMode"))
    LambdaLinuxProcessParams.add_member(:container_params, Shapes::ShapeRef.new(shape: LambdaContainerParams, location_name: "containerParams"))
    LambdaLinuxProcessParams.struct_class = Types::LambdaLinuxProcessParams

    LambdaVolumeList.member = Shapes::ShapeRef.new(shape: LambdaVolumeMount)

    LambdaVolumeMount.add_member(:source_path, Shapes::ShapeRef.new(shape: FileSystemPath, required: true, location_name: "sourcePath"))
    LambdaVolumeMount.add_member(:destination_path, Shapes::ShapeRef.new(shape: FileSystemPath, required: true, location_name: "destinationPath"))
    LambdaVolumeMount.add_member(:permission, Shapes::ShapeRef.new(shape: LambdaFilesystemPermission, location_name: "permission"))
    LambdaVolumeMount.add_member(:add_group_owner, Shapes::ShapeRef.new(shape: OptionalBoolean, location_name: "addGroupOwner", metadata: {"box"=>true}))
    LambdaVolumeMount.struct_class = Types::LambdaVolumeMount

    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: IoTThingName, required: true, location: "uri", location_name: "coreDeviceThingName"))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DefaultMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "nextToken", metadata: {"box"=>true}))
    ListClientDevicesAssociatedWithCoreDeviceRequest.struct_class = Types::ListClientDevicesAssociatedWithCoreDeviceRequest

    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:associated_client_devices, Shapes::ShapeRef.new(shape: AssociatedClientDeviceList, location_name: "associatedClientDevices"))
    ListClientDevicesAssociatedWithCoreDeviceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken", metadata: {"box"=>true}))
    ListClientDevicesAssociatedWithCoreDeviceResponse.struct_class = Types::ListClientDevicesAssociatedWithCoreDeviceResponse

    ListComponentVersionsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentARN, required: true, location: "uri", location_name: "arn"))
    ListComponentVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DefaultMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListComponentVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "nextToken", metadata: {"box"=>true}))
    ListComponentVersionsRequest.struct_class = Types::ListComponentVersionsRequest

    ListComponentVersionsResponse.add_member(:component_versions, Shapes::ShapeRef.new(shape: ComponentVersionList, location_name: "componentVersions"))
    ListComponentVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListComponentVersionsResponse.struct_class = Types::ListComponentVersionsResponse

    ListComponentsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: ComponentVisibilityScope, location: "querystring", location_name: "scope"))
    ListComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DefaultMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "nextToken", metadata: {"box"=>true}))
    ListComponentsRequest.struct_class = Types::ListComponentsRequest

    ListComponentsResponse.add_member(:components, Shapes::ShapeRef.new(shape: ComponentList, location_name: "components"))
    ListComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListComponentsResponse.struct_class = Types::ListComponentsResponse

    ListCoreDevicesRequest.add_member(:thing_group_arn, Shapes::ShapeRef.new(shape: ThingGroupARN, location: "querystring", location_name: "thingGroupArn"))
    ListCoreDevicesRequest.add_member(:status, Shapes::ShapeRef.new(shape: CoreDeviceStatus, location: "querystring", location_name: "status"))
    ListCoreDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DefaultMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListCoreDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "nextToken", metadata: {"box"=>true}))
    ListCoreDevicesRequest.struct_class = Types::ListCoreDevicesRequest

    ListCoreDevicesResponse.add_member(:core_devices, Shapes::ShapeRef.new(shape: CoreDevicesList, location_name: "coreDevices"))
    ListCoreDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListCoreDevicesResponse.struct_class = Types::ListCoreDevicesResponse

    ListDeploymentsRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location: "querystring", location_name: "targetArn"))
    ListDeploymentsRequest.add_member(:history_filter, Shapes::ShapeRef.new(shape: DeploymentHistoryFilter, location: "querystring", location_name: "historyFilter"))
    ListDeploymentsRequest.add_member(:parent_target_arn, Shapes::ShapeRef.new(shape: ThingGroupARN, location: "querystring", location_name: "parentTargetArn"))
    ListDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DefaultMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "nextToken", metadata: {"box"=>true}))
    ListDeploymentsRequest.struct_class = Types::ListDeploymentsRequest

    ListDeploymentsResponse.add_member(:deployments, Shapes::ShapeRef.new(shape: DeploymentList, location_name: "deployments"))
    ListDeploymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListDeploymentsResponse.struct_class = Types::ListDeploymentsResponse

    ListEffectiveDeploymentsRequest.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, required: true, location: "uri", location_name: "coreDeviceThingName"))
    ListEffectiveDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DefaultMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListEffectiveDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "nextToken", metadata: {"box"=>true}))
    ListEffectiveDeploymentsRequest.struct_class = Types::ListEffectiveDeploymentsRequest

    ListEffectiveDeploymentsResponse.add_member(:effective_deployments, Shapes::ShapeRef.new(shape: EffectiveDeploymentsList, location_name: "effectiveDeployments"))
    ListEffectiveDeploymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListEffectiveDeploymentsResponse.struct_class = Types::ListEffectiveDeploymentsResponse

    ListInstalledComponentsRequest.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, required: true, location: "uri", location_name: "coreDeviceThingName"))
    ListInstalledComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DefaultMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListInstalledComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "nextToken", metadata: {"box"=>true}))
    ListInstalledComponentsRequest.add_member(:topology_filter, Shapes::ShapeRef.new(shape: InstalledComponentTopologyFilter, location: "querystring", location_name: "topologyFilter", metadata: {"box"=>true}))
    ListInstalledComponentsRequest.struct_class = Types::ListInstalledComponentsRequest

    ListInstalledComponentsResponse.add_member(:installed_components, Shapes::ShapeRef.new(shape: InstalledComponentList, location_name: "installedComponents"))
    ListInstalledComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "nextToken"))
    ListInstalledComponentsResponse.struct_class = Types::ListInstalledComponentsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GenericV2ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PlatformAttributesMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    PlatformAttributesMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    RequestAlreadyInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RequestAlreadyInProgressException.struct_class = Types::RequestAlreadyInProgressException

    ResolveComponentCandidatesRequest.add_member(:platform, Shapes::ShapeRef.new(shape: ComponentPlatform, location_name: "platform"))
    ResolveComponentCandidatesRequest.add_member(:component_candidates, Shapes::ShapeRef.new(shape: ComponentCandidateList, location_name: "componentCandidates"))
    ResolveComponentCandidatesRequest.struct_class = Types::ResolveComponentCandidatesRequest

    ResolveComponentCandidatesResponse.add_member(:resolved_component_versions, Shapes::ShapeRef.new(shape: ResolvedComponentVersionsList, location_name: "resolvedComponentVersions"))
    ResolveComponentCandidatesResponse.struct_class = Types::ResolveComponentCandidatesResponse

    ResolvedComponentVersion.add_member(:arn, Shapes::ShapeRef.new(shape: ComponentVersionARN, location_name: "arn"))
    ResolvedComponentVersion.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentNameString, location_name: "componentName"))
    ResolvedComponentVersion.add_member(:component_version, Shapes::ShapeRef.new(shape: ComponentVersionString, location_name: "componentVersion"))
    ResolvedComponentVersion.add_member(:recipe, Shapes::ShapeRef.new(shape: RecipeBlob, location_name: "recipe"))
    ResolvedComponentVersion.add_member(:vendor_guidance, Shapes::ShapeRef.new(shape: VendorGuidance, location_name: "vendorGuidance"))
    ResolvedComponentVersion.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "message"))
    ResolvedComponentVersion.struct_class = Types::ResolvedComponentVersion

    ResolvedComponentVersionsList.member = Shapes::ShapeRef.new(shape: ResolvedComponentVersion)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StringMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    StringMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    SystemResourceLimits.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, location_name: "memory"))
    SystemResourceLimits.add_member(:cpus, Shapes::ShapeRef.new(shape: CPU, location_name: "cpus"))
    SystemResourceLimits.struct_class = Types::SystemResourceLimits

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GenericV2ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GenericV2ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectivityInfoRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, required: true, location: "uri", location_name: "thingName"))
    UpdateConnectivityInfoRequest.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: connectivityInfoList, required: true, location_name: "ConnectivityInfo"))
    UpdateConnectivityInfoRequest.struct_class = Types::UpdateConnectivityInfoRequest

    UpdateConnectivityInfoResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    UpdateConnectivityInfoResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UpdateConnectivityInfoResponse.struct_class = Types::UpdateConnectivityInfoResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    connectivityInfoList.member = Shapes::ShapeRef.new(shape: ConnectivityInfo)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-30"

      api.metadata = {
        "apiVersion" => "2020-11-30",
        "endpointPrefix" => "greengrass",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AWS GreengrassV2",
        "serviceFullName" => "AWS IoT Greengrass V2",
        "serviceId" => "GreengrassV2",
        "signatureVersion" => "v4",
        "uid" => "greengrassv2-2020-11-30",
      }

      api.add_operation(:associate_service_role_to_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateServiceRoleToAccount"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/servicerole"
        o.input = Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateServiceRoleToAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_associate_client_device_with_core_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateClientDeviceWithCoreDevice"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateClientDeviceWithCoreDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateClientDeviceWithCoreDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_disassociate_client_device_from_core_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateClientDeviceFromCoreDevice"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateClientDeviceFromCoreDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateClientDeviceFromCoreDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/v2/deployments/{deploymentId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_component_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComponentVersion"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/v2/createComponentVersion"
        o.input = Shapes::ShapeRef.new(shape: CreateComponentVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComponentVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RequestAlreadyInProgressException)
      end)

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/v2/deployments"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RequestAlreadyInProgressException)
      end)

      api.add_operation(:delete_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComponent"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/v2/components/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_core_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCoreDevice"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/v2/coreDevices/{coreDeviceThingName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCoreDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeployment"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/v2/deployments/{deploymentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComponent"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/components/{arn}/metadata"
        o.input = Shapes::ShapeRef.new(shape: DescribeComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_service_role_from_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateServiceRoleFromAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/greengrass/servicerole"
        o.input = Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateServiceRoleFromAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponent"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/components/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_component_version_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponentVersionArtifact"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/components/{arn}/artifacts/{artifactName+}"
        o.input = Shapes::ShapeRef.new(shape: GetComponentVersionArtifactRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComponentVersionArtifactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_connectivity_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectivityInfo"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/things/{thingName}/connectivityInfo"
        o.input = Shapes::ShapeRef.new(shape: GetConnectivityInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectivityInfoResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_core_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoreDevice"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/coreDevices/{coreDeviceThingName}"
        o.input = Shapes::ShapeRef.new(shape: GetCoreDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoreDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/deployments/{deploymentId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_service_role_for_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceRoleForAccount"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/servicerole"
        o.input = Shapes::ShapeRef.new(shape: GetServiceRoleForAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceRoleForAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_client_devices_associated_with_core_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClientDevicesAssociatedWithCoreDevice"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices"
        o.input = Shapes::ShapeRef.new(shape: ListClientDevicesAssociatedWithCoreDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClientDevicesAssociatedWithCoreDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_component_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponentVersions"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/components/{arn}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListComponentVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponents"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/components"
        o.input = Shapes::ShapeRef.new(shape: ListComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_core_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoreDevices"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/coreDevices"
        o.input = Shapes::ShapeRef.new(shape: ListCoreDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoreDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/deployments"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_effective_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEffectiveDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments"
        o.input = Shapes::ShapeRef.new(shape: ListEffectiveDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEffectiveDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_installed_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstalledComponents"
        o.http_method = "GET"
        o.http_request_uri = "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents"
        o.input = Shapes::ShapeRef.new(shape: ListInstalledComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstalledComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:resolve_component_candidates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResolveComponentCandidates"
        o.http_method = "POST"
        o.http_request_uri = "/greengrass/v2/resolveComponentCandidates"
        o.input = Shapes::ShapeRef.new(shape: ResolveComponentCandidatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ResolveComponentCandidatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_connectivity_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectivityInfo"
        o.http_method = "PUT"
        o.http_request_uri = "/greengrass/things/{thingName}/connectivityInfo"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectivityInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectivityInfoResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
