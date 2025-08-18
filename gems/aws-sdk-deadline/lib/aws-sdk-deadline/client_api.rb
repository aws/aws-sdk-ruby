# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Deadline
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceleratorCapabilities = Shapes::StructureShape.new(name: 'AcceleratorCapabilities')
    AcceleratorCountRange = Shapes::StructureShape.new(name: 'AcceleratorCountRange')
    AcceleratorName = Shapes::StringShape.new(name: 'AcceleratorName')
    AcceleratorRuntime = Shapes::StringShape.new(name: 'AcceleratorRuntime')
    AcceleratorSelection = Shapes::StructureShape.new(name: 'AcceleratorSelection')
    AcceleratorSelections = Shapes::ListShape.new(name: 'AcceleratorSelections')
    AcceleratorTotalMemoryMiBRange = Shapes::StructureShape.new(name: 'AcceleratorTotalMemoryMiBRange')
    AcceleratorType = Shapes::StringShape.new(name: 'AcceleratorType')
    AcceleratorTypes = Shapes::ListShape.new(name: 'AcceleratorTypes')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessKeyId = Shapes::StringShape.new(name: 'AccessKeyId')
    AcquiredLimit = Shapes::StructureShape.new(name: 'AcquiredLimit')
    AcquiredLimits = Shapes::ListShape.new(name: 'AcquiredLimits')
    AggregationId = Shapes::StringShape.new(name: 'AggregationId')
    AllowedStorageProfileIds = Shapes::ListShape.new(name: 'AllowedStorageProfileIds')
    AmountCapabilityName = Shapes::StringShape.new(name: 'AmountCapabilityName')
    AmountRequirementName = Shapes::StringShape.new(name: 'AmountRequirementName')
    AssignedEnvironmentEnterSessionActionDefinition = Shapes::StructureShape.new(name: 'AssignedEnvironmentEnterSessionActionDefinition')
    AssignedEnvironmentExitSessionActionDefinition = Shapes::StructureShape.new(name: 'AssignedEnvironmentExitSessionActionDefinition')
    AssignedSession = Shapes::StructureShape.new(name: 'AssignedSession')
    AssignedSessionAction = Shapes::StructureShape.new(name: 'AssignedSessionAction')
    AssignedSessionActionDefinition = Shapes::UnionShape.new(name: 'AssignedSessionActionDefinition')
    AssignedSessionActions = Shapes::ListShape.new(name: 'AssignedSessionActions')
    AssignedSessions = Shapes::MapShape.new(name: 'AssignedSessions')
    AssignedSyncInputJobAttachmentsSessionActionDefinition = Shapes::StructureShape.new(name: 'AssignedSyncInputJobAttachmentsSessionActionDefinition')
    AssignedTaskRunSessionActionDefinition = Shapes::StructureShape.new(name: 'AssignedTaskRunSessionActionDefinition')
    AssociateMemberToFarmRequest = Shapes::StructureShape.new(name: 'AssociateMemberToFarmRequest')
    AssociateMemberToFarmResponse = Shapes::StructureShape.new(name: 'AssociateMemberToFarmResponse')
    AssociateMemberToFleetRequest = Shapes::StructureShape.new(name: 'AssociateMemberToFleetRequest')
    AssociateMemberToFleetResponse = Shapes::StructureShape.new(name: 'AssociateMemberToFleetResponse')
    AssociateMemberToJobRequest = Shapes::StructureShape.new(name: 'AssociateMemberToJobRequest')
    AssociateMemberToJobResponse = Shapes::StructureShape.new(name: 'AssociateMemberToJobResponse')
    AssociateMemberToQueueRequest = Shapes::StructureShape.new(name: 'AssociateMemberToQueueRequest')
    AssociateMemberToQueueResponse = Shapes::StructureShape.new(name: 'AssociateMemberToQueueResponse')
    AssumeFleetRoleForReadRequest = Shapes::StructureShape.new(name: 'AssumeFleetRoleForReadRequest')
    AssumeFleetRoleForReadResponse = Shapes::StructureShape.new(name: 'AssumeFleetRoleForReadResponse')
    AssumeFleetRoleForWorkerRequest = Shapes::StructureShape.new(name: 'AssumeFleetRoleForWorkerRequest')
    AssumeFleetRoleForWorkerResponse = Shapes::StructureShape.new(name: 'AssumeFleetRoleForWorkerResponse')
    AssumeQueueRoleForReadRequest = Shapes::StructureShape.new(name: 'AssumeQueueRoleForReadRequest')
    AssumeQueueRoleForReadResponse = Shapes::StructureShape.new(name: 'AssumeQueueRoleForReadResponse')
    AssumeQueueRoleForUserRequest = Shapes::StructureShape.new(name: 'AssumeQueueRoleForUserRequest')
    AssumeQueueRoleForUserResponse = Shapes::StructureShape.new(name: 'AssumeQueueRoleForUserResponse')
    AssumeQueueRoleForWorkerRequest = Shapes::StructureShape.new(name: 'AssumeQueueRoleForWorkerRequest')
    AssumeQueueRoleForWorkerResponse = Shapes::StructureShape.new(name: 'AssumeQueueRoleForWorkerResponse')
    Attachments = Shapes::StructureShape.new(name: 'Attachments')
    AttributeCapabilityName = Shapes::StringShape.new(name: 'AttributeCapabilityName')
    AttributeCapabilityValue = Shapes::StringShape.new(name: 'AttributeCapabilityValue')
    AttributeCapabilityValuesList = Shapes::ListShape.new(name: 'AttributeCapabilityValuesList')
    AutoScalingMode = Shapes::StringShape.new(name: 'AutoScalingMode')
    AutoScalingStatus = Shapes::StringShape.new(name: 'AutoScalingStatus')
    AwsCredentials = Shapes::StructureShape.new(name: 'AwsCredentials')
    BatchGetJobEntityErrors = Shapes::ListShape.new(name: 'BatchGetJobEntityErrors')
    BatchGetJobEntityList = Shapes::ListShape.new(name: 'BatchGetJobEntityList')
    BatchGetJobEntityRequest = Shapes::StructureShape.new(name: 'BatchGetJobEntityRequest')
    BatchGetJobEntityResponse = Shapes::StructureShape.new(name: 'BatchGetJobEntityResponse')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    BudgetActionToAdd = Shapes::StructureShape.new(name: 'BudgetActionToAdd')
    BudgetActionToRemove = Shapes::StructureShape.new(name: 'BudgetActionToRemove')
    BudgetActionType = Shapes::StringShape.new(name: 'BudgetActionType')
    BudgetActionsToAdd = Shapes::ListShape.new(name: 'BudgetActionsToAdd')
    BudgetActionsToRemove = Shapes::ListShape.new(name: 'BudgetActionsToRemove')
    BudgetId = Shapes::StringShape.new(name: 'BudgetId')
    BudgetSchedule = Shapes::UnionShape.new(name: 'BudgetSchedule')
    BudgetStatus = Shapes::StringShape.new(name: 'BudgetStatus')
    BudgetSummaries = Shapes::ListShape.new(name: 'BudgetSummaries')
    BudgetSummary = Shapes::StructureShape.new(name: 'BudgetSummary')
    CancelSessionActions = Shapes::MapShape.new(name: 'CancelSessionActions')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CombinationExpression = Shapes::StringShape.new(name: 'CombinationExpression')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CompletedStatus = Shapes::StringShape.new(name: 'CompletedStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    ConsumedUsageLimit = Shapes::FloatShape.new(name: 'ConsumedUsageLimit')
    ConsumedUsages = Shapes::StructureShape.new(name: 'ConsumedUsages')
    CopyJobTemplateRequest = Shapes::StructureShape.new(name: 'CopyJobTemplateRequest')
    CopyJobTemplateResponse = Shapes::StructureShape.new(name: 'CopyJobTemplateResponse')
    CpuArchitectureType = Shapes::StringShape.new(name: 'CpuArchitectureType')
    CreateBudgetRequest = Shapes::StructureShape.new(name: 'CreateBudgetRequest')
    CreateBudgetResponse = Shapes::StructureShape.new(name: 'CreateBudgetResponse')
    CreateFarmRequest = Shapes::StructureShape.new(name: 'CreateFarmRequest')
    CreateFarmResponse = Shapes::StructureShape.new(name: 'CreateFarmResponse')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResponse = Shapes::StructureShape.new(name: 'CreateFleetResponse')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateJobTargetTaskRunStatus = Shapes::StringShape.new(name: 'CreateJobTargetTaskRunStatus')
    CreateLicenseEndpointRequest = Shapes::StructureShape.new(name: 'CreateLicenseEndpointRequest')
    CreateLicenseEndpointRequestSecurityGroupIdsList = Shapes::ListShape.new(name: 'CreateLicenseEndpointRequestSecurityGroupIdsList')
    CreateLicenseEndpointRequestSubnetIdsList = Shapes::ListShape.new(name: 'CreateLicenseEndpointRequestSubnetIdsList')
    CreateLicenseEndpointResponse = Shapes::StructureShape.new(name: 'CreateLicenseEndpointResponse')
    CreateLimitRequest = Shapes::StructureShape.new(name: 'CreateLimitRequest')
    CreateLimitResponse = Shapes::StructureShape.new(name: 'CreateLimitResponse')
    CreateMonitorRequest = Shapes::StructureShape.new(name: 'CreateMonitorRequest')
    CreateMonitorResponse = Shapes::StructureShape.new(name: 'CreateMonitorResponse')
    CreateQueueEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateQueueEnvironmentRequest')
    CreateQueueEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateQueueEnvironmentResponse')
    CreateQueueFleetAssociationRequest = Shapes::StructureShape.new(name: 'CreateQueueFleetAssociationRequest')
    CreateQueueFleetAssociationResponse = Shapes::StructureShape.new(name: 'CreateQueueFleetAssociationResponse')
    CreateQueueLimitAssociationRequest = Shapes::StructureShape.new(name: 'CreateQueueLimitAssociationRequest')
    CreateQueueLimitAssociationResponse = Shapes::StructureShape.new(name: 'CreateQueueLimitAssociationResponse')
    CreateQueueRequest = Shapes::StructureShape.new(name: 'CreateQueueRequest')
    CreateQueueResponse = Shapes::StructureShape.new(name: 'CreateQueueResponse')
    CreateStorageProfileRequest = Shapes::StructureShape.new(name: 'CreateStorageProfileRequest')
    CreateStorageProfileResponse = Shapes::StructureShape.new(name: 'CreateStorageProfileResponse')
    CreateWorkerRequest = Shapes::StructureShape.new(name: 'CreateWorkerRequest')
    CreateWorkerResponse = Shapes::StructureShape.new(name: 'CreateWorkerResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt', timestampFormat: "iso8601")
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    CustomFleetAmountCapabilities = Shapes::ListShape.new(name: 'CustomFleetAmountCapabilities')
    CustomFleetAttributeCapabilities = Shapes::ListShape.new(name: 'CustomFleetAttributeCapabilities')
    CustomerManagedFleetConfiguration = Shapes::StructureShape.new(name: 'CustomerManagedFleetConfiguration')
    CustomerManagedFleetOperatingSystemFamily = Shapes::StringShape.new(name: 'CustomerManagedFleetOperatingSystemFamily')
    CustomerManagedWorkerCapabilities = Shapes::StructureShape.new(name: 'CustomerManagedWorkerCapabilities')
    DateTimeFilterExpression = Shapes::StructureShape.new(name: 'DateTimeFilterExpression')
    DefaultQueueBudgetAction = Shapes::StringShape.new(name: 'DefaultQueueBudgetAction')
    DeleteBudgetRequest = Shapes::StructureShape.new(name: 'DeleteBudgetRequest')
    DeleteBudgetResponse = Shapes::StructureShape.new(name: 'DeleteBudgetResponse')
    DeleteFarmRequest = Shapes::StructureShape.new(name: 'DeleteFarmRequest')
    DeleteFarmResponse = Shapes::StructureShape.new(name: 'DeleteFarmResponse')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResponse = Shapes::StructureShape.new(name: 'DeleteFleetResponse')
    DeleteLicenseEndpointRequest = Shapes::StructureShape.new(name: 'DeleteLicenseEndpointRequest')
    DeleteLicenseEndpointResponse = Shapes::StructureShape.new(name: 'DeleteLicenseEndpointResponse')
    DeleteLimitRequest = Shapes::StructureShape.new(name: 'DeleteLimitRequest')
    DeleteLimitResponse = Shapes::StructureShape.new(name: 'DeleteLimitResponse')
    DeleteMeteredProductRequest = Shapes::StructureShape.new(name: 'DeleteMeteredProductRequest')
    DeleteMeteredProductResponse = Shapes::StructureShape.new(name: 'DeleteMeteredProductResponse')
    DeleteMonitorRequest = Shapes::StructureShape.new(name: 'DeleteMonitorRequest')
    DeleteMonitorResponse = Shapes::StructureShape.new(name: 'DeleteMonitorResponse')
    DeleteQueueEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteQueueEnvironmentRequest')
    DeleteQueueEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteQueueEnvironmentResponse')
    DeleteQueueFleetAssociationRequest = Shapes::StructureShape.new(name: 'DeleteQueueFleetAssociationRequest')
    DeleteQueueFleetAssociationResponse = Shapes::StructureShape.new(name: 'DeleteQueueFleetAssociationResponse')
    DeleteQueueLimitAssociationRequest = Shapes::StructureShape.new(name: 'DeleteQueueLimitAssociationRequest')
    DeleteQueueLimitAssociationResponse = Shapes::StructureShape.new(name: 'DeleteQueueLimitAssociationResponse')
    DeleteQueueRequest = Shapes::StructureShape.new(name: 'DeleteQueueRequest')
    DeleteQueueResponse = Shapes::StructureShape.new(name: 'DeleteQueueResponse')
    DeleteStorageProfileRequest = Shapes::StructureShape.new(name: 'DeleteStorageProfileRequest')
    DeleteStorageProfileResponse = Shapes::StructureShape.new(name: 'DeleteStorageProfileResponse')
    DeleteWorkerRequest = Shapes::StructureShape.new(name: 'DeleteWorkerRequest')
    DeleteWorkerResponse = Shapes::StructureShape.new(name: 'DeleteWorkerResponse')
    DependenciesList = Shapes::ListShape.new(name: 'DependenciesList')
    DependencyConsumerResolutionStatus = Shapes::StringShape.new(name: 'DependencyConsumerResolutionStatus')
    DependencyCounts = Shapes::StructureShape.new(name: 'DependencyCounts')
    Description = Shapes::StringShape.new(name: 'Description')
    DesiredWorkerStatus = Shapes::StringShape.new(name: 'DesiredWorkerStatus')
    DisassociateMemberFromFarmRequest = Shapes::StructureShape.new(name: 'DisassociateMemberFromFarmRequest')
    DisassociateMemberFromFarmResponse = Shapes::StructureShape.new(name: 'DisassociateMemberFromFarmResponse')
    DisassociateMemberFromFleetRequest = Shapes::StructureShape.new(name: 'DisassociateMemberFromFleetRequest')
    DisassociateMemberFromFleetResponse = Shapes::StructureShape.new(name: 'DisassociateMemberFromFleetResponse')
    DisassociateMemberFromJobRequest = Shapes::StructureShape.new(name: 'DisassociateMemberFromJobRequest')
    DisassociateMemberFromJobResponse = Shapes::StructureShape.new(name: 'DisassociateMemberFromJobResponse')
    DisassociateMemberFromQueueRequest = Shapes::StructureShape.new(name: 'DisassociateMemberFromQueueRequest')
    DisassociateMemberFromQueueResponse = Shapes::StructureShape.new(name: 'DisassociateMemberFromQueueResponse')
    DnsName = Shapes::StringShape.new(name: 'DnsName')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    Double = Shapes::FloatShape.new(name: 'Double')
    EbsIops = Shapes::IntegerShape.new(name: 'EbsIops')
    EbsThroughputMiB = Shapes::IntegerShape.new(name: 'EbsThroughputMiB')
    Ec2EbsVolume = Shapes::StructureShape.new(name: 'Ec2EbsVolume')
    Ec2MarketType = Shapes::StringShape.new(name: 'Ec2MarketType')
    EndedAt = Shapes::TimestampShape.new(name: 'EndedAt', timestampFormat: "iso8601")
    EndsAt = Shapes::TimestampShape.new(name: 'EndsAt', timestampFormat: "iso8601")
    EnvironmentDetailsEntity = Shapes::StructureShape.new(name: 'EnvironmentDetailsEntity')
    EnvironmentDetailsError = Shapes::StructureShape.new(name: 'EnvironmentDetailsError')
    EnvironmentDetailsIdentifiers = Shapes::StructureShape.new(name: 'EnvironmentDetailsIdentifiers')
    EnvironmentEnterSessionActionDefinition = Shapes::StructureShape.new(name: 'EnvironmentEnterSessionActionDefinition')
    EnvironmentEnterSessionActionDefinitionSummary = Shapes::StructureShape.new(name: 'EnvironmentEnterSessionActionDefinitionSummary')
    EnvironmentExitSessionActionDefinition = Shapes::StructureShape.new(name: 'EnvironmentExitSessionActionDefinition')
    EnvironmentExitSessionActionDefinitionSummary = Shapes::StructureShape.new(name: 'EnvironmentExitSessionActionDefinitionSummary')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentTemplate = Shapes::StringShape.new(name: 'EnvironmentTemplate')
    EnvironmentTemplateType = Shapes::StringShape.new(name: 'EnvironmentTemplateType')
    ExceptionContext = Shapes::MapShape.new(name: 'ExceptionContext')
    FarmId = Shapes::StringShape.new(name: 'FarmId')
    FarmMember = Shapes::StructureShape.new(name: 'FarmMember')
    FarmMembers = Shapes::ListShape.new(name: 'FarmMembers')
    FarmSummaries = Shapes::ListShape.new(name: 'FarmSummaries')
    FarmSummary = Shapes::StructureShape.new(name: 'FarmSummary')
    FieldSortExpression = Shapes::StructureShape.new(name: 'FieldSortExpression')
    FileSystemLocation = Shapes::StructureShape.new(name: 'FileSystemLocation')
    FileSystemLocationName = Shapes::StringShape.new(name: 'FileSystemLocationName')
    FileSystemLocationType = Shapes::StringShape.new(name: 'FileSystemLocationType')
    FileSystemLocationsList = Shapes::ListShape.new(name: 'FileSystemLocationsList')
    FixedBudgetSchedule = Shapes::StructureShape.new(name: 'FixedBudgetSchedule')
    FleetAmountCapabilities = Shapes::ListShape.new(name: 'FleetAmountCapabilities')
    FleetAmountCapability = Shapes::StructureShape.new(name: 'FleetAmountCapability')
    FleetAttributeCapabilities = Shapes::ListShape.new(name: 'FleetAttributeCapabilities')
    FleetAttributeCapability = Shapes::StructureShape.new(name: 'FleetAttributeCapability')
    FleetCapabilities = Shapes::StructureShape.new(name: 'FleetCapabilities')
    FleetConfiguration = Shapes::UnionShape.new(name: 'FleetConfiguration')
    FleetId = Shapes::StringShape.new(name: 'FleetId')
    FleetMember = Shapes::StructureShape.new(name: 'FleetMember')
    FleetMembers = Shapes::ListShape.new(name: 'FleetMembers')
    FleetStatus = Shapes::StringShape.new(name: 'FleetStatus')
    FleetSummaries = Shapes::ListShape.new(name: 'FleetSummaries')
    FleetSummary = Shapes::StructureShape.new(name: 'FleetSummary')
    Float = Shapes::FloatShape.new(name: 'Float')
    FloatString = Shapes::StringShape.new(name: 'FloatString')
    GetBudgetRequest = Shapes::StructureShape.new(name: 'GetBudgetRequest')
    GetBudgetResponse = Shapes::StructureShape.new(name: 'GetBudgetResponse')
    GetFarmRequest = Shapes::StructureShape.new(name: 'GetFarmRequest')
    GetFarmResponse = Shapes::StructureShape.new(name: 'GetFarmResponse')
    GetFleetRequest = Shapes::StructureShape.new(name: 'GetFleetRequest')
    GetFleetResponse = Shapes::StructureShape.new(name: 'GetFleetResponse')
    GetJobEntityError = Shapes::UnionShape.new(name: 'GetJobEntityError')
    GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
    GetJobResponse = Shapes::StructureShape.new(name: 'GetJobResponse')
    GetLicenseEndpointRequest = Shapes::StructureShape.new(name: 'GetLicenseEndpointRequest')
    GetLicenseEndpointResponse = Shapes::StructureShape.new(name: 'GetLicenseEndpointResponse')
    GetLicenseEndpointResponseSecurityGroupIdsList = Shapes::ListShape.new(name: 'GetLicenseEndpointResponseSecurityGroupIdsList')
    GetLicenseEndpointResponseSubnetIdsList = Shapes::ListShape.new(name: 'GetLicenseEndpointResponseSubnetIdsList')
    GetLimitRequest = Shapes::StructureShape.new(name: 'GetLimitRequest')
    GetLimitResponse = Shapes::StructureShape.new(name: 'GetLimitResponse')
    GetMonitorRequest = Shapes::StructureShape.new(name: 'GetMonitorRequest')
    GetMonitorResponse = Shapes::StructureShape.new(name: 'GetMonitorResponse')
    GetQueueEnvironmentRequest = Shapes::StructureShape.new(name: 'GetQueueEnvironmentRequest')
    GetQueueEnvironmentResponse = Shapes::StructureShape.new(name: 'GetQueueEnvironmentResponse')
    GetQueueFleetAssociationRequest = Shapes::StructureShape.new(name: 'GetQueueFleetAssociationRequest')
    GetQueueFleetAssociationResponse = Shapes::StructureShape.new(name: 'GetQueueFleetAssociationResponse')
    GetQueueLimitAssociationRequest = Shapes::StructureShape.new(name: 'GetQueueLimitAssociationRequest')
    GetQueueLimitAssociationResponse = Shapes::StructureShape.new(name: 'GetQueueLimitAssociationResponse')
    GetQueueRequest = Shapes::StructureShape.new(name: 'GetQueueRequest')
    GetQueueResponse = Shapes::StructureShape.new(name: 'GetQueueResponse')
    GetSessionActionRequest = Shapes::StructureShape.new(name: 'GetSessionActionRequest')
    GetSessionActionResponse = Shapes::StructureShape.new(name: 'GetSessionActionResponse')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    GetSessionsStatisticsAggregationRequest = Shapes::StructureShape.new(name: 'GetSessionsStatisticsAggregationRequest')
    GetSessionsStatisticsAggregationResponse = Shapes::StructureShape.new(name: 'GetSessionsStatisticsAggregationResponse')
    GetStepRequest = Shapes::StructureShape.new(name: 'GetStepRequest')
    GetStepResponse = Shapes::StructureShape.new(name: 'GetStepResponse')
    GetStorageProfileForQueueRequest = Shapes::StructureShape.new(name: 'GetStorageProfileForQueueRequest')
    GetStorageProfileForQueueResponse = Shapes::StructureShape.new(name: 'GetStorageProfileForQueueResponse')
    GetStorageProfileRequest = Shapes::StructureShape.new(name: 'GetStorageProfileRequest')
    GetStorageProfileResponse = Shapes::StructureShape.new(name: 'GetStorageProfileResponse')
    GetTaskRequest = Shapes::StructureShape.new(name: 'GetTaskRequest')
    GetTaskResponse = Shapes::StructureShape.new(name: 'GetTaskResponse')
    GetWorkerRequest = Shapes::StructureShape.new(name: 'GetWorkerRequest')
    GetWorkerResponse = Shapes::StructureShape.new(name: 'GetWorkerResponse')
    HostConfiguration = Shapes::StructureShape.new(name: 'HostConfiguration')
    HostConfigurationScript = Shapes::StringShape.new(name: 'HostConfigurationScript')
    HostConfigurationScriptTimeoutSeconds = Shapes::IntegerShape.new(name: 'HostConfigurationScriptTimeoutSeconds')
    HostName = Shapes::StringShape.new(name: 'HostName')
    HostPropertiesRequest = Shapes::StructureShape.new(name: 'HostPropertiesRequest')
    HostPropertiesResponse = Shapes::StructureShape.new(name: 'HostPropertiesResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdentityCenterApplicationArn = Shapes::StringShape.new(name: 'IdentityCenterApplicationArn')
    IdentityCenterInstanceArn = Shapes::StringShape.new(name: 'IdentityCenterInstanceArn')
    IdentityCenterPrincipalId = Shapes::StringShape.new(name: 'IdentityCenterPrincipalId')
    IdentityStoreId = Shapes::StringShape.new(name: 'IdentityStoreId')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypes = Shapes::ListShape.new(name: 'InstanceTypes')
    IntString = Shapes::StringShape.new(name: 'IntString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    IpAddresses = Shapes::StructureShape.new(name: 'IpAddresses')
    IpV4Address = Shapes::StringShape.new(name: 'IpV4Address')
    IpV4Addresses = Shapes::ListShape.new(name: 'IpV4Addresses')
    IpV6Address = Shapes::StringShape.new(name: 'IpV6Address')
    IpV6Addresses = Shapes::ListShape.new(name: 'IpV6Addresses')
    JobAttachmentDetailsEntity = Shapes::StructureShape.new(name: 'JobAttachmentDetailsEntity')
    JobAttachmentDetailsError = Shapes::StructureShape.new(name: 'JobAttachmentDetailsError')
    JobAttachmentDetailsIdentifiers = Shapes::StructureShape.new(name: 'JobAttachmentDetailsIdentifiers')
    JobAttachmentSettings = Shapes::StructureShape.new(name: 'JobAttachmentSettings')
    JobAttachmentsFileSystem = Shapes::StringShape.new(name: 'JobAttachmentsFileSystem')
    JobDescription = Shapes::StringShape.new(name: 'JobDescription')
    JobDetailsEntity = Shapes::StructureShape.new(name: 'JobDetailsEntity')
    JobDetailsError = Shapes::StructureShape.new(name: 'JobDetailsError')
    JobDetailsIdentifiers = Shapes::StructureShape.new(name: 'JobDetailsIdentifiers')
    JobEntity = Shapes::UnionShape.new(name: 'JobEntity')
    JobEntityErrorCode = Shapes::StringShape.new(name: 'JobEntityErrorCode')
    JobEntityIdentifiers = Shapes::ListShape.new(name: 'JobEntityIdentifiers')
    JobEntityIdentifiersUnion = Shapes::UnionShape.new(name: 'JobEntityIdentifiersUnion')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobLifecycleStatus = Shapes::StringShape.new(name: 'JobLifecycleStatus')
    JobMember = Shapes::StructureShape.new(name: 'JobMember')
    JobMembers = Shapes::ListShape.new(name: 'JobMembers')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobParameter = Shapes::UnionShape.new(name: 'JobParameter')
    JobParameterDefinition = Shapes::DocumentShape.new(name: 'JobParameterDefinition', document: true)
    JobParameterDefinitions = Shapes::ListShape.new(name: 'JobParameterDefinitions')
    JobParameters = Shapes::MapShape.new(name: 'JobParameters')
    JobParametersKeyString = Shapes::StringShape.new(name: 'JobParametersKeyString')
    JobPriority = Shapes::IntegerShape.new(name: 'JobPriority')
    JobRunAsUser = Shapes::StructureShape.new(name: 'JobRunAsUser')
    JobSearchSummaries = Shapes::ListShape.new(name: 'JobSearchSummaries')
    JobSearchSummary = Shapes::StructureShape.new(name: 'JobSearchSummary')
    JobSummaries = Shapes::ListShape.new(name: 'JobSummaries')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobTargetTaskRunStatus = Shapes::StringShape.new(name: 'JobTargetTaskRunStatus')
    JobTemplate = Shapes::StringShape.new(name: 'JobTemplate')
    JobTemplateType = Shapes::StringShape.new(name: 'JobTemplateType')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LicenseEndpointId = Shapes::StringShape.new(name: 'LicenseEndpointId')
    LicenseEndpointStatus = Shapes::StringShape.new(name: 'LicenseEndpointStatus')
    LicenseEndpointSummaries = Shapes::ListShape.new(name: 'LicenseEndpointSummaries')
    LicenseEndpointSummary = Shapes::StructureShape.new(name: 'LicenseEndpointSummary')
    LicenseProduct = Shapes::StringShape.new(name: 'LicenseProduct')
    LimitId = Shapes::StringShape.new(name: 'LimitId')
    LimitSummaries = Shapes::ListShape.new(name: 'LimitSummaries')
    LimitSummary = Shapes::StructureShape.new(name: 'LimitSummary')
    ListAttributeCapabilityValue = Shapes::ListShape.new(name: 'ListAttributeCapabilityValue')
    ListAvailableMeteredProductsRequest = Shapes::StructureShape.new(name: 'ListAvailableMeteredProductsRequest')
    ListAvailableMeteredProductsResponse = Shapes::StructureShape.new(name: 'ListAvailableMeteredProductsResponse')
    ListBudgetsRequest = Shapes::StructureShape.new(name: 'ListBudgetsRequest')
    ListBudgetsResponse = Shapes::StructureShape.new(name: 'ListBudgetsResponse')
    ListFarmMembersRequest = Shapes::StructureShape.new(name: 'ListFarmMembersRequest')
    ListFarmMembersResponse = Shapes::StructureShape.new(name: 'ListFarmMembersResponse')
    ListFarmsRequest = Shapes::StructureShape.new(name: 'ListFarmsRequest')
    ListFarmsResponse = Shapes::StructureShape.new(name: 'ListFarmsResponse')
    ListFleetMembersRequest = Shapes::StructureShape.new(name: 'ListFleetMembersRequest')
    ListFleetMembersResponse = Shapes::StructureShape.new(name: 'ListFleetMembersResponse')
    ListFleetsRequest = Shapes::StructureShape.new(name: 'ListFleetsRequest')
    ListFleetsResponse = Shapes::StructureShape.new(name: 'ListFleetsResponse')
    ListJobMembersRequest = Shapes::StructureShape.new(name: 'ListJobMembersRequest')
    ListJobMembersResponse = Shapes::StructureShape.new(name: 'ListJobMembersResponse')
    ListJobParameterDefinitionsRequest = Shapes::StructureShape.new(name: 'ListJobParameterDefinitionsRequest')
    ListJobParameterDefinitionsResponse = Shapes::StructureShape.new(name: 'ListJobParameterDefinitionsResponse')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListLicenseEndpointsRequest = Shapes::StructureShape.new(name: 'ListLicenseEndpointsRequest')
    ListLicenseEndpointsResponse = Shapes::StructureShape.new(name: 'ListLicenseEndpointsResponse')
    ListLimitsRequest = Shapes::StructureShape.new(name: 'ListLimitsRequest')
    ListLimitsResponse = Shapes::StructureShape.new(name: 'ListLimitsResponse')
    ListMeteredProductsRequest = Shapes::StructureShape.new(name: 'ListMeteredProductsRequest')
    ListMeteredProductsResponse = Shapes::StructureShape.new(name: 'ListMeteredProductsResponse')
    ListMonitorsRequest = Shapes::StructureShape.new(name: 'ListMonitorsRequest')
    ListMonitorsResponse = Shapes::StructureShape.new(name: 'ListMonitorsResponse')
    ListQueueEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListQueueEnvironmentsRequest')
    ListQueueEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListQueueEnvironmentsResponse')
    ListQueueFleetAssociationsRequest = Shapes::StructureShape.new(name: 'ListQueueFleetAssociationsRequest')
    ListQueueFleetAssociationsResponse = Shapes::StructureShape.new(name: 'ListQueueFleetAssociationsResponse')
    ListQueueLimitAssociationsRequest = Shapes::StructureShape.new(name: 'ListQueueLimitAssociationsRequest')
    ListQueueLimitAssociationsResponse = Shapes::StructureShape.new(name: 'ListQueueLimitAssociationsResponse')
    ListQueueMembersRequest = Shapes::StructureShape.new(name: 'ListQueueMembersRequest')
    ListQueueMembersResponse = Shapes::StructureShape.new(name: 'ListQueueMembersResponse')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResponse = Shapes::StructureShape.new(name: 'ListQueuesResponse')
    ListSessionActionsRequest = Shapes::StructureShape.new(name: 'ListSessionActionsRequest')
    ListSessionActionsResponse = Shapes::StructureShape.new(name: 'ListSessionActionsResponse')
    ListSessionsForWorkerRequest = Shapes::StructureShape.new(name: 'ListSessionsForWorkerRequest')
    ListSessionsForWorkerResponse = Shapes::StructureShape.new(name: 'ListSessionsForWorkerResponse')
    ListSessionsForWorkerSummaries = Shapes::ListShape.new(name: 'ListSessionsForWorkerSummaries')
    ListSessionsRequest = Shapes::StructureShape.new(name: 'ListSessionsRequest')
    ListSessionsResponse = Shapes::StructureShape.new(name: 'ListSessionsResponse')
    ListStepConsumersRequest = Shapes::StructureShape.new(name: 'ListStepConsumersRequest')
    ListStepConsumersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListStepConsumersRequestMaxResultsInteger')
    ListStepConsumersResponse = Shapes::StructureShape.new(name: 'ListStepConsumersResponse')
    ListStepDependenciesRequest = Shapes::StructureShape.new(name: 'ListStepDependenciesRequest')
    ListStepDependenciesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListStepDependenciesRequestMaxResultsInteger')
    ListStepDependenciesResponse = Shapes::StructureShape.new(name: 'ListStepDependenciesResponse')
    ListStepsRequest = Shapes::StructureShape.new(name: 'ListStepsRequest')
    ListStepsResponse = Shapes::StructureShape.new(name: 'ListStepsResponse')
    ListStorageProfilesForQueueRequest = Shapes::StructureShape.new(name: 'ListStorageProfilesForQueueRequest')
    ListStorageProfilesForQueueResponse = Shapes::StructureShape.new(name: 'ListStorageProfilesForQueueResponse')
    ListStorageProfilesRequest = Shapes::StructureShape.new(name: 'ListStorageProfilesRequest')
    ListStorageProfilesResponse = Shapes::StructureShape.new(name: 'ListStorageProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTasksRequest = Shapes::StructureShape.new(name: 'ListTasksRequest')
    ListTasksResponse = Shapes::StructureShape.new(name: 'ListTasksResponse')
    ListWorkersRequest = Shapes::StructureShape.new(name: 'ListWorkersRequest')
    ListWorkersResponse = Shapes::StructureShape.new(name: 'ListWorkersResponse')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogDriver = Shapes::StringShape.new(name: 'LogDriver')
    LogError = Shapes::StringShape.new(name: 'LogError')
    LogOptions = Shapes::MapShape.new(name: 'LogOptions')
    LogParameters = Shapes::MapShape.new(name: 'LogParameters')
    LogicalOperator = Shapes::StringShape.new(name: 'LogicalOperator')
    ManifestProperties = Shapes::StructureShape.new(name: 'ManifestProperties')
    ManifestPropertiesInputManifestHashString = Shapes::StringShape.new(name: 'ManifestPropertiesInputManifestHashString')
    ManifestPropertiesInputManifestPathString = Shapes::StringShape.new(name: 'ManifestPropertiesInputManifestPathString')
    ManifestPropertiesList = Shapes::ListShape.new(name: 'ManifestPropertiesList')
    ManifestPropertiesRootPathString = Shapes::StringShape.new(name: 'ManifestPropertiesRootPathString')
    MaxCount = Shapes::IntegerShape.new(name: 'MaxCount')
    MaxFailedTasksCount = Shapes::IntegerShape.new(name: 'MaxFailedTasksCount')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxRetriesPerTask = Shapes::IntegerShape.new(name: 'MaxRetriesPerTask')
    MaxWorkerCount = Shapes::IntegerShape.new(name: 'MaxWorkerCount')
    MembershipLevel = Shapes::StringShape.new(name: 'MembershipLevel')
    MemoryAmountMiB = Shapes::IntegerShape.new(name: 'MemoryAmountMiB')
    MemoryMiBRange = Shapes::StructureShape.new(name: 'MemoryMiBRange')
    MeteredProductId = Shapes::StringShape.new(name: 'MeteredProductId')
    MeteredProductSummary = Shapes::StructureShape.new(name: 'MeteredProductSummary')
    MeteredProductSummaryList = Shapes::ListShape.new(name: 'MeteredProductSummaryList')
    MinOneMaxInteger = Shapes::IntegerShape.new(name: 'MinOneMaxInteger')
    MinOneMaxTenThousand = Shapes::IntegerShape.new(name: 'MinOneMaxTenThousand')
    MinZeroMaxInteger = Shapes::IntegerShape.new(name: 'MinZeroMaxInteger')
    MonitorId = Shapes::StringShape.new(name: 'MonitorId')
    MonitorSummaries = Shapes::ListShape.new(name: 'MonitorSummaries')
    MonitorSummary = Shapes::StructureShape.new(name: 'MonitorSummary')
    NextItemOffset = Shapes::IntegerShape.new(name: 'NextItemOffset')
    OutputRelativeDirectoriesList = Shapes::ListShape.new(name: 'OutputRelativeDirectoriesList')
    OutputRelativeDirectoriesListMemberString = Shapes::StringShape.new(name: 'OutputRelativeDirectoriesListMemberString')
    ParameterFilterExpression = Shapes::StructureShape.new(name: 'ParameterFilterExpression')
    ParameterSortExpression = Shapes::StructureShape.new(name: 'ParameterSortExpression')
    ParameterSpace = Shapes::StructureShape.new(name: 'ParameterSpace')
    ParameterString = Shapes::StringShape.new(name: 'ParameterString')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PathFormat = Shapes::StringShape.new(name: 'PathFormat')
    PathMappingRule = Shapes::StructureShape.new(name: 'PathMappingRule')
    PathMappingRules = Shapes::ListShape.new(name: 'PathMappingRules')
    PathString = Shapes::StringShape.new(name: 'PathString')
    Period = Shapes::StringShape.new(name: 'Period')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PosixUser = Shapes::StructureShape.new(name: 'PosixUser')
    PosixUserGroupString = Shapes::StringShape.new(name: 'PosixUserGroupString')
    PosixUserUserString = Shapes::StringShape.new(name: 'PosixUserUserString')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    ProcessExitCode = Shapes::IntegerShape.new(name: 'ProcessExitCode')
    PutMeteredProductRequest = Shapes::StructureShape.new(name: 'PutMeteredProductRequest')
    PutMeteredProductResponse = Shapes::StructureShape.new(name: 'PutMeteredProductResponse')
    QueueBlockedReason = Shapes::StringShape.new(name: 'QueueBlockedReason')
    QueueEnvironmentId = Shapes::StringShape.new(name: 'QueueEnvironmentId')
    QueueEnvironmentSummaries = Shapes::ListShape.new(name: 'QueueEnvironmentSummaries')
    QueueEnvironmentSummary = Shapes::StructureShape.new(name: 'QueueEnvironmentSummary')
    QueueFleetAssociationStatus = Shapes::StringShape.new(name: 'QueueFleetAssociationStatus')
    QueueFleetAssociationSummaries = Shapes::ListShape.new(name: 'QueueFleetAssociationSummaries')
    QueueFleetAssociationSummary = Shapes::StructureShape.new(name: 'QueueFleetAssociationSummary')
    QueueId = Shapes::StringShape.new(name: 'QueueId')
    QueueLimitAssociationStatus = Shapes::StringShape.new(name: 'QueueLimitAssociationStatus')
    QueueLimitAssociationSummaries = Shapes::ListShape.new(name: 'QueueLimitAssociationSummaries')
    QueueLimitAssociationSummary = Shapes::StructureShape.new(name: 'QueueLimitAssociationSummary')
    QueueMember = Shapes::StructureShape.new(name: 'QueueMember')
    QueueMemberList = Shapes::ListShape.new(name: 'QueueMemberList')
    QueueStatus = Shapes::StringShape.new(name: 'QueueStatus')
    QueueSummaries = Shapes::ListShape.new(name: 'QueueSummaries')
    QueueSummary = Shapes::StructureShape.new(name: 'QueueSummary')
    RequiredFileSystemLocationNames = Shapes::ListShape.new(name: 'RequiredFileSystemLocationNames')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseBudgetAction = Shapes::StructureShape.new(name: 'ResponseBudgetAction')
    ResponseBudgetActionList = Shapes::ListShape.new(name: 'ResponseBudgetActionList')
    RunAs = Shapes::StringShape.new(name: 'RunAs')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    SearchFilterExpression = Shapes::UnionShape.new(name: 'SearchFilterExpression')
    SearchFilterExpressions = Shapes::ListShape.new(name: 'SearchFilterExpressions')
    SearchGroupedFilterExpressions = Shapes::StructureShape.new(name: 'SearchGroupedFilterExpressions')
    SearchJobsRequest = Shapes::StructureShape.new(name: 'SearchJobsRequest')
    SearchJobsRequestItemOffsetInteger = Shapes::IntegerShape.new(name: 'SearchJobsRequestItemOffsetInteger')
    SearchJobsRequestPageSizeInteger = Shapes::IntegerShape.new(name: 'SearchJobsRequestPageSizeInteger')
    SearchJobsRequestQueueIdsList = Shapes::ListShape.new(name: 'SearchJobsRequestQueueIdsList')
    SearchJobsResponse = Shapes::StructureShape.new(name: 'SearchJobsResponse')
    SearchSortExpression = Shapes::UnionShape.new(name: 'SearchSortExpression')
    SearchSortExpressions = Shapes::ListShape.new(name: 'SearchSortExpressions')
    SearchStepsRequest = Shapes::StructureShape.new(name: 'SearchStepsRequest')
    SearchStepsRequestItemOffsetInteger = Shapes::IntegerShape.new(name: 'SearchStepsRequestItemOffsetInteger')
    SearchStepsRequestPageSizeInteger = Shapes::IntegerShape.new(name: 'SearchStepsRequestPageSizeInteger')
    SearchStepsRequestQueueIdsList = Shapes::ListShape.new(name: 'SearchStepsRequestQueueIdsList')
    SearchStepsResponse = Shapes::StructureShape.new(name: 'SearchStepsResponse')
    SearchTasksRequest = Shapes::StructureShape.new(name: 'SearchTasksRequest')
    SearchTasksRequestItemOffsetInteger = Shapes::IntegerShape.new(name: 'SearchTasksRequestItemOffsetInteger')
    SearchTasksRequestPageSizeInteger = Shapes::IntegerShape.new(name: 'SearchTasksRequestPageSizeInteger')
    SearchTasksRequestQueueIdsList = Shapes::ListShape.new(name: 'SearchTasksRequestQueueIdsList')
    SearchTasksResponse = Shapes::StructureShape.new(name: 'SearchTasksResponse')
    SearchTerm = Shapes::StringShape.new(name: 'SearchTerm')
    SearchTermFilterExpression = Shapes::StructureShape.new(name: 'SearchTermFilterExpression')
    SearchTermMatchingType = Shapes::StringShape.new(name: 'SearchTermMatchingType')
    SearchWorkersRequest = Shapes::StructureShape.new(name: 'SearchWorkersRequest')
    SearchWorkersRequestFleetIdsList = Shapes::ListShape.new(name: 'SearchWorkersRequestFleetIdsList')
    SearchWorkersRequestItemOffsetInteger = Shapes::IntegerShape.new(name: 'SearchWorkersRequestItemOffsetInteger')
    SearchWorkersRequestPageSizeInteger = Shapes::IntegerShape.new(name: 'SearchWorkersRequestPageSizeInteger')
    SearchWorkersResponse = Shapes::StructureShape.new(name: 'SearchWorkersResponse')
    SecretAccessKey = Shapes::StringShape.new(name: 'SecretAccessKey')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    ServiceManagedEc2FleetConfiguration = Shapes::StructureShape.new(name: 'ServiceManagedEc2FleetConfiguration')
    ServiceManagedEc2InstanceCapabilities = Shapes::StructureShape.new(name: 'ServiceManagedEc2InstanceCapabilities')
    ServiceManagedEc2InstanceMarketOptions = Shapes::StructureShape.new(name: 'ServiceManagedEc2InstanceMarketOptions')
    ServiceManagedFleetOperatingSystemFamily = Shapes::StringShape.new(name: 'ServiceManagedFleetOperatingSystemFamily')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionReason = Shapes::StringShape.new(name: 'ServiceQuotaExceededExceptionReason')
    SessionActionDefinition = Shapes::UnionShape.new(name: 'SessionActionDefinition')
    SessionActionDefinitionSummary = Shapes::UnionShape.new(name: 'SessionActionDefinitionSummary')
    SessionActionId = Shapes::StringShape.new(name: 'SessionActionId')
    SessionActionIdList = Shapes::ListShape.new(name: 'SessionActionIdList')
    SessionActionProgressMessage = Shapes::StringShape.new(name: 'SessionActionProgressMessage')
    SessionActionProgressPercent = Shapes::FloatShape.new(name: 'SessionActionProgressPercent')
    SessionActionStatus = Shapes::StringShape.new(name: 'SessionActionStatus')
    SessionActionSummaries = Shapes::ListShape.new(name: 'SessionActionSummaries')
    SessionActionSummary = Shapes::StructureShape.new(name: 'SessionActionSummary')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionLifecycleStatus = Shapes::StringShape.new(name: 'SessionLifecycleStatus')
    SessionLifecycleTargetStatus = Shapes::StringShape.new(name: 'SessionLifecycleTargetStatus')
    SessionSummaries = Shapes::ListShape.new(name: 'SessionSummaries')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SessionToken = Shapes::StringShape.new(name: 'SessionToken')
    SessionsStatisticsAggregationStatus = Shapes::StringShape.new(name: 'SessionsStatisticsAggregationStatus')
    SessionsStatisticsResources = Shapes::UnionShape.new(name: 'SessionsStatisticsResources')
    SessionsStatisticsResourcesFleetIdsList = Shapes::ListShape.new(name: 'SessionsStatisticsResourcesFleetIdsList')
    SessionsStatisticsResourcesQueueIdsList = Shapes::ListShape.new(name: 'SessionsStatisticsResourcesQueueIdsList')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartSessionsStatisticsAggregationRequest = Shapes::StructureShape.new(name: 'StartSessionsStatisticsAggregationRequest')
    StartSessionsStatisticsAggregationResponse = Shapes::StructureShape.new(name: 'StartSessionsStatisticsAggregationResponse')
    StartedAt = Shapes::TimestampShape.new(name: 'StartedAt', timestampFormat: "iso8601")
    StartsAt = Shapes::TimestampShape.new(name: 'StartsAt', timestampFormat: "iso8601")
    Statistics = Shapes::StructureShape.new(name: 'Statistics')
    StatisticsList = Shapes::ListShape.new(name: 'StatisticsList')
    Stats = Shapes::StructureShape.new(name: 'Stats')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StepAmountCapabilities = Shapes::ListShape.new(name: 'StepAmountCapabilities')
    StepAmountCapability = Shapes::StructureShape.new(name: 'StepAmountCapability')
    StepAttributeCapabilities = Shapes::ListShape.new(name: 'StepAttributeCapabilities')
    StepAttributeCapability = Shapes::StructureShape.new(name: 'StepAttributeCapability')
    StepConsumer = Shapes::StructureShape.new(name: 'StepConsumer')
    StepConsumers = Shapes::ListShape.new(name: 'StepConsumers')
    StepDependencies = Shapes::ListShape.new(name: 'StepDependencies')
    StepDependency = Shapes::StructureShape.new(name: 'StepDependency')
    StepDescription = Shapes::StringShape.new(name: 'StepDescription')
    StepDetailsEntity = Shapes::StructureShape.new(name: 'StepDetailsEntity')
    StepDetailsError = Shapes::StructureShape.new(name: 'StepDetailsError')
    StepDetailsIdentifiers = Shapes::StructureShape.new(name: 'StepDetailsIdentifiers')
    StepId = Shapes::StringShape.new(name: 'StepId')
    StepLifecycleStatus = Shapes::StringShape.new(name: 'StepLifecycleStatus')
    StepName = Shapes::StringShape.new(name: 'StepName')
    StepParameter = Shapes::StructureShape.new(name: 'StepParameter')
    StepParameterList = Shapes::ListShape.new(name: 'StepParameterList')
    StepParameterName = Shapes::StringShape.new(name: 'StepParameterName')
    StepParameterType = Shapes::StringShape.new(name: 'StepParameterType')
    StepRequiredCapabilities = Shapes::StructureShape.new(name: 'StepRequiredCapabilities')
    StepSearchSummaries = Shapes::ListShape.new(name: 'StepSearchSummaries')
    StepSearchSummary = Shapes::StructureShape.new(name: 'StepSearchSummary')
    StepSummaries = Shapes::ListShape.new(name: 'StepSummaries')
    StepSummary = Shapes::StructureShape.new(name: 'StepSummary')
    StepTargetTaskRunStatus = Shapes::StringShape.new(name: 'StepTargetTaskRunStatus')
    StorageProfileId = Shapes::StringShape.new(name: 'StorageProfileId')
    StorageProfileOperatingSystemFamily = Shapes::StringShape.new(name: 'StorageProfileOperatingSystemFamily')
    StorageProfileSummaries = Shapes::ListShape.new(name: 'StorageProfileSummaries')
    StorageProfileSummary = Shapes::StructureShape.new(name: 'StorageProfileSummary')
    String = Shapes::StringShape.new(name: 'String')
    StringFilter = Shapes::StringShape.new(name: 'StringFilter')
    StringFilterExpression = Shapes::StructureShape.new(name: 'StringFilterExpression')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Subdomain = Shapes::StringShape.new(name: 'Subdomain')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SyncInputJobAttachmentsSessionActionDefinition = Shapes::StructureShape.new(name: 'SyncInputJobAttachmentsSessionActionDefinition')
    SyncInputJobAttachmentsSessionActionDefinitionSummary = Shapes::StructureShape.new(name: 'SyncInputJobAttachmentsSessionActionDefinitionSummary')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagPropagationMode = Shapes::StringShape.new(name: 'TagPropagationMode')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TaskFailureRetryCount = Shapes::IntegerShape.new(name: 'TaskFailureRetryCount')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    TaskParameterValue = Shapes::UnionShape.new(name: 'TaskParameterValue')
    TaskParameters = Shapes::MapShape.new(name: 'TaskParameters')
    TaskRetryCount = Shapes::IntegerShape.new(name: 'TaskRetryCount')
    TaskRunManifestPropertiesListRequest = Shapes::ListShape.new(name: 'TaskRunManifestPropertiesListRequest')
    TaskRunManifestPropertiesListResponse = Shapes::ListShape.new(name: 'TaskRunManifestPropertiesListResponse')
    TaskRunManifestPropertiesRequest = Shapes::StructureShape.new(name: 'TaskRunManifestPropertiesRequest')
    TaskRunManifestPropertiesRequestOutputManifestHashString = Shapes::StringShape.new(name: 'TaskRunManifestPropertiesRequestOutputManifestHashString')
    TaskRunManifestPropertiesRequestOutputManifestPathString = Shapes::StringShape.new(name: 'TaskRunManifestPropertiesRequestOutputManifestPathString')
    TaskRunManifestPropertiesResponse = Shapes::StructureShape.new(name: 'TaskRunManifestPropertiesResponse')
    TaskRunSessionActionDefinition = Shapes::StructureShape.new(name: 'TaskRunSessionActionDefinition')
    TaskRunSessionActionDefinitionSummary = Shapes::StructureShape.new(name: 'TaskRunSessionActionDefinitionSummary')
    TaskRunStatus = Shapes::StringShape.new(name: 'TaskRunStatus')
    TaskRunStatusCounts = Shapes::MapShape.new(name: 'TaskRunStatusCounts')
    TaskSearchSummaries = Shapes::ListShape.new(name: 'TaskSearchSummaries')
    TaskSearchSummary = Shapes::StructureShape.new(name: 'TaskSearchSummary')
    TaskSummaries = Shapes::ListShape.new(name: 'TaskSummaries')
    TaskSummary = Shapes::StructureShape.new(name: 'TaskSummary')
    TaskTargetRunStatus = Shapes::StringShape.new(name: 'TaskTargetRunStatus')
    ThresholdPercentage = Shapes::FloatShape.new(name: 'ThresholdPercentage')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TotalResults = Shapes::IntegerShape.new(name: 'TotalResults')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBudgetRequest = Shapes::StructureShape.new(name: 'UpdateBudgetRequest')
    UpdateBudgetResponse = Shapes::StructureShape.new(name: 'UpdateBudgetResponse')
    UpdateFarmRequest = Shapes::StructureShape.new(name: 'UpdateFarmRequest')
    UpdateFarmResponse = Shapes::StructureShape.new(name: 'UpdateFarmResponse')
    UpdateFleetRequest = Shapes::StructureShape.new(name: 'UpdateFleetRequest')
    UpdateFleetResponse = Shapes::StructureShape.new(name: 'UpdateFleetResponse')
    UpdateJobLifecycleStatus = Shapes::StringShape.new(name: 'UpdateJobLifecycleStatus')
    UpdateJobRequest = Shapes::StructureShape.new(name: 'UpdateJobRequest')
    UpdateJobResponse = Shapes::StructureShape.new(name: 'UpdateJobResponse')
    UpdateLimitRequest = Shapes::StructureShape.new(name: 'UpdateLimitRequest')
    UpdateLimitResponse = Shapes::StructureShape.new(name: 'UpdateLimitResponse')
    UpdateMonitorRequest = Shapes::StructureShape.new(name: 'UpdateMonitorRequest')
    UpdateMonitorResponse = Shapes::StructureShape.new(name: 'UpdateMonitorResponse')
    UpdateQueueEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateQueueEnvironmentRequest')
    UpdateQueueEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateQueueEnvironmentResponse')
    UpdateQueueFleetAssociationRequest = Shapes::StructureShape.new(name: 'UpdateQueueFleetAssociationRequest')
    UpdateQueueFleetAssociationResponse = Shapes::StructureShape.new(name: 'UpdateQueueFleetAssociationResponse')
    UpdateQueueFleetAssociationStatus = Shapes::StringShape.new(name: 'UpdateQueueFleetAssociationStatus')
    UpdateQueueLimitAssociationRequest = Shapes::StructureShape.new(name: 'UpdateQueueLimitAssociationRequest')
    UpdateQueueLimitAssociationResponse = Shapes::StructureShape.new(name: 'UpdateQueueLimitAssociationResponse')
    UpdateQueueLimitAssociationStatus = Shapes::StringShape.new(name: 'UpdateQueueLimitAssociationStatus')
    UpdateQueueRequest = Shapes::StructureShape.new(name: 'UpdateQueueRequest')
    UpdateQueueResponse = Shapes::StructureShape.new(name: 'UpdateQueueResponse')
    UpdateSessionRequest = Shapes::StructureShape.new(name: 'UpdateSessionRequest')
    UpdateSessionResponse = Shapes::StructureShape.new(name: 'UpdateSessionResponse')
    UpdateStepRequest = Shapes::StructureShape.new(name: 'UpdateStepRequest')
    UpdateStepResponse = Shapes::StructureShape.new(name: 'UpdateStepResponse')
    UpdateStorageProfileRequest = Shapes::StructureShape.new(name: 'UpdateStorageProfileRequest')
    UpdateStorageProfileResponse = Shapes::StructureShape.new(name: 'UpdateStorageProfileResponse')
    UpdateTaskRequest = Shapes::StructureShape.new(name: 'UpdateTaskRequest')
    UpdateTaskResponse = Shapes::StructureShape.new(name: 'UpdateTaskResponse')
    UpdateWorkerRequest = Shapes::StructureShape.new(name: 'UpdateWorkerRequest')
    UpdateWorkerResponse = Shapes::StructureShape.new(name: 'UpdateWorkerResponse')
    UpdateWorkerScheduleInterval = Shapes::IntegerShape.new(name: 'UpdateWorkerScheduleInterval')
    UpdateWorkerScheduleRequest = Shapes::StructureShape.new(name: 'UpdateWorkerScheduleRequest')
    UpdateWorkerScheduleResponse = Shapes::StructureShape.new(name: 'UpdateWorkerScheduleResponse')
    UpdatedAt = Shapes::TimestampShape.new(name: 'UpdatedAt', timestampFormat: "iso8601")
    UpdatedBy = Shapes::StringShape.new(name: 'UpdatedBy')
    UpdatedSessionActionInfo = Shapes::StructureShape.new(name: 'UpdatedSessionActionInfo')
    UpdatedSessionActions = Shapes::MapShape.new(name: 'UpdatedSessionActions')
    UpdatedWorkerStatus = Shapes::StringShape.new(name: 'UpdatedWorkerStatus')
    Url = Shapes::StringShape.new(name: 'Url')
    UsageGroupBy = Shapes::ListShape.new(name: 'UsageGroupBy')
    UsageGroupByField = Shapes::StringShape.new(name: 'UsageGroupByField')
    UsageStatistic = Shapes::StringShape.new(name: 'UsageStatistic')
    UsageStatistics = Shapes::ListShape.new(name: 'UsageStatistics')
    UsageTrackingResource = Shapes::UnionShape.new(name: 'UsageTrackingResource')
    UsageType = Shapes::StringShape.new(name: 'UsageType')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserJobsFirst = Shapes::StructureShape.new(name: 'UserJobsFirst')
    VCpuCountRange = Shapes::StructureShape.new(name: 'VCpuCountRange')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    VpcResourceConfigurationArn = Shapes::StringShape.new(name: 'VpcResourceConfigurationArn')
    VpcResourceConfigurationArns = Shapes::ListShape.new(name: 'VpcResourceConfigurationArns')
    WindowsUser = Shapes::StructureShape.new(name: 'WindowsUser')
    WindowsUserPasswordArnString = Shapes::StringShape.new(name: 'WindowsUserPasswordArnString')
    WindowsUserUserString = Shapes::StringShape.new(name: 'WindowsUserUserString')
    WorkerAmountCapability = Shapes::StructureShape.new(name: 'WorkerAmountCapability')
    WorkerAmountCapabilityList = Shapes::ListShape.new(name: 'WorkerAmountCapabilityList')
    WorkerAttributeCapability = Shapes::StructureShape.new(name: 'WorkerAttributeCapability')
    WorkerAttributeCapabilityList = Shapes::ListShape.new(name: 'WorkerAttributeCapabilityList')
    WorkerCapabilities = Shapes::StructureShape.new(name: 'WorkerCapabilities')
    WorkerId = Shapes::StringShape.new(name: 'WorkerId')
    WorkerSearchSummaries = Shapes::ListShape.new(name: 'WorkerSearchSummaries')
    WorkerSearchSummary = Shapes::StructureShape.new(name: 'WorkerSearchSummary')
    WorkerSessionSummary = Shapes::StructureShape.new(name: 'WorkerSessionSummary')
    WorkerStatus = Shapes::StringShape.new(name: 'WorkerStatus')
    WorkerSummaries = Shapes::ListShape.new(name: 'WorkerSummaries')
    WorkerSummary = Shapes::StructureShape.new(name: 'WorkerSummary')

    AcceleratorCapabilities.add_member(:selections, Shapes::ShapeRef.new(shape: AcceleratorSelections, required: true, location_name: "selections"))
    AcceleratorCapabilities.add_member(:count, Shapes::ShapeRef.new(shape: AcceleratorCountRange, location_name: "count"))
    AcceleratorCapabilities.struct_class = Types::AcceleratorCapabilities

    AcceleratorCountRange.add_member(:min, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "min"))
    AcceleratorCountRange.add_member(:max, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: "max"))
    AcceleratorCountRange.struct_class = Types::AcceleratorCountRange

    AcceleratorSelection.add_member(:name, Shapes::ShapeRef.new(shape: AcceleratorName, required: true, location_name: "name"))
    AcceleratorSelection.add_member(:runtime, Shapes::ShapeRef.new(shape: AcceleratorRuntime, location_name: "runtime"))
    AcceleratorSelection.struct_class = Types::AcceleratorSelection

    AcceleratorSelections.member = Shapes::ShapeRef.new(shape: AcceleratorSelection)

    AcceleratorTotalMemoryMiBRange.add_member(:min, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "min"))
    AcceleratorTotalMemoryMiBRange.add_member(:max, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: "max"))
    AcceleratorTotalMemoryMiBRange.struct_class = Types::AcceleratorTotalMemoryMiBRange

    AcceleratorTypes.member = Shapes::ShapeRef.new(shape: AcceleratorType)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AcquiredLimit.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location_name: "limitId"))
    AcquiredLimit.add_member(:count, Shapes::ShapeRef.new(shape: MinOneMaxInteger, required: true, location_name: "count"))
    AcquiredLimit.struct_class = Types::AcquiredLimit

    AcquiredLimits.member = Shapes::ShapeRef.new(shape: AcquiredLimit)

    AllowedStorageProfileIds.member = Shapes::ShapeRef.new(shape: StorageProfileId)

    AssignedEnvironmentEnterSessionActionDefinition.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    AssignedEnvironmentEnterSessionActionDefinition.struct_class = Types::AssignedEnvironmentEnterSessionActionDefinition

    AssignedEnvironmentExitSessionActionDefinition.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    AssignedEnvironmentExitSessionActionDefinition.struct_class = Types::AssignedEnvironmentExitSessionActionDefinition

    AssignedSession.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    AssignedSession.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    AssignedSession.add_member(:session_actions, Shapes::ShapeRef.new(shape: AssignedSessionActions, required: true, location_name: "sessionActions"))
    AssignedSession.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, required: true, location_name: "logConfiguration"))
    AssignedSession.struct_class = Types::AssignedSession

    AssignedSessionAction.add_member(:session_action_id, Shapes::ShapeRef.new(shape: SessionActionId, required: true, location_name: "sessionActionId"))
    AssignedSessionAction.add_member(:definition, Shapes::ShapeRef.new(shape: AssignedSessionActionDefinition, required: true, location_name: "definition"))
    AssignedSessionAction.struct_class = Types::AssignedSessionAction

    AssignedSessionActionDefinition.add_member(:env_enter, Shapes::ShapeRef.new(shape: AssignedEnvironmentEnterSessionActionDefinition, location_name: "envEnter"))
    AssignedSessionActionDefinition.add_member(:env_exit, Shapes::ShapeRef.new(shape: AssignedEnvironmentExitSessionActionDefinition, location_name: "envExit"))
    AssignedSessionActionDefinition.add_member(:task_run, Shapes::ShapeRef.new(shape: AssignedTaskRunSessionActionDefinition, location_name: "taskRun"))
    AssignedSessionActionDefinition.add_member(:sync_input_job_attachments, Shapes::ShapeRef.new(shape: AssignedSyncInputJobAttachmentsSessionActionDefinition, location_name: "syncInputJobAttachments"))
    AssignedSessionActionDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AssignedSessionActionDefinition.add_member_subclass(:env_enter, Types::AssignedSessionActionDefinition::EnvEnter)
    AssignedSessionActionDefinition.add_member_subclass(:env_exit, Types::AssignedSessionActionDefinition::EnvExit)
    AssignedSessionActionDefinition.add_member_subclass(:task_run, Types::AssignedSessionActionDefinition::TaskRun)
    AssignedSessionActionDefinition.add_member_subclass(:sync_input_job_attachments, Types::AssignedSessionActionDefinition::SyncInputJobAttachments)
    AssignedSessionActionDefinition.add_member_subclass(:unknown, Types::AssignedSessionActionDefinition::Unknown)
    AssignedSessionActionDefinition.struct_class = Types::AssignedSessionActionDefinition

    AssignedSessionActions.member = Shapes::ShapeRef.new(shape: AssignedSessionAction)

    AssignedSessions.key = Shapes::ShapeRef.new(shape: SessionId)
    AssignedSessions.value = Shapes::ShapeRef.new(shape: AssignedSession)

    AssignedSyncInputJobAttachmentsSessionActionDefinition.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, location_name: "stepId"))
    AssignedSyncInputJobAttachmentsSessionActionDefinition.struct_class = Types::AssignedSyncInputJobAttachmentsSessionActionDefinition

    AssignedTaskRunSessionActionDefinition.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    AssignedTaskRunSessionActionDefinition.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    AssignedTaskRunSessionActionDefinition.add_member(:parameters, Shapes::ShapeRef.new(shape: TaskParameters, required: true, location_name: "parameters"))
    AssignedTaskRunSessionActionDefinition.struct_class = Types::AssignedTaskRunSessionActionDefinition

    AssociateMemberToFarmRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssociateMemberToFarmRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    AssociateMemberToFarmRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    AssociateMemberToFarmRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    AssociateMemberToFarmRequest.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    AssociateMemberToFarmRequest.struct_class = Types::AssociateMemberToFarmRequest

    AssociateMemberToFarmResponse.struct_class = Types::AssociateMemberToFarmResponse

    AssociateMemberToFleetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssociateMemberToFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    AssociateMemberToFleetRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    AssociateMemberToFleetRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    AssociateMemberToFleetRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    AssociateMemberToFleetRequest.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    AssociateMemberToFleetRequest.struct_class = Types::AssociateMemberToFleetRequest

    AssociateMemberToFleetResponse.struct_class = Types::AssociateMemberToFleetResponse

    AssociateMemberToJobRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssociateMemberToJobRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    AssociateMemberToJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    AssociateMemberToJobRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    AssociateMemberToJobRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    AssociateMemberToJobRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    AssociateMemberToJobRequest.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    AssociateMemberToJobRequest.struct_class = Types::AssociateMemberToJobRequest

    AssociateMemberToJobResponse.struct_class = Types::AssociateMemberToJobResponse

    AssociateMemberToQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssociateMemberToQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    AssociateMemberToQueueRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    AssociateMemberToQueueRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    AssociateMemberToQueueRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    AssociateMemberToQueueRequest.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    AssociateMemberToQueueRequest.struct_class = Types::AssociateMemberToQueueRequest

    AssociateMemberToQueueResponse.struct_class = Types::AssociateMemberToQueueResponse

    AssumeFleetRoleForReadRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssumeFleetRoleForReadRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    AssumeFleetRoleForReadRequest.struct_class = Types::AssumeFleetRoleForReadRequest

    AssumeFleetRoleForReadResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: AwsCredentials, required: true, location_name: "credentials"))
    AssumeFleetRoleForReadResponse.struct_class = Types::AssumeFleetRoleForReadResponse

    AssumeFleetRoleForWorkerRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssumeFleetRoleForWorkerRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    AssumeFleetRoleForWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    AssumeFleetRoleForWorkerRequest.struct_class = Types::AssumeFleetRoleForWorkerRequest

    AssumeFleetRoleForWorkerResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: AwsCredentials, required: true, location_name: "credentials"))
    AssumeFleetRoleForWorkerResponse.struct_class = Types::AssumeFleetRoleForWorkerResponse

    AssumeQueueRoleForReadRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssumeQueueRoleForReadRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    AssumeQueueRoleForReadRequest.struct_class = Types::AssumeQueueRoleForReadRequest

    AssumeQueueRoleForReadResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: AwsCredentials, required: true, location_name: "credentials"))
    AssumeQueueRoleForReadResponse.struct_class = Types::AssumeQueueRoleForReadResponse

    AssumeQueueRoleForUserRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssumeQueueRoleForUserRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    AssumeQueueRoleForUserRequest.struct_class = Types::AssumeQueueRoleForUserRequest

    AssumeQueueRoleForUserResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: AwsCredentials, required: true, location_name: "credentials"))
    AssumeQueueRoleForUserResponse.struct_class = Types::AssumeQueueRoleForUserResponse

    AssumeQueueRoleForWorkerRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    AssumeQueueRoleForWorkerRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    AssumeQueueRoleForWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    AssumeQueueRoleForWorkerRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "querystring", location_name: "queueId"))
    AssumeQueueRoleForWorkerRequest.struct_class = Types::AssumeQueueRoleForWorkerRequest

    AssumeQueueRoleForWorkerResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: AwsCredentials, location_name: "credentials"))
    AssumeQueueRoleForWorkerResponse.struct_class = Types::AssumeQueueRoleForWorkerResponse

    Attachments.add_member(:manifests, Shapes::ShapeRef.new(shape: ManifestPropertiesList, required: true, location_name: "manifests"))
    Attachments.add_member(:file_system, Shapes::ShapeRef.new(shape: JobAttachmentsFileSystem, location_name: "fileSystem"))
    Attachments.struct_class = Types::Attachments

    AttributeCapabilityValuesList.member = Shapes::ShapeRef.new(shape: AttributeCapabilityValue)

    AwsCredentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyId, required: true, location_name: "accessKeyId"))
    AwsCredentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: SecretAccessKey, required: true, location_name: "secretAccessKey"))
    AwsCredentials.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionToken, required: true, location_name: "sessionToken"))
    AwsCredentials.add_member(:expiration, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "expiration"))
    AwsCredentials.struct_class = Types::AwsCredentials

    BatchGetJobEntityErrors.member = Shapes::ShapeRef.new(shape: GetJobEntityError)

    BatchGetJobEntityList.member = Shapes::ShapeRef.new(shape: JobEntity)

    BatchGetJobEntityRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    BatchGetJobEntityRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    BatchGetJobEntityRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    BatchGetJobEntityRequest.add_member(:identifiers, Shapes::ShapeRef.new(shape: JobEntityIdentifiers, required: true, location_name: "identifiers"))
    BatchGetJobEntityRequest.struct_class = Types::BatchGetJobEntityRequest

    BatchGetJobEntityResponse.add_member(:entities, Shapes::ShapeRef.new(shape: BatchGetJobEntityList, required: true, location_name: "entities"))
    BatchGetJobEntityResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetJobEntityErrors, required: true, location_name: "errors"))
    BatchGetJobEntityResponse.struct_class = Types::BatchGetJobEntityResponse

    BudgetActionToAdd.add_member(:type, Shapes::ShapeRef.new(shape: BudgetActionType, required: true, location_name: "type"))
    BudgetActionToAdd.add_member(:threshold_percentage, Shapes::ShapeRef.new(shape: ThresholdPercentage, required: true, location_name: "thresholdPercentage"))
    BudgetActionToAdd.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BudgetActionToAdd.struct_class = Types::BudgetActionToAdd

    BudgetActionToRemove.add_member(:type, Shapes::ShapeRef.new(shape: BudgetActionType, required: true, location_name: "type"))
    BudgetActionToRemove.add_member(:threshold_percentage, Shapes::ShapeRef.new(shape: ThresholdPercentage, required: true, location_name: "thresholdPercentage"))
    BudgetActionToRemove.struct_class = Types::BudgetActionToRemove

    BudgetActionsToAdd.member = Shapes::ShapeRef.new(shape: BudgetActionToAdd)

    BudgetActionsToRemove.member = Shapes::ShapeRef.new(shape: BudgetActionToRemove)

    BudgetSchedule.add_member(:fixed, Shapes::ShapeRef.new(shape: FixedBudgetSchedule, location_name: "fixed"))
    BudgetSchedule.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BudgetSchedule.add_member_subclass(:fixed, Types::BudgetSchedule::Fixed)
    BudgetSchedule.add_member_subclass(:unknown, Types::BudgetSchedule::Unknown)
    BudgetSchedule.struct_class = Types::BudgetSchedule

    BudgetSummaries.member = Shapes::ShapeRef.new(shape: BudgetSummary)

    BudgetSummary.add_member(:budget_id, Shapes::ShapeRef.new(shape: BudgetId, required: true, location_name: "budgetId"))
    BudgetSummary.add_member(:usage_tracking_resource, Shapes::ShapeRef.new(shape: UsageTrackingResource, required: true, location_name: "usageTrackingResource"))
    BudgetSummary.add_member(:status, Shapes::ShapeRef.new(shape: BudgetStatus, required: true, location_name: "status"))
    BudgetSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    BudgetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, deprecated: true, location_name: "description", metadata: {"deprecatedMessage" => "ListBudgets no longer supports description. Use GetBudget if description is needed."}))
    BudgetSummary.add_member(:approximate_dollar_limit, Shapes::ShapeRef.new(shape: ConsumedUsageLimit, required: true, location_name: "approximateDollarLimit"))
    BudgetSummary.add_member(:usages, Shapes::ShapeRef.new(shape: ConsumedUsages, required: true, location_name: "usages"))
    BudgetSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    BudgetSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    BudgetSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    BudgetSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    BudgetSummary.struct_class = Types::BudgetSummary

    CancelSessionActions.key = Shapes::ShapeRef.new(shape: SessionId)
    CancelSessionActions.value = Shapes::ShapeRef.new(shape: SessionActionIdList)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, required: true, location_name: "reason"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ConflictException.struct_class = Types::ConflictException

    ConsumedUsages.add_member(:approximate_dollar_usage, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "approximateDollarUsage"))
    ConsumedUsages.struct_class = Types::ConsumedUsages

    CopyJobTemplateRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CopyJobTemplateRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    CopyJobTemplateRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    CopyJobTemplateRequest.add_member(:target_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "targetS3Location"))
    CopyJobTemplateRequest.struct_class = Types::CopyJobTemplateRequest

    CopyJobTemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: JobTemplateType, required: true, location_name: "templateType"))
    CopyJobTemplateResponse.struct_class = Types::CopyJobTemplateResponse

    CreateBudgetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateBudgetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateBudgetRequest.add_member(:usage_tracking_resource, Shapes::ShapeRef.new(shape: UsageTrackingResource, required: true, location_name: "usageTrackingResource"))
    CreateBudgetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    CreateBudgetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBudgetRequest.add_member(:approximate_dollar_limit, Shapes::ShapeRef.new(shape: ConsumedUsageLimit, required: true, location_name: "approximateDollarLimit"))
    CreateBudgetRequest.add_member(:actions, Shapes::ShapeRef.new(shape: BudgetActionsToAdd, required: true, location_name: "actions"))
    CreateBudgetRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: BudgetSchedule, required: true, location_name: "schedule"))
    CreateBudgetRequest.struct_class = Types::CreateBudgetRequest

    CreateBudgetResponse.add_member(:budget_id, Shapes::ShapeRef.new(shape: BudgetId, required: true, location_name: "budgetId"))
    CreateBudgetResponse.struct_class = Types::CreateBudgetResponse

    CreateFarmRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateFarmRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    CreateFarmRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateFarmRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateFarmRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateFarmRequest.struct_class = Types::CreateFarmRequest

    CreateFarmResponse.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    CreateFarmResponse.struct_class = Types::CreateFarmResponse

    CreateFleetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateFleetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    CreateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateFleetRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    CreateFleetRequest.add_member(:min_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: "minWorkerCount"))
    CreateFleetRequest.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "maxWorkerCount"))
    CreateFleetRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: FleetConfiguration, required: true, location_name: "configuration"))
    CreateFleetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateFleetRequest.add_member(:host_configuration, Shapes::ShapeRef.new(shape: HostConfiguration, location_name: "hostConfiguration"))
    CreateFleetRequest.struct_class = Types::CreateFleetRequest

    CreateFleetResponse.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    CreateFleetResponse.struct_class = Types::CreateFleetResponse

    CreateJobRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateJobRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    CreateJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateJobRequest.add_member(:template, Shapes::ShapeRef.new(shape: JobTemplate, location_name: "template"))
    CreateJobRequest.add_member(:template_type, Shapes::ShapeRef.new(shape: JobTemplateType, location_name: "templateType"))
    CreateJobRequest.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, required: true, location_name: "priority"))
    CreateJobRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: JobParameters, location_name: "parameters"))
    CreateJobRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "attachments"))
    CreateJobRequest.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, location_name: "storageProfileId"))
    CreateJobRequest.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: CreateJobTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    CreateJobRequest.add_member(:max_failed_tasks_count, Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: "maxFailedTasksCount"))
    CreateJobRequest.add_member(:max_retries_per_task, Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: "maxRetriesPerTask"))
    CreateJobRequest.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: "maxWorkerCount"))
    CreateJobRequest.add_member(:source_job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "sourceJobId"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreateLicenseEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateLicenseEndpointRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    CreateLicenseEndpointRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: CreateLicenseEndpointRequestSubnetIdsList, required: true, location_name: "subnetIds"))
    CreateLicenseEndpointRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: CreateLicenseEndpointRequestSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    CreateLicenseEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLicenseEndpointRequest.struct_class = Types::CreateLicenseEndpointRequest

    CreateLicenseEndpointRequestSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    CreateLicenseEndpointRequestSubnetIdsList.member = Shapes::ShapeRef.new(shape: SubnetId)

    CreateLicenseEndpointResponse.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, required: true, location_name: "licenseEndpointId"))
    CreateLicenseEndpointResponse.struct_class = Types::CreateLicenseEndpointResponse

    CreateLimitRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateLimitRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    CreateLimitRequest.add_member(:amount_requirement_name, Shapes::ShapeRef.new(shape: AmountRequirementName, required: true, location_name: "amountRequirementName"))
    CreateLimitRequest.add_member(:max_count, Shapes::ShapeRef.new(shape: MaxCount, required: true, location_name: "maxCount"))
    CreateLimitRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateLimitRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateLimitRequest.struct_class = Types::CreateLimitRequest

    CreateLimitResponse.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location_name: "limitId"))
    CreateLimitResponse.struct_class = Types::CreateLimitResponse

    CreateMonitorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateMonitorRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    CreateMonitorRequest.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, required: true, location_name: "identityCenterInstanceArn"))
    CreateMonitorRequest.add_member(:subdomain, Shapes::ShapeRef.new(shape: Subdomain, required: true, location_name: "subdomain"))
    CreateMonitorRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    CreateMonitorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateMonitorRequest.struct_class = Types::CreateMonitorRequest

    CreateMonitorResponse.add_member(:monitor_id, Shapes::ShapeRef.new(shape: MonitorId, required: true, location_name: "monitorId"))
    CreateMonitorResponse.add_member(:identity_center_application_arn, Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, required: true, location_name: "identityCenterApplicationArn"))
    CreateMonitorResponse.struct_class = Types::CreateMonitorResponse

    CreateQueueEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateQueueEnvironmentRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateQueueEnvironmentRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    CreateQueueEnvironmentRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    CreateQueueEnvironmentRequest.add_member(:template_type, Shapes::ShapeRef.new(shape: EnvironmentTemplateType, required: true, location_name: "templateType"))
    CreateQueueEnvironmentRequest.add_member(:template, Shapes::ShapeRef.new(shape: EnvironmentTemplate, required: true, location_name: "template"))
    CreateQueueEnvironmentRequest.struct_class = Types::CreateQueueEnvironmentRequest

    CreateQueueEnvironmentResponse.add_member(:queue_environment_id, Shapes::ShapeRef.new(shape: QueueEnvironmentId, required: true, location_name: "queueEnvironmentId"))
    CreateQueueEnvironmentResponse.struct_class = Types::CreateQueueEnvironmentResponse

    CreateQueueFleetAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateQueueFleetAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    CreateQueueFleetAssociationRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    CreateQueueFleetAssociationRequest.struct_class = Types::CreateQueueFleetAssociationRequest

    CreateQueueFleetAssociationResponse.struct_class = Types::CreateQueueFleetAssociationResponse

    CreateQueueLimitAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateQueueLimitAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    CreateQueueLimitAssociationRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location_name: "limitId"))
    CreateQueueLimitAssociationRequest.struct_class = Types::CreateQueueLimitAssociationRequest

    CreateQueueLimitAssociationResponse.struct_class = Types::CreateQueueLimitAssociationResponse

    CreateQueueRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateQueueRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    CreateQueueRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateQueueRequest.add_member(:default_budget_action, Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, location_name: "defaultBudgetAction"))
    CreateQueueRequest.add_member(:job_attachment_settings, Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: "jobAttachmentSettings"))
    CreateQueueRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    CreateQueueRequest.add_member(:job_run_as_user, Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: "jobRunAsUser"))
    CreateQueueRequest.add_member(:required_file_system_location_names, Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: "requiredFileSystemLocationNames"))
    CreateQueueRequest.add_member(:allowed_storage_profile_ids, Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: "allowedStorageProfileIds"))
    CreateQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateQueueRequest.struct_class = Types::CreateQueueRequest

    CreateQueueResponse.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    CreateQueueResponse.struct_class = Types::CreateQueueResponse

    CreateStorageProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateStorageProfileRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateStorageProfileRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    CreateStorageProfileRequest.add_member(:os_family, Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, required: true, location_name: "osFamily"))
    CreateStorageProfileRequest.add_member(:file_system_locations, Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: "fileSystemLocations"))
    CreateStorageProfileRequest.struct_class = Types::CreateStorageProfileRequest

    CreateStorageProfileResponse.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location_name: "storageProfileId"))
    CreateStorageProfileResponse.struct_class = Types::CreateStorageProfileResponse

    CreateWorkerRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    CreateWorkerRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    CreateWorkerRequest.add_member(:host_properties, Shapes::ShapeRef.new(shape: HostPropertiesRequest, location_name: "hostProperties"))
    CreateWorkerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateWorkerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateWorkerRequest.struct_class = Types::CreateWorkerRequest

    CreateWorkerResponse.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "workerId"))
    CreateWorkerResponse.struct_class = Types::CreateWorkerResponse

    CustomFleetAmountCapabilities.member = Shapes::ShapeRef.new(shape: FleetAmountCapability)

    CustomFleetAttributeCapabilities.member = Shapes::ShapeRef.new(shape: FleetAttributeCapability)

    CustomerManagedFleetConfiguration.add_member(:mode, Shapes::ShapeRef.new(shape: AutoScalingMode, required: true, location_name: "mode"))
    CustomerManagedFleetConfiguration.add_member(:worker_capabilities, Shapes::ShapeRef.new(shape: CustomerManagedWorkerCapabilities, required: true, location_name: "workerCapabilities"))
    CustomerManagedFleetConfiguration.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, location_name: "storageProfileId"))
    CustomerManagedFleetConfiguration.add_member(:tag_propagation_mode, Shapes::ShapeRef.new(shape: TagPropagationMode, location_name: "tagPropagationMode"))
    CustomerManagedFleetConfiguration.struct_class = Types::CustomerManagedFleetConfiguration

    CustomerManagedWorkerCapabilities.add_member(:v_cpu_count, Shapes::ShapeRef.new(shape: VCpuCountRange, required: true, location_name: "vCpuCount"))
    CustomerManagedWorkerCapabilities.add_member(:memory_mi_b, Shapes::ShapeRef.new(shape: MemoryMiBRange, required: true, location_name: "memoryMiB"))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: AcceleratorTypes, location_name: "acceleratorTypes"))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_count, Shapes::ShapeRef.new(shape: AcceleratorCountRange, location_name: "acceleratorCount"))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_total_memory_mi_b, Shapes::ShapeRef.new(shape: AcceleratorTotalMemoryMiBRange, location_name: "acceleratorTotalMemoryMiB"))
    CustomerManagedWorkerCapabilities.add_member(:os_family, Shapes::ShapeRef.new(shape: CustomerManagedFleetOperatingSystemFamily, required: true, location_name: "osFamily"))
    CustomerManagedWorkerCapabilities.add_member(:cpu_architecture_type, Shapes::ShapeRef.new(shape: CpuArchitectureType, required: true, location_name: "cpuArchitectureType"))
    CustomerManagedWorkerCapabilities.add_member(:custom_amounts, Shapes::ShapeRef.new(shape: CustomFleetAmountCapabilities, location_name: "customAmounts"))
    CustomerManagedWorkerCapabilities.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomFleetAttributeCapabilities, location_name: "customAttributes"))
    CustomerManagedWorkerCapabilities.struct_class = Types::CustomerManagedWorkerCapabilities

    DateTimeFilterExpression.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DateTimeFilterExpression.add_member(:operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "operator"))
    DateTimeFilterExpression.add_member(:date_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "dateTime"))
    DateTimeFilterExpression.struct_class = Types::DateTimeFilterExpression

    DeleteBudgetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteBudgetRequest.add_member(:budget_id, Shapes::ShapeRef.new(shape: BudgetId, required: true, location: "uri", location_name: "budgetId"))
    DeleteBudgetRequest.struct_class = Types::DeleteBudgetRequest

    DeleteBudgetResponse.struct_class = Types::DeleteBudgetResponse

    DeleteFarmRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteFarmRequest.struct_class = Types::DeleteFarmRequest

    DeleteFarmResponse.struct_class = Types::DeleteFarmResponse

    DeleteFleetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    DeleteFleetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    DeleteFleetRequest.struct_class = Types::DeleteFleetRequest

    DeleteFleetResponse.struct_class = Types::DeleteFleetResponse

    DeleteLicenseEndpointRequest.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, required: true, location: "uri", location_name: "licenseEndpointId"))
    DeleteLicenseEndpointRequest.struct_class = Types::DeleteLicenseEndpointRequest

    DeleteLicenseEndpointResponse.struct_class = Types::DeleteLicenseEndpointResponse

    DeleteLimitRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteLimitRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location: "uri", location_name: "limitId"))
    DeleteLimitRequest.struct_class = Types::DeleteLimitRequest

    DeleteLimitResponse.struct_class = Types::DeleteLimitResponse

    DeleteMeteredProductRequest.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, required: true, location: "uri", location_name: "licenseEndpointId"))
    DeleteMeteredProductRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: MeteredProductId, required: true, location: "uri", location_name: "productId"))
    DeleteMeteredProductRequest.struct_class = Types::DeleteMeteredProductRequest

    DeleteMeteredProductResponse.struct_class = Types::DeleteMeteredProductResponse

    DeleteMonitorRequest.add_member(:monitor_id, Shapes::ShapeRef.new(shape: MonitorId, required: true, location: "uri", location_name: "monitorId"))
    DeleteMonitorRequest.struct_class = Types::DeleteMonitorRequest

    DeleteMonitorResponse.struct_class = Types::DeleteMonitorResponse

    DeleteQueueEnvironmentRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteQueueEnvironmentRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    DeleteQueueEnvironmentRequest.add_member(:queue_environment_id, Shapes::ShapeRef.new(shape: QueueEnvironmentId, required: true, location: "uri", location_name: "queueEnvironmentId"))
    DeleteQueueEnvironmentRequest.struct_class = Types::DeleteQueueEnvironmentRequest

    DeleteQueueEnvironmentResponse.struct_class = Types::DeleteQueueEnvironmentResponse

    DeleteQueueFleetAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteQueueFleetAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    DeleteQueueFleetAssociationRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    DeleteQueueFleetAssociationRequest.struct_class = Types::DeleteQueueFleetAssociationRequest

    DeleteQueueFleetAssociationResponse.struct_class = Types::DeleteQueueFleetAssociationResponse

    DeleteQueueLimitAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteQueueLimitAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    DeleteQueueLimitAssociationRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location: "uri", location_name: "limitId"))
    DeleteQueueLimitAssociationRequest.struct_class = Types::DeleteQueueLimitAssociationRequest

    DeleteQueueLimitAssociationResponse.struct_class = Types::DeleteQueueLimitAssociationResponse

    DeleteQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    DeleteQueueRequest.struct_class = Types::DeleteQueueRequest

    DeleteQueueResponse.struct_class = Types::DeleteQueueResponse

    DeleteStorageProfileRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteStorageProfileRequest.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location: "uri", location_name: "storageProfileId"))
    DeleteStorageProfileRequest.struct_class = Types::DeleteStorageProfileRequest

    DeleteStorageProfileResponse.struct_class = Types::DeleteStorageProfileResponse

    DeleteWorkerRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DeleteWorkerRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    DeleteWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    DeleteWorkerRequest.struct_class = Types::DeleteWorkerRequest

    DeleteWorkerResponse.struct_class = Types::DeleteWorkerResponse

    DependenciesList.member = Shapes::ShapeRef.new(shape: StepId)

    DependencyCounts.add_member(:dependencies_resolved, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "dependenciesResolved"))
    DependencyCounts.add_member(:dependencies_unresolved, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "dependenciesUnresolved"))
    DependencyCounts.add_member(:consumers_resolved, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "consumersResolved"))
    DependencyCounts.add_member(:consumers_unresolved, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "consumersUnresolved"))
    DependencyCounts.struct_class = Types::DependencyCounts

    DisassociateMemberFromFarmRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DisassociateMemberFromFarmRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    DisassociateMemberFromFarmRequest.struct_class = Types::DisassociateMemberFromFarmRequest

    DisassociateMemberFromFarmResponse.struct_class = Types::DisassociateMemberFromFarmResponse

    DisassociateMemberFromFleetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DisassociateMemberFromFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    DisassociateMemberFromFleetRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    DisassociateMemberFromFleetRequest.struct_class = Types::DisassociateMemberFromFleetRequest

    DisassociateMemberFromFleetResponse.struct_class = Types::DisassociateMemberFromFleetResponse

    DisassociateMemberFromJobRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DisassociateMemberFromJobRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    DisassociateMemberFromJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DisassociateMemberFromJobRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    DisassociateMemberFromJobRequest.struct_class = Types::DisassociateMemberFromJobRequest

    DisassociateMemberFromJobResponse.struct_class = Types::DisassociateMemberFromJobResponse

    DisassociateMemberFromQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    DisassociateMemberFromQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    DisassociateMemberFromQueueRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location: "uri", location_name: "principalId"))
    DisassociateMemberFromQueueRequest.struct_class = Types::DisassociateMemberFromQueueRequest

    DisassociateMemberFromQueueResponse.struct_class = Types::DisassociateMemberFromQueueResponse

    Ec2EbsVolume.add_member(:size_gi_b, Shapes::ShapeRef.new(shape: Integer, location_name: "sizeGiB"))
    Ec2EbsVolume.add_member(:iops, Shapes::ShapeRef.new(shape: EbsIops, location_name: "iops"))
    Ec2EbsVolume.add_member(:throughput_mi_b, Shapes::ShapeRef.new(shape: EbsThroughputMiB, location_name: "throughputMiB"))
    Ec2EbsVolume.struct_class = Types::Ec2EbsVolume

    EnvironmentDetailsEntity.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    EnvironmentDetailsEntity.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentDetailsEntity.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "schemaVersion"))
    EnvironmentDetailsEntity.add_member(:template, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "template"))
    EnvironmentDetailsEntity.struct_class = Types::EnvironmentDetailsEntity

    EnvironmentDetailsError.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    EnvironmentDetailsError.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentDetailsError.add_member(:code, Shapes::ShapeRef.new(shape: JobEntityErrorCode, required: true, location_name: "code"))
    EnvironmentDetailsError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    EnvironmentDetailsError.struct_class = Types::EnvironmentDetailsError

    EnvironmentDetailsIdentifiers.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    EnvironmentDetailsIdentifiers.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentDetailsIdentifiers.struct_class = Types::EnvironmentDetailsIdentifiers

    EnvironmentEnterSessionActionDefinition.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentEnterSessionActionDefinition.struct_class = Types::EnvironmentEnterSessionActionDefinition

    EnvironmentEnterSessionActionDefinitionSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentEnterSessionActionDefinitionSummary.struct_class = Types::EnvironmentEnterSessionActionDefinitionSummary

    EnvironmentExitSessionActionDefinition.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentExitSessionActionDefinition.struct_class = Types::EnvironmentExitSessionActionDefinition

    EnvironmentExitSessionActionDefinitionSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentExitSessionActionDefinitionSummary.struct_class = Types::EnvironmentExitSessionActionDefinitionSummary

    ExceptionContext.key = Shapes::ShapeRef.new(shape: String)
    ExceptionContext.value = Shapes::ShapeRef.new(shape: String)

    FarmMember.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    FarmMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location_name: "principalId"))
    FarmMember.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    FarmMember.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    FarmMember.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    FarmMember.struct_class = Types::FarmMember

    FarmMembers.member = Shapes::ShapeRef.new(shape: FarmMember)

    FarmSummaries.member = Shapes::ShapeRef.new(shape: FarmSummary)

    FarmSummary.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    FarmSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    FarmSummary.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    FarmSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    FarmSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    FarmSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    FarmSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    FarmSummary.struct_class = Types::FarmSummary

    FieldSortExpression.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    FieldSortExpression.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    FieldSortExpression.struct_class = Types::FieldSortExpression

    FileSystemLocation.add_member(:name, Shapes::ShapeRef.new(shape: FileSystemLocationName, required: true, location_name: "name"))
    FileSystemLocation.add_member(:path, Shapes::ShapeRef.new(shape: PathString, required: true, location_name: "path"))
    FileSystemLocation.add_member(:type, Shapes::ShapeRef.new(shape: FileSystemLocationType, required: true, location_name: "type"))
    FileSystemLocation.struct_class = Types::FileSystemLocation

    FileSystemLocationsList.member = Shapes::ShapeRef.new(shape: FileSystemLocation)

    FixedBudgetSchedule.add_member(:start_time, Shapes::ShapeRef.new(shape: StartsAt, required: true, location_name: "startTime"))
    FixedBudgetSchedule.add_member(:end_time, Shapes::ShapeRef.new(shape: EndsAt, required: true, location_name: "endTime"))
    FixedBudgetSchedule.struct_class = Types::FixedBudgetSchedule

    FleetAmountCapabilities.member = Shapes::ShapeRef.new(shape: FleetAmountCapability)

    FleetAmountCapability.add_member(:name, Shapes::ShapeRef.new(shape: AmountCapabilityName, required: true, location_name: "name"))
    FleetAmountCapability.add_member(:min, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "min"))
    FleetAmountCapability.add_member(:max, Shapes::ShapeRef.new(shape: Float, location_name: "max"))
    FleetAmountCapability.struct_class = Types::FleetAmountCapability

    FleetAttributeCapabilities.member = Shapes::ShapeRef.new(shape: FleetAttributeCapability)

    FleetAttributeCapability.add_member(:name, Shapes::ShapeRef.new(shape: AttributeCapabilityName, required: true, location_name: "name"))
    FleetAttributeCapability.add_member(:values, Shapes::ShapeRef.new(shape: AttributeCapabilityValuesList, required: true, location_name: "values"))
    FleetAttributeCapability.struct_class = Types::FleetAttributeCapability

    FleetCapabilities.add_member(:amounts, Shapes::ShapeRef.new(shape: FleetAmountCapabilities, location_name: "amounts"))
    FleetCapabilities.add_member(:attributes, Shapes::ShapeRef.new(shape: FleetAttributeCapabilities, location_name: "attributes"))
    FleetCapabilities.struct_class = Types::FleetCapabilities

    FleetConfiguration.add_member(:customer_managed, Shapes::ShapeRef.new(shape: CustomerManagedFleetConfiguration, location_name: "customerManaged"))
    FleetConfiguration.add_member(:service_managed_ec2, Shapes::ShapeRef.new(shape: ServiceManagedEc2FleetConfiguration, location_name: "serviceManagedEc2"))
    FleetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FleetConfiguration.add_member_subclass(:customer_managed, Types::FleetConfiguration::CustomerManaged)
    FleetConfiguration.add_member_subclass(:service_managed_ec2, Types::FleetConfiguration::ServiceManagedEc2)
    FleetConfiguration.add_member_subclass(:unknown, Types::FleetConfiguration::Unknown)
    FleetConfiguration.struct_class = Types::FleetConfiguration

    FleetMember.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    FleetMember.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    FleetMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location_name: "principalId"))
    FleetMember.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    FleetMember.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    FleetMember.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    FleetMember.struct_class = Types::FleetMember

    FleetMembers.member = Shapes::ShapeRef.new(shape: FleetMember)

    FleetSummaries.member = Shapes::ShapeRef.new(shape: FleetSummary)

    FleetSummary.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    FleetSummary.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    FleetSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    FleetSummary.add_member(:status, Shapes::ShapeRef.new(shape: FleetStatus, required: true, location_name: "status"))
    FleetSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    FleetSummary.add_member(:auto_scaling_status, Shapes::ShapeRef.new(shape: AutoScalingStatus, location_name: "autoScalingStatus"))
    FleetSummary.add_member(:target_worker_count, Shapes::ShapeRef.new(shape: Integer, location_name: "targetWorkerCount"))
    FleetSummary.add_member(:worker_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "workerCount"))
    FleetSummary.add_member(:min_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "minWorkerCount"))
    FleetSummary.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "maxWorkerCount"))
    FleetSummary.add_member(:configuration, Shapes::ShapeRef.new(shape: FleetConfiguration, required: true, location_name: "configuration"))
    FleetSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    FleetSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    FleetSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    FleetSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    FleetSummary.struct_class = Types::FleetSummary

    GetBudgetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetBudgetRequest.add_member(:budget_id, Shapes::ShapeRef.new(shape: BudgetId, required: true, location: "uri", location_name: "budgetId"))
    GetBudgetRequest.struct_class = Types::GetBudgetRequest

    GetBudgetResponse.add_member(:budget_id, Shapes::ShapeRef.new(shape: BudgetId, required: true, location_name: "budgetId"))
    GetBudgetResponse.add_member(:usage_tracking_resource, Shapes::ShapeRef.new(shape: UsageTrackingResource, required: true, location_name: "usageTrackingResource"))
    GetBudgetResponse.add_member(:status, Shapes::ShapeRef.new(shape: BudgetStatus, required: true, location_name: "status"))
    GetBudgetResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetBudgetResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetBudgetResponse.add_member(:approximate_dollar_limit, Shapes::ShapeRef.new(shape: ConsumedUsageLimit, required: true, location_name: "approximateDollarLimit"))
    GetBudgetResponse.add_member(:usages, Shapes::ShapeRef.new(shape: ConsumedUsages, required: true, location_name: "usages"))
    GetBudgetResponse.add_member(:actions, Shapes::ShapeRef.new(shape: ResponseBudgetActionList, required: true, location_name: "actions"))
    GetBudgetResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: BudgetSchedule, required: true, location_name: "schedule"))
    GetBudgetResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetBudgetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetBudgetResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetBudgetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetBudgetResponse.add_member(:queue_stopped_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "queueStoppedAt"))
    GetBudgetResponse.struct_class = Types::GetBudgetResponse

    GetFarmRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetFarmRequest.struct_class = Types::GetFarmRequest

    GetFarmResponse.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    GetFarmResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetFarmResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetFarmResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyArn"))
    GetFarmResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetFarmResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetFarmResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetFarmResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetFarmResponse.struct_class = Types::GetFarmResponse

    GetFleetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    GetFleetRequest.struct_class = Types::GetFleetRequest

    GetFleetResponse.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    GetFleetResponse.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    GetFleetResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetFleetResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetFleetResponse.add_member(:status, Shapes::ShapeRef.new(shape: FleetStatus, required: true, location_name: "status"))
    GetFleetResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    GetFleetResponse.add_member(:auto_scaling_status, Shapes::ShapeRef.new(shape: AutoScalingStatus, location_name: "autoScalingStatus"))
    GetFleetResponse.add_member(:target_worker_count, Shapes::ShapeRef.new(shape: Integer, location_name: "targetWorkerCount"))
    GetFleetResponse.add_member(:worker_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "workerCount"))
    GetFleetResponse.add_member(:min_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "minWorkerCount"))
    GetFleetResponse.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "maxWorkerCount"))
    GetFleetResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: FleetConfiguration, required: true, location_name: "configuration"))
    GetFleetResponse.add_member(:host_configuration, Shapes::ShapeRef.new(shape: HostConfiguration, location_name: "hostConfiguration"))
    GetFleetResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: FleetCapabilities, location_name: "capabilities"))
    GetFleetResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    GetFleetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetFleetResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetFleetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetFleetResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetFleetResponse.struct_class = Types::GetFleetResponse

    GetJobEntityError.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetailsError, location_name: "jobDetails"))
    GetJobEntityError.add_member(:job_attachment_details, Shapes::ShapeRef.new(shape: JobAttachmentDetailsError, location_name: "jobAttachmentDetails"))
    GetJobEntityError.add_member(:step_details, Shapes::ShapeRef.new(shape: StepDetailsError, location_name: "stepDetails"))
    GetJobEntityError.add_member(:environment_details, Shapes::ShapeRef.new(shape: EnvironmentDetailsError, location_name: "environmentDetails"))
    GetJobEntityError.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GetJobEntityError.add_member_subclass(:job_details, Types::GetJobEntityError::JobDetails)
    GetJobEntityError.add_member_subclass(:job_attachment_details, Types::GetJobEntityError::JobAttachmentDetails)
    GetJobEntityError.add_member_subclass(:step_details, Types::GetJobEntityError::StepDetails)
    GetJobEntityError.add_member_subclass(:environment_details, Types::GetJobEntityError::EnvironmentDetails)
    GetJobEntityError.add_member_subclass(:unknown, Types::GetJobEntityError::Unknown)
    GetJobEntityError.struct_class = Types::GetJobEntityError

    GetJobRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetJobRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetJobRequest.struct_class = Types::GetJobRequest

    GetJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    GetJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "name"))
    GetJobResponse.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: JobLifecycleStatus, required: true, location_name: "lifecycleStatus"))
    GetJobResponse.add_member(:lifecycle_status_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "lifecycleStatusMessage"))
    GetJobResponse.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, required: true, location_name: "priority"))
    GetJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetJobResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetJobResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetJobResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetJobResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    GetJobResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    GetJobResponse.add_member(:task_run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: "taskRunStatus"))
    GetJobResponse.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    GetJobResponse.add_member(:task_run_status_counts, Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: "taskRunStatusCounts"))
    GetJobResponse.add_member(:task_failure_retry_count, Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: "taskFailureRetryCount"))
    GetJobResponse.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, location_name: "storageProfileId"))
    GetJobResponse.add_member(:max_failed_tasks_count, Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: "maxFailedTasksCount"))
    GetJobResponse.add_member(:max_retries_per_task, Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: "maxRetriesPerTask"))
    GetJobResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: JobParameters, location_name: "parameters"))
    GetJobResponse.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "attachments"))
    GetJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: JobDescription, location_name: "description"))
    GetJobResponse.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: "maxWorkerCount"))
    GetJobResponse.add_member(:source_job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "sourceJobId"))
    GetJobResponse.struct_class = Types::GetJobResponse

    GetLicenseEndpointRequest.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, required: true, location: "uri", location_name: "licenseEndpointId"))
    GetLicenseEndpointRequest.struct_class = Types::GetLicenseEndpointRequest

    GetLicenseEndpointResponse.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, required: true, location_name: "licenseEndpointId"))
    GetLicenseEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: LicenseEndpointStatus, required: true, location_name: "status"))
    GetLicenseEndpointResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "statusMessage"))
    GetLicenseEndpointResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    GetLicenseEndpointResponse.add_member(:dns_name, Shapes::ShapeRef.new(shape: DnsName, location_name: "dnsName"))
    GetLicenseEndpointResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: GetLicenseEndpointResponseSubnetIdsList, location_name: "subnetIds"))
    GetLicenseEndpointResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: GetLicenseEndpointResponseSecurityGroupIdsList, location_name: "securityGroupIds"))
    GetLicenseEndpointResponse.struct_class = Types::GetLicenseEndpointResponse

    GetLicenseEndpointResponseSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    GetLicenseEndpointResponseSubnetIdsList.member = Shapes::ShapeRef.new(shape: SubnetId)

    GetLimitRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetLimitRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location: "uri", location_name: "limitId"))
    GetLimitRequest.struct_class = Types::GetLimitRequest

    GetLimitResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetLimitResponse.add_member(:amount_requirement_name, Shapes::ShapeRef.new(shape: AmountRequirementName, required: true, location_name: "amountRequirementName"))
    GetLimitResponse.add_member(:max_count, Shapes::ShapeRef.new(shape: MaxCount, required: true, location_name: "maxCount"))
    GetLimitResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetLimitResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetLimitResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetLimitResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetLimitResponse.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    GetLimitResponse.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location_name: "limitId"))
    GetLimitResponse.add_member(:current_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "currentCount"))
    GetLimitResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetLimitResponse.struct_class = Types::GetLimitResponse

    GetMonitorRequest.add_member(:monitor_id, Shapes::ShapeRef.new(shape: MonitorId, required: true, location: "uri", location_name: "monitorId"))
    GetMonitorRequest.struct_class = Types::GetMonitorRequest

    GetMonitorResponse.add_member(:monitor_id, Shapes::ShapeRef.new(shape: MonitorId, required: true, location_name: "monitorId"))
    GetMonitorResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetMonitorResponse.add_member(:subdomain, Shapes::ShapeRef.new(shape: Subdomain, required: true, location_name: "subdomain"))
    GetMonitorResponse.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    GetMonitorResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    GetMonitorResponse.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, required: true, location_name: "identityCenterInstanceArn"))
    GetMonitorResponse.add_member(:identity_center_application_arn, Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, required: true, location_name: "identityCenterApplicationArn"))
    GetMonitorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetMonitorResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetMonitorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetMonitorResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetMonitorResponse.struct_class = Types::GetMonitorResponse

    GetQueueEnvironmentRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetQueueEnvironmentRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetQueueEnvironmentRequest.add_member(:queue_environment_id, Shapes::ShapeRef.new(shape: QueueEnvironmentId, required: true, location: "uri", location_name: "queueEnvironmentId"))
    GetQueueEnvironmentRequest.struct_class = Types::GetQueueEnvironmentRequest

    GetQueueEnvironmentResponse.add_member(:queue_environment_id, Shapes::ShapeRef.new(shape: QueueEnvironmentId, required: true, location_name: "queueEnvironmentId"))
    GetQueueEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    GetQueueEnvironmentResponse.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    GetQueueEnvironmentResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: EnvironmentTemplateType, required: true, location_name: "templateType"))
    GetQueueEnvironmentResponse.add_member(:template, Shapes::ShapeRef.new(shape: EnvironmentTemplate, required: true, location_name: "template"))
    GetQueueEnvironmentResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetQueueEnvironmentResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetQueueEnvironmentResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetQueueEnvironmentResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetQueueEnvironmentResponse.struct_class = Types::GetQueueEnvironmentResponse

    GetQueueFleetAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetQueueFleetAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetQueueFleetAssociationRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    GetQueueFleetAssociationRequest.struct_class = Types::GetQueueFleetAssociationRequest

    GetQueueFleetAssociationResponse.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    GetQueueFleetAssociationResponse.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    GetQueueFleetAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueueFleetAssociationStatus, required: true, location_name: "status"))
    GetQueueFleetAssociationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetQueueFleetAssociationResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetQueueFleetAssociationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetQueueFleetAssociationResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetQueueFleetAssociationResponse.struct_class = Types::GetQueueFleetAssociationResponse

    GetQueueLimitAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetQueueLimitAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetQueueLimitAssociationRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location: "uri", location_name: "limitId"))
    GetQueueLimitAssociationRequest.struct_class = Types::GetQueueLimitAssociationRequest

    GetQueueLimitAssociationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetQueueLimitAssociationResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetQueueLimitAssociationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetQueueLimitAssociationResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetQueueLimitAssociationResponse.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    GetQueueLimitAssociationResponse.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location_name: "limitId"))
    GetQueueLimitAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueueLimitAssociationStatus, required: true, location_name: "status"))
    GetQueueLimitAssociationResponse.struct_class = Types::GetQueueLimitAssociationResponse

    GetQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetQueueRequest.struct_class = Types::GetQueueRequest

    GetQueueResponse.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    GetQueueResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetQueueResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetQueueResponse.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    GetQueueResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, required: true, location_name: "status"))
    GetQueueResponse.add_member(:default_budget_action, Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, required: true, location_name: "defaultBudgetAction"))
    GetQueueResponse.add_member(:blocked_reason, Shapes::ShapeRef.new(shape: QueueBlockedReason, location_name: "blockedReason"))
    GetQueueResponse.add_member(:job_attachment_settings, Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: "jobAttachmentSettings"))
    GetQueueResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    GetQueueResponse.add_member(:required_file_system_location_names, Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: "requiredFileSystemLocationNames"))
    GetQueueResponse.add_member(:allowed_storage_profile_ids, Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: "allowedStorageProfileIds"))
    GetQueueResponse.add_member(:job_run_as_user, Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: "jobRunAsUser"))
    GetQueueResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetQueueResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetQueueResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetQueueResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetQueueResponse.struct_class = Types::GetQueueResponse

    GetSessionActionRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetSessionActionRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetSessionActionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetSessionActionRequest.add_member(:session_action_id, Shapes::ShapeRef.new(shape: SessionActionId, required: true, location: "uri", location_name: "sessionActionId"))
    GetSessionActionRequest.struct_class = Types::GetSessionActionRequest

    GetSessionActionResponse.add_member(:session_action_id, Shapes::ShapeRef.new(shape: SessionActionId, required: true, location_name: "sessionActionId"))
    GetSessionActionResponse.add_member(:status, Shapes::ShapeRef.new(shape: SessionActionStatus, required: true, location_name: "status"))
    GetSessionActionResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    GetSessionActionResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    GetSessionActionResponse.add_member(:worker_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "workerUpdatedAt"))
    GetSessionActionResponse.add_member(:progress_percent, Shapes::ShapeRef.new(shape: SessionActionProgressPercent, location_name: "progressPercent"))
    GetSessionActionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    GetSessionActionResponse.add_member(:process_exit_code, Shapes::ShapeRef.new(shape: ProcessExitCode, location_name: "processExitCode"))
    GetSessionActionResponse.add_member(:progress_message, Shapes::ShapeRef.new(shape: SessionActionProgressMessage, location_name: "progressMessage"))
    GetSessionActionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: SessionActionDefinition, required: true, location_name: "definition"))
    GetSessionActionResponse.add_member(:acquired_limits, Shapes::ShapeRef.new(shape: AcquiredLimits, location_name: "acquiredLimits"))
    GetSessionActionResponse.add_member(:manifests, Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesListResponse, location_name: "manifests"))
    GetSessionActionResponse.struct_class = Types::GetSessionActionResponse

    GetSessionRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetSessionRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetSessionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    GetSessionResponse.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    GetSessionResponse.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "workerId"))
    GetSessionResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, required: true, location_name: "startedAt"))
    GetSessionResponse.add_member(:log, Shapes::ShapeRef.new(shape: LogConfiguration, required: true, location_name: "log"))
    GetSessionResponse.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: SessionLifecycleStatus, required: true, location_name: "lifecycleStatus"))
    GetSessionResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    GetSessionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetSessionResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetSessionResponse.add_member(:target_lifecycle_status, Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, location_name: "targetLifecycleStatus"))
    GetSessionResponse.add_member(:host_properties, Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: "hostProperties"))
    GetSessionResponse.add_member(:worker_log, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "workerLog"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    GetSessionsStatisticsAggregationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetSessionsStatisticsAggregationRequest.add_member(:aggregation_id, Shapes::ShapeRef.new(shape: AggregationId, required: true, location: "querystring", location_name: "aggregationId"))
    GetSessionsStatisticsAggregationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetSessionsStatisticsAggregationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetSessionsStatisticsAggregationRequest.struct_class = Types::GetSessionsStatisticsAggregationRequest

    GetSessionsStatisticsAggregationResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: StatisticsList, location_name: "statistics"))
    GetSessionsStatisticsAggregationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetSessionsStatisticsAggregationResponse.add_member(:status, Shapes::ShapeRef.new(shape: SessionsStatisticsAggregationStatus, required: true, location_name: "status"))
    GetSessionsStatisticsAggregationResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    GetSessionsStatisticsAggregationResponse.struct_class = Types::GetSessionsStatisticsAggregationResponse

    GetStepRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetStepRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetStepRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetStepRequest.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "stepId"))
    GetStepRequest.struct_class = Types::GetStepRequest

    GetStepResponse.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    GetStepResponse.add_member(:name, Shapes::ShapeRef.new(shape: StepName, required: true, location_name: "name"))
    GetStepResponse.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: StepLifecycleStatus, required: true, location_name: "lifecycleStatus"))
    GetStepResponse.add_member(:lifecycle_status_message, Shapes::ShapeRef.new(shape: String, location_name: "lifecycleStatusMessage"))
    GetStepResponse.add_member(:task_run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, required: true, location_name: "taskRunStatus"))
    GetStepResponse.add_member(:task_run_status_counts, Shapes::ShapeRef.new(shape: TaskRunStatusCounts, required: true, location_name: "taskRunStatusCounts"))
    GetStepResponse.add_member(:task_failure_retry_count, Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: "taskFailureRetryCount"))
    GetStepResponse.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    GetStepResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetStepResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetStepResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetStepResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetStepResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    GetStepResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    GetStepResponse.add_member(:dependency_counts, Shapes::ShapeRef.new(shape: DependencyCounts, location_name: "dependencyCounts"))
    GetStepResponse.add_member(:required_capabilities, Shapes::ShapeRef.new(shape: StepRequiredCapabilities, location_name: "requiredCapabilities"))
    GetStepResponse.add_member(:parameter_space, Shapes::ShapeRef.new(shape: ParameterSpace, location_name: "parameterSpace"))
    GetStepResponse.add_member(:description, Shapes::ShapeRef.new(shape: StepDescription, location_name: "description"))
    GetStepResponse.struct_class = Types::GetStepResponse

    GetStorageProfileForQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetStorageProfileForQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetStorageProfileForQueueRequest.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location: "uri", location_name: "storageProfileId"))
    GetStorageProfileForQueueRequest.struct_class = Types::GetStorageProfileForQueueRequest

    GetStorageProfileForQueueResponse.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location_name: "storageProfileId"))
    GetStorageProfileForQueueResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetStorageProfileForQueueResponse.add_member(:os_family, Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, required: true, location_name: "osFamily"))
    GetStorageProfileForQueueResponse.add_member(:file_system_locations, Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: "fileSystemLocations"))
    GetStorageProfileForQueueResponse.struct_class = Types::GetStorageProfileForQueueResponse

    GetStorageProfileRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetStorageProfileRequest.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location: "uri", location_name: "storageProfileId"))
    GetStorageProfileRequest.struct_class = Types::GetStorageProfileRequest

    GetStorageProfileResponse.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location_name: "storageProfileId"))
    GetStorageProfileResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    GetStorageProfileResponse.add_member(:os_family, Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, required: true, location_name: "osFamily"))
    GetStorageProfileResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetStorageProfileResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetStorageProfileResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetStorageProfileResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetStorageProfileResponse.add_member(:file_system_locations, Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: "fileSystemLocations"))
    GetStorageProfileResponse.struct_class = Types::GetStorageProfileResponse

    GetTaskRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetTaskRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    GetTaskRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetTaskRequest.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "stepId"))
    GetTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    GetTaskRequest.struct_class = Types::GetTaskRequest

    GetTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    GetTaskResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetTaskResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetTaskResponse.add_member(:run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, required: true, location_name: "runStatus"))
    GetTaskResponse.add_member(:target_run_status, Shapes::ShapeRef.new(shape: TaskTargetRunStatus, location_name: "targetRunStatus"))
    GetTaskResponse.add_member(:failure_retry_count, Shapes::ShapeRef.new(shape: TaskRetryCount, location_name: "failureRetryCount"))
    GetTaskResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: TaskParameters, location_name: "parameters"))
    GetTaskResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    GetTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    GetTaskResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetTaskResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetTaskResponse.add_member(:latest_session_action_id, Shapes::ShapeRef.new(shape: SessionActionId, location_name: "latestSessionActionId"))
    GetTaskResponse.struct_class = Types::GetTaskResponse

    GetWorkerRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    GetWorkerRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    GetWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    GetWorkerRequest.struct_class = Types::GetWorkerRequest

    GetWorkerResponse.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    GetWorkerResponse.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    GetWorkerResponse.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "workerId"))
    GetWorkerResponse.add_member(:host_properties, Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: "hostProperties"))
    GetWorkerResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkerStatus, required: true, location_name: "status"))
    GetWorkerResponse.add_member(:log, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "log"))
    GetWorkerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    GetWorkerResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    GetWorkerResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetWorkerResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    GetWorkerResponse.struct_class = Types::GetWorkerResponse

    HostConfiguration.add_member(:script_body, Shapes::ShapeRef.new(shape: HostConfigurationScript, required: true, location_name: "scriptBody"))
    HostConfiguration.add_member(:script_timeout_seconds, Shapes::ShapeRef.new(shape: HostConfigurationScriptTimeoutSeconds, location_name: "scriptTimeoutSeconds"))
    HostConfiguration.struct_class = Types::HostConfiguration

    HostPropertiesRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "ipAddresses"))
    HostPropertiesRequest.add_member(:host_name, Shapes::ShapeRef.new(shape: HostName, location_name: "hostName"))
    HostPropertiesRequest.struct_class = Types::HostPropertiesRequest

    HostPropertiesResponse.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "ipAddresses"))
    HostPropertiesResponse.add_member(:host_name, Shapes::ShapeRef.new(shape: HostName, location_name: "hostName"))
    HostPropertiesResponse.add_member(:ec2_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ec2InstanceArn"))
    HostPropertiesResponse.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "ec2InstanceType"))
    HostPropertiesResponse.struct_class = Types::HostPropertiesResponse

    InstanceTypes.member = Shapes::ShapeRef.new(shape: InstanceType)

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerErrorException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    IpAddresses.add_member(:ip_v4_addresses, Shapes::ShapeRef.new(shape: IpV4Addresses, location_name: "ipV4Addresses"))
    IpAddresses.add_member(:ip_v6_addresses, Shapes::ShapeRef.new(shape: IpV6Addresses, location_name: "ipV6Addresses"))
    IpAddresses.struct_class = Types::IpAddresses

    IpV4Addresses.member = Shapes::ShapeRef.new(shape: IpV4Address)

    IpV6Addresses.member = Shapes::ShapeRef.new(shape: IpV6Address)

    JobAttachmentDetailsEntity.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobAttachmentDetailsEntity.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, required: true, location_name: "attachments"))
    JobAttachmentDetailsEntity.struct_class = Types::JobAttachmentDetailsEntity

    JobAttachmentDetailsError.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobAttachmentDetailsError.add_member(:code, Shapes::ShapeRef.new(shape: JobEntityErrorCode, required: true, location_name: "code"))
    JobAttachmentDetailsError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    JobAttachmentDetailsError.struct_class = Types::JobAttachmentDetailsError

    JobAttachmentDetailsIdentifiers.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobAttachmentDetailsIdentifiers.struct_class = Types::JobAttachmentDetailsIdentifiers

    JobAttachmentSettings.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3BucketName"))
    JobAttachmentSettings.add_member(:root_prefix, Shapes::ShapeRef.new(shape: S3Prefix, required: true, location_name: "rootPrefix"))
    JobAttachmentSettings.struct_class = Types::JobAttachmentSettings

    JobDetailsEntity.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobDetailsEntity.add_member(:job_attachment_settings, Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: "jobAttachmentSettings"))
    JobDetailsEntity.add_member(:job_run_as_user, Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: "jobRunAsUser"))
    JobDetailsEntity.add_member(:log_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "logGroupName"))
    JobDetailsEntity.add_member(:queue_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "queueRoleArn"))
    JobDetailsEntity.add_member(:parameters, Shapes::ShapeRef.new(shape: JobParameters, location_name: "parameters"))
    JobDetailsEntity.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "schemaVersion"))
    JobDetailsEntity.add_member(:path_mapping_rules, Shapes::ShapeRef.new(shape: PathMappingRules, location_name: "pathMappingRules"))
    JobDetailsEntity.struct_class = Types::JobDetailsEntity

    JobDetailsError.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobDetailsError.add_member(:code, Shapes::ShapeRef.new(shape: JobEntityErrorCode, required: true, location_name: "code"))
    JobDetailsError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    JobDetailsError.struct_class = Types::JobDetailsError

    JobDetailsIdentifiers.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobDetailsIdentifiers.struct_class = Types::JobDetailsIdentifiers

    JobEntity.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetailsEntity, location_name: "jobDetails"))
    JobEntity.add_member(:job_attachment_details, Shapes::ShapeRef.new(shape: JobAttachmentDetailsEntity, location_name: "jobAttachmentDetails"))
    JobEntity.add_member(:step_details, Shapes::ShapeRef.new(shape: StepDetailsEntity, location_name: "stepDetails"))
    JobEntity.add_member(:environment_details, Shapes::ShapeRef.new(shape: EnvironmentDetailsEntity, location_name: "environmentDetails"))
    JobEntity.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    JobEntity.add_member_subclass(:job_details, Types::JobEntity::JobDetails)
    JobEntity.add_member_subclass(:job_attachment_details, Types::JobEntity::JobAttachmentDetails)
    JobEntity.add_member_subclass(:step_details, Types::JobEntity::StepDetails)
    JobEntity.add_member_subclass(:environment_details, Types::JobEntity::EnvironmentDetails)
    JobEntity.add_member_subclass(:unknown, Types::JobEntity::Unknown)
    JobEntity.struct_class = Types::JobEntity

    JobEntityIdentifiers.member = Shapes::ShapeRef.new(shape: JobEntityIdentifiersUnion)

    JobEntityIdentifiersUnion.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetailsIdentifiers, location_name: "jobDetails"))
    JobEntityIdentifiersUnion.add_member(:job_attachment_details, Shapes::ShapeRef.new(shape: JobAttachmentDetailsIdentifiers, location_name: "jobAttachmentDetails"))
    JobEntityIdentifiersUnion.add_member(:step_details, Shapes::ShapeRef.new(shape: StepDetailsIdentifiers, location_name: "stepDetails"))
    JobEntityIdentifiersUnion.add_member(:environment_details, Shapes::ShapeRef.new(shape: EnvironmentDetailsIdentifiers, location_name: "environmentDetails"))
    JobEntityIdentifiersUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    JobEntityIdentifiersUnion.add_member_subclass(:job_details, Types::JobEntityIdentifiersUnion::JobDetails)
    JobEntityIdentifiersUnion.add_member_subclass(:job_attachment_details, Types::JobEntityIdentifiersUnion::JobAttachmentDetails)
    JobEntityIdentifiersUnion.add_member_subclass(:step_details, Types::JobEntityIdentifiersUnion::StepDetails)
    JobEntityIdentifiersUnion.add_member_subclass(:environment_details, Types::JobEntityIdentifiersUnion::EnvironmentDetails)
    JobEntityIdentifiersUnion.add_member_subclass(:unknown, Types::JobEntityIdentifiersUnion::Unknown)
    JobEntityIdentifiersUnion.struct_class = Types::JobEntityIdentifiersUnion

    JobMember.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    JobMember.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    JobMember.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location_name: "principalId"))
    JobMember.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    JobMember.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    JobMember.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    JobMember.struct_class = Types::JobMember

    JobMembers.member = Shapes::ShapeRef.new(shape: JobMember)

    JobParameter.add_member(:int, Shapes::ShapeRef.new(shape: IntString, location_name: "int"))
    JobParameter.add_member(:float, Shapes::ShapeRef.new(shape: FloatString, location_name: "float"))
    JobParameter.add_member(:string, Shapes::ShapeRef.new(shape: ParameterString, location_name: "string"))
    JobParameter.add_member(:path, Shapes::ShapeRef.new(shape: PathString, location_name: "path"))
    JobParameter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    JobParameter.add_member_subclass(:int, Types::JobParameter::Int)
    JobParameter.add_member_subclass(:float, Types::JobParameter::Float)
    JobParameter.add_member_subclass(:string, Types::JobParameter::String)
    JobParameter.add_member_subclass(:path, Types::JobParameter::Path)
    JobParameter.add_member_subclass(:unknown, Types::JobParameter::Unknown)
    JobParameter.struct_class = Types::JobParameter

    JobParameterDefinitions.member = Shapes::ShapeRef.new(shape: JobParameterDefinition)

    JobParameters.key = Shapes::ShapeRef.new(shape: JobParametersKeyString)
    JobParameters.value = Shapes::ShapeRef.new(shape: JobParameter)

    JobRunAsUser.add_member(:posix, Shapes::ShapeRef.new(shape: PosixUser, location_name: "posix"))
    JobRunAsUser.add_member(:windows, Shapes::ShapeRef.new(shape: WindowsUser, location_name: "windows"))
    JobRunAsUser.add_member(:run_as, Shapes::ShapeRef.new(shape: RunAs, required: true, location_name: "runAs"))
    JobRunAsUser.struct_class = Types::JobRunAsUser

    JobSearchSummaries.member = Shapes::ShapeRef.new(shape: JobSearchSummary)

    JobSearchSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    JobSearchSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "queueId"))
    JobSearchSummary.add_member(:name, Shapes::ShapeRef.new(shape: JobName, location_name: "name"))
    JobSearchSummary.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: JobLifecycleStatus, location_name: "lifecycleStatus"))
    JobSearchSummary.add_member(:lifecycle_status_message, Shapes::ShapeRef.new(shape: String, location_name: "lifecycleStatusMessage"))
    JobSearchSummary.add_member(:task_run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: "taskRunStatus"))
    JobSearchSummary.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    JobSearchSummary.add_member(:task_run_status_counts, Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: "taskRunStatusCounts"))
    JobSearchSummary.add_member(:task_failure_retry_count, Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: "taskFailureRetryCount"))
    JobSearchSummary.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, location_name: "priority"))
    JobSearchSummary.add_member(:max_failed_tasks_count, Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: "maxFailedTasksCount"))
    JobSearchSummary.add_member(:max_retries_per_task, Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: "maxRetriesPerTask"))
    JobSearchSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    JobSearchSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    JobSearchSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    JobSearchSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    JobSearchSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    JobSearchSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    JobSearchSummary.add_member(:job_parameters, Shapes::ShapeRef.new(shape: JobParameters, location_name: "jobParameters"))
    JobSearchSummary.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: "maxWorkerCount"))
    JobSearchSummary.add_member(:source_job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "sourceJobId"))
    JobSearchSummary.struct_class = Types::JobSearchSummary

    JobSummaries.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobSummary.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "name"))
    JobSummary.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: JobLifecycleStatus, required: true, location_name: "lifecycleStatus"))
    JobSummary.add_member(:lifecycle_status_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "lifecycleStatusMessage"))
    JobSummary.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, required: true, location_name: "priority"))
    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    JobSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    JobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    JobSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    JobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    JobSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    JobSummary.add_member(:task_run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: "taskRunStatus"))
    JobSummary.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    JobSummary.add_member(:task_run_status_counts, Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: "taskRunStatusCounts"))
    JobSummary.add_member(:task_failure_retry_count, Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: "taskFailureRetryCount"))
    JobSummary.add_member(:max_failed_tasks_count, Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: "maxFailedTasksCount"))
    JobSummary.add_member(:max_retries_per_task, Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: "maxRetriesPerTask"))
    JobSummary.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: "maxWorkerCount"))
    JobSummary.add_member(:source_job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "sourceJobId"))
    JobSummary.struct_class = Types::JobSummary

    LicenseEndpointSummaries.member = Shapes::ShapeRef.new(shape: LicenseEndpointSummary)

    LicenseEndpointSummary.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: "licenseEndpointId"))
    LicenseEndpointSummary.add_member(:status, Shapes::ShapeRef.new(shape: LicenseEndpointStatus, location_name: "status"))
    LicenseEndpointSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    LicenseEndpointSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    LicenseEndpointSummary.struct_class = Types::LicenseEndpointSummary

    LimitSummaries.member = Shapes::ShapeRef.new(shape: LimitSummary)

    LimitSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    LimitSummary.add_member(:amount_requirement_name, Shapes::ShapeRef.new(shape: AmountRequirementName, required: true, location_name: "amountRequirementName"))
    LimitSummary.add_member(:max_count, Shapes::ShapeRef.new(shape: MaxCount, required: true, location_name: "maxCount"))
    LimitSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    LimitSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    LimitSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    LimitSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    LimitSummary.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    LimitSummary.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location_name: "limitId"))
    LimitSummary.add_member(:current_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, required: true, location_name: "currentCount"))
    LimitSummary.struct_class = Types::LimitSummary

    ListAttributeCapabilityValue.member = Shapes::ShapeRef.new(shape: AttributeCapabilityValue)

    ListAvailableMeteredProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAvailableMeteredProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAvailableMeteredProductsRequest.struct_class = Types::ListAvailableMeteredProductsRequest

    ListAvailableMeteredProductsResponse.add_member(:metered_products, Shapes::ShapeRef.new(shape: MeteredProductSummaryList, required: true, location_name: "meteredProducts"))
    ListAvailableMeteredProductsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAvailableMeteredProductsResponse.struct_class = Types::ListAvailableMeteredProductsResponse

    ListBudgetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListBudgetsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListBudgetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBudgetsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BudgetStatus, location: "querystring", location_name: "status"))
    ListBudgetsRequest.struct_class = Types::ListBudgetsRequest

    ListBudgetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBudgetsResponse.add_member(:budgets, Shapes::ShapeRef.new(shape: BudgetSummaries, required: true, location_name: "budgets"))
    ListBudgetsResponse.struct_class = Types::ListBudgetsResponse

    ListFarmMembersRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListFarmMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFarmMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFarmMembersRequest.struct_class = Types::ListFarmMembersRequest

    ListFarmMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: FarmMembers, required: true, location_name: "members"))
    ListFarmMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFarmMembersResponse.struct_class = Types::ListFarmMembersResponse

    ListFarmsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFarmsRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location: "querystring", location_name: "principalId"))
    ListFarmsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFarmsRequest.struct_class = Types::ListFarmsRequest

    ListFarmsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFarmsResponse.add_member(:farms, Shapes::ShapeRef.new(shape: FarmSummaries, required: true, location_name: "farms"))
    ListFarmsResponse.struct_class = Types::ListFarmsResponse

    ListFleetMembersRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListFleetMembersRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    ListFleetMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFleetMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFleetMembersRequest.struct_class = Types::ListFleetMembersRequest

    ListFleetMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: FleetMembers, required: true, location_name: "members"))
    ListFleetMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFleetMembersResponse.struct_class = Types::ListFleetMembersResponse

    ListFleetsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListFleetsRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location: "querystring", location_name: "principalId"))
    ListFleetsRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location: "querystring", location_name: "displayName"))
    ListFleetsRequest.add_member(:status, Shapes::ShapeRef.new(shape: FleetStatus, location: "querystring", location_name: "status"))
    ListFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFleetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFleetsRequest.struct_class = Types::ListFleetsRequest

    ListFleetsResponse.add_member(:fleets, Shapes::ShapeRef.new(shape: FleetSummaries, required: true, location_name: "fleets"))
    ListFleetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFleetsResponse.struct_class = Types::ListFleetsResponse

    ListJobMembersRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListJobMembersRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListJobMembersRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListJobMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListJobMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListJobMembersRequest.struct_class = Types::ListJobMembersRequest

    ListJobMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: JobMembers, required: true, location_name: "members"))
    ListJobMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobMembersResponse.struct_class = Types::ListJobMembersResponse

    ListJobParameterDefinitionsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListJobParameterDefinitionsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListJobParameterDefinitionsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListJobParameterDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListJobParameterDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListJobParameterDefinitionsRequest.struct_class = Types::ListJobParameterDefinitionsRequest

    ListJobParameterDefinitionsResponse.add_member(:job_parameter_definitions, Shapes::ShapeRef.new(shape: JobParameterDefinitions, required: true, location_name: "jobParameterDefinitions"))
    ListJobParameterDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobParameterDefinitionsResponse.struct_class = Types::ListJobParameterDefinitionsResponse

    ListJobsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListJobsRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location: "querystring", location_name: "principalId"))
    ListJobsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobSummaries, required: true, location_name: "jobs"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListLicenseEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListLicenseEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLicenseEndpointsRequest.struct_class = Types::ListLicenseEndpointsRequest

    ListLicenseEndpointsResponse.add_member(:license_endpoints, Shapes::ShapeRef.new(shape: LicenseEndpointSummaries, required: true, location_name: "licenseEndpoints"))
    ListLicenseEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLicenseEndpointsResponse.struct_class = Types::ListLicenseEndpointsResponse

    ListLimitsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListLimitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListLimitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLimitsRequest.struct_class = Types::ListLimitsRequest

    ListLimitsResponse.add_member(:limits, Shapes::ShapeRef.new(shape: LimitSummaries, required: true, location_name: "limits"))
    ListLimitsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLimitsResponse.struct_class = Types::ListLimitsResponse

    ListMeteredProductsRequest.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, required: true, location: "uri", location_name: "licenseEndpointId"))
    ListMeteredProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMeteredProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMeteredProductsRequest.struct_class = Types::ListMeteredProductsRequest

    ListMeteredProductsResponse.add_member(:metered_products, Shapes::ShapeRef.new(shape: MeteredProductSummaryList, required: true, location_name: "meteredProducts"))
    ListMeteredProductsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMeteredProductsResponse.struct_class = Types::ListMeteredProductsResponse

    ListMonitorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMonitorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMonitorsRequest.struct_class = Types::ListMonitorsRequest

    ListMonitorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMonitorsResponse.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorSummaries, required: true, location_name: "monitors"))
    ListMonitorsResponse.struct_class = Types::ListMonitorsResponse

    ListQueueEnvironmentsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListQueueEnvironmentsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListQueueEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListQueueEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListQueueEnvironmentsRequest.struct_class = Types::ListQueueEnvironmentsRequest

    ListQueueEnvironmentsResponse.add_member(:environments, Shapes::ShapeRef.new(shape: QueueEnvironmentSummaries, required: true, location_name: "environments"))
    ListQueueEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQueueEnvironmentsResponse.struct_class = Types::ListQueueEnvironmentsResponse

    ListQueueFleetAssociationsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListQueueFleetAssociationsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location: "querystring", location_name: "queueId"))
    ListQueueFleetAssociationsRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location: "querystring", location_name: "fleetId"))
    ListQueueFleetAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListQueueFleetAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListQueueFleetAssociationsRequest.struct_class = Types::ListQueueFleetAssociationsRequest

    ListQueueFleetAssociationsResponse.add_member(:queue_fleet_associations, Shapes::ShapeRef.new(shape: QueueFleetAssociationSummaries, required: true, location_name: "queueFleetAssociations"))
    ListQueueFleetAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQueueFleetAssociationsResponse.struct_class = Types::ListQueueFleetAssociationsResponse

    ListQueueLimitAssociationsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListQueueLimitAssociationsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location: "querystring", location_name: "queueId"))
    ListQueueLimitAssociationsRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, location: "querystring", location_name: "limitId"))
    ListQueueLimitAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListQueueLimitAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListQueueLimitAssociationsRequest.struct_class = Types::ListQueueLimitAssociationsRequest

    ListQueueLimitAssociationsResponse.add_member(:queue_limit_associations, Shapes::ShapeRef.new(shape: QueueLimitAssociationSummaries, required: true, location_name: "queueLimitAssociations"))
    ListQueueLimitAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQueueLimitAssociationsResponse.struct_class = Types::ListQueueLimitAssociationsResponse

    ListQueueMembersRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListQueueMembersRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListQueueMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListQueueMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListQueueMembersRequest.struct_class = Types::ListQueueMembersRequest

    ListQueueMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: QueueMemberList, required: true, location_name: "members"))
    ListQueueMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQueueMembersResponse.struct_class = Types::ListQueueMembersResponse

    ListQueuesRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListQueuesRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location: "querystring", location_name: "principalId"))
    ListQueuesRequest.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, location: "querystring", location_name: "status"))
    ListQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListQueuesRequest.struct_class = Types::ListQueuesRequest

    ListQueuesResponse.add_member(:queues, Shapes::ShapeRef.new(shape: QueueSummaries, required: true, location_name: "queues"))
    ListQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQueuesResponse.struct_class = Types::ListQueuesResponse

    ListSessionActionsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListSessionActionsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListSessionActionsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListSessionActionsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "querystring", location_name: "sessionId"))
    ListSessionActionsRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location: "querystring", location_name: "taskId"))
    ListSessionActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSessionActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSessionActionsRequest.struct_class = Types::ListSessionActionsRequest

    ListSessionActionsResponse.add_member(:session_actions, Shapes::ShapeRef.new(shape: SessionActionSummaries, required: true, location_name: "sessionActions"))
    ListSessionActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSessionActionsResponse.struct_class = Types::ListSessionActionsResponse

    ListSessionsForWorkerRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListSessionsForWorkerRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    ListSessionsForWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    ListSessionsForWorkerRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSessionsForWorkerRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSessionsForWorkerRequest.struct_class = Types::ListSessionsForWorkerRequest

    ListSessionsForWorkerResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: ListSessionsForWorkerSummaries, required: true, location_name: "sessions"))
    ListSessionsForWorkerResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSessionsForWorkerResponse.struct_class = Types::ListSessionsForWorkerResponse

    ListSessionsForWorkerSummaries.member = Shapes::ShapeRef.new(shape: WorkerSessionSummary)

    ListSessionsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListSessionsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListSessionsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSessionsRequest.struct_class = Types::ListSessionsRequest

    ListSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionSummaries, required: true, location_name: "sessions"))
    ListSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSessionsResponse.struct_class = Types::ListSessionsResponse

    ListStepConsumersRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListStepConsumersRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListStepConsumersRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListStepConsumersRequest.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "stepId"))
    ListStepConsumersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStepConsumersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStepConsumersRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListStepConsumersRequest.struct_class = Types::ListStepConsumersRequest

    ListStepConsumersResponse.add_member(:consumers, Shapes::ShapeRef.new(shape: StepConsumers, required: true, location_name: "consumers"))
    ListStepConsumersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStepConsumersResponse.struct_class = Types::ListStepConsumersResponse

    ListStepDependenciesRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListStepDependenciesRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListStepDependenciesRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListStepDependenciesRequest.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "stepId"))
    ListStepDependenciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStepDependenciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStepDependenciesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListStepDependenciesRequest.struct_class = Types::ListStepDependenciesRequest

    ListStepDependenciesResponse.add_member(:dependencies, Shapes::ShapeRef.new(shape: StepDependencies, required: true, location_name: "dependencies"))
    ListStepDependenciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStepDependenciesResponse.struct_class = Types::ListStepDependenciesResponse

    ListStepsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListStepsRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListStepsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStepsRequest.struct_class = Types::ListStepsRequest

    ListStepsResponse.add_member(:steps, Shapes::ShapeRef.new(shape: StepSummaries, required: true, location_name: "steps"))
    ListStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStepsResponse.struct_class = Types::ListStepsResponse

    ListStorageProfilesForQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListStorageProfilesForQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListStorageProfilesForQueueRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStorageProfilesForQueueRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStorageProfilesForQueueRequest.struct_class = Types::ListStorageProfilesForQueueRequest

    ListStorageProfilesForQueueResponse.add_member(:storage_profiles, Shapes::ShapeRef.new(shape: StorageProfileSummaries, required: true, location_name: "storageProfiles"))
    ListStorageProfilesForQueueResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStorageProfilesForQueueResponse.struct_class = Types::ListStorageProfilesForQueueResponse

    ListStorageProfilesRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListStorageProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStorageProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStorageProfilesRequest.struct_class = Types::ListStorageProfilesRequest

    ListStorageProfilesResponse.add_member(:storage_profiles, Shapes::ShapeRef.new(shape: StorageProfileSummaries, required: true, location_name: "storageProfiles"))
    ListStorageProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStorageProfilesResponse.struct_class = Types::ListStorageProfilesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTasksRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListTasksRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    ListTasksRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListTasksRequest.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "stepId"))
    ListTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTasksRequest.struct_class = Types::ListTasksRequest

    ListTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: TaskSummaries, required: true, location_name: "tasks"))
    ListTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTasksResponse.struct_class = Types::ListTasksResponse

    ListWorkersRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    ListWorkersRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    ListWorkersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListWorkersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWorkersRequest.struct_class = Types::ListWorkersRequest

    ListWorkersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListWorkersResponse.add_member(:workers, Shapes::ShapeRef.new(shape: WorkerSummaries, required: true, location_name: "workers"))
    ListWorkersResponse.struct_class = Types::ListWorkersResponse

    LogConfiguration.add_member(:log_driver, Shapes::ShapeRef.new(shape: LogDriver, required: true, location_name: "logDriver"))
    LogConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: LogOptions, location_name: "options"))
    LogConfiguration.add_member(:parameters, Shapes::ShapeRef.new(shape: LogParameters, location_name: "parameters"))
    LogConfiguration.add_member(:error, Shapes::ShapeRef.new(shape: LogError, location_name: "error"))
    LogConfiguration.struct_class = Types::LogConfiguration

    LogOptions.key = Shapes::ShapeRef.new(shape: String)
    LogOptions.value = Shapes::ShapeRef.new(shape: String)

    LogParameters.key = Shapes::ShapeRef.new(shape: String)
    LogParameters.value = Shapes::ShapeRef.new(shape: String)

    ManifestProperties.add_member(:file_system_location_name, Shapes::ShapeRef.new(shape: FileSystemLocationName, location_name: "fileSystemLocationName"))
    ManifestProperties.add_member(:root_path, Shapes::ShapeRef.new(shape: ManifestPropertiesRootPathString, required: true, location_name: "rootPath"))
    ManifestProperties.add_member(:root_path_format, Shapes::ShapeRef.new(shape: PathFormat, required: true, location_name: "rootPathFormat"))
    ManifestProperties.add_member(:output_relative_directories, Shapes::ShapeRef.new(shape: OutputRelativeDirectoriesList, location_name: "outputRelativeDirectories"))
    ManifestProperties.add_member(:input_manifest_path, Shapes::ShapeRef.new(shape: ManifestPropertiesInputManifestPathString, location_name: "inputManifestPath"))
    ManifestProperties.add_member(:input_manifest_hash, Shapes::ShapeRef.new(shape: ManifestPropertiesInputManifestHashString, location_name: "inputManifestHash"))
    ManifestProperties.struct_class = Types::ManifestProperties

    ManifestPropertiesList.member = Shapes::ShapeRef.new(shape: ManifestProperties)

    MemoryMiBRange.add_member(:min, Shapes::ShapeRef.new(shape: MemoryAmountMiB, required: true, location_name: "min"))
    MemoryMiBRange.add_member(:max, Shapes::ShapeRef.new(shape: MemoryAmountMiB, location_name: "max"))
    MemoryMiBRange.struct_class = Types::MemoryMiBRange

    MeteredProductSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: MeteredProductId, required: true, location_name: "productId"))
    MeteredProductSummary.add_member(:family, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "family"))
    MeteredProductSummary.add_member(:vendor, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "vendor"))
    MeteredProductSummary.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "port"))
    MeteredProductSummary.struct_class = Types::MeteredProductSummary

    MeteredProductSummaryList.member = Shapes::ShapeRef.new(shape: MeteredProductSummary)

    MonitorSummaries.member = Shapes::ShapeRef.new(shape: MonitorSummary)

    MonitorSummary.add_member(:monitor_id, Shapes::ShapeRef.new(shape: MonitorId, required: true, location_name: "monitorId"))
    MonitorSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    MonitorSummary.add_member(:subdomain, Shapes::ShapeRef.new(shape: Subdomain, required: true, location_name: "subdomain"))
    MonitorSummary.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    MonitorSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    MonitorSummary.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, required: true, location_name: "identityCenterInstanceArn"))
    MonitorSummary.add_member(:identity_center_application_arn, Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, required: true, location_name: "identityCenterApplicationArn"))
    MonitorSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    MonitorSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    MonitorSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    MonitorSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    MonitorSummary.struct_class = Types::MonitorSummary

    OutputRelativeDirectoriesList.member = Shapes::ShapeRef.new(shape: OutputRelativeDirectoriesListMemberString)

    ParameterFilterExpression.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ParameterFilterExpression.add_member(:operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "operator"))
    ParameterFilterExpression.add_member(:value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "value"))
    ParameterFilterExpression.struct_class = Types::ParameterFilterExpression

    ParameterSortExpression.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    ParameterSortExpression.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ParameterSortExpression.struct_class = Types::ParameterSortExpression

    ParameterSpace.add_member(:parameters, Shapes::ShapeRef.new(shape: StepParameterList, required: true, location_name: "parameters"))
    ParameterSpace.add_member(:combination, Shapes::ShapeRef.new(shape: CombinationExpression, location_name: "combination"))
    ParameterSpace.struct_class = Types::ParameterSpace

    PathMappingRule.add_member(:source_path_format, Shapes::ShapeRef.new(shape: PathFormat, required: true, location_name: "sourcePathFormat"))
    PathMappingRule.add_member(:source_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourcePath"))
    PathMappingRule.add_member(:destination_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationPath"))
    PathMappingRule.struct_class = Types::PathMappingRule

    PathMappingRules.member = Shapes::ShapeRef.new(shape: PathMappingRule)

    PosixUser.add_member(:user, Shapes::ShapeRef.new(shape: PosixUserUserString, required: true, location_name: "user"))
    PosixUser.add_member(:group, Shapes::ShapeRef.new(shape: PosixUserGroupString, required: true, location_name: "group"))
    PosixUser.struct_class = Types::PosixUser

    PutMeteredProductRequest.add_member(:license_endpoint_id, Shapes::ShapeRef.new(shape: LicenseEndpointId, required: true, location: "uri", location_name: "licenseEndpointId"))
    PutMeteredProductRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: MeteredProductId, required: true, location: "uri", location_name: "productId"))
    PutMeteredProductRequest.struct_class = Types::PutMeteredProductRequest

    PutMeteredProductResponse.struct_class = Types::PutMeteredProductResponse

    QueueEnvironmentSummaries.member = Shapes::ShapeRef.new(shape: QueueEnvironmentSummary)

    QueueEnvironmentSummary.add_member(:queue_environment_id, Shapes::ShapeRef.new(shape: QueueEnvironmentId, required: true, location_name: "queueEnvironmentId"))
    QueueEnvironmentSummary.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    QueueEnvironmentSummary.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    QueueEnvironmentSummary.struct_class = Types::QueueEnvironmentSummary

    QueueFleetAssociationSummaries.member = Shapes::ShapeRef.new(shape: QueueFleetAssociationSummary)

    QueueFleetAssociationSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    QueueFleetAssociationSummary.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    QueueFleetAssociationSummary.add_member(:status, Shapes::ShapeRef.new(shape: QueueFleetAssociationStatus, required: true, location_name: "status"))
    QueueFleetAssociationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    QueueFleetAssociationSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    QueueFleetAssociationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    QueueFleetAssociationSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    QueueFleetAssociationSummary.struct_class = Types::QueueFleetAssociationSummary

    QueueLimitAssociationSummaries.member = Shapes::ShapeRef.new(shape: QueueLimitAssociationSummary)

    QueueLimitAssociationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    QueueLimitAssociationSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    QueueLimitAssociationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    QueueLimitAssociationSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    QueueLimitAssociationSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    QueueLimitAssociationSummary.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location_name: "limitId"))
    QueueLimitAssociationSummary.add_member(:status, Shapes::ShapeRef.new(shape: QueueLimitAssociationStatus, required: true, location_name: "status"))
    QueueLimitAssociationSummary.struct_class = Types::QueueLimitAssociationSummary

    QueueMember.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    QueueMember.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    QueueMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, required: true, location_name: "principalId"))
    QueueMember.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    QueueMember.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    QueueMember.add_member(:membership_level, Shapes::ShapeRef.new(shape: MembershipLevel, required: true, location_name: "membershipLevel"))
    QueueMember.struct_class = Types::QueueMember

    QueueMemberList.member = Shapes::ShapeRef.new(shape: QueueMember)

    QueueSummaries.member = Shapes::ShapeRef.new(shape: QueueSummary)

    QueueSummary.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    QueueSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    QueueSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    QueueSummary.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, required: true, location_name: "status"))
    QueueSummary.add_member(:default_budget_action, Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, required: true, location_name: "defaultBudgetAction"))
    QueueSummary.add_member(:blocked_reason, Shapes::ShapeRef.new(shape: QueueBlockedReason, location_name: "blockedReason"))
    QueueSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    QueueSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    QueueSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    QueueSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    QueueSummary.struct_class = Types::QueueSummary

    RequiredFileSystemLocationNames.member = Shapes::ShapeRef.new(shape: FileSystemLocationName)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseBudgetAction.add_member(:type, Shapes::ShapeRef.new(shape: BudgetActionType, required: true, location_name: "type"))
    ResponseBudgetAction.add_member(:threshold_percentage, Shapes::ShapeRef.new(shape: ThresholdPercentage, required: true, location_name: "thresholdPercentage"))
    ResponseBudgetAction.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ResponseBudgetAction.struct_class = Types::ResponseBudgetAction

    ResponseBudgetActionList.member = Shapes::ShapeRef.new(shape: ResponseBudgetAction)

    S3Location.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "key"))
    S3Location.struct_class = Types::S3Location

    SearchFilterExpression.add_member(:date_time_filter, Shapes::ShapeRef.new(shape: DateTimeFilterExpression, location_name: "dateTimeFilter"))
    SearchFilterExpression.add_member(:parameter_filter, Shapes::ShapeRef.new(shape: ParameterFilterExpression, location_name: "parameterFilter"))
    SearchFilterExpression.add_member(:search_term_filter, Shapes::ShapeRef.new(shape: SearchTermFilterExpression, location_name: "searchTermFilter"))
    SearchFilterExpression.add_member(:string_filter, Shapes::ShapeRef.new(shape: StringFilterExpression, location_name: "stringFilter"))
    SearchFilterExpression.add_member(:group_filter, Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: "groupFilter"))
    SearchFilterExpression.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SearchFilterExpression.add_member_subclass(:date_time_filter, Types::SearchFilterExpression::DateTimeFilter)
    SearchFilterExpression.add_member_subclass(:parameter_filter, Types::SearchFilterExpression::ParameterFilter)
    SearchFilterExpression.add_member_subclass(:search_term_filter, Types::SearchFilterExpression::SearchTermFilter)
    SearchFilterExpression.add_member_subclass(:string_filter, Types::SearchFilterExpression::StringFilter)
    SearchFilterExpression.add_member_subclass(:group_filter, Types::SearchFilterExpression::GroupFilter)
    SearchFilterExpression.add_member_subclass(:unknown, Types::SearchFilterExpression::Unknown)
    SearchFilterExpression.struct_class = Types::SearchFilterExpression

    SearchFilterExpressions.member = Shapes::ShapeRef.new(shape: SearchFilterExpression)

    SearchGroupedFilterExpressions.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilterExpressions, required: true, location_name: "filters"))
    SearchGroupedFilterExpressions.add_member(:operator, Shapes::ShapeRef.new(shape: LogicalOperator, required: true, location_name: "operator"))
    SearchGroupedFilterExpressions.struct_class = Types::SearchGroupedFilterExpressions

    SearchJobsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    SearchJobsRequest.add_member(:queue_ids, Shapes::ShapeRef.new(shape: SearchJobsRequestQueueIdsList, required: true, location_name: "queueIds"))
    SearchJobsRequest.add_member(:filter_expressions, Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: "filterExpressions"))
    SearchJobsRequest.add_member(:sort_expressions, Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: "sortExpressions"))
    SearchJobsRequest.add_member(:item_offset, Shapes::ShapeRef.new(shape: SearchJobsRequestItemOffsetInteger, required: true, location_name: "itemOffset"))
    SearchJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: SearchJobsRequestPageSizeInteger, location_name: "pageSize"))
    SearchJobsRequest.struct_class = Types::SearchJobsRequest

    SearchJobsRequestQueueIdsList.member = Shapes::ShapeRef.new(shape: QueueId)

    SearchJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobSearchSummaries, required: true, location_name: "jobs"))
    SearchJobsResponse.add_member(:next_item_offset, Shapes::ShapeRef.new(shape: NextItemOffset, location_name: "nextItemOffset"))
    SearchJobsResponse.add_member(:total_results, Shapes::ShapeRef.new(shape: TotalResults, required: true, location_name: "totalResults"))
    SearchJobsResponse.struct_class = Types::SearchJobsResponse

    SearchSortExpression.add_member(:user_jobs_first, Shapes::ShapeRef.new(shape: UserJobsFirst, location_name: "userJobsFirst"))
    SearchSortExpression.add_member(:field_sort, Shapes::ShapeRef.new(shape: FieldSortExpression, location_name: "fieldSort"))
    SearchSortExpression.add_member(:parameter_sort, Shapes::ShapeRef.new(shape: ParameterSortExpression, location_name: "parameterSort"))
    SearchSortExpression.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SearchSortExpression.add_member_subclass(:user_jobs_first, Types::SearchSortExpression::UserJobsFirst)
    SearchSortExpression.add_member_subclass(:field_sort, Types::SearchSortExpression::FieldSort)
    SearchSortExpression.add_member_subclass(:parameter_sort, Types::SearchSortExpression::ParameterSort)
    SearchSortExpression.add_member_subclass(:unknown, Types::SearchSortExpression::Unknown)
    SearchSortExpression.struct_class = Types::SearchSortExpression

    SearchSortExpressions.member = Shapes::ShapeRef.new(shape: SearchSortExpression)

    SearchStepsRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    SearchStepsRequest.add_member(:queue_ids, Shapes::ShapeRef.new(shape: SearchStepsRequestQueueIdsList, required: true, location_name: "queueIds"))
    SearchStepsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    SearchStepsRequest.add_member(:filter_expressions, Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: "filterExpressions"))
    SearchStepsRequest.add_member(:sort_expressions, Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: "sortExpressions"))
    SearchStepsRequest.add_member(:item_offset, Shapes::ShapeRef.new(shape: SearchStepsRequestItemOffsetInteger, required: true, location_name: "itemOffset"))
    SearchStepsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: SearchStepsRequestPageSizeInteger, location_name: "pageSize"))
    SearchStepsRequest.struct_class = Types::SearchStepsRequest

    SearchStepsRequestQueueIdsList.member = Shapes::ShapeRef.new(shape: QueueId)

    SearchStepsResponse.add_member(:steps, Shapes::ShapeRef.new(shape: StepSearchSummaries, required: true, location_name: "steps"))
    SearchStepsResponse.add_member(:next_item_offset, Shapes::ShapeRef.new(shape: NextItemOffset, location_name: "nextItemOffset"))
    SearchStepsResponse.add_member(:total_results, Shapes::ShapeRef.new(shape: TotalResults, required: true, location_name: "totalResults"))
    SearchStepsResponse.struct_class = Types::SearchStepsResponse

    SearchTasksRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    SearchTasksRequest.add_member(:queue_ids, Shapes::ShapeRef.new(shape: SearchTasksRequestQueueIdsList, required: true, location_name: "queueIds"))
    SearchTasksRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    SearchTasksRequest.add_member(:filter_expressions, Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: "filterExpressions"))
    SearchTasksRequest.add_member(:sort_expressions, Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: "sortExpressions"))
    SearchTasksRequest.add_member(:item_offset, Shapes::ShapeRef.new(shape: SearchTasksRequestItemOffsetInteger, required: true, location_name: "itemOffset"))
    SearchTasksRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: SearchTasksRequestPageSizeInteger, location_name: "pageSize"))
    SearchTasksRequest.struct_class = Types::SearchTasksRequest

    SearchTasksRequestQueueIdsList.member = Shapes::ShapeRef.new(shape: QueueId)

    SearchTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: TaskSearchSummaries, required: true, location_name: "tasks"))
    SearchTasksResponse.add_member(:next_item_offset, Shapes::ShapeRef.new(shape: NextItemOffset, location_name: "nextItemOffset"))
    SearchTasksResponse.add_member(:total_results, Shapes::ShapeRef.new(shape: TotalResults, required: true, location_name: "totalResults"))
    SearchTasksResponse.struct_class = Types::SearchTasksResponse

    SearchTermFilterExpression.add_member(:search_term, Shapes::ShapeRef.new(shape: SearchTerm, required: true, location_name: "searchTerm"))
    SearchTermFilterExpression.add_member(:match_type, Shapes::ShapeRef.new(shape: SearchTermMatchingType, location_name: "matchType"))
    SearchTermFilterExpression.struct_class = Types::SearchTermFilterExpression

    SearchWorkersRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    SearchWorkersRequest.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: SearchWorkersRequestFleetIdsList, required: true, location_name: "fleetIds"))
    SearchWorkersRequest.add_member(:filter_expressions, Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: "filterExpressions"))
    SearchWorkersRequest.add_member(:sort_expressions, Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: "sortExpressions"))
    SearchWorkersRequest.add_member(:item_offset, Shapes::ShapeRef.new(shape: SearchWorkersRequestItemOffsetInteger, required: true, location_name: "itemOffset"))
    SearchWorkersRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: SearchWorkersRequestPageSizeInteger, location_name: "pageSize"))
    SearchWorkersRequest.struct_class = Types::SearchWorkersRequest

    SearchWorkersRequestFleetIdsList.member = Shapes::ShapeRef.new(shape: FleetId)

    SearchWorkersResponse.add_member(:workers, Shapes::ShapeRef.new(shape: WorkerSearchSummaries, required: true, location_name: "workers"))
    SearchWorkersResponse.add_member(:next_item_offset, Shapes::ShapeRef.new(shape: NextItemOffset, location_name: "nextItemOffset"))
    SearchWorkersResponse.add_member(:total_results, Shapes::ShapeRef.new(shape: TotalResults, required: true, location_name: "totalResults"))
    SearchWorkersResponse.struct_class = Types::SearchWorkersResponse

    ServiceManagedEc2FleetConfiguration.add_member(:instance_capabilities, Shapes::ShapeRef.new(shape: ServiceManagedEc2InstanceCapabilities, required: true, location_name: "instanceCapabilities"))
    ServiceManagedEc2FleetConfiguration.add_member(:instance_market_options, Shapes::ShapeRef.new(shape: ServiceManagedEc2InstanceMarketOptions, required: true, location_name: "instanceMarketOptions"))
    ServiceManagedEc2FleetConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "vpcConfiguration"))
    ServiceManagedEc2FleetConfiguration.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, location_name: "storageProfileId"))
    ServiceManagedEc2FleetConfiguration.struct_class = Types::ServiceManagedEc2FleetConfiguration

    ServiceManagedEc2InstanceCapabilities.add_member(:v_cpu_count, Shapes::ShapeRef.new(shape: VCpuCountRange, required: true, location_name: "vCpuCount"))
    ServiceManagedEc2InstanceCapabilities.add_member(:memory_mi_b, Shapes::ShapeRef.new(shape: MemoryMiBRange, required: true, location_name: "memoryMiB"))
    ServiceManagedEc2InstanceCapabilities.add_member(:os_family, Shapes::ShapeRef.new(shape: ServiceManagedFleetOperatingSystemFamily, required: true, location_name: "osFamily"))
    ServiceManagedEc2InstanceCapabilities.add_member(:cpu_architecture_type, Shapes::ShapeRef.new(shape: CpuArchitectureType, required: true, location_name: "cpuArchitectureType"))
    ServiceManagedEc2InstanceCapabilities.add_member(:root_ebs_volume, Shapes::ShapeRef.new(shape: Ec2EbsVolume, location_name: "rootEbsVolume"))
    ServiceManagedEc2InstanceCapabilities.add_member(:accelerator_capabilities, Shapes::ShapeRef.new(shape: AcceleratorCapabilities, location_name: "acceleratorCapabilities"))
    ServiceManagedEc2InstanceCapabilities.add_member(:allowed_instance_types, Shapes::ShapeRef.new(shape: InstanceTypes, location_name: "allowedInstanceTypes"))
    ServiceManagedEc2InstanceCapabilities.add_member(:excluded_instance_types, Shapes::ShapeRef.new(shape: InstanceTypes, location_name: "excludedInstanceTypes"))
    ServiceManagedEc2InstanceCapabilities.add_member(:custom_amounts, Shapes::ShapeRef.new(shape: CustomFleetAmountCapabilities, location_name: "customAmounts"))
    ServiceManagedEc2InstanceCapabilities.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomFleetAttributeCapabilities, location_name: "customAttributes"))
    ServiceManagedEc2InstanceCapabilities.struct_class = Types::ServiceManagedEc2InstanceCapabilities

    ServiceManagedEc2InstanceMarketOptions.add_member(:type, Shapes::ShapeRef.new(shape: Ec2MarketType, required: true, location_name: "type"))
    ServiceManagedEc2InstanceMarketOptions.struct_class = Types::ServiceManagedEc2InstanceMarketOptions

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, required: true, location_name: "reason"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionActionDefinition.add_member(:env_enter, Shapes::ShapeRef.new(shape: EnvironmentEnterSessionActionDefinition, location_name: "envEnter"))
    SessionActionDefinition.add_member(:env_exit, Shapes::ShapeRef.new(shape: EnvironmentExitSessionActionDefinition, location_name: "envExit"))
    SessionActionDefinition.add_member(:task_run, Shapes::ShapeRef.new(shape: TaskRunSessionActionDefinition, location_name: "taskRun"))
    SessionActionDefinition.add_member(:sync_input_job_attachments, Shapes::ShapeRef.new(shape: SyncInputJobAttachmentsSessionActionDefinition, location_name: "syncInputJobAttachments"))
    SessionActionDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SessionActionDefinition.add_member_subclass(:env_enter, Types::SessionActionDefinition::EnvEnter)
    SessionActionDefinition.add_member_subclass(:env_exit, Types::SessionActionDefinition::EnvExit)
    SessionActionDefinition.add_member_subclass(:task_run, Types::SessionActionDefinition::TaskRun)
    SessionActionDefinition.add_member_subclass(:sync_input_job_attachments, Types::SessionActionDefinition::SyncInputJobAttachments)
    SessionActionDefinition.add_member_subclass(:unknown, Types::SessionActionDefinition::Unknown)
    SessionActionDefinition.struct_class = Types::SessionActionDefinition

    SessionActionDefinitionSummary.add_member(:env_enter, Shapes::ShapeRef.new(shape: EnvironmentEnterSessionActionDefinitionSummary, location_name: "envEnter"))
    SessionActionDefinitionSummary.add_member(:env_exit, Shapes::ShapeRef.new(shape: EnvironmentExitSessionActionDefinitionSummary, location_name: "envExit"))
    SessionActionDefinitionSummary.add_member(:task_run, Shapes::ShapeRef.new(shape: TaskRunSessionActionDefinitionSummary, location_name: "taskRun"))
    SessionActionDefinitionSummary.add_member(:sync_input_job_attachments, Shapes::ShapeRef.new(shape: SyncInputJobAttachmentsSessionActionDefinitionSummary, location_name: "syncInputJobAttachments"))
    SessionActionDefinitionSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SessionActionDefinitionSummary.add_member_subclass(:env_enter, Types::SessionActionDefinitionSummary::EnvEnter)
    SessionActionDefinitionSummary.add_member_subclass(:env_exit, Types::SessionActionDefinitionSummary::EnvExit)
    SessionActionDefinitionSummary.add_member_subclass(:task_run, Types::SessionActionDefinitionSummary::TaskRun)
    SessionActionDefinitionSummary.add_member_subclass(:sync_input_job_attachments, Types::SessionActionDefinitionSummary::SyncInputJobAttachments)
    SessionActionDefinitionSummary.add_member_subclass(:unknown, Types::SessionActionDefinitionSummary::Unknown)
    SessionActionDefinitionSummary.struct_class = Types::SessionActionDefinitionSummary

    SessionActionIdList.member = Shapes::ShapeRef.new(shape: SessionActionId)

    SessionActionSummaries.member = Shapes::ShapeRef.new(shape: SessionActionSummary)

    SessionActionSummary.add_member(:session_action_id, Shapes::ShapeRef.new(shape: SessionActionId, required: true, location_name: "sessionActionId"))
    SessionActionSummary.add_member(:status, Shapes::ShapeRef.new(shape: SessionActionStatus, required: true, location_name: "status"))
    SessionActionSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    SessionActionSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    SessionActionSummary.add_member(:worker_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "workerUpdatedAt"))
    SessionActionSummary.add_member(:progress_percent, Shapes::ShapeRef.new(shape: SessionActionProgressPercent, location_name: "progressPercent"))
    SessionActionSummary.add_member(:definition, Shapes::ShapeRef.new(shape: SessionActionDefinitionSummary, required: true, location_name: "definition"))
    SessionActionSummary.add_member(:manifests, Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesListResponse, location_name: "manifests"))
    SessionActionSummary.struct_class = Types::SessionActionSummary

    SessionSummaries.member = Shapes::ShapeRef.new(shape: SessionSummary)

    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    SessionSummary.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    SessionSummary.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "workerId"))
    SessionSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, required: true, location_name: "startedAt"))
    SessionSummary.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: SessionLifecycleStatus, required: true, location_name: "lifecycleStatus"))
    SessionSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    SessionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    SessionSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    SessionSummary.add_member(:target_lifecycle_status, Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, location_name: "targetLifecycleStatus"))
    SessionSummary.struct_class = Types::SessionSummary

    SessionsStatisticsResources.add_member(:queue_ids, Shapes::ShapeRef.new(shape: SessionsStatisticsResourcesQueueIdsList, location_name: "queueIds"))
    SessionsStatisticsResources.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: SessionsStatisticsResourcesFleetIdsList, location_name: "fleetIds"))
    SessionsStatisticsResources.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SessionsStatisticsResources.add_member_subclass(:queue_ids, Types::SessionsStatisticsResources::QueueIds)
    SessionsStatisticsResources.add_member_subclass(:fleet_ids, Types::SessionsStatisticsResources::FleetIds)
    SessionsStatisticsResources.add_member_subclass(:unknown, Types::SessionsStatisticsResources::Unknown)
    SessionsStatisticsResources.struct_class = Types::SessionsStatisticsResources

    SessionsStatisticsResourcesFleetIdsList.member = Shapes::ShapeRef.new(shape: FleetId)

    SessionsStatisticsResourcesQueueIdsList.member = Shapes::ShapeRef.new(shape: QueueId)

    StartSessionsStatisticsAggregationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    StartSessionsStatisticsAggregationRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: SessionsStatisticsResources, required: true, location_name: "resourceIds"))
    StartSessionsStatisticsAggregationRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    StartSessionsStatisticsAggregationRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    StartSessionsStatisticsAggregationRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "timezone"))
    StartSessionsStatisticsAggregationRequest.add_member(:period, Shapes::ShapeRef.new(shape: Period, location_name: "period"))
    StartSessionsStatisticsAggregationRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: UsageGroupBy, required: true, location_name: "groupBy"))
    StartSessionsStatisticsAggregationRequest.add_member(:statistics, Shapes::ShapeRef.new(shape: UsageStatistics, required: true, location_name: "statistics"))
    StartSessionsStatisticsAggregationRequest.struct_class = Types::StartSessionsStatisticsAggregationRequest

    StartSessionsStatisticsAggregationResponse.add_member(:aggregation_id, Shapes::ShapeRef.new(shape: AggregationId, required: true, location_name: "aggregationId"))
    StartSessionsStatisticsAggregationResponse.struct_class = Types::StartSessionsStatisticsAggregationResponse

    Statistics.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "queueId"))
    Statistics.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "fleetId"))
    Statistics.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    Statistics.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    Statistics.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    Statistics.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType"))
    Statistics.add_member(:license_product, Shapes::ShapeRef.new(shape: LicenseProduct, location_name: "licenseProduct"))
    Statistics.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    Statistics.add_member(:count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "count"))
    Statistics.add_member(:cost_in_usd, Shapes::ShapeRef.new(shape: Stats, required: true, location_name: "costInUsd"))
    Statistics.add_member(:runtime_in_seconds, Shapes::ShapeRef.new(shape: Stats, required: true, location_name: "runtimeInSeconds"))
    Statistics.add_member(:aggregation_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "aggregationStartTime"))
    Statistics.add_member(:aggregation_end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "aggregationEndTime"))
    Statistics.struct_class = Types::Statistics

    StatisticsList.member = Shapes::ShapeRef.new(shape: Statistics)

    Stats.add_member(:min, Shapes::ShapeRef.new(shape: Double, location_name: "min"))
    Stats.add_member(:max, Shapes::ShapeRef.new(shape: Double, location_name: "max"))
    Stats.add_member(:avg, Shapes::ShapeRef.new(shape: Double, location_name: "avg"))
    Stats.add_member(:sum, Shapes::ShapeRef.new(shape: Double, location_name: "sum"))
    Stats.struct_class = Types::Stats

    StepAmountCapabilities.member = Shapes::ShapeRef.new(shape: StepAmountCapability)

    StepAmountCapability.add_member(:name, Shapes::ShapeRef.new(shape: AmountCapabilityName, required: true, location_name: "name"))
    StepAmountCapability.add_member(:min, Shapes::ShapeRef.new(shape: Double, location_name: "min"))
    StepAmountCapability.add_member(:max, Shapes::ShapeRef.new(shape: Double, location_name: "max"))
    StepAmountCapability.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "value"))
    StepAmountCapability.struct_class = Types::StepAmountCapability

    StepAttributeCapabilities.member = Shapes::ShapeRef.new(shape: StepAttributeCapability)

    StepAttributeCapability.add_member(:name, Shapes::ShapeRef.new(shape: AttributeCapabilityName, required: true, location_name: "name"))
    StepAttributeCapability.add_member(:any_of, Shapes::ShapeRef.new(shape: ListAttributeCapabilityValue, location_name: "anyOf"))
    StepAttributeCapability.add_member(:all_of, Shapes::ShapeRef.new(shape: ListAttributeCapabilityValue, location_name: "allOf"))
    StepAttributeCapability.struct_class = Types::StepAttributeCapability

    StepConsumer.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    StepConsumer.add_member(:status, Shapes::ShapeRef.new(shape: DependencyConsumerResolutionStatus, required: true, location_name: "status"))
    StepConsumer.struct_class = Types::StepConsumer

    StepConsumers.member = Shapes::ShapeRef.new(shape: StepConsumer)

    StepDependencies.member = Shapes::ShapeRef.new(shape: StepDependency)

    StepDependency.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    StepDependency.add_member(:status, Shapes::ShapeRef.new(shape: DependencyConsumerResolutionStatus, required: true, location_name: "status"))
    StepDependency.struct_class = Types::StepDependency

    StepDetailsEntity.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StepDetailsEntity.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    StepDetailsEntity.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "schemaVersion"))
    StepDetailsEntity.add_member(:template, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "template"))
    StepDetailsEntity.add_member(:dependencies, Shapes::ShapeRef.new(shape: DependenciesList, required: true, location_name: "dependencies"))
    StepDetailsEntity.struct_class = Types::StepDetailsEntity

    StepDetailsError.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StepDetailsError.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    StepDetailsError.add_member(:code, Shapes::ShapeRef.new(shape: JobEntityErrorCode, required: true, location_name: "code"))
    StepDetailsError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    StepDetailsError.struct_class = Types::StepDetailsError

    StepDetailsIdentifiers.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StepDetailsIdentifiers.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    StepDetailsIdentifiers.struct_class = Types::StepDetailsIdentifiers

    StepParameter.add_member(:name, Shapes::ShapeRef.new(shape: StepParameterName, required: true, location_name: "name"))
    StepParameter.add_member(:type, Shapes::ShapeRef.new(shape: StepParameterType, required: true, location_name: "type"))
    StepParameter.struct_class = Types::StepParameter

    StepParameterList.member = Shapes::ShapeRef.new(shape: StepParameter)

    StepRequiredCapabilities.add_member(:attributes, Shapes::ShapeRef.new(shape: StepAttributeCapabilities, required: true, location_name: "attributes"))
    StepRequiredCapabilities.add_member(:amounts, Shapes::ShapeRef.new(shape: StepAmountCapabilities, required: true, location_name: "amounts"))
    StepRequiredCapabilities.struct_class = Types::StepRequiredCapabilities

    StepSearchSummaries.member = Shapes::ShapeRef.new(shape: StepSearchSummary)

    StepSearchSummary.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, location_name: "stepId"))
    StepSearchSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    StepSearchSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "queueId"))
    StepSearchSummary.add_member(:name, Shapes::ShapeRef.new(shape: StepName, location_name: "name"))
    StepSearchSummary.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: StepLifecycleStatus, location_name: "lifecycleStatus"))
    StepSearchSummary.add_member(:lifecycle_status_message, Shapes::ShapeRef.new(shape: String, location_name: "lifecycleStatusMessage"))
    StepSearchSummary.add_member(:task_run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: "taskRunStatus"))
    StepSearchSummary.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    StepSearchSummary.add_member(:task_run_status_counts, Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: "taskRunStatusCounts"))
    StepSearchSummary.add_member(:task_failure_retry_count, Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: "taskFailureRetryCount"))
    StepSearchSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    StepSearchSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    StepSearchSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    StepSearchSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    StepSearchSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    StepSearchSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    StepSearchSummary.add_member(:parameter_space, Shapes::ShapeRef.new(shape: ParameterSpace, location_name: "parameterSpace"))
    StepSearchSummary.struct_class = Types::StepSearchSummary

    StepSummaries.member = Shapes::ShapeRef.new(shape: StepSummary)

    StepSummary.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    StepSummary.add_member(:name, Shapes::ShapeRef.new(shape: StepName, required: true, location_name: "name"))
    StepSummary.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: StepLifecycleStatus, required: true, location_name: "lifecycleStatus"))
    StepSummary.add_member(:lifecycle_status_message, Shapes::ShapeRef.new(shape: String, location_name: "lifecycleStatusMessage"))
    StepSummary.add_member(:task_run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, required: true, location_name: "taskRunStatus"))
    StepSummary.add_member(:task_run_status_counts, Shapes::ShapeRef.new(shape: TaskRunStatusCounts, required: true, location_name: "taskRunStatusCounts"))
    StepSummary.add_member(:task_failure_retry_count, Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: "taskFailureRetryCount"))
    StepSummary.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    StepSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    StepSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    StepSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    StepSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    StepSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    StepSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    StepSummary.add_member(:dependency_counts, Shapes::ShapeRef.new(shape: DependencyCounts, location_name: "dependencyCounts"))
    StepSummary.struct_class = Types::StepSummary

    StorageProfileSummaries.member = Shapes::ShapeRef.new(shape: StorageProfileSummary)

    StorageProfileSummary.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location_name: "storageProfileId"))
    StorageProfileSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "displayName"))
    StorageProfileSummary.add_member(:os_family, Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, required: true, location_name: "osFamily"))
    StorageProfileSummary.struct_class = Types::StorageProfileSummary

    StringFilterExpression.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    StringFilterExpression.add_member(:operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "operator"))
    StringFilterExpression.add_member(:value, Shapes::ShapeRef.new(shape: StringFilter, required: true, location_name: "value"))
    StringFilterExpression.struct_class = Types::StringFilterExpression

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SyncInputJobAttachmentsSessionActionDefinition.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, location_name: "stepId"))
    SyncInputJobAttachmentsSessionActionDefinition.struct_class = Types::SyncInputJobAttachmentsSessionActionDefinition

    SyncInputJobAttachmentsSessionActionDefinitionSummary.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, location_name: "stepId"))
    SyncInputJobAttachmentsSessionActionDefinitionSummary.struct_class = Types::SyncInputJobAttachmentsSessionActionDefinitionSummary

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    TaskParameterValue.add_member(:int, Shapes::ShapeRef.new(shape: IntString, location_name: "int"))
    TaskParameterValue.add_member(:float, Shapes::ShapeRef.new(shape: FloatString, location_name: "float"))
    TaskParameterValue.add_member(:string, Shapes::ShapeRef.new(shape: ParameterString, location_name: "string"))
    TaskParameterValue.add_member(:path, Shapes::ShapeRef.new(shape: PathString, location_name: "path"))
    TaskParameterValue.add_member(:chunk_int, Shapes::ShapeRef.new(shape: String, location_name: "chunkInt"))
    TaskParameterValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TaskParameterValue.add_member_subclass(:int, Types::TaskParameterValue::Int)
    TaskParameterValue.add_member_subclass(:float, Types::TaskParameterValue::Float)
    TaskParameterValue.add_member_subclass(:string, Types::TaskParameterValue::String)
    TaskParameterValue.add_member_subclass(:path, Types::TaskParameterValue::Path)
    TaskParameterValue.add_member_subclass(:chunk_int, Types::TaskParameterValue::ChunkInt)
    TaskParameterValue.add_member_subclass(:unknown, Types::TaskParameterValue::Unknown)
    TaskParameterValue.struct_class = Types::TaskParameterValue

    TaskParameters.key = Shapes::ShapeRef.new(shape: String)
    TaskParameters.value = Shapes::ShapeRef.new(shape: TaskParameterValue)

    TaskRunManifestPropertiesListRequest.member = Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesRequest)

    TaskRunManifestPropertiesListResponse.member = Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesResponse)

    TaskRunManifestPropertiesRequest.add_member(:output_manifest_path, Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesRequestOutputManifestPathString, location_name: "outputManifestPath"))
    TaskRunManifestPropertiesRequest.add_member(:output_manifest_hash, Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesRequestOutputManifestHashString, location_name: "outputManifestHash"))
    TaskRunManifestPropertiesRequest.struct_class = Types::TaskRunManifestPropertiesRequest

    TaskRunManifestPropertiesResponse.add_member(:output_manifest_path, Shapes::ShapeRef.new(shape: String, location_name: "outputManifestPath"))
    TaskRunManifestPropertiesResponse.add_member(:output_manifest_hash, Shapes::ShapeRef.new(shape: String, location_name: "outputManifestHash"))
    TaskRunManifestPropertiesResponse.struct_class = Types::TaskRunManifestPropertiesResponse

    TaskRunSessionActionDefinition.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    TaskRunSessionActionDefinition.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    TaskRunSessionActionDefinition.add_member(:parameters, Shapes::ShapeRef.new(shape: TaskParameters, required: true, location_name: "parameters"))
    TaskRunSessionActionDefinition.struct_class = Types::TaskRunSessionActionDefinition

    TaskRunSessionActionDefinitionSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    TaskRunSessionActionDefinitionSummary.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "stepId"))
    TaskRunSessionActionDefinitionSummary.add_member(:parameters, Shapes::ShapeRef.new(shape: TaskParameters, location_name: "parameters"))
    TaskRunSessionActionDefinitionSummary.struct_class = Types::TaskRunSessionActionDefinitionSummary

    TaskRunStatusCounts.key = Shapes::ShapeRef.new(shape: TaskRunStatus)
    TaskRunStatusCounts.value = Shapes::ShapeRef.new(shape: Integer)

    TaskSearchSummaries.member = Shapes::ShapeRef.new(shape: TaskSearchSummary)

    TaskSearchSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    TaskSearchSummary.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, location_name: "stepId"))
    TaskSearchSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    TaskSearchSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "queueId"))
    TaskSearchSummary.add_member(:run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: "runStatus"))
    TaskSearchSummary.add_member(:target_run_status, Shapes::ShapeRef.new(shape: TaskTargetRunStatus, location_name: "targetRunStatus"))
    TaskSearchSummary.add_member(:parameters, Shapes::ShapeRef.new(shape: TaskParameters, location_name: "parameters"))
    TaskSearchSummary.add_member(:failure_retry_count, Shapes::ShapeRef.new(shape: TaskRetryCount, location_name: "failureRetryCount"))
    TaskSearchSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    TaskSearchSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    TaskSearchSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    TaskSearchSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    TaskSearchSummary.struct_class = Types::TaskSearchSummary

    TaskSummaries.member = Shapes::ShapeRef.new(shape: TaskSummary)

    TaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    TaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    TaskSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    TaskSummary.add_member(:run_status, Shapes::ShapeRef.new(shape: TaskRunStatus, required: true, location_name: "runStatus"))
    TaskSummary.add_member(:target_run_status, Shapes::ShapeRef.new(shape: TaskTargetRunStatus, location_name: "targetRunStatus"))
    TaskSummary.add_member(:failure_retry_count, Shapes::ShapeRef.new(shape: TaskRetryCount, location_name: "failureRetryCount"))
    TaskSummary.add_member(:parameters, Shapes::ShapeRef.new(shape: TaskParameters, location_name: "parameters"))
    TaskSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    TaskSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    TaskSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    TaskSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    TaskSummary.add_member(:latest_session_action_id, Shapes::ShapeRef.new(shape: SessionActionId, location_name: "latestSessionActionId"))
    TaskSummary.struct_class = Types::TaskSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBudgetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateBudgetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateBudgetRequest.add_member(:budget_id, Shapes::ShapeRef.new(shape: BudgetId, required: true, location: "uri", location_name: "budgetId"))
    UpdateBudgetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "displayName"))
    UpdateBudgetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBudgetRequest.add_member(:status, Shapes::ShapeRef.new(shape: BudgetStatus, location_name: "status"))
    UpdateBudgetRequest.add_member(:approximate_dollar_limit, Shapes::ShapeRef.new(shape: ConsumedUsageLimit, location_name: "approximateDollarLimit"))
    UpdateBudgetRequest.add_member(:actions_to_add, Shapes::ShapeRef.new(shape: BudgetActionsToAdd, location_name: "actionsToAdd"))
    UpdateBudgetRequest.add_member(:actions_to_remove, Shapes::ShapeRef.new(shape: BudgetActionsToRemove, location_name: "actionsToRemove"))
    UpdateBudgetRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: BudgetSchedule, location_name: "schedule"))
    UpdateBudgetRequest.struct_class = Types::UpdateBudgetRequest

    UpdateBudgetResponse.struct_class = Types::UpdateBudgetResponse

    UpdateFarmRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateFarmRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "displayName"))
    UpdateFarmRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateFarmRequest.struct_class = Types::UpdateFarmRequest

    UpdateFarmResponse.struct_class = Types::UpdateFarmResponse

    UpdateFleetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateFleetRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    UpdateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "displayName"))
    UpdateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateFleetRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    UpdateFleetRequest.add_member(:min_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: "minWorkerCount"))
    UpdateFleetRequest.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: "maxWorkerCount"))
    UpdateFleetRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: FleetConfiguration, location_name: "configuration"))
    UpdateFleetRequest.add_member(:host_configuration, Shapes::ShapeRef.new(shape: HostConfiguration, location_name: "hostConfiguration"))
    UpdateFleetRequest.struct_class = Types::UpdateFleetRequest

    UpdateFleetResponse.struct_class = Types::UpdateFleetResponse

    UpdateJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateJobRequest.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: "targetTaskRunStatus"))
    UpdateJobRequest.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, location_name: "priority"))
    UpdateJobRequest.add_member(:max_failed_tasks_count, Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: "maxFailedTasksCount"))
    UpdateJobRequest.add_member(:max_retries_per_task, Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: "maxRetriesPerTask"))
    UpdateJobRequest.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: UpdateJobLifecycleStatus, location_name: "lifecycleStatus"))
    UpdateJobRequest.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: "maxWorkerCount"))
    UpdateJobRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateJobRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    UpdateJobRequest.struct_class = Types::UpdateJobRequest

    UpdateJobResponse.struct_class = Types::UpdateJobResponse

    UpdateLimitRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateLimitRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location: "uri", location_name: "limitId"))
    UpdateLimitRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "displayName"))
    UpdateLimitRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateLimitRequest.add_member(:max_count, Shapes::ShapeRef.new(shape: MaxCount, location_name: "maxCount"))
    UpdateLimitRequest.struct_class = Types::UpdateLimitRequest

    UpdateLimitResponse.struct_class = Types::UpdateLimitResponse

    UpdateMonitorRequest.add_member(:monitor_id, Shapes::ShapeRef.new(shape: MonitorId, required: true, location: "uri", location_name: "monitorId"))
    UpdateMonitorRequest.add_member(:subdomain, Shapes::ShapeRef.new(shape: Subdomain, location_name: "subdomain"))
    UpdateMonitorRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "displayName"))
    UpdateMonitorRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    UpdateMonitorRequest.struct_class = Types::UpdateMonitorRequest

    UpdateMonitorResponse.struct_class = Types::UpdateMonitorResponse

    UpdateQueueEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateQueueEnvironmentRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateQueueEnvironmentRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateQueueEnvironmentRequest.add_member(:queue_environment_id, Shapes::ShapeRef.new(shape: QueueEnvironmentId, required: true, location: "uri", location_name: "queueEnvironmentId"))
    UpdateQueueEnvironmentRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "priority"))
    UpdateQueueEnvironmentRequest.add_member(:template_type, Shapes::ShapeRef.new(shape: EnvironmentTemplateType, location_name: "templateType"))
    UpdateQueueEnvironmentRequest.add_member(:template, Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: "template"))
    UpdateQueueEnvironmentRequest.struct_class = Types::UpdateQueueEnvironmentRequest

    UpdateQueueEnvironmentResponse.struct_class = Types::UpdateQueueEnvironmentResponse

    UpdateQueueFleetAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateQueueFleetAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateQueueFleetAssociationRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    UpdateQueueFleetAssociationRequest.add_member(:status, Shapes::ShapeRef.new(shape: UpdateQueueFleetAssociationStatus, required: true, location_name: "status"))
    UpdateQueueFleetAssociationRequest.struct_class = Types::UpdateQueueFleetAssociationRequest

    UpdateQueueFleetAssociationResponse.struct_class = Types::UpdateQueueFleetAssociationResponse

    UpdateQueueLimitAssociationRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateQueueLimitAssociationRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateQueueLimitAssociationRequest.add_member(:limit_id, Shapes::ShapeRef.new(shape: LimitId, required: true, location: "uri", location_name: "limitId"))
    UpdateQueueLimitAssociationRequest.add_member(:status, Shapes::ShapeRef.new(shape: UpdateQueueLimitAssociationStatus, required: true, location_name: "status"))
    UpdateQueueLimitAssociationRequest.struct_class = Types::UpdateQueueLimitAssociationRequest

    UpdateQueueLimitAssociationResponse.struct_class = Types::UpdateQueueLimitAssociationResponse

    UpdateQueueRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateQueueRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateQueueRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateQueueRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "displayName"))
    UpdateQueueRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateQueueRequest.add_member(:default_budget_action, Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, location_name: "defaultBudgetAction"))
    UpdateQueueRequest.add_member(:job_attachment_settings, Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: "jobAttachmentSettings"))
    UpdateQueueRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    UpdateQueueRequest.add_member(:job_run_as_user, Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: "jobRunAsUser"))
    UpdateQueueRequest.add_member(:required_file_system_location_names_to_add, Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: "requiredFileSystemLocationNamesToAdd"))
    UpdateQueueRequest.add_member(:required_file_system_location_names_to_remove, Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: "requiredFileSystemLocationNamesToRemove"))
    UpdateQueueRequest.add_member(:allowed_storage_profile_ids_to_add, Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: "allowedStorageProfileIdsToAdd"))
    UpdateQueueRequest.add_member(:allowed_storage_profile_ids_to_remove, Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: "allowedStorageProfileIdsToRemove"))
    UpdateQueueRequest.struct_class = Types::UpdateQueueRequest

    UpdateQueueResponse.struct_class = Types::UpdateQueueResponse

    UpdateSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateSessionRequest.add_member(:target_lifecycle_status, Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, required: true, location_name: "targetLifecycleStatus"))
    UpdateSessionRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateSessionRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateSessionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    UpdateSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    UpdateSessionRequest.struct_class = Types::UpdateSessionRequest

    UpdateSessionResponse.struct_class = Types::UpdateSessionResponse

    UpdateStepRequest.add_member(:target_task_run_status, Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, required: true, location_name: "targetTaskRunStatus"))
    UpdateStepRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateStepRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateStepRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateStepRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    UpdateStepRequest.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "stepId"))
    UpdateStepRequest.struct_class = Types::UpdateStepRequest

    UpdateStepResponse.struct_class = Types::UpdateStepResponse

    UpdateStorageProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateStorageProfileRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateStorageProfileRequest.add_member(:storage_profile_id, Shapes::ShapeRef.new(shape: StorageProfileId, required: true, location: "uri", location_name: "storageProfileId"))
    UpdateStorageProfileRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "displayName"))
    UpdateStorageProfileRequest.add_member(:os_family, Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, location_name: "osFamily"))
    UpdateStorageProfileRequest.add_member(:file_system_locations_to_add, Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: "fileSystemLocationsToAdd"))
    UpdateStorageProfileRequest.add_member(:file_system_locations_to_remove, Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: "fileSystemLocationsToRemove"))
    UpdateStorageProfileRequest.struct_class = Types::UpdateStorageProfileRequest

    UpdateStorageProfileResponse.struct_class = Types::UpdateStorageProfileResponse

    UpdateTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateTaskRequest.add_member(:target_run_status, Shapes::ShapeRef.new(shape: TaskTargetRunStatus, required: true, location_name: "targetRunStatus"))
    UpdateTaskRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateTaskRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location: "uri", location_name: "queueId"))
    UpdateTaskRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    UpdateTaskRequest.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "stepId"))
    UpdateTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    UpdateTaskRequest.struct_class = Types::UpdateTaskRequest

    UpdateTaskResponse.struct_class = Types::UpdateTaskResponse

    UpdateWorkerRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateWorkerRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    UpdateWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    UpdateWorkerRequest.add_member(:status, Shapes::ShapeRef.new(shape: UpdatedWorkerStatus, location_name: "status"))
    UpdateWorkerRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: WorkerCapabilities, location_name: "capabilities"))
    UpdateWorkerRequest.add_member(:host_properties, Shapes::ShapeRef.new(shape: HostPropertiesRequest, location_name: "hostProperties"))
    UpdateWorkerRequest.struct_class = Types::UpdateWorkerRequest

    UpdateWorkerResponse.add_member(:log, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "log"))
    UpdateWorkerResponse.add_member(:host_configuration, Shapes::ShapeRef.new(shape: HostConfiguration, location_name: "hostConfiguration"))
    UpdateWorkerResponse.struct_class = Types::UpdateWorkerResponse

    UpdateWorkerScheduleRequest.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location: "uri", location_name: "farmId"))
    UpdateWorkerScheduleRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location: "uri", location_name: "fleetId"))
    UpdateWorkerScheduleRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location: "uri", location_name: "workerId"))
    UpdateWorkerScheduleRequest.add_member(:updated_session_actions, Shapes::ShapeRef.new(shape: UpdatedSessionActions, location_name: "updatedSessionActions"))
    UpdateWorkerScheduleRequest.struct_class = Types::UpdateWorkerScheduleRequest

    UpdateWorkerScheduleResponse.add_member(:assigned_sessions, Shapes::ShapeRef.new(shape: AssignedSessions, required: true, location_name: "assignedSessions"))
    UpdateWorkerScheduleResponse.add_member(:cancel_session_actions, Shapes::ShapeRef.new(shape: CancelSessionActions, required: true, location_name: "cancelSessionActions"))
    UpdateWorkerScheduleResponse.add_member(:desired_worker_status, Shapes::ShapeRef.new(shape: DesiredWorkerStatus, location_name: "desiredWorkerStatus"))
    UpdateWorkerScheduleResponse.add_member(:update_interval_seconds, Shapes::ShapeRef.new(shape: UpdateWorkerScheduleInterval, required: true, location_name: "updateIntervalSeconds"))
    UpdateWorkerScheduleResponse.struct_class = Types::UpdateWorkerScheduleResponse

    UpdatedSessionActionInfo.add_member(:completed_status, Shapes::ShapeRef.new(shape: CompletedStatus, location_name: "completedStatus"))
    UpdatedSessionActionInfo.add_member(:process_exit_code, Shapes::ShapeRef.new(shape: ProcessExitCode, location_name: "processExitCode"))
    UpdatedSessionActionInfo.add_member(:progress_message, Shapes::ShapeRef.new(shape: SessionActionProgressMessage, location_name: "progressMessage"))
    UpdatedSessionActionInfo.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startedAt"))
    UpdatedSessionActionInfo.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    UpdatedSessionActionInfo.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdatedSessionActionInfo.add_member(:progress_percent, Shapes::ShapeRef.new(shape: SessionActionProgressPercent, location_name: "progressPercent"))
    UpdatedSessionActionInfo.add_member(:manifests, Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesListRequest, location_name: "manifests"))
    UpdatedSessionActionInfo.struct_class = Types::UpdatedSessionActionInfo

    UpdatedSessionActions.key = Shapes::ShapeRef.new(shape: SessionActionId)
    UpdatedSessionActions.value = Shapes::ShapeRef.new(shape: UpdatedSessionActionInfo)

    UsageGroupBy.member = Shapes::ShapeRef.new(shape: UsageGroupByField)

    UsageStatistics.member = Shapes::ShapeRef.new(shape: UsageStatistic)

    UsageTrackingResource.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "queueId"))
    UsageTrackingResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UsageTrackingResource.add_member_subclass(:queue_id, Types::UsageTrackingResource::QueueId)
    UsageTrackingResource.add_member_subclass(:unknown, Types::UsageTrackingResource::Unknown)
    UsageTrackingResource.struct_class = Types::UsageTrackingResource

    UserJobsFirst.add_member(:user_identity_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userIdentityId"))
    UserJobsFirst.struct_class = Types::UserJobsFirst

    VCpuCountRange.add_member(:min, Shapes::ShapeRef.new(shape: MinOneMaxTenThousand, required: true, location_name: "min"))
    VCpuCountRange.add_member(:max, Shapes::ShapeRef.new(shape: MinOneMaxTenThousand, location_name: "max"))
    VCpuCountRange.struct_class = Types::VCpuCountRange

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VpcConfiguration.add_member(:resource_configuration_arns, Shapes::ShapeRef.new(shape: VpcResourceConfigurationArns, location_name: "resourceConfigurationArns"))
    VpcConfiguration.struct_class = Types::VpcConfiguration

    VpcResourceConfigurationArns.member = Shapes::ShapeRef.new(shape: VpcResourceConfigurationArn)

    WindowsUser.add_member(:user, Shapes::ShapeRef.new(shape: WindowsUserUserString, required: true, location_name: "user"))
    WindowsUser.add_member(:password_arn, Shapes::ShapeRef.new(shape: WindowsUserPasswordArnString, required: true, location_name: "passwordArn"))
    WindowsUser.struct_class = Types::WindowsUser

    WorkerAmountCapability.add_member(:name, Shapes::ShapeRef.new(shape: AmountCapabilityName, required: true, location_name: "name"))
    WorkerAmountCapability.add_member(:value, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "value"))
    WorkerAmountCapability.struct_class = Types::WorkerAmountCapability

    WorkerAmountCapabilityList.member = Shapes::ShapeRef.new(shape: WorkerAmountCapability)

    WorkerAttributeCapability.add_member(:name, Shapes::ShapeRef.new(shape: AttributeCapabilityName, required: true, location_name: "name"))
    WorkerAttributeCapability.add_member(:values, Shapes::ShapeRef.new(shape: AttributeCapabilityValuesList, required: true, location_name: "values"))
    WorkerAttributeCapability.struct_class = Types::WorkerAttributeCapability

    WorkerAttributeCapabilityList.member = Shapes::ShapeRef.new(shape: WorkerAttributeCapability)

    WorkerCapabilities.add_member(:amounts, Shapes::ShapeRef.new(shape: WorkerAmountCapabilityList, required: true, location_name: "amounts"))
    WorkerCapabilities.add_member(:attributes, Shapes::ShapeRef.new(shape: WorkerAttributeCapabilityList, required: true, location_name: "attributes"))
    WorkerCapabilities.struct_class = Types::WorkerCapabilities

    WorkerSearchSummaries.member = Shapes::ShapeRef.new(shape: WorkerSearchSummary)

    WorkerSearchSummary.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "fleetId"))
    WorkerSearchSummary.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, location_name: "workerId"))
    WorkerSearchSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkerStatus, location_name: "status"))
    WorkerSearchSummary.add_member(:host_properties, Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: "hostProperties"))
    WorkerSearchSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    WorkerSearchSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    WorkerSearchSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    WorkerSearchSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    WorkerSearchSummary.struct_class = Types::WorkerSearchSummary

    WorkerSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    WorkerSessionSummary.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "queueId"))
    WorkerSessionSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    WorkerSessionSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, required: true, location_name: "startedAt"))
    WorkerSessionSummary.add_member(:lifecycle_status, Shapes::ShapeRef.new(shape: SessionLifecycleStatus, required: true, location_name: "lifecycleStatus"))
    WorkerSessionSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: EndedAt, location_name: "endedAt"))
    WorkerSessionSummary.add_member(:target_lifecycle_status, Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, location_name: "targetLifecycleStatus"))
    WorkerSessionSummary.struct_class = Types::WorkerSessionSummary

    WorkerSummaries.member = Shapes::ShapeRef.new(shape: WorkerSummary)

    WorkerSummary.add_member(:worker_id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "workerId"))
    WorkerSummary.add_member(:farm_id, Shapes::ShapeRef.new(shape: FarmId, required: true, location_name: "farmId"))
    WorkerSummary.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "fleetId"))
    WorkerSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkerStatus, required: true, location_name: "status"))
    WorkerSummary.add_member(:host_properties, Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: "hostProperties"))
    WorkerSummary.add_member(:log, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "log"))
    WorkerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    WorkerSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, required: true, location_name: "createdBy"))
    WorkerSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    WorkerSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "updatedBy"))
    WorkerSummary.struct_class = Types::WorkerSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-10-12"

      api.metadata = {
        "apiVersion" => "2023-10-12",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "deadline",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWSDeadlineCloud",
        "serviceId" => "deadline",
        "signatureVersion" => "v4",
        "signingName" => "deadline",
        "uid" => "deadline-2023-10-12",
      }

      api.add_operation(:associate_member_to_farm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMemberToFarm"
        o.http_method = "PUT"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateMemberToFarmRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMemberToFarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:associate_member_to_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMemberToFleet"
        o.http_method = "PUT"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateMemberToFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMemberToFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:associate_member_to_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMemberToJob"
        o.http_method = "PUT"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateMemberToJobRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMemberToJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:associate_member_to_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMemberToQueue"
        o.http_method = "PUT"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateMemberToQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMemberToQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:assume_fleet_role_for_read, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssumeFleetRoleForRead"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/read-roles"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssumeFleetRoleForReadRequest)
        o.output = Shapes::ShapeRef.new(shape: AssumeFleetRoleForReadResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:assume_fleet_role_for_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssumeFleetRoleForWorker"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/fleet-roles"
        o.endpoint_pattern = {
          "hostPrefix" => "scheduling.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssumeFleetRoleForWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: AssumeFleetRoleForWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:assume_queue_role_for_read, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssumeQueueRoleForRead"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/read-roles"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssumeQueueRoleForReadRequest)
        o.output = Shapes::ShapeRef.new(shape: AssumeQueueRoleForReadResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:assume_queue_role_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssumeQueueRoleForUser"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/user-roles"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssumeQueueRoleForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AssumeQueueRoleForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:assume_queue_role_for_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssumeQueueRoleForWorker"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/queue-roles"
        o.endpoint_pattern = {
          "hostPrefix" => "scheduling.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssumeQueueRoleForWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: AssumeQueueRoleForWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:batch_get_job_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetJobEntity"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/batchGetJobEntity"
        o.endpoint_pattern = {
          "hostPrefix" => "scheduling.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchGetJobEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetJobEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:copy_job_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyJobTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/template"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CopyJobTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyJobTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBudget"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/budgets"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_farm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFarm"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateFarmRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_license_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLicenseEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/license-endpoints"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateLicenseEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLicenseEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLimit"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/limits"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/monitors"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueue"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_queue_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueueEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateQueueEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_queue_fleet_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueueFleetAssociation"
        o.http_method = "PUT"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-fleet-associations"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateQueueFleetAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueFleetAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_queue_limit_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueueLimitAssociation"
        o.http_method = "PUT"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-limit-associations"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateQueueLimitAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueLimitAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_storage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStorageProfile"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/storage-profiles"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateStorageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStorageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorker"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers"
        o.endpoint_pattern = {
          "hostPrefix" => "scheduling.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBudget"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/budgets/{budgetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_farm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFarm"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteFarmRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_license_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLicenseEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/license-endpoints/{licenseEndpointId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteLicenseEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLicenseEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLimit"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/limits/{limitId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_metered_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMeteredProduct"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteMeteredProductRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMeteredProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMonitor"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/monitors/{monitorId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueue"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_queue_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueueEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueueEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_queue_fleet_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueueFleetAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueFleetAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueueFleetAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_queue_limit_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueueLimitAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueLimitAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueueLimitAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_storage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStorageProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteStorageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStorageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorker"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_member_from_farm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMemberFromFarm"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberFromFarmRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMemberFromFarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_member_from_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMemberFromFleet"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberFromFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMemberFromFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_member_from_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMemberFromJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberFromJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMemberFromJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_member_from_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMemberFromQueue"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberFromQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMemberFromQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBudget"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/budgets/{budgetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_farm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFarm"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetFarmRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFleet"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJob"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_license_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLicenseEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/license-endpoints/{licenseEndpointId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetLicenseEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLicenseEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLimit"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/limits/{limitId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/monitors/{monitorId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueue"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_queue_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueueEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueueEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_queue_fleet_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueueFleetAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueueFleetAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueFleetAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_queue_limit_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueueLimitAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueueLimitAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueLimitAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_session_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSessionAction"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions/{sessionActionId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetSessionActionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_sessions_statistics_aggregation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSessionsStatisticsAggregation"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetSessionsStatisticsAggregationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionsStatisticsAggregationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStep"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetStepRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_storage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStorageProfile"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetStorageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStorageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_storage_profile_for_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStorageProfileForQueue"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles/{storageProfileId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetStorageProfileForQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStorageProfileForQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTask"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorker"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_available_metered_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableMeteredProducts"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/metered-products"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAvailableMeteredProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAvailableMeteredProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_budgets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBudgets"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/budgets"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListBudgetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBudgetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_farm_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFarmMembers"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/members"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListFarmMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFarmMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_farms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFarms"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListFarmsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFarmsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fleet_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleetMembers"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListFleetMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFleetMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleets"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFleetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_job_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobMembers"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListJobMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_job_parameter_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobParameterDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/parameter-definitions"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListJobParameterDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobParameterDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_license_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLicenseEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/license-endpoints"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListLicenseEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLicenseEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLimits"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/limits"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLimitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_metered_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMeteredProducts"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListMeteredProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMeteredProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_monitors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMonitors"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/monitors"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListMonitorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMonitorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queue_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueueEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListQueueEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueueEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queue_fleet_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueueFleetAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-fleet-associations"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListQueueFleetAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueueFleetAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queue_limit_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueueLimitAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-limit-associations"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListQueueLimitAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueueLimitAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queue_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueueMembers"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/members"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListQueueMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueueMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueues"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_session_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessionActions"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListSessionActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessions"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sessions_for_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessionsForWorker"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/sessions"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListSessionsForWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsForWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_step_consumers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStepConsumers"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/consumers"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListStepConsumersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStepConsumersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_step_dependencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStepDependencies"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/dependencies"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListStepDependenciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStepDependenciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSteps"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_storage_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStorageProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/storage-profiles"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListStorageProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStorageProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_storage_profiles_for_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStorageProfilesForQueue"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListStorageProfilesForQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStorageProfilesForQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/2023-10-12/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTasks"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkers"
        o.http_method = "GET"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListWorkersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_metered_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMeteredProduct"
        o.http_method = "PUT"
        o.http_request_uri = "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutMeteredProductRequest)
        o.output = Shapes::ShapeRef.new(shape: PutMeteredProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchJobs"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/search/jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchSteps"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/search/steps"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchTasks"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/search/tasks"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_workers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchWorkers"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/search/workers"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchWorkersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchWorkersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_sessions_statistics_aggregation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSessionsStatisticsAggregation"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: StartSessionsStatisticsAggregationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSessionsStatisticsAggregationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2023-10-12/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2023-10-12/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_budget, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBudget"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/budgets/{budgetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateBudgetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBudgetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_farm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFarm"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateFarmRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleet"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJob"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLimit"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/limits/{limitId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMonitor"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/monitors/{monitorId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueue"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_queue_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQueueEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_queue_fleet_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueFleetAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueFleetAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQueueFleetAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_queue_limit_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueueLimitAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueLimitAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQueueLimitAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSession"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStep"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateStepRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_storage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStorageProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateStorageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStorageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTask"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}"
        o.endpoint_pattern = {
          "hostPrefix" => "management.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorker"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}"
        o.endpoint_pattern = {
          "hostPrefix" => "scheduling.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_worker_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkerSchedule"
        o.http_method = "PATCH"
        o.http_request_uri = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/schedule"
        o.endpoint_pattern = {
          "hostPrefix" => "scheduling.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkerScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkerScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
