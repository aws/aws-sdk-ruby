# frozen_string_literal: true

# This is generated code!

module Aws::Deadline
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceleratorCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AcceleratorCapabilities', name: 'AcceleratorCapabilities')
    AcceleratorCountRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AcceleratorCountRange', name: 'AcceleratorCountRange')
    AcceleratorName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#AcceleratorName', name: 'AcceleratorName')
    AcceleratorRuntime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#AcceleratorRuntime', name: 'AcceleratorRuntime', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AcceleratorSelection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AcceleratorSelection', name: 'AcceleratorSelection')
    AcceleratorSelections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#AcceleratorSelections', name: 'AcceleratorSelections')
    AcceleratorTotalMemoryMiBRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AcceleratorTotalMemoryMiBRange', name: 'AcceleratorTotalMemoryMiBRange')
    AcceleratorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#AcceleratorType', name: 'AcceleratorType')
    AcceleratorTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#AcceleratorTypes', name: 'AcceleratorTypes')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#AccessKeyId', name: 'AccessKeyId', traits: {"smithy.api#sensitive" => {}})
    AcquiredLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AcquiredLimit', name: 'AcquiredLimit')
    AcquiredLimits = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#AcquiredLimits', name: 'AcquiredLimits', traits: {"smithy.api#uniqueItems" => {}})
    AggregationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#AggregationId', name: 'AggregationId', traits: {"smithy.api#pattern" => "^[0-9a-f]{32}$"})
    AllowedStorageProfileIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#AllowedStorageProfileIds', name: 'AllowedStorageProfileIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#uniqueItems" => {}})
    AmountCapabilityName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#AmountCapabilityName', name: 'AmountCapabilityName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z][a-zA-Z0-9]{0,63}:)?amount(\\.[a-zA-Z][a-zA-Z0-9]{0,63})+$"})
    AmountRequirementName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#AmountRequirementName', name: 'AmountRequirementName', traits: {"smithy.api#length" => {"max" => 1024}})
    AssignedEnvironmentEnterSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssignedEnvironmentEnterSessionActionDefinition', name: 'AssignedEnvironmentEnterSessionActionDefinition')
    AssignedEnvironmentExitSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssignedEnvironmentExitSessionActionDefinition', name: 'AssignedEnvironmentExitSessionActionDefinition')
    AssignedSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssignedSession', name: 'AssignedSession')
    AssignedSessionAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssignedSessionAction', name: 'AssignedSessionAction')
    AssignedSessionActionDefinition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#AssignedSessionActionDefinition', name: 'AssignedSessionActionDefinition')
    AssignedSessionActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#AssignedSessionActions', name: 'AssignedSessionActions')
    AssignedSessions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#AssignedSessions', name: 'AssignedSessions')
    AssignedSyncInputJobAttachmentsSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssignedSyncInputJobAttachmentsSessionActionDefinition', name: 'AssignedSyncInputJobAttachmentsSessionActionDefinition')
    AssignedTaskRunSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssignedTaskRunSessionActionDefinition', name: 'AssignedTaskRunSessionActionDefinition')
    AssociateMemberToFarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToFarmRequest', name: 'AssociateMemberToFarmRequest', traits: {"aws.api#data" => "permissions"})
    AssociateMemberToFarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToFarmResponse', name: 'AssociateMemberToFarmResponse')
    AssociateMemberToFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToFleetRequest', name: 'AssociateMemberToFleetRequest', traits: {"aws.api#data" => "permissions"})
    AssociateMemberToFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToFleetResponse', name: 'AssociateMemberToFleetResponse')
    AssociateMemberToJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToJobRequest', name: 'AssociateMemberToJobRequest', traits: {"aws.api#data" => "permissions"})
    AssociateMemberToJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToJobResponse', name: 'AssociateMemberToJobResponse')
    AssociateMemberToQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToQueueRequest', name: 'AssociateMemberToQueueRequest', traits: {"aws.api#data" => "permissions"})
    AssociateMemberToQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssociateMemberToQueueResponse', name: 'AssociateMemberToQueueResponse')
    AssumeFleetRoleForReadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeFleetRoleForReadRequest', name: 'AssumeFleetRoleForReadRequest')
    AssumeFleetRoleForReadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeFleetRoleForReadResponse', name: 'AssumeFleetRoleForReadResponse', traits: {"smithy.api#sensitive" => {}})
    AssumeFleetRoleForWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeFleetRoleForWorkerRequest', name: 'AssumeFleetRoleForWorkerRequest')
    AssumeFleetRoleForWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeFleetRoleForWorkerResponse', name: 'AssumeFleetRoleForWorkerResponse', traits: {"smithy.api#sensitive" => {}})
    AssumeQueueRoleForReadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeQueueRoleForReadRequest', name: 'AssumeQueueRoleForReadRequest')
    AssumeQueueRoleForReadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeQueueRoleForReadResponse', name: 'AssumeQueueRoleForReadResponse', traits: {"smithy.api#sensitive" => {}})
    AssumeQueueRoleForUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeQueueRoleForUserRequest', name: 'AssumeQueueRoleForUserRequest')
    AssumeQueueRoleForUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeQueueRoleForUserResponse', name: 'AssumeQueueRoleForUserResponse', traits: {"smithy.api#sensitive" => {}})
    AssumeQueueRoleForWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeQueueRoleForWorkerRequest', name: 'AssumeQueueRoleForWorkerRequest')
    AssumeQueueRoleForWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AssumeQueueRoleForWorkerResponse', name: 'AssumeQueueRoleForWorkerResponse', traits: {"smithy.api#sensitive" => {}})
    Attachments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#Attachments', name: 'Attachments')
    AttributeCapabilityName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#AttributeCapabilityName', name: 'AttributeCapabilityName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z][a-zA-Z0-9]{0,63}:)?attr(\\.[a-zA-Z][a-zA-Z0-9]{0,63})+$"})
    AttributeCapabilityValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#AttributeCapabilityValue', name: 'AttributeCapabilityValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_]([a-zA-Z0-9_\\-]{0,99})$"})
    AttributeCapabilityValuesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#AttributeCapabilityValuesList', name: 'AttributeCapabilityValuesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AutoScalingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#AutoScalingMode', name: 'AutoScalingMode')
    AutoScalingStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#AutoScalingStatus', name: 'AutoScalingStatus')
    AwsCredentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#AwsCredentials', name: 'AwsCredentials', traits: {"smithy.api#sensitive" => {}})
    BatchGetJobEntityErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#BatchGetJobEntityErrors', name: 'BatchGetJobEntityErrors')
    BatchGetJobEntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#BatchGetJobEntityList', name: 'BatchGetJobEntityList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    BatchGetJobEntityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#BatchGetJobEntityRequest', name: 'BatchGetJobEntityRequest')
    BatchGetJobEntityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#BatchGetJobEntityResponse', name: 'BatchGetJobEntityResponse')
    BoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#BoundedString', name: 'BoundedString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    BudgetActionToAdd = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#BudgetActionToAdd', name: 'BudgetActionToAdd')
    BudgetActionToRemove = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#BudgetActionToRemove', name: 'BudgetActionToRemove')
    BudgetActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#BudgetActionType', name: 'BudgetActionType')
    BudgetActionsToAdd = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#BudgetActionsToAdd', name: 'BudgetActionsToAdd', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BudgetActionsToRemove = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#BudgetActionsToRemove', name: 'BudgetActionsToRemove', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BudgetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#BudgetId', name: 'BudgetId', traits: {"smithy.api#pattern" => "^budget-[0-9a-f]{32}$"})
    BudgetSchedule = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#BudgetSchedule', name: 'BudgetSchedule')
    BudgetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#BudgetStatus', name: 'BudgetStatus')
    BudgetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#BudgetSummaries', name: 'BudgetSummaries')
    BudgetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#BudgetSummary', name: 'BudgetSummary')
    CancelSessionActions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#CancelSessionActions', name: 'CancelSessionActions')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CombinationExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#CombinationExpression', name: 'CombinationExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 1280}})
    ComparisonOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#ComparisonOperator', name: 'ComparisonOperator')
    CompletedStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#CompletedStatus', name: 'CompletedStatus')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#ConflictExceptionReason', name: 'ConflictExceptionReason')
    ConsumedUsageLimit = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.deadline#ConsumedUsageLimit', name: 'ConsumedUsageLimit', traits: {"smithy.api#range" => {"min" => 0.01}})
    ConsumedUsages = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ConsumedUsages', name: 'ConsumedUsages')
    CopyJobTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CopyJobTemplateRequest', name: 'CopyJobTemplateRequest')
    CopyJobTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CopyJobTemplateResponse', name: 'CopyJobTemplateResponse')
    CpuArchitectureType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#CpuArchitectureType', name: 'CpuArchitectureType')
    CreateBudgetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateBudgetRequest', name: 'CreateBudgetRequest')
    CreateBudgetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateBudgetResponse', name: 'CreateBudgetResponse')
    CreateFarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateFarmRequest', name: 'CreateFarmRequest')
    CreateFarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateFarmResponse', name: 'CreateFarmResponse')
    CreateFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateFleetRequest', name: 'CreateFleetRequest')
    CreateFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateFleetResponse', name: 'CreateFleetResponse')
    CreateJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateJobRequest', name: 'CreateJobRequest')
    CreateJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateJobResponse', name: 'CreateJobResponse')
    CreateJobTargetTaskRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#CreateJobTargetTaskRunStatus', name: 'CreateJobTargetTaskRunStatus')
    CreateLicenseEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateLicenseEndpointRequest', name: 'CreateLicenseEndpointRequest')
    CreateLicenseEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateLicenseEndpointResponse', name: 'CreateLicenseEndpointResponse')
    CreateLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateLimitRequest', name: 'CreateLimitRequest')
    CreateLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateLimitResponse', name: 'CreateLimitResponse')
    CreateMonitorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateMonitorRequest', name: 'CreateMonitorRequest')
    CreateMonitorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateMonitorResponse', name: 'CreateMonitorResponse')
    CreateQueueEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueEnvironmentRequest', name: 'CreateQueueEnvironmentRequest')
    CreateQueueEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueEnvironmentResponse', name: 'CreateQueueEnvironmentResponse')
    CreateQueueFleetAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueFleetAssociationRequest', name: 'CreateQueueFleetAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    CreateQueueFleetAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueFleetAssociationResponse', name: 'CreateQueueFleetAssociationResponse')
    CreateQueueLimitAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueLimitAssociationRequest', name: 'CreateQueueLimitAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    CreateQueueLimitAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueLimitAssociationResponse', name: 'CreateQueueLimitAssociationResponse')
    CreateQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueRequest', name: 'CreateQueueRequest')
    CreateQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateQueueResponse', name: 'CreateQueueResponse')
    CreateStorageProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateStorageProfileRequest', name: 'CreateStorageProfileRequest')
    CreateStorageProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateStorageProfileResponse', name: 'CreateStorageProfileResponse')
    CreateWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateWorkerRequest', name: 'CreateWorkerRequest')
    CreateWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CreateWorkerResponse', name: 'CreateWorkerResponse')
    CreatedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.deadline#CreatedAt', name: 'CreatedAt', traits: {"smithy.api#timestampFormat" => "date-time"})
    CreatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#CreatedBy', name: 'CreatedBy')
    CustomFleetAmountCapabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#CustomFleetAmountCapabilities', name: 'CustomFleetAmountCapabilities', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    CustomFleetAttributeCapabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#CustomFleetAttributeCapabilities', name: 'CustomFleetAttributeCapabilities', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    CustomerManagedFleetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CustomerManagedFleetConfiguration', name: 'CustomerManagedFleetConfiguration')
    CustomerManagedFleetOperatingSystemFamily = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#CustomerManagedFleetOperatingSystemFamily', name: 'CustomerManagedFleetOperatingSystemFamily')
    CustomerManagedWorkerCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#CustomerManagedWorkerCapabilities', name: 'CustomerManagedWorkerCapabilities')
    DateTimeFilterExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DateTimeFilterExpression', name: 'DateTimeFilterExpression')
    DeadlinePrincipalType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#DeadlinePrincipalType', name: 'DeadlinePrincipalType')
    DefaultQueueBudgetAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#DefaultQueueBudgetAction', name: 'DefaultQueueBudgetAction')
    DeleteBudgetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteBudgetRequest', name: 'DeleteBudgetRequest')
    DeleteBudgetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteBudgetResponse', name: 'DeleteBudgetResponse')
    DeleteFarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteFarmRequest', name: 'DeleteFarmRequest')
    DeleteFarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteFarmResponse', name: 'DeleteFarmResponse')
    DeleteFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteFleetRequest', name: 'DeleteFleetRequest')
    DeleteFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteFleetResponse', name: 'DeleteFleetResponse')
    DeleteLicenseEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteLicenseEndpointRequest', name: 'DeleteLicenseEndpointRequest')
    DeleteLicenseEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteLicenseEndpointResponse', name: 'DeleteLicenseEndpointResponse')
    DeleteLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteLimitRequest', name: 'DeleteLimitRequest')
    DeleteLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteLimitResponse', name: 'DeleteLimitResponse')
    DeleteMeteredProductRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteMeteredProductRequest', name: 'DeleteMeteredProductRequest')
    DeleteMeteredProductResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteMeteredProductResponse', name: 'DeleteMeteredProductResponse')
    DeleteMonitorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteMonitorRequest', name: 'DeleteMonitorRequest')
    DeleteMonitorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteMonitorResponse', name: 'DeleteMonitorResponse')
    DeleteQueueEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueEnvironmentRequest', name: 'DeleteQueueEnvironmentRequest')
    DeleteQueueEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueEnvironmentResponse', name: 'DeleteQueueEnvironmentResponse')
    DeleteQueueFleetAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueFleetAssociationRequest', name: 'DeleteQueueFleetAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    DeleteQueueFleetAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueFleetAssociationResponse', name: 'DeleteQueueFleetAssociationResponse')
    DeleteQueueLimitAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueLimitAssociationRequest', name: 'DeleteQueueLimitAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    DeleteQueueLimitAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueLimitAssociationResponse', name: 'DeleteQueueLimitAssociationResponse')
    DeleteQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueRequest', name: 'DeleteQueueRequest')
    DeleteQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteQueueResponse', name: 'DeleteQueueResponse')
    DeleteStorageProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteStorageProfileRequest', name: 'DeleteStorageProfileRequest')
    DeleteStorageProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteStorageProfileResponse', name: 'DeleteStorageProfileResponse')
    DeleteWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteWorkerRequest', name: 'DeleteWorkerRequest')
    DeleteWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DeleteWorkerResponse', name: 'DeleteWorkerResponse')
    DependenciesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#DependenciesList', name: 'DependenciesList')
    DependencyConsumerResolutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#DependencyConsumerResolutionStatus', name: 'DependencyConsumerResolutionStatus')
    DependencyCounts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DependencyCounts', name: 'DependencyCounts')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    DesiredWorkerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#DesiredWorkerStatus', name: 'DesiredWorkerStatus')
    DisassociateMemberFromFarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromFarmRequest', name: 'DisassociateMemberFromFarmRequest', traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromFarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromFarmResponse', name: 'DisassociateMemberFromFarmResponse')
    DisassociateMemberFromFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromFleetRequest', name: 'DisassociateMemberFromFleetRequest', traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromFleetResponse', name: 'DisassociateMemberFromFleetResponse')
    DisassociateMemberFromJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromJobRequest', name: 'DisassociateMemberFromJobRequest', traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromJobResponse', name: 'DisassociateMemberFromJobResponse')
    DisassociateMemberFromQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromQueueRequest', name: 'DisassociateMemberFromQueueRequest', traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#DisassociateMemberFromQueueResponse', name: 'DisassociateMemberFromQueueResponse')
    DnsName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#DnsName', name: 'DnsName')
    Document = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.deadline#Document', name: 'Document', traits: {"smithy.api#sensitive" => {}})
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.deadline#Double', name: 'Double')
    EbsIops = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#EbsIops', name: 'EbsIops', traits: {"smithy.api#range" => {"min" => 3000, "max" => 16000}})
    EbsThroughputMiB = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#EbsThroughputMiB', name: 'EbsThroughputMiB', traits: {"smithy.api#range" => {"min" => 125, "max" => 1000}})
    Ec2EbsVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#Ec2EbsVolume', name: 'Ec2EbsVolume')
    Ec2MarketType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#Ec2MarketType', name: 'Ec2MarketType')
    EndedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.deadline#EndedAt', name: 'EndedAt', traits: {"smithy.api#timestampFormat" => "date-time"})
    EndsAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.deadline#EndsAt', name: 'EndsAt', traits: {"smithy.api#timestampFormat" => "date-time"})
    EnvironmentDetailsEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#EnvironmentDetailsEntity', name: 'EnvironmentDetailsEntity')
    EnvironmentDetailsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#EnvironmentDetailsError', name: 'EnvironmentDetailsError')
    EnvironmentDetailsIdentifiers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#EnvironmentDetailsIdentifiers', name: 'EnvironmentDetailsIdentifiers')
    EnvironmentEnterSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#EnvironmentEnterSessionActionDefinition', name: 'EnvironmentEnterSessionActionDefinition')
    EnvironmentEnterSessionActionDefinitionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#EnvironmentEnterSessionActionDefinitionSummary', name: 'EnvironmentEnterSessionActionDefinitionSummary')
    EnvironmentExitSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#EnvironmentExitSessionActionDefinition', name: 'EnvironmentExitSessionActionDefinition')
    EnvironmentExitSessionActionDefinitionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#EnvironmentExitSessionActionDefinitionSummary', name: 'EnvironmentExitSessionActionDefinitionSummary')
    EnvironmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#EnvironmentId', name: 'EnvironmentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(STEP:step-[0-9a-f]{32}:.*)|(JOB:job-[0-9a-f]{32}:.*)$"})
    EnvironmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#EnvironmentName', name: 'EnvironmentName')
    EnvironmentTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#EnvironmentTemplate', name: 'EnvironmentTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 15000}, "smithy.api#sensitive" => {}})
    EnvironmentTemplateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#EnvironmentTemplateType', name: 'EnvironmentTemplateType')
    ExceptionContext = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#ExceptionContext', name: 'ExceptionContext')
    FarmId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#FarmId', name: 'FarmId', traits: {"smithy.api#pattern" => "^farm-[0-9a-f]{32}$"})
    FarmMember = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FarmMember', name: 'FarmMember')
    FarmMembers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FarmMembers', name: 'FarmMembers')
    FarmSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FarmSummaries', name: 'FarmSummaries')
    FarmSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FarmSummary', name: 'FarmSummary')
    FieldSortExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FieldSortExpression', name: 'FieldSortExpression')
    FileSystemLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FileSystemLocation', name: 'FileSystemLocation', traits: {"smithy.api#sensitive" => {}})
    FileSystemLocationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#FileSystemLocationName', name: 'FileSystemLocationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z ]*$"})
    FileSystemLocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#FileSystemLocationType', name: 'FileSystemLocationType')
    FileSystemLocationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FileSystemLocationsList', name: 'FileSystemLocationsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    FixedBudgetSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FixedBudgetSchedule', name: 'FixedBudgetSchedule')
    FleetAmountCapabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FleetAmountCapabilities', name: 'FleetAmountCapabilities', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    FleetAmountCapability = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FleetAmountCapability', name: 'FleetAmountCapability')
    FleetAttributeCapabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FleetAttributeCapabilities', name: 'FleetAttributeCapabilities', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    FleetAttributeCapability = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FleetAttributeCapability', name: 'FleetAttributeCapability')
    FleetCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FleetCapabilities', name: 'FleetCapabilities')
    FleetConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#FleetConfiguration', name: 'FleetConfiguration')
    FleetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#FleetId', name: 'FleetId', traits: {"smithy.api#pattern" => "^fleet-[0-9a-f]{32}$"})
    FleetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FleetIds', name: 'FleetIds', traits: {"smithy.api#length" => {"min" => 1}})
    FleetMember = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FleetMember', name: 'FleetMember')
    FleetMembers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FleetMembers', name: 'FleetMembers')
    FleetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#FleetStatus', name: 'FleetStatus')
    FleetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#FleetSummaries', name: 'FleetSummaries')
    FleetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#FleetSummary', name: 'FleetSummary')
    FloatString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#FloatString', name: 'FloatString', traits: {"smithy.api#length" => {"min" => 1, "max" => 26}, "smithy.api#pattern" => "^[-]?(0|[1-9][0-9]*)([.][0-9]+)?([eE][+-]?[0-9]+)?$"})
    GetBudgetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetBudgetRequest', name: 'GetBudgetRequest')
    GetBudgetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetBudgetResponse', name: 'GetBudgetResponse')
    GetFarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetFarmRequest', name: 'GetFarmRequest')
    GetFarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetFarmResponse', name: 'GetFarmResponse')
    GetFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetFleetRequest', name: 'GetFleetRequest')
    GetFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetFleetResponse', name: 'GetFleetResponse')
    GetJobEntityError = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#GetJobEntityError', name: 'GetJobEntityError')
    GetJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetJobRequest', name: 'GetJobRequest')
    GetJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetJobResponse', name: 'GetJobResponse')
    GetLicenseEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetLicenseEndpointRequest', name: 'GetLicenseEndpointRequest')
    GetLicenseEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetLicenseEndpointResponse', name: 'GetLicenseEndpointResponse')
    GetLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetLimitRequest', name: 'GetLimitRequest')
    GetLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetLimitResponse', name: 'GetLimitResponse')
    GetMonitorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetMonitorRequest', name: 'GetMonitorRequest')
    GetMonitorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetMonitorResponse', name: 'GetMonitorResponse')
    GetQueueEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueEnvironmentRequest', name: 'GetQueueEnvironmentRequest')
    GetQueueEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueEnvironmentResponse', name: 'GetQueueEnvironmentResponse')
    GetQueueFleetAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueFleetAssociationRequest', name: 'GetQueueFleetAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    GetQueueFleetAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueFleetAssociationResponse', name: 'GetQueueFleetAssociationResponse')
    GetQueueLimitAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueLimitAssociationRequest', name: 'GetQueueLimitAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    GetQueueLimitAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueLimitAssociationResponse', name: 'GetQueueLimitAssociationResponse')
    GetQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueRequest', name: 'GetQueueRequest')
    GetQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetQueueResponse', name: 'GetQueueResponse')
    GetSessionActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetSessionActionRequest', name: 'GetSessionActionRequest')
    GetSessionActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetSessionActionResponse', name: 'GetSessionActionResponse')
    GetSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetSessionRequest', name: 'GetSessionRequest')
    GetSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetSessionResponse', name: 'GetSessionResponse')
    GetSessionsStatisticsAggregationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetSessionsStatisticsAggregationRequest', name: 'GetSessionsStatisticsAggregationRequest')
    GetSessionsStatisticsAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetSessionsStatisticsAggregationResponse', name: 'GetSessionsStatisticsAggregationResponse')
    GetStepRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetStepRequest', name: 'GetStepRequest')
    GetStepResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetStepResponse', name: 'GetStepResponse')
    GetStorageProfileForQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetStorageProfileForQueueRequest', name: 'GetStorageProfileForQueueRequest')
    GetStorageProfileForQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetStorageProfileForQueueResponse', name: 'GetStorageProfileForQueueResponse')
    GetStorageProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetStorageProfileRequest', name: 'GetStorageProfileRequest')
    GetStorageProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetStorageProfileResponse', name: 'GetStorageProfileResponse')
    GetTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetTaskRequest', name: 'GetTaskRequest')
    GetTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetTaskResponse', name: 'GetTaskResponse')
    GetWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetWorkerRequest', name: 'GetWorkerRequest')
    GetWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#GetWorkerResponse', name: 'GetWorkerResponse')
    HostConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#HostConfiguration', name: 'HostConfiguration')
    HostConfigurationScript = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#HostConfigurationScript', name: 'HostConfigurationScript', traits: {"smithy.api#length" => {"min" => 0, "max" => 15000}, "smithy.api#sensitive" => {}})
    HostConfigurationScriptTimeoutSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#HostConfigurationScriptTimeoutSeconds', name: 'HostConfigurationScriptTimeoutSeconds', traits: {"smithy.api#range" => {"min" => 300, "max" => 3600}})
    HostName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#HostName', name: 'HostName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]{0,255}$"})
    HostPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#HostPropertiesRequest', name: 'HostPropertiesRequest')
    HostPropertiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#HostPropertiesResponse', name: 'HostPropertiesResponse')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):iam::\\d{12}:role(/[!-.0-~]+)*/[\\w+=,.@-]+$"})
    IdentityCenterApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IdentityCenterApplicationArn', name: 'IdentityCenterApplicationArn')
    IdentityCenterInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IdentityCenterInstanceArn', name: 'IdentityCenterInstanceArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IdentityCenterPrincipalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IdentityCenterPrincipalId', name: 'IdentityCenterPrincipalId', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    IdentityStoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IdentityStoreId', name: 'IdentityStoreId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$|^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#InstanceType', name: 'InstanceType', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]+\\.[a-zA-Z0-9]+$"})
    InstanceTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#InstanceTypes', name: 'InstanceTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IntString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IntString', name: 'IntString', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[-]?(0|[1-9][0-9]*)$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#Integer', name: 'Integer')
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddresses = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#IpAddresses', name: 'IpAddresses')
    IpV4Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IpV4Address', name: 'IpV4Address', traits: {"smithy.api#pattern" => "^(?:[0-9]{1,3}\\.){3}[0-9]{1,3}$"})
    IpV4Addresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#IpV4Addresses', name: 'IpV4Addresses')
    IpV6Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#IpV6Address', name: 'IpV6Address', traits: {"smithy.api#pattern" => "^(?:[A-F0-9]{1,4}:){7}[A-F0-9]{1,4}$"})
    IpV6Addresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#IpV6Addresses', name: 'IpV6Addresses')
    JobAttachmentDetailsEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobAttachmentDetailsEntity', name: 'JobAttachmentDetailsEntity')
    JobAttachmentDetailsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobAttachmentDetailsError', name: 'JobAttachmentDetailsError')
    JobAttachmentDetailsIdentifiers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobAttachmentDetailsIdentifiers', name: 'JobAttachmentDetailsIdentifiers')
    JobAttachmentSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobAttachmentSettings', name: 'JobAttachmentSettings')
    JobAttachmentsFileSystem = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#JobAttachmentsFileSystem', name: 'JobAttachmentsFileSystem')
    JobDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#JobDescription', name: 'JobDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    JobDetailsEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobDetailsEntity', name: 'JobDetailsEntity')
    JobDetailsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobDetailsError', name: 'JobDetailsError')
    JobDetailsIdentifiers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobDetailsIdentifiers', name: 'JobDetailsIdentifiers')
    JobEntity = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#JobEntity', name: 'JobEntity')
    JobEntityErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#JobEntityErrorCode', name: 'JobEntityErrorCode')
    JobEntityIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#JobEntityIdentifiers', name: 'JobEntityIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    JobEntityIdentifiersUnion = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#JobEntityIdentifiersUnion', name: 'JobEntityIdentifiersUnion')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#JobId', name: 'JobId', traits: {"smithy.api#pattern" => "^job-[0-9a-f]{32}$"})
    JobLifecycleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#JobLifecycleStatus', name: 'JobLifecycleStatus')
    JobMember = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobMember', name: 'JobMember')
    JobMembers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#JobMembers', name: 'JobMembers')
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    JobParameter = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#JobParameter', name: 'JobParameter')
    JobParameterDefinition = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.deadline#JobParameterDefinition', name: 'JobParameterDefinition')
    JobParameterDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#JobParameterDefinitions', name: 'JobParameterDefinitions')
    JobParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#JobParameters', name: 'JobParameters', traits: {"smithy.api#sensitive" => {}})
    JobPriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#JobPriority', name: 'JobPriority', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    JobRunAsUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobRunAsUser', name: 'JobRunAsUser')
    JobSearchSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#JobSearchSummaries', name: 'JobSearchSummaries')
    JobSearchSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobSearchSummary', name: 'JobSearchSummary')
    JobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#JobSummaries', name: 'JobSummaries')
    JobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#JobSummary', name: 'JobSummary')
    JobTargetTaskRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#JobTargetTaskRunStatus', name: 'JobTargetTaskRunStatus')
    JobTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#JobTemplate', name: 'JobTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}, "smithy.api#sensitive" => {}})
    JobTemplateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#JobTemplateType', name: 'JobTemplateType')
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):kms:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:key/[\\w-]{1,120}$"})
    LicenseEndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#LicenseEndpointId', name: 'LicenseEndpointId', traits: {"smithy.api#pattern" => "^le-[0-9a-f]{32}$"})
    LicenseEndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#LicenseEndpointStatus', name: 'LicenseEndpointStatus')
    LicenseEndpointSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#LicenseEndpointSummaries', name: 'LicenseEndpointSummaries')
    LicenseEndpointSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#LicenseEndpointSummary', name: 'LicenseEndpointSummary')
    LicenseProduct = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#LicenseProduct', name: 'LicenseProduct')
    LimitId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#LimitId', name: 'LimitId', traits: {"smithy.api#pattern" => "^limit-[0-9a-f]{32}$"})
    LimitSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#LimitSummaries', name: 'LimitSummaries')
    LimitSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#LimitSummary', name: 'LimitSummary', traits: {"smithy.api#tags" => ["concurrent_limits"]})
    ListAttributeCapabilityValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#ListAttributeCapabilityValue', name: 'ListAttributeCapabilityValue')
    ListAvailableMeteredProductsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListAvailableMeteredProductsRequest', name: 'ListAvailableMeteredProductsRequest')
    ListAvailableMeteredProductsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListAvailableMeteredProductsResponse', name: 'ListAvailableMeteredProductsResponse')
    ListBudgetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListBudgetsRequest', name: 'ListBudgetsRequest')
    ListBudgetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListBudgetsResponse', name: 'ListBudgetsResponse')
    ListFarmMembersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFarmMembersRequest', name: 'ListFarmMembersRequest')
    ListFarmMembersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFarmMembersResponse', name: 'ListFarmMembersResponse')
    ListFarmsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFarmsRequest', name: 'ListFarmsRequest')
    ListFarmsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFarmsResponse', name: 'ListFarmsResponse')
    ListFleetMembersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFleetMembersRequest', name: 'ListFleetMembersRequest')
    ListFleetMembersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFleetMembersResponse', name: 'ListFleetMembersResponse')
    ListFleetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFleetsRequest', name: 'ListFleetsRequest')
    ListFleetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListFleetsResponse', name: 'ListFleetsResponse')
    ListJobMembersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListJobMembersRequest', name: 'ListJobMembersRequest')
    ListJobMembersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListJobMembersResponse', name: 'ListJobMembersResponse')
    ListJobParameterDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListJobParameterDefinitionsRequest', name: 'ListJobParameterDefinitionsRequest')
    ListJobParameterDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListJobParameterDefinitionsResponse', name: 'ListJobParameterDefinitionsResponse')
    ListJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListJobsRequest', name: 'ListJobsRequest')
    ListJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListJobsResponse', name: 'ListJobsResponse')
    ListLicenseEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListLicenseEndpointsRequest', name: 'ListLicenseEndpointsRequest')
    ListLicenseEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListLicenseEndpointsResponse', name: 'ListLicenseEndpointsResponse')
    ListLimitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListLimitsRequest', name: 'ListLimitsRequest')
    ListLimitsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListLimitsResponse', name: 'ListLimitsResponse')
    ListMeteredProductsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListMeteredProductsRequest', name: 'ListMeteredProductsRequest')
    ListMeteredProductsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListMeteredProductsResponse', name: 'ListMeteredProductsResponse')
    ListMonitorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListMonitorsRequest', name: 'ListMonitorsRequest')
    ListMonitorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListMonitorsResponse', name: 'ListMonitorsResponse')
    ListQueueEnvironmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueEnvironmentsRequest', name: 'ListQueueEnvironmentsRequest')
    ListQueueEnvironmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueEnvironmentsResponse', name: 'ListQueueEnvironmentsResponse')
    ListQueueFleetAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueFleetAssociationsRequest', name: 'ListQueueFleetAssociationsRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    ListQueueFleetAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueFleetAssociationsResponse', name: 'ListQueueFleetAssociationsResponse')
    ListQueueLimitAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueLimitAssociationsRequest', name: 'ListQueueLimitAssociationsRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    ListQueueLimitAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueLimitAssociationsResponse', name: 'ListQueueLimitAssociationsResponse')
    ListQueueMembersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueMembersRequest', name: 'ListQueueMembersRequest')
    ListQueueMembersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueueMembersResponse', name: 'ListQueueMembersResponse')
    ListQueuesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueuesRequest', name: 'ListQueuesRequest')
    ListQueuesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListQueuesResponse', name: 'ListQueuesResponse')
    ListSessionActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListSessionActionsRequest', name: 'ListSessionActionsRequest')
    ListSessionActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListSessionActionsResponse', name: 'ListSessionActionsResponse')
    ListSessionsForWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListSessionsForWorkerRequest', name: 'ListSessionsForWorkerRequest')
    ListSessionsForWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListSessionsForWorkerResponse', name: 'ListSessionsForWorkerResponse')
    ListSessionsForWorkerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#ListSessionsForWorkerSummaries', name: 'ListSessionsForWorkerSummaries')
    ListSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListSessionsRequest', name: 'ListSessionsRequest')
    ListSessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListSessionsResponse', name: 'ListSessionsResponse')
    ListStepConsumersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStepConsumersRequest', name: 'ListStepConsumersRequest')
    ListStepConsumersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStepConsumersResponse', name: 'ListStepConsumersResponse')
    ListStepDependenciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStepDependenciesRequest', name: 'ListStepDependenciesRequest')
    ListStepDependenciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStepDependenciesResponse', name: 'ListStepDependenciesResponse')
    ListStepsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStepsRequest', name: 'ListStepsRequest')
    ListStepsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStepsResponse', name: 'ListStepsResponse')
    ListStorageProfilesForQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStorageProfilesForQueueRequest', name: 'ListStorageProfilesForQueueRequest')
    ListStorageProfilesForQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStorageProfilesForQueueResponse', name: 'ListStorageProfilesForQueueResponse')
    ListStorageProfilesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStorageProfilesRequest', name: 'ListStorageProfilesRequest')
    ListStorageProfilesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListStorageProfilesResponse', name: 'ListStorageProfilesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource", "ids" => {"farmId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#FleetResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#QueueResource", "ids" => {"farmId" => "resourceArn", "queueId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#LicenseEndpointResource", "ids" => {"licenseEndpointId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#WorkerResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn", "workerId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#MonitorResource", "ids" => {"monitorId" => "resourceArn"}}]})
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListTasksRequest', name: 'ListTasksRequest')
    ListTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListTasksResponse', name: 'ListTasksResponse')
    ListWorkersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListWorkersRequest', name: 'ListWorkersRequest')
    ListWorkersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ListWorkersResponse', name: 'ListWorkersResponse')
    LogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#LogConfiguration', name: 'LogConfiguration')
    LogDriver = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#LogDriver', name: 'LogDriver', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogError = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#LogError', name: 'LogError', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogOptions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#LogOptions', name: 'LogOptions')
    LogParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#LogParameters', name: 'LogParameters')
    LogicalOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#LogicalOperator', name: 'LogicalOperator')
    ManifestProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ManifestProperties', name: 'ManifestProperties', traits: {"smithy.api#sensitive" => {}})
    ManifestPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#ManifestPropertiesList', name: 'ManifestPropertiesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    MaxCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MaxCount', name: 'MaxCount', traits: {"smithy.api#range" => {"min" => -1, "max" => 2147483647}})
    MaxFailedTasksCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MaxFailedTasksCount', name: 'MaxFailedTasksCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxRetriesPerTask = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MaxRetriesPerTask', name: 'MaxRetriesPerTask', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MaxWorkerCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MaxWorkerCount', name: 'MaxWorkerCount', traits: {"smithy.api#range" => {"min" => -1, "max" => 2147483647}})
    MembershipLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#MembershipLevel', name: 'MembershipLevel')
    MemoryAmountMiB = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MemoryAmountMiB', name: 'MemoryAmountMiB', traits: {"smithy.api#range" => {"min" => 512, "max" => 2147483647}})
    MemoryMiBRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#MemoryMiBRange', name: 'MemoryMiBRange')
    MeteredProductId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#MeteredProductId', name: 'MeteredProductId', traits: {"smithy.api#pattern" => "^[0-9a-z]{1,32}-[.0-9a-z]{1,32}$"})
    MeteredProductSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#MeteredProductSummary', name: 'MeteredProductSummary')
    MeteredProductSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#MeteredProductSummaryList', name: 'MeteredProductSummaryList')
    MinOneMaxInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MinOneMaxInteger', name: 'MinOneMaxInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 2147483647}})
    MinOneMaxTenThousand = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MinOneMaxTenThousand', name: 'MinOneMaxTenThousand', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MinZeroMaxInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#MinZeroMaxInteger', name: 'MinZeroMaxInteger', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MonitorId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#MonitorId', name: 'MonitorId', traits: {"smithy.api#pattern" => "^monitor-[0-9a-f]{32}$"})
    MonitorSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#MonitorSummaries', name: 'MonitorSummaries')
    MonitorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#MonitorSummary', name: 'MonitorSummary')
    NextItemOffset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#NextItemOffset', name: 'NextItemOffset', traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    OutputRelativeDirectoriesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#OutputRelativeDirectoriesList', name: 'OutputRelativeDirectoriesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#uniqueItems" => {}})
    ParameterFilterExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ParameterFilterExpression', name: 'ParameterFilterExpression')
    ParameterSortExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ParameterSortExpression', name: 'ParameterSortExpression')
    ParameterSpace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ParameterSpace', name: 'ParameterSpace')
    ParameterString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#ParameterString', name: 'ParameterString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PathFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#PathFormat', name: 'PathFormat')
    PathMappingRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#PathMappingRule', name: 'PathMappingRule', traits: {"smithy.api#sensitive" => {}})
    PathMappingRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#PathMappingRules', name: 'PathMappingRules')
    PathString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#PathString', name: 'PathString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Period = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#Period', name: 'Period')
    PortNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#PortNumber', name: 'PortNumber', traits: {"smithy.api#range" => {"min" => 1024, "max" => 65535}})
    PosixUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#PosixUser', name: 'PosixUser')
    Priority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#Priority', name: 'Priority', traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    ProcessExitCode = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#ProcessExitCode', name: 'ProcessExitCode', traits: {"smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}})
    PutMeteredProductRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#PutMeteredProductRequest', name: 'PutMeteredProductRequest')
    PutMeteredProductResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#PutMeteredProductResponse', name: 'PutMeteredProductResponse')
    QueueBlockedReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#QueueBlockedReason', name: 'QueueBlockedReason')
    QueueEnvironmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#QueueEnvironmentId', name: 'QueueEnvironmentId', traits: {"smithy.api#pattern" => "^queueenv-[0-9a-f]{32}$"})
    QueueEnvironmentSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#QueueEnvironmentSummaries', name: 'QueueEnvironmentSummaries')
    QueueEnvironmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#QueueEnvironmentSummary', name: 'QueueEnvironmentSummary')
    QueueFleetAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#QueueFleetAssociationStatus', name: 'QueueFleetAssociationStatus')
    QueueFleetAssociationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#QueueFleetAssociationSummaries', name: 'QueueFleetAssociationSummaries')
    QueueFleetAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#QueueFleetAssociationSummary', name: 'QueueFleetAssociationSummary')
    QueueId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#QueueId', name: 'QueueId', traits: {"smithy.api#pattern" => "^queue-[0-9a-f]{32}$"})
    QueueIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#QueueIds', name: 'QueueIds', traits: {"smithy.api#length" => {"min" => 1}})
    QueueLimitAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#QueueLimitAssociationStatus', name: 'QueueLimitAssociationStatus')
    QueueLimitAssociationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#QueueLimitAssociationSummaries', name: 'QueueLimitAssociationSummaries')
    QueueLimitAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#QueueLimitAssociationSummary', name: 'QueueLimitAssociationSummary', traits: {"smithy.api#tags" => ["concurrent_limits"]})
    QueueMember = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#QueueMember', name: 'QueueMember')
    QueueMemberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#QueueMemberList', name: 'QueueMemberList')
    QueueStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#QueueStatus', name: 'QueueStatus')
    QueueSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#QueueSummaries', name: 'QueueSummaries')
    QueueSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#QueueSummary', name: 'QueueSummary')
    RequiredFileSystemLocationNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#RequiredFileSystemLocationNames', name: 'RequiredFileSystemLocationNames', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#uniqueItems" => {}})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseBudgetAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ResponseBudgetAction', name: 'ResponseBudgetAction')
    ResponseBudgetActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#ResponseBudgetActionList', name: 'ResponseBudgetActionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RunAs = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#RunAs', name: 'RunAs')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#S3Location', name: 'S3Location')
    S3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9-_/]+$"})
    SearchFilterExpression = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#SearchFilterExpression', name: 'SearchFilterExpression')
    SearchFilterExpressions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#SearchFilterExpressions', name: 'SearchFilterExpressions', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    SearchGroupedFilterExpressions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchGroupedFilterExpressions', name: 'SearchGroupedFilterExpressions')
    SearchJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchJobsRequest', name: 'SearchJobsRequest')
    SearchJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchJobsResponse', name: 'SearchJobsResponse')
    SearchSortExpression = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#SearchSortExpression', name: 'SearchSortExpression')
    SearchSortExpressions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#SearchSortExpressions', name: 'SearchSortExpressions', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SearchStepsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchStepsRequest', name: 'SearchStepsRequest')
    SearchStepsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchStepsResponse', name: 'SearchStepsResponse')
    SearchTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchTasksRequest', name: 'SearchTasksRequest')
    SearchTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchTasksResponse', name: 'SearchTasksResponse')
    SearchTerm = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SearchTerm', name: 'SearchTerm', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SearchTermFilterExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchTermFilterExpression', name: 'SearchTermFilterExpression')
    SearchTermMatchingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#SearchTermMatchingType', name: 'SearchTermMatchingType')
    SearchWorkersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchWorkersRequest', name: 'SearchWorkersRequest')
    SearchWorkersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SearchWorkersResponse', name: 'SearchWorkersResponse')
    SecretAccessKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SecretAccessKey', name: 'SecretAccessKey', traits: {"smithy.api#sensitive" => {}})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^sg-[\\w]{1,120}$"})
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#SecurityGroupIdList', name: 'SecurityGroupIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ServiceManagedEc2FleetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ServiceManagedEc2FleetConfiguration', name: 'ServiceManagedEc2FleetConfiguration')
    ServiceManagedEc2InstanceCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ServiceManagedEc2InstanceCapabilities', name: 'ServiceManagedEc2InstanceCapabilities')
    ServiceManagedEc2InstanceMarketOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ServiceManagedEc2InstanceMarketOptions', name: 'ServiceManagedEc2InstanceMarketOptions')
    ServiceManagedFleetOperatingSystemFamily = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#ServiceManagedFleetOperatingSystemFamily', name: 'ServiceManagedFleetOperatingSystemFamily')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#ServiceQuotaExceededExceptionReason', name: 'ServiceQuotaExceededExceptionReason')
    SessionActionDefinition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#SessionActionDefinition', name: 'SessionActionDefinition')
    SessionActionDefinitionSummary = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#SessionActionDefinitionSummary', name: 'SessionActionDefinitionSummary')
    SessionActionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SessionActionId', name: 'SessionActionId', traits: {"smithy.api#pattern" => "^sessionaction-[0-9a-f]{32}-(0|([1-9][0-9]{0,9}))$"})
    SessionActionIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#SessionActionIdList', name: 'SessionActionIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SessionActionProgressMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SessionActionProgressMessage', name: 'SessionActionProgressMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    SessionActionProgressPercent = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.deadline#SessionActionProgressPercent', name: 'SessionActionProgressPercent', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    SessionActionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#SessionActionStatus', name: 'SessionActionStatus')
    SessionActionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#SessionActionSummaries', name: 'SessionActionSummaries')
    SessionActionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SessionActionSummary', name: 'SessionActionSummary')
    SessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SessionId', name: 'SessionId', traits: {"smithy.api#pattern" => "^session-[0-9a-f]{32}$"})
    SessionLifecycleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#SessionLifecycleStatus', name: 'SessionLifecycleStatus')
    SessionLifecycleTargetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#SessionLifecycleTargetStatus', name: 'SessionLifecycleTargetStatus')
    SessionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#SessionSummaries', name: 'SessionSummaries')
    SessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SessionSummary', name: 'SessionSummary')
    SessionToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SessionToken', name: 'SessionToken', traits: {"smithy.api#sensitive" => {}})
    SessionsStatisticsAggregationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#SessionsStatisticsAggregationStatus', name: 'SessionsStatisticsAggregationStatus')
    SessionsStatisticsResources = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#SessionsStatisticsResources', name: 'SessionsStatisticsResources')
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#SortOrder', name: 'SortOrder')
    StartSessionsStatisticsAggregationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StartSessionsStatisticsAggregationRequest', name: 'StartSessionsStatisticsAggregationRequest')
    StartSessionsStatisticsAggregationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StartSessionsStatisticsAggregationResponse', name: 'StartSessionsStatisticsAggregationResponse')
    StartedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.deadline#StartedAt', name: 'StartedAt', traits: {"smithy.api#timestampFormat" => "date-time"})
    StartsAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.deadline#StartsAt', name: 'StartsAt', traits: {"smithy.api#timestampFormat" => "date-time"})
    Statistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#Statistics', name: 'Statistics')
    StatisticsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StatisticsList', name: 'StatisticsList')
    Stats = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#Stats', name: 'Stats')
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    StepAmountCapabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StepAmountCapabilities', name: 'StepAmountCapabilities', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StepAmountCapability = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepAmountCapability', name: 'StepAmountCapability')
    StepAttributeCapabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StepAttributeCapabilities', name: 'StepAttributeCapabilities', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StepAttributeCapability = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepAttributeCapability', name: 'StepAttributeCapability')
    StepConsumer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepConsumer', name: 'StepConsumer')
    StepConsumers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StepConsumers', name: 'StepConsumers')
    StepDependencies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StepDependencies', name: 'StepDependencies')
    StepDependency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepDependency', name: 'StepDependency')
    StepDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#StepDescription', name: 'StepDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    StepDetailsEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepDetailsEntity', name: 'StepDetailsEntity')
    StepDetailsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepDetailsError', name: 'StepDetailsError')
    StepDetailsIdentifiers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepDetailsIdentifiers', name: 'StepDetailsIdentifiers')
    StepId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#StepId', name: 'StepId', traits: {"smithy.api#pattern" => "^step-[0-9a-f]{32}$"})
    StepLifecycleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#StepLifecycleStatus', name: 'StepLifecycleStatus')
    StepName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#StepName', name: 'StepName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    StepParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepParameter', name: 'StepParameter')
    StepParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StepParameterList', name: 'StepParameterList')
    StepParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#StepParameterName', name: 'StepParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    StepParameterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#StepParameterType', name: 'StepParameterType')
    StepRequiredCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepRequiredCapabilities', name: 'StepRequiredCapabilities')
    StepSearchSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StepSearchSummaries', name: 'StepSearchSummaries')
    StepSearchSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepSearchSummary', name: 'StepSearchSummary')
    StepSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StepSummaries', name: 'StepSummaries')
    StepSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StepSummary', name: 'StepSummary')
    StepTargetTaskRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#StepTargetTaskRunStatus', name: 'StepTargetTaskRunStatus')
    StorageProfileId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#StorageProfileId', name: 'StorageProfileId', traits: {"smithy.api#pattern" => "^sp-[0-9a-f]{32}$"})
    StorageProfileOperatingSystemFamily = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#StorageProfileOperatingSystemFamily', name: 'StorageProfileOperatingSystemFamily')
    StorageProfileSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StorageProfileSummaries', name: 'StorageProfileSummaries')
    StorageProfileSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StorageProfileSummary', name: 'StorageProfileSummary')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#String', name: 'String')
    StringFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#StringFilter', name: 'StringFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    StringFilterExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#StringFilterExpression', name: 'StringFilterExpression')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#StringList', name: 'StringList')
    Subdomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#Subdomain', name: 'Subdomain', traits: {"smithy.api#pattern" => "^[a-z0-9-]{1,100}$"})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^subnet-[\\w]{1,120}$"})
    SubnetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#SubnetIdList', name: 'SubnetIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SyncInputJobAttachmentsSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SyncInputJobAttachmentsSessionActionDefinition', name: 'SyncInputJobAttachmentsSessionActionDefinition')
    SyncInputJobAttachmentsSessionActionDefinitionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#SyncInputJobAttachmentsSessionActionDefinitionSummary', name: 'SyncInputJobAttachmentsSessionActionDefinitionSummary')
    TagPropagationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#TagPropagationMode', name: 'TagPropagationMode')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TagResourceRequest', name: 'TagResourceRequest', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource", "ids" => {"farmId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#FleetResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#QueueResource", "ids" => {"farmId" => "resourceArn", "queueId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#LicenseEndpointResource", "ids" => {"licenseEndpointId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#WorkerResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn", "workerId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#MonitorResource", "ids" => {"monitorId" => "resourceArn"}}]})
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TagResourceResponse', name: 'TagResourceResponse')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#Tags', name: 'Tags')
    TaskFailureRetryCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#TaskFailureRetryCount', name: 'TaskFailureRetryCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    TaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#TaskId', name: 'TaskId', traits: {"smithy.api#pattern" => "^task-[0-9a-f]{32}-(0|([1-9][0-9]{0,9}))$"})
    TaskParameterValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#TaskParameterValue', name: 'TaskParameterValue', traits: {"smithy.api#sensitive" => {}})
    TaskParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#TaskParameters', name: 'TaskParameters', traits: {"smithy.api#sensitive" => {}})
    TaskRetryCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#TaskRetryCount', name: 'TaskRetryCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    TaskRunManifestPropertiesListRequest = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#TaskRunManifestPropertiesListRequest', name: 'TaskRunManifestPropertiesListRequest', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TaskRunManifestPropertiesListResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#TaskRunManifestPropertiesListResponse', name: 'TaskRunManifestPropertiesListResponse')
    TaskRunManifestPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TaskRunManifestPropertiesRequest', name: 'TaskRunManifestPropertiesRequest')
    TaskRunManifestPropertiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TaskRunManifestPropertiesResponse', name: 'TaskRunManifestPropertiesResponse')
    TaskRunSessionActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TaskRunSessionActionDefinition', name: 'TaskRunSessionActionDefinition')
    TaskRunSessionActionDefinitionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TaskRunSessionActionDefinitionSummary', name: 'TaskRunSessionActionDefinitionSummary')
    TaskRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#TaskRunStatus', name: 'TaskRunStatus')
    TaskRunStatusCounts = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#TaskRunStatusCounts', name: 'TaskRunStatusCounts')
    TaskSearchSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#TaskSearchSummaries', name: 'TaskSearchSummaries')
    TaskSearchSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TaskSearchSummary', name: 'TaskSearchSummary')
    TaskSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#TaskSummaries', name: 'TaskSummaries')
    TaskSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#TaskSummary', name: 'TaskSummary')
    TaskTargetRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#TaskTargetRunStatus', name: 'TaskTargetRunStatus')
    ThresholdPercentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.deadline#ThresholdPercentage', name: 'ThresholdPercentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.deadline#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    Timezone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#Timezone', name: 'Timezone', traits: {"smithy.api#length" => {"min" => 9, "max" => 9}, "smithy.api#pattern" => "^UTC[-+][01][0-9]:(30|00)$"})
    TotalResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#TotalResults', name: 'TotalResults', traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource", "ids" => {"farmId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#FleetResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#QueueResource", "ids" => {"farmId" => "resourceArn", "queueId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#LicenseEndpointResource", "ids" => {"licenseEndpointId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#WorkerResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn", "workerId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#MonitorResource", "ids" => {"monitorId" => "resourceArn"}}]})
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateBudgetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateBudgetRequest', name: 'UpdateBudgetRequest')
    UpdateBudgetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateBudgetResponse', name: 'UpdateBudgetResponse')
    UpdateFarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateFarmRequest', name: 'UpdateFarmRequest')
    UpdateFarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateFarmResponse', name: 'UpdateFarmResponse')
    UpdateFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateFleetRequest', name: 'UpdateFleetRequest')
    UpdateFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateFleetResponse', name: 'UpdateFleetResponse')
    UpdateJobLifecycleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#UpdateJobLifecycleStatus', name: 'UpdateJobLifecycleStatus')
    UpdateJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateJobRequest', name: 'UpdateJobRequest')
    UpdateJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateJobResponse', name: 'UpdateJobResponse')
    UpdateLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateLimitRequest', name: 'UpdateLimitRequest')
    UpdateLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateLimitResponse', name: 'UpdateLimitResponse')
    UpdateMonitorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateMonitorRequest', name: 'UpdateMonitorRequest')
    UpdateMonitorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateMonitorResponse', name: 'UpdateMonitorResponse')
    UpdateQueueEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueEnvironmentRequest', name: 'UpdateQueueEnvironmentRequest')
    UpdateQueueEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueEnvironmentResponse', name: 'UpdateQueueEnvironmentResponse')
    UpdateQueueFleetAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueFleetAssociationRequest', name: 'UpdateQueueFleetAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    UpdateQueueFleetAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueFleetAssociationResponse', name: 'UpdateQueueFleetAssociationResponse')
    UpdateQueueFleetAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#UpdateQueueFleetAssociationStatus', name: 'UpdateQueueFleetAssociationStatus')
    UpdateQueueLimitAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueLimitAssociationRequest', name: 'UpdateQueueLimitAssociationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    UpdateQueueLimitAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueLimitAssociationResponse', name: 'UpdateQueueLimitAssociationResponse')
    UpdateQueueLimitAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#UpdateQueueLimitAssociationStatus', name: 'UpdateQueueLimitAssociationStatus')
    UpdateQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueRequest', name: 'UpdateQueueRequest')
    UpdateQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateQueueResponse', name: 'UpdateQueueResponse')
    UpdateSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateSessionRequest', name: 'UpdateSessionRequest')
    UpdateSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateSessionResponse', name: 'UpdateSessionResponse')
    UpdateStepRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateStepRequest', name: 'UpdateStepRequest')
    UpdateStepResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateStepResponse', name: 'UpdateStepResponse')
    UpdateStorageProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateStorageProfileRequest', name: 'UpdateStorageProfileRequest')
    UpdateStorageProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateStorageProfileResponse', name: 'UpdateStorageProfileResponse')
    UpdateTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateTaskRequest', name: 'UpdateTaskRequest')
    UpdateTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateTaskResponse', name: 'UpdateTaskResponse')
    UpdateWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateWorkerRequest', name: 'UpdateWorkerRequest')
    UpdateWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateWorkerResponse', name: 'UpdateWorkerResponse')
    UpdateWorkerScheduleInterval = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.deadline#UpdateWorkerScheduleInterval', name: 'UpdateWorkerScheduleInterval', traits: {"smithy.api#range" => {"min" => 0}})
    UpdateWorkerScheduleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateWorkerScheduleRequest', name: 'UpdateWorkerScheduleRequest')
    UpdateWorkerScheduleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdateWorkerScheduleResponse', name: 'UpdateWorkerScheduleResponse')
    UpdatedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.deadline#UpdatedAt', name: 'UpdatedAt', traits: {"smithy.api#timestampFormat" => "date-time"})
    UpdatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#UpdatedBy', name: 'UpdatedBy')
    UpdatedSessionActionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UpdatedSessionActionInfo', name: 'UpdatedSessionActionInfo')
    UpdatedSessionActions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.deadline#UpdatedSessionActions', name: 'UpdatedSessionActions')
    UpdatedWorkerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#UpdatedWorkerStatus', name: 'UpdatedWorkerStatus')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#Url', name: 'Url')
    UsageGroupBy = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#UsageGroupBy', name: 'UsageGroupBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    UsageGroupByField = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#UsageGroupByField', name: 'UsageGroupByField')
    UsageStatistic = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#UsageStatistic', name: 'UsageStatistic')
    UsageStatistics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#UsageStatistics', name: 'UsageStatistics', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#uniqueItems" => {}})
    UsageTrackingResource = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.deadline#UsageTrackingResource', name: 'UsageTrackingResource')
    UsageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#UsageType', name: 'UsageType')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#UserId', name: 'UserId')
    UserJobsFirst = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#UserJobsFirst', name: 'UserJobsFirst')
    VCpuCountRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#VCpuCountRange', name: 'VCpuCountRange')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#VpcConfiguration', name: 'VpcConfiguration')
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^vpc-[\\w]{1,120}$"})
    VpcResourceConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#VpcResourceConfigurationArn', name: 'VpcResourceConfigurationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    VpcResourceConfigurationArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#VpcResourceConfigurationArns', name: 'VpcResourceConfigurationArns')
    WindowsUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#WindowsUser', name: 'WindowsUser')
    WorkerAmountCapability = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#WorkerAmountCapability', name: 'WorkerAmountCapability')
    WorkerAmountCapabilityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#WorkerAmountCapabilityList', name: 'WorkerAmountCapabilityList', traits: {"smithy.api#length" => {"min" => 2, "max" => 17}})
    WorkerAttributeCapability = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#WorkerAttributeCapability', name: 'WorkerAttributeCapability')
    WorkerAttributeCapabilityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#WorkerAttributeCapabilityList', name: 'WorkerAttributeCapabilityList', traits: {"smithy.api#length" => {"min" => 2, "max" => 17}})
    WorkerCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#WorkerCapabilities', name: 'WorkerCapabilities')
    WorkerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.deadline#WorkerId', name: 'WorkerId', traits: {"smithy.api#pattern" => "^worker-[0-9a-f]{32}$"})
    WorkerSearchSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#WorkerSearchSummaries', name: 'WorkerSearchSummaries')
    WorkerSearchSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#WorkerSearchSummary', name: 'WorkerSearchSummary')
    WorkerSessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#WorkerSessionSummary', name: 'WorkerSessionSummary')
    WorkerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.deadline#WorkerStatus', name: 'WorkerStatus')
    WorkerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.deadline#WorkerSummaries', name: 'WorkerSummaries')
    WorkerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.deadline#WorkerSummary', name: 'WorkerSummary')

    AcceleratorCapabilities.add_member(:selections, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorSelections, location_name: 'selections', traits: {"smithy.api#documentation" => "<p>A list of accelerator capabilities requested for this fleet. Only Amazon Elastic Compute Cloud instances\n         that provide these capabilities will be used. For example, if you specify both L4 and T4\n         chips, Deadline Cloud will use Amazon EC2 instances that have either the L4 or the T4 chip\n         installed.</p>", "smithy.api#required" => {}}))
    AcceleratorCapabilities.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorCountRange, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of GPU accelerators specified for worker hosts in this fleet. </p>"}))
    AcceleratorCapabilities.type = Types::AcceleratorCapabilities
    AcceleratorCountRange.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The minimum number of GPU accelerators in the worker host.</p>", "smithy.api#required" => {}}))
    AcceleratorCountRange.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The maximum number of GPU accelerators in the worker host.</p>"}))
    AcceleratorCountRange.type = Types::AcceleratorCountRange
    AcceleratorName.add_member(:t4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T4', traits: {"smithy.api#enumValue" => "t4"}))
    AcceleratorName.add_member(:a10_g, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'A10G', traits: {"smithy.api#enumValue" => "a10g"}))
    AcceleratorName.add_member(:l4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'L4', traits: {"smithy.api#enumValue" => "l4"}))
    AcceleratorName.add_member(:l40_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'L40S', traits: {"smithy.api#enumValue" => "l40s"}))
    AcceleratorSelection.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the chip used by the GPU accelerator.</p>\n         <p>If you specify <code>l4</code> as the name of the accelerator, you must specify\n            <code>latest</code> or <code>grid:r570</code> as the runtime.</p>\n         <p>The available GPU accelerators are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>t4</code> - NVIDIA T4 Tensor Core GPU</p>\n            </li>\n            <li>\n               <p>\n                  <code>a10g</code> - NVIDIA A10G Tensor Core GPU</p>\n            </li>\n            <li>\n               <p>\n                  <code>l4</code> - NVIDIA L4 Tensor Core GPU</p>\n            </li>\n            <li>\n               <p>\n                  <code>l40s</code> - NVIDIA L40S Tensor Core GPU</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AcceleratorSelection.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorRuntime, location_name: 'runtime', traits: {"smithy.api#default" => "latest", "smithy.api#documentation" => "<p>Specifies the runtime driver to use for the GPU accelerator. You must use the same\n         runtime for all GPUs. </p>\n         <p>You can choose from the following runtimes:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>latest</code> - Use the latest runtime available for the chip. If you\n               specify <code>latest</code> and a new version of the runtime is released, the new\n               version of the runtime is used.</p>\n            </li>\n            <li>\n               <p>\n                  <code>grid:r570</code> - <a href=\"https://docs.nvidia.com/vgpu/18.0/index.html\">NVIDIA vGPU software 18</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>grid:r535</code> - <a href=\"https://docs.nvidia.com/vgpu/16.0/index.html\">NVIDIA vGPU software 16</a>\n               </p>\n            </li>\n         </ul>\n         <p>If you don't specify a runtime, Deadline Cloud uses <code>latest</code> as the default. However,\n         if you have multiple accelerators and specify <code>latest</code> for some and leave others\n         blank, Deadline Cloud raises an exception.</p>"}))
    AcceleratorSelection.type = Types::AcceleratorSelection
    AcceleratorSelections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorSelection)
    AcceleratorTotalMemoryMiBRange.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The minimum amount of memory to use for the accelerator, measured in MiB.</p>", "smithy.api#required" => {}}))
    AcceleratorTotalMemoryMiBRange.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The maximum amount of memory to use for the accelerator, measured in MiB.</p>"}))
    AcceleratorTotalMemoryMiBRange.type = Types::AcceleratorTotalMemoryMiBRange
    AcceleratorType.add_member(:gpu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GPU', traits: {"smithy.api#documentation" => "GPU accelerator type.", "smithy.api#enumValue" => "gpu"}))
    AcceleratorTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorType)
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContext, location_name: 'context', traits: {"smithy.api#documentation" => "<p>Information about the resources in use when the exception was thrown.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AcquiredLimit.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit.</p>", "smithy.api#required" => {}}))
    AcquiredLimit.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinOneMaxInteger, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of limit resources used.</p>", "smithy.api#required" => {}}))
    AcquiredLimit.type = Types::AcquiredLimit
    AcquiredLimits.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AcquiredLimit)
    AllowedStorageProfileIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId)
    AssignedEnvironmentEnterSessionActionDefinition.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID of the assigned environment at the start of a session.</p>", "smithy.api#required" => {}}))
    AssignedEnvironmentEnterSessionActionDefinition.type = Types::AssignedEnvironmentEnterSessionActionDefinition
    AssignedEnvironmentExitSessionActionDefinition.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID of the assigned environment when exiting a session.</p>", "smithy.api#required" => {}}))
    AssignedEnvironmentExitSessionActionDefinition.type = Types::AssignedEnvironmentExitSessionActionDefinition
    AssignedSession.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the assigned session.</p>", "smithy.api#required" => {}}))
    AssignedSession.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the assigned session.</p>", "smithy.api#required" => {}}))
    AssignedSession.add_member(:session_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedSessionActions, location_name: 'sessionActions', traits: {"smithy.api#documentation" => "<p>The session actions to apply to the assigned session.</p>", "smithy.api#required" => {}}))
    AssignedSession.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The log configuration for the worker's assigned session.</p>", "smithy.api#required" => {}}))
    AssignedSession.type = Types::AssignedSession
    AssignedSessionAction.add_member(:session_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId, location_name: 'sessionActionId', traits: {"smithy.api#documentation" => "<p>The session action ID for the assigned session.</p>", "smithy.api#required" => {}}))
    AssignedSessionAction.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedSessionActionDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The definition of the assigned session action.</p>", "smithy.api#required" => {}}))
    AssignedSessionAction.type = Types::AssignedSessionAction
    AssignedSessionActionDefinition.add_member(:env_enter, Types::AssignedSessionActionDefinition::EnvEnter, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedEnvironmentEnterSessionActionDefinition, location_name: 'envEnter', traits: {"smithy.api#documentation" => "<p>The environment a session starts on.</p>"}))
    AssignedSessionActionDefinition.add_member(:env_exit, Types::AssignedSessionActionDefinition::EnvExit, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedEnvironmentExitSessionActionDefinition, location_name: 'envExit', traits: {"smithy.api#documentation" => "<p>The environment a session exits from.</p>"}))
    AssignedSessionActionDefinition.add_member(:task_run, Types::AssignedSessionActionDefinition::TaskRun, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedTaskRunSessionActionDefinition, location_name: 'taskRun', traits: {"smithy.api#documentation" => "<p>The task run.</p>"}))
    AssignedSessionActionDefinition.add_member(:sync_input_job_attachments, Types::AssignedSessionActionDefinition::SyncInputJobAttachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedSyncInputJobAttachmentsSessionActionDefinition, location_name: 'syncInputJobAttachments', traits: {"smithy.api#documentation" => "<p>The job attachment to sync with an assigned session action.</p>"}))
    AssignedSessionActionDefinition.add_member(:unknown, Types::AssignedSessionActionDefinition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AssignedSessionActionDefinition.type = Types::AssignedSessionActionDefinition
    AssignedSessionActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedSessionAction)
    AssignedSessions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId)
    AssignedSessions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedSession)
    AssignedSyncInputJobAttachmentsSessionActionDefinition.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>"}))
    AssignedSyncInputJobAttachmentsSessionActionDefinition.type = Types::AssignedSyncInputJobAttachmentsSessionActionDefinition
    AssignedTaskRunSessionActionDefinition.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>"}))
    AssignedTaskRunSessionActionDefinition.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    AssignedTaskRunSessionActionDefinition.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters to include.</p>", "smithy.api#required" => {}}))
    AssignedTaskRunSessionActionDefinition.type = Types::AssignedTaskRunSessionActionDefinition
    AssociateMemberToFarmRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The ID of the farm to associate with the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The member's principal ID to associate with the farm.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The principal type of the member to associate with the farm.</p>", "smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The identity store ID of the member to associate with the farm.</p>", "smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The principal's membership level for the associated farm.</p>", "smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.type = Types::AssociateMemberToFarmRequest
    AssociateMemberToFarmResponse.type = Types::AssociateMemberToFarmResponse
    AssociateMemberToFleetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the fleet to associate with the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The ID of the fleet to associate with a member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The member's principal ID to associate with a fleet.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The member's principal type to associate with the fleet.</p>", "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The member's identity store ID to associate with the fleet.</p>", "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The principal's membership level for the associated fleet.</p>", "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.type = Types::AssociateMemberToFleetRequest
    AssociateMemberToFleetResponse.type = Types::AssociateMemberToFleetResponse
    AssociateMemberToJobRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the job to associate with the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to associate to the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to associate with the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The member's principal ID to associate with the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The member's principal type to associate with the job.</p>", "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The member's identity store ID to associate with the job.</p>", "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The principal's membership level for the associated job.</p>", "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.type = Types::AssociateMemberToJobRequest
    AssociateMemberToJobResponse.type = Types::AssociateMemberToJobResponse
    AssociateMemberToQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the queue to associate with the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The ID of the queue to associate to the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The member's principal ID to associate with the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The member's principal type to associate with the queue.</p>", "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The member's identity store ID to associate with the queue.</p>", "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The principal's membership level for the associated queue.</p>", "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.type = Types::AssociateMemberToQueueRequest
    AssociateMemberToQueueResponse.type = Types::AssociateMemberToQueueResponse
    AssumeFleetRoleForReadRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the fleet's farm.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForReadRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForReadRequest.type = Types::AssumeFleetRoleForReadRequest
    AssumeFleetRoleForReadResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsCredentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The credentials for the fleet role.</p>", "smithy.api#required" => {}}))
    AssumeFleetRoleForReadResponse.type = Types::AssumeFleetRoleForReadResponse
    AssumeFleetRoleForWorkerRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the fleet's farm.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID that contains the worker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The ID of the worker assuming the fleet role.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerRequest.type = Types::AssumeFleetRoleForWorkerRequest
    AssumeFleetRoleForWorkerResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsCredentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The credentials for the worker.</p>", "smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerResponse.type = Types::AssumeFleetRoleForWorkerResponse
    AssumeQueueRoleForReadRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm containing the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForReadRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForReadRequest.type = Types::AssumeQueueRoleForReadRequest
    AssumeQueueRoleForReadResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsCredentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The credentials for the queue role.</p>", "smithy.api#required" => {}}))
    AssumeQueueRoleForReadResponse.type = Types::AssumeQueueRoleForReadResponse
    AssumeQueueRoleForUserRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the queue that the user assumes the role for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForUserRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the queue that the user assumes the role for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForUserRequest.type = Types::AssumeQueueRoleForUserRequest
    AssumeQueueRoleForUserResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsCredentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The credentials for the queue role that a user has access to.</p>", "smithy.api#required" => {}}))
    AssumeQueueRoleForUserResponse.type = Types::AssumeQueueRoleForUserResponse
    AssumeQueueRoleForWorkerRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the worker assuming the queue role.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the worker assuming the queue role.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID of the worker assuming the queue role.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the worker assuming the queue role.</p>", "smithy.api#httpQuery" => "queueId", "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.type = Types::AssumeQueueRoleForWorkerRequest
    AssumeQueueRoleForWorkerResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsCredentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services credentials for the role that the worker is assuming.</p>"}))
    AssumeQueueRoleForWorkerResponse.type = Types::AssumeQueueRoleForWorkerResponse
    Attachments.add_member(:manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestPropertiesList, location_name: 'manifests', traits: {"smithy.api#documentation" => "<p>A list of manifests which describe job attachment configurations.</p>", "smithy.api#required" => {}}))
    Attachments.add_member(:file_system, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentsFileSystem, location_name: 'fileSystem', traits: {"smithy.api#default" => "COPIED", "smithy.api#documentation" => "<p>The file system.</p>"}))
    Attachments.type = Types::Attachments
    AttributeCapabilityValuesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeCapabilityValue)
    AutoScalingMode.add_member(:no_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_SCALING', traits: {"smithy.api#enumValue" => "NO_SCALING"}))
    AutoScalingMode.add_member(:event_based_auto_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_BASED_AUTO_SCALING', traits: {"smithy.api#enumValue" => "EVENT_BASED_AUTO_SCALING"}))
    AutoScalingStatus.add_member(:growing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROWING', traits: {"smithy.api#enumValue" => "GROWING"}))
    AutoScalingStatus.add_member(:steady, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEADY', traits: {"smithy.api#enumValue" => "STEADY"}))
    AutoScalingStatus.add_member(:shrinking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHRINKING', traits: {"smithy.api#enumValue" => "SHRINKING"}))
    AwsCredentials.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyId, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The IAM access key ID.</p>", "smithy.api#required" => {}}))
    AwsCredentials.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKey, location_name: 'secretAccessKey', traits: {"smithy.api#documentation" => "<p>The IAM secret access key.</p>", "smithy.api#required" => {}}))
    AwsCredentials.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionToken, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The IAM session token</p>", "smithy.api#required" => {}}))
    AwsCredentials.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expiration', traits: {"smithy.api#documentation" => "<p>The expiration date and time of the IAM credentials.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AwsCredentials.type = Types::AwsCredentials
    BatchGetJobEntityErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobEntityError)
    BatchGetJobEntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntity)
    BatchGetJobEntityRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the worker that's fetching job details. The worker must have an\n         assignment on a job to fetch job details.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetJobEntityRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the worker that's fetching job details. The worker must have an\n         assignment on a job to fetch job details.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetJobEntityRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID of the worker containing the job details to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetJobEntityRequest.add_member(:identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntityIdentifiers, location_name: 'identifiers', traits: {"smithy.api#documentation" => "<p>The job identifiers to include within the job entity batch details.</p>", "smithy.api#required" => {}}))
    BatchGetJobEntityRequest.type = Types::BatchGetJobEntityRequest
    BatchGetJobEntityResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetJobEntityList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>A list of the job entities, or details, in the batch.</p>", "smithy.api#required" => {}}))
    BatchGetJobEntityResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetJobEntityErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of errors from the job error logs for the batch.</p>", "smithy.api#required" => {}}))
    BatchGetJobEntityResponse.type = Types::BatchGetJobEntityResponse
    BudgetActionToAdd.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of budget action to add.</p>", "smithy.api#required" => {}}))
    BudgetActionToAdd.add_member(:threshold_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdPercentage, location_name: 'thresholdPercentage', traits: {"smithy.api#documentation" => "<p>The percentage threshold for the budget action to add.</p>", "smithy.api#required" => {}}))
    BudgetActionToAdd.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the budget action to add.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    BudgetActionToAdd.type = Types::BudgetActionToAdd
    BudgetActionToRemove.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of budget action to remove.</p>", "smithy.api#required" => {}}))
    BudgetActionToRemove.add_member(:threshold_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdPercentage, location_name: 'thresholdPercentage', traits: {"smithy.api#documentation" => "<p>The percentage threshold for the budget action to remove.</p>", "smithy.api#required" => {}}))
    BudgetActionToRemove.type = Types::BudgetActionToRemove
    BudgetActionType.add_member(:stop_scheduling_and_complete_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_COMPLETE_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    BudgetActionType.add_member(:stop_scheduling_and_cancel_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_CANCEL_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    BudgetActionsToAdd.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionToAdd)
    BudgetActionsToRemove.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionToRemove)
    BudgetSchedule.add_member(:fixed, Types::BudgetSchedule::Fixed, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedBudgetSchedule, location_name: 'fixed', traits: {"smithy.api#documentation" => "<p>The fixed start and end time of the budget's schedule.</p>"}))
    BudgetSchedule.add_member(:unknown, Types::BudgetSchedule::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    BudgetSchedule.type = Types::BudgetSchedule
    BudgetStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BudgetStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    BudgetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetSummary)
    BudgetSummary.add_member(:budget_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetId, location_name: 'budgetId', traits: {"smithy.api#documentation" => "<p>The budget ID.</p>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:usage_tracking_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageTrackingResource, location_name: 'usageTrackingResource', traits: {"smithy.api#documentation" => "<p>The resource used to track expenditure in the budget.</p>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the budget.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code>–The budget is being evaluated.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code>–The budget is inactive. This can include Expired,\n               Canceled, or deleted Deleted statuses.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the budget summary to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#deprecated" => {"message" => "ListBudgets no longer supports description. Use GetBudget if description is needed."}, "smithy.api#documentation" => "<p>The description of the budget summary.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    BudgetSummary.add_member(:approximate_dollar_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedUsageLimit, location_name: 'approximateDollarLimit', traits: {"smithy.api#documentation" => "<p>The approximate dollar limit of the budget.</p>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:usages, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedUsages, location_name: 'usages', traits: {"smithy.api#documentation" => "<p>The consumed usage for the budget.</p>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    BudgetSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    BudgetSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    BudgetSummary.type = Types::BudgetSummary
    CancelSessionActions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId)
    CancelSessionActions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionIdList)
    ComparisonOperator.add_member(:equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUAL', traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComparisonOperator.add_member(:not_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUAL', traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    ComparisonOperator.add_member(:greater_than_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_EQUAL_TO', traits: {"smithy.api#enumValue" => "GREATER_THAN_EQUAL_TO"}))
    ComparisonOperator.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ComparisonOperator.add_member(:less_than_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_EQUAL_TO', traits: {"smithy.api#enumValue" => "LESS_THAN_EQUAL_TO"}))
    ComparisonOperator.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    CompletedStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CompletedStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CompletedStatus.add_member(:interrupted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERRUPTED', traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    CompletedStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    CompletedStatus.add_member(:never_attempted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER_ATTEMPTED', traits: {"smithy.api#enumValue" => "NEVER_ATTEMPTED"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource in use.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource in use.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContext, location_name: 'context', traits: {"smithy.api#documentation" => "<p>Information about the resources in use when the exception was thrown.</p>"}))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:conflict_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFLICT_EXCEPTION', traits: {"smithy.api#enumValue" => "CONFLICT_EXCEPTION"}))
    ConflictExceptionReason.add_member(:concurrent_modification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENT_MODIFICATION', traits: {"smithy.api#enumValue" => "CONCURRENT_MODIFICATION"}))
    ConflictExceptionReason.add_member(:resource_already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "RESOURCE_ALREADY_EXISTS"}))
    ConflictExceptionReason.add_member(:resource_in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_IN_USE', traits: {"smithy.api#enumValue" => "RESOURCE_IN_USE"}))
    ConflictExceptionReason.add_member(:status_conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS_CONFLICT', traits: {"smithy.api#enumValue" => "STATUS_CONFLICT"}))
    ConsumedUsages.add_member(:approximate_dollar_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'approximateDollarUsage', traits: {"smithy.api#documentation" => "<p>The amount of the budget consumed.</p>", "smithy.api#required" => {}}))
    ConsumedUsages.type = Types::ConsumedUsages
    CopyJobTemplateRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to copy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyJobTemplateRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to copy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyJobTemplateRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to copy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyJobTemplateRequest.add_member(:target_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'targetS3Location', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name and key where you would like to add a copy of the job\n         template.</p>", "smithy.api#required" => {}}))
    CopyJobTemplateRequest.type = Types::CopyJobTemplateRequest
    CopyJobTemplateResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The format of the job template, either <code>JSON</code> or <code>YAML</code>.</p>", "smithy.api#required" => {}}))
    CopyJobTemplateResponse.type = Types::CopyJobTemplateResponse
    CpuArchitectureType.add_member(:x86_64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'X86_64', traits: {"smithy.api#enumValue" => "x86_64"}))
    CpuArchitectureType.add_member(:arm64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARM64', traits: {"smithy.api#enumValue" => "arm64"}))
    CreateBudgetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBudgetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to include in this budget.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:usage_tracking_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageTrackingResource, location_name: 'usageTrackingResource', traits: {"smithy.api#documentation" => "<p>The queue ID provided to this budget to track usage.</p>", "smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the budget.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The description of the budget.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    CreateBudgetRequest.add_member(:approximate_dollar_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedUsageLimit, location_name: 'approximateDollarLimit', traits: {"smithy.api#documentation" => "<p>The dollar limit based on consumed usage.</p>", "smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionsToAdd, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The budget actions to specify what happens when the budget runs out.</p>", "smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetSchedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The schedule to associate with this budget.</p>", "smithy.api#required" => {}}))
    CreateBudgetRequest.type = Types::CreateBudgetRequest
    CreateBudgetResponse.add_member(:budget_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetId, location_name: 'budgetId', traits: {"smithy.api#documentation" => "<p>The budget ID.</p>", "smithy.api#required" => {}}))
    CreateBudgetResponse.type = Types::CreateBudgetResponse
    CreateFarmRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateFarmRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the farm.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateFarmRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The description of the farm.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    CreateFarmRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key to use on the farm.</p>"}))
    CreateFarmRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to your farm. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    CreateFarmRequest.type = Types::CreateFarmRequest
    CreateFarmResponse.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    CreateFarmResponse.type = Types::CreateFarmResponse
    CreateFleetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateFleetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to connect to the fleet.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the fleet.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The description of the fleet.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    CreateFleetRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM role ARN for the role that the fleet's workers will use.</p>", "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:min_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'minWorkerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum number of workers for the fleet.</p>"}))
    CreateFleetRequest.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of workers for the fleet.</p>\n         <p>Deadline Cloud limits the number of workers to less than or equal to the fleet's\n         maximum worker count. The service maintains eventual consistency for the worker count. If\n         you make multiple rapid calls to <code>CreateWorker</code> before the field updates, you\n         might exceed your fleet's maximum worker count. For example, if your\n         <code>maxWorkerCount</code> is 10 and you currently have 9 workers, making two quick\n         <code>CreateWorker</code> calls might successfully create 2 workers instead of 1,\n         resulting in 11 total workers.</p>", "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the fleet. Customer managed fleets are self-managed.\n         Service managed Amazon EC2 fleets are managed by Deadline Cloud.</p>", "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    CreateFleetRequest.add_member(:host_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HostConfiguration, location_name: 'hostConfiguration', traits: {"smithy.api#documentation" => "<p>Provides a script that runs as a worker is starting up that you can use to provide\n         additional configuration for workers in your fleet.</p>"}))
    CreateFleetRequest.type = Types::CreateFleetRequest
    CreateFleetResponse.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    CreateFleetResponse.type = Types::CreateFleetResponse
    CreateJobRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to connect to the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The ID of the queue that the job is submitted to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateJobRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplate, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The job template to use for this job.</p>"}))
    CreateJobRequest.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The file type for the job template.</p>"}))
    CreateJobRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority of the job. The highest priority (first scheduled) is 100. When two jobs\n         have the same priority, the oldest job is scheduled first.</p>", "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the job.</p>"}))
    CreateJobRequest.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>The attachments for the job. Attach files required for the job to run to a render\n         job.</p>"}))
    CreateJobRequest.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID for the storage profile to connect to the job.</p>"}))
    CreateJobRequest.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#default" => "READY", "smithy.api#documentation" => "<p>The initial job status when it is created. Jobs that are created with a\n            <code>SUSPENDED</code> status will not run until manually requeued.</p>"}))
    CreateJobRequest.add_member(:max_failed_tasks_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: 'maxFailedTasksCount', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>"}))
    CreateJobRequest.add_member(:max_retries_per_task, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: 'maxRetriesPerTask', traits: {"smithy.api#default" => 5, "smithy.api#documentation" => "<p>The maximum number of retries for each task.</p>"}))
    CreateJobRequest.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of worker hosts that can concurrently process a job. When the\n            <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the\n         job, even if the fleets assigned to the job's queue has available workers.</p>\n         <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no\n         maximum number of workers.</p>\n         <p>If you don't specify the <code>maxWorkerCount</code>, Deadline Cloud won't throttle\n         the number of workers used to process the job.</p>"}))
    CreateJobRequest.add_member(:source_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'sourceJobId', traits: {"smithy.api#documentation" => "<p>The job ID for the source job.</p>"}))
    CreateJobRequest.type = Types::CreateJobRequest
    CreateJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    CreateJobResponse.type = Types::CreateJobResponse
    CreateJobTargetTaskRunStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    CreateJobTargetTaskRunStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    CreateLicenseEndpointRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateLicenseEndpointRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC (virtual private cloud) ID to use with the license endpoint.</p>", "smithy.api#required" => {}}))
    CreateLicenseEndpointRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnet IDs.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    CreateLicenseEndpointRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The security group IDs.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    CreateLicenseEndpointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    CreateLicenseEndpointRequest.type = Types::CreateLicenseEndpointRequest
    CreateLicenseEndpointResponse.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The license endpoint ID.</p>", "smithy.api#required" => {}}))
    CreateLicenseEndpointResponse.type = Types::CreateLicenseEndpointResponse
    CreateLimitRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateLimitRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the limit.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:amount_requirement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmountRequirementName, location_name: 'amountRequirementName', traits: {"smithy.api#documentation" => "<p>The value that you specify as the <code>name</code> in the <code>amounts</code> field of\n         the <code>hostRequirements</code> in a step of a job template to declare the limit\n         requirement.</p>", "smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCount, location_name: 'maxCount', traits: {"smithy.api#documentation" => "<p>The maximum number of resources constrained by this limit. When all of the resources are\n         in use, steps that require the limit won't be scheduled until the resource is\n         available.</p>\n         <p>The <code>maxCount</code> must not be 0. If the value is -1, there is no restriction on\n         the number of resources that can be acquired for this limit.</p>", "smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm that contains the limit.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>A description of the limit. A description helps you identify the purpose of the\n         limit.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    CreateLimitRequest.type = Types::CreateLimitRequest
    CreateLimitResponse.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the limit. Use this identifier in other operations, such as\n            <code>CreateQueueLimitAssociation</code> and <code>DeleteLimit</code>.</p>", "smithy.api#required" => {}}))
    CreateLimitResponse.type = Types::CreateLimitResponse
    CreateMonitorRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateMonitorRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name that you give the monitor that is displayed in the Deadline Cloud console.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'identityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center instance that authenticates monitor users.</p>", "smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:subdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdomain, location_name: 'subdomain', traits: {"smithy.api#documentation" => "<p>The subdomain to use when creating the monitor URL. The full URL of the monitor is\n         subdomain.Region.deadlinecloud.amazonaws.com.</p>", "smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that the monitor uses to connect to Deadline Cloud. Every user\n         that signs in to the monitor using IAM Identity Center uses this role to access Deadline Cloud\n         resources.</p>", "smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to your monitor. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    CreateMonitorRequest.type = Types::CreateMonitorRequest
    CreateMonitorResponse.add_member(:monitor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorId, location_name: 'monitorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the monitor.</p>", "smithy.api#required" => {}}))
    CreateMonitorResponse.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'identityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that IAM Identity Center assigns to the monitor.</p>", "smithy.api#required" => {}}))
    CreateMonitorResponse.type = Types::CreateMonitorResponse
    CreateQueueEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateQueueEnvironmentRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to connect to the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to connect the queue and environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>Sets the priority of the environments in the queue from 0 to 10,000, where 0 is the\n         highest priority (activated first and deactivated last). If two environments share the same\n         priority value, the environment created first takes higher priority.</p>", "smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The template's file type, <code>JSON</code> or <code>YAML</code>.</p>", "smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The environment template to use in the queue.</p>", "smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.type = Types::CreateQueueEnvironmentRequest
    CreateQueueEnvironmentResponse.add_member(:queue_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentId, location_name: 'queueEnvironmentId', traits: {"smithy.api#documentation" => "<p>The queue environment ID.</p>", "smithy.api#required" => {}}))
    CreateQueueEnvironmentResponse.type = Types::CreateQueueEnvironmentResponse
    CreateQueueFleetAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The ID of the farm that the queue and fleet belong to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueFleetAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#required" => {}}))
    CreateQueueFleetAssociationRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    CreateQueueFleetAssociationRequest.type = Types::CreateQueueFleetAssociationRequest
    CreateQueueFleetAssociationResponse.type = Types::CreateQueueFleetAssociationResponse
    CreateQueueLimitAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the queue and limit to associate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueLimitAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the queue to associate with the limit.</p>", "smithy.api#required" => {}}))
    CreateQueueLimitAssociationRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit to associate with the queue.</p>", "smithy.api#required" => {}}))
    CreateQueueLimitAssociationRequest.type = Types::CreateQueueLimitAssociationRequest
    CreateQueueLimitAssociationResponse.type = Types::CreateQueueLimitAssociationResponse
    CreateQueueRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to connect to the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the queue.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The description of the queue.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    CreateQueueRequest.add_member(:default_budget_action, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, location_name: 'defaultBudgetAction', traits: {"smithy.api#default" => "NONE", "smithy.api#documentation" => "<p>The default action to take on a queue if a budget isn't configured.</p>"}))
    CreateQueueRequest.add_member(:job_attachment_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: 'jobAttachmentSettings', traits: {"smithy.api#documentation" => "<p>The job attachment settings for the queue. These are the Amazon S3 bucket name and the Amazon S3\n         prefix.</p>"}))
    CreateQueueRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM role ARN that workers will use while running jobs for this queue.</p>"}))
    CreateQueueRequest.add_member(:job_run_as_user, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: 'jobRunAsUser', traits: {"smithy.api#documentation" => "<p>The jobs in the queue run as the specified POSIX user.</p>"}))
    CreateQueueRequest.add_member(:required_file_system_location_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: 'requiredFileSystemLocationNames', traits: {"smithy.api#documentation" => "<p>The file system location name to include in the queue.</p>"}))
    CreateQueueRequest.add_member(:allowed_storage_profile_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: 'allowedStorageProfileIds', traits: {"smithy.api#documentation" => "<p>The storage profile IDs to include in the queue.</p>"}))
    CreateQueueRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    CreateQueueRequest.type = Types::CreateQueueRequest
    CreateQueueResponse.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#required" => {}}))
    CreateQueueResponse.type = Types::CreateQueueResponse
    CreateStorageProfileRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateStorageProfileRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to connect to the storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStorageProfileRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the storage profile.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateStorageProfileRequest.add_member(:os_family, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, location_name: 'osFamily', traits: {"smithy.api#documentation" => "<p>The type of operating system (OS) for the storage profile.</p>", "smithy.api#required" => {}}))
    CreateStorageProfileRequest.add_member(:file_system_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: 'fileSystemLocations', traits: {"smithy.api#documentation" => "<p>File system paths to include in the storage profile.</p>"}))
    CreateStorageProfileRequest.type = Types::CreateStorageProfileRequest
    CreateStorageProfileResponse.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID.</p>", "smithy.api#required" => {}}))
    CreateStorageProfileResponse.type = Types::CreateStorageProfileResponse
    CreateWorkerRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to connect to the worker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkerRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID to connect to the worker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkerRequest.add_member(:host_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: HostPropertiesRequest, location_name: 'hostProperties', traits: {"smithy.api#documentation" => "<p>The IP address and host name of the worker.</p>"}))
    CreateWorkerRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateWorkerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    CreateWorkerRequest.type = Types::CreateWorkerRequest
    CreateWorkerResponse.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID.</p>", "smithy.api#required" => {}}))
    CreateWorkerResponse.type = Types::CreateWorkerResponse
    CustomFleetAmountCapabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAmountCapability)
    CustomFleetAttributeCapabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAttributeCapability)
    CustomerManagedFleetConfiguration.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The Auto Scaling mode for the customer managed fleet configuration.</p>", "smithy.api#required" => {}}))
    CustomerManagedFleetConfiguration.add_member(:worker_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedWorkerCapabilities, location_name: 'workerCapabilities', traits: {"smithy.api#documentation" => "<p>The worker capabilities for a customer managed fleet configuration.</p>", "smithy.api#required" => {}}))
    CustomerManagedFleetConfiguration.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID.</p>"}))
    CustomerManagedFleetConfiguration.add_member(:tag_propagation_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: TagPropagationMode, location_name: 'tagPropagationMode', traits: {"smithy.api#documentation" => "<p>Specifies whether tags associated with a fleet are attached to workers when the worker\n         is launched. </p>\n         <p>When the <code>tagPropagationMode</code> is set to\n            <code>PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH</code> any tag associated with a fleet is\n         attached to workers when they launch. If the tags for a fleet change, the tags associated\n         with running workers <b>do not</b> change.</p>\n         <p>If you don't specify <code>tagPropagationMode</code>, the default is\n            <code>NO_PROPAGATION</code>.</p>"}))
    CustomerManagedFleetConfiguration.type = Types::CustomerManagedFleetConfiguration
    CustomerManagedFleetOperatingSystemFamily.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "WINDOWS"}))
    CustomerManagedFleetOperatingSystemFamily.add_member(:linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX', traits: {"smithy.api#enumValue" => "LINUX"}))
    CustomerManagedFleetOperatingSystemFamily.add_member(:macos, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MACOS', traits: {"smithy.api#enumValue" => "MACOS"}))
    CustomerManagedWorkerCapabilities.add_member(:v_cpu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: VCpuCountRange, location_name: 'vCpuCount', traits: {"smithy.api#documentation" => "<p>The vCPU count for the customer manged worker capabilities.</p>", "smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:memory_mi_b, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryMiBRange, location_name: 'memoryMiB', traits: {"smithy.api#documentation" => "<p>The memory (MiB).</p>", "smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_types, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorTypes, location_name: 'acceleratorTypes', traits: {"smithy.api#documentation" => "<p>The accelerator types for the customer managed worker capabilities.</p>"}))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_count, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorCountRange, location_name: 'acceleratorCount', traits: {"smithy.api#documentation" => "<p>The range of the accelerator.</p>"}))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_total_memory_mi_b, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorTotalMemoryMiBRange, location_name: 'acceleratorTotalMemoryMiB', traits: {"smithy.api#documentation" => "<p>The total memory (MiB) for the customer managed worker capabilities.</p>"}))
    CustomerManagedWorkerCapabilities.add_member(:os_family, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedFleetOperatingSystemFamily, location_name: 'osFamily', traits: {"smithy.api#documentation" => "<p>The operating system (OS) family.</p>", "smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:cpu_architecture_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CpuArchitectureType, location_name: 'cpuArchitectureType', traits: {"smithy.api#documentation" => "<p>The CPU architecture type for the customer managed worker capabilities.</p>", "smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:custom_amounts, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomFleetAmountCapabilities, location_name: 'customAmounts', traits: {"smithy.api#documentation" => "<p>Custom requirement ranges for customer managed worker capabilities.</p>"}))
    CustomerManagedWorkerCapabilities.add_member(:custom_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomFleetAttributeCapabilities, location_name: 'customAttributes', traits: {"smithy.api#documentation" => "<p>Custom attributes for the customer manged worker capabilities.</p>"}))
    CustomerManagedWorkerCapabilities.type = Types::CustomerManagedWorkerCapabilities
    DateTimeFilterExpression.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the date-time field to filter on.</p>", "smithy.api#required" => {}}))
    DateTimeFilterExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The type of comparison to use to filter the results.</p>", "smithy.api#required" => {}}))
    DateTimeFilterExpression.add_member(:date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'dateTime', traits: {"smithy.api#documentation" => "<p>The date and time.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    DateTimeFilterExpression.type = Types::DateTimeFilterExpression
    DeadlinePrincipalType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    DeadlinePrincipalType.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    DefaultQueueBudgetAction.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DefaultQueueBudgetAction.add_member(:stop_scheduling_and_complete_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_COMPLETE_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    DefaultQueueBudgetAction.add_member(:stop_scheduling_and_cancel_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_CANCEL_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    DeleteBudgetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to remove from the budget.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBudgetRequest.add_member(:budget_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetId, location_name: 'budgetId', traits: {"smithy.api#documentation" => "<p>The budget ID of the budget to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBudgetRequest.type = Types::DeleteBudgetRequest
    DeleteBudgetResponse.type = Types::DeleteBudgetResponse
    DeleteFarmRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFarmRequest.type = Types::DeleteFarmRequest
    DeleteFarmResponse.type = Types::DeleteFarmResponse
    DeleteFleetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteFleetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to remove from the fleet.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFleetRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the fleet to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFleetRequest.type = Types::DeleteFleetRequest
    DeleteFleetResponse.type = Types::DeleteFleetResponse
    DeleteLicenseEndpointRequest.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The license endpoint ID of the license endpoint to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLicenseEndpointRequest.type = Types::DeleteLicenseEndpointRequest
    DeleteLicenseEndpointResponse.type = Types::DeleteLicenseEndpointResponse
    DeleteLimitRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the limit to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLimitRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLimitRequest.type = Types::DeleteLimitRequest
    DeleteLimitResponse.type = Types::DeleteLimitResponse
    DeleteMeteredProductRequest.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the license endpoint from which to remove the metered product.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMeteredProductRequest.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteredProductId, location_name: 'productId', traits: {"smithy.api#documentation" => "<p>The product ID to remove from the license endpoint.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMeteredProductRequest.type = Types::DeleteMeteredProductRequest
    DeleteMeteredProductResponse.type = Types::DeleteMeteredProductResponse
    DeleteMonitorRequest.add_member(:monitor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorId, location_name: 'monitorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the monitor to delete. This ID is returned by the\n            <code>CreateMonitor</code> operation, and is included in the response to the\n            <code>GetMonitor</code> operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMonitorRequest.type = Types::DeleteMonitorRequest
    DeleteMonitorResponse.type = Types::DeleteMonitorResponse
    DeleteQueueEnvironmentRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm from which to remove the queue environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueEnvironmentRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the queue environment to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueEnvironmentRequest.add_member(:queue_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentId, location_name: 'queueEnvironmentId', traits: {"smithy.api#documentation" => "<p>The queue environment ID of the queue environment to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueEnvironmentRequest.type = Types::DeleteQueueEnvironmentRequest
    DeleteQueueEnvironmentResponse.type = Types::DeleteQueueEnvironmentResponse
    DeleteQueueFleetAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm that holds the queue-fleet association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueFleetAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the queue-fleet association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueFleetAssociationRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the queue-fleet association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueFleetAssociationRequest.type = Types::DeleteQueueFleetAssociationRequest
    DeleteQueueFleetAssociationResponse.type = Types::DeleteQueueFleetAssociationResponse
    DeleteQueueLimitAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the queue and limit to\n         disassociate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueLimitAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the queue to disassociate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueLimitAssociationRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit to disassociate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueLimitAssociationRequest.type = Types::DeleteQueueLimitAssociationRequest
    DeleteQueueLimitAssociationResponse.type = Types::DeleteQueueLimitAssociationResponse
    DeleteQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The ID of the farm from which to remove the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the queue to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueRequest.type = Types::DeleteQueueRequest
    DeleteQueueResponse.type = Types::DeleteQueueResponse
    DeleteStorageProfileRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm from which to remove the storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageProfileRequest.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID of the storage profile to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageProfileRequest.type = Types::DeleteStorageProfileRequest
    DeleteStorageProfileResponse.type = Types::DeleteStorageProfileResponse
    DeleteWorkerRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the worker to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the worker to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID of the worker to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerRequest.type = Types::DeleteWorkerRequest
    DeleteWorkerResponse.type = Types::DeleteWorkerResponse
    DependenciesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepId)
    DependencyConsumerResolutionStatus.add_member(:resolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "RESOLVED"}))
    DependencyConsumerResolutionStatus.add_member(:unresolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRESOLVED', traits: {"smithy.api#enumValue" => "UNRESOLVED"}))
    DependencyCounts.add_member(:dependencies_resolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'dependenciesResolved', traits: {"smithy.api#documentation" => "<p>The number of resolved dependencies.</p>", "smithy.api#required" => {}}))
    DependencyCounts.add_member(:dependencies_unresolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'dependenciesUnresolved', traits: {"smithy.api#documentation" => "<p>The number of unresolved dependencies.</p>", "smithy.api#required" => {}}))
    DependencyCounts.add_member(:consumers_resolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'consumersResolved', traits: {"smithy.api#documentation" => "<p>The number of consumers resolved.</p>", "smithy.api#required" => {}}))
    DependencyCounts.add_member(:consumers_unresolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'consumersUnresolved', traits: {"smithy.api#documentation" => "<p>The number of unresolved consumers.</p>", "smithy.api#required" => {}}))
    DependencyCounts.type = Types::DependencyCounts
    DesiredWorkerStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    DisassociateMemberFromFarmRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to disassociate from the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFarmRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>A member's principal ID to disassociate from a farm.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFarmRequest.type = Types::DisassociateMemberFromFarmRequest
    DisassociateMemberFromFarmResponse.type = Types::DisassociateMemberFromFarmResponse
    DisassociateMemberFromFleetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the fleet to disassociate a member from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFleetRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the fleet to from which to disassociate a member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFleetRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>A member's principal ID to disassociate from a fleet.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFleetRequest.type = Types::DisassociateMemberFromFleetRequest
    DisassociateMemberFromFleetResponse.type = Types::DisassociateMemberFromFleetResponse
    DisassociateMemberFromJobRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the job to disassociate from the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID connected to a job for which you're disassociating a member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to disassociate from a member in a job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>A member's principal ID to disassociate from a job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.type = Types::DisassociateMemberFromJobRequest
    DisassociateMemberFromJobResponse.type = Types::DisassociateMemberFromJobResponse
    DisassociateMemberFromQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the queue to disassociate from a member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromQueueRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the queue in which you're disassociating from a member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromQueueRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>A member's principal ID to disassociate from a queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromQueueRequest.type = Types::DisassociateMemberFromQueueRequest
    DisassociateMemberFromQueueResponse.type = Types::DisassociateMemberFromQueueResponse
    Ec2EbsVolume.add_member(:size_gi_b, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sizeGiB', traits: {"smithy.api#default" => 250, "smithy.api#documentation" => "<p>The EBS volume size in GiB.</p>"}))
    Ec2EbsVolume.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsIops, location_name: 'iops', traits: {"smithy.api#default" => 3000, "smithy.api#documentation" => "<p>The IOPS per volume.</p>"}))
    Ec2EbsVolume.add_member(:throughput_mi_b, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsThroughputMiB, location_name: 'throughputMiB', traits: {"smithy.api#default" => 125, "smithy.api#documentation" => "<p>The throughput per volume in MiB.</p>"}))
    Ec2EbsVolume.type = Types::Ec2EbsVolume
    Ec2MarketType.add_member(:on_demand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "on-demand"}))
    Ec2MarketType.add_member(:spot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT', traits: {"smithy.api#enumValue" => "spot"}))
    Ec2MarketType.add_member(:wait_and_save, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAIT_AND_SAVE', traits: {"smithy.api#enumValue" => "wait-and-save"}))
    EnvironmentDetailsEntity.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsEntity.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsEntity.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version in the environment.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsEntity.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The template used for the environment.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsEntity.type = Types::EnvironmentDetailsEntity
    EnvironmentDetailsError.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsError.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntityErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message detailing the error's cause.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsError.type = Types::EnvironmentDetailsError
    EnvironmentDetailsIdentifiers.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsIdentifiers.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#required" => {}}))
    EnvironmentDetailsIdentifiers.type = Types::EnvironmentDetailsIdentifiers
    EnvironmentEnterSessionActionDefinition.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#required" => {}}))
    EnvironmentEnterSessionActionDefinition.type = Types::EnvironmentEnterSessionActionDefinition
    EnvironmentEnterSessionActionDefinitionSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#required" => {}}))
    EnvironmentEnterSessionActionDefinitionSummary.type = Types::EnvironmentEnterSessionActionDefinitionSummary
    EnvironmentExitSessionActionDefinition.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#required" => {}}))
    EnvironmentExitSessionActionDefinition.type = Types::EnvironmentExitSessionActionDefinition
    EnvironmentExitSessionActionDefinitionSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#required" => {}}))
    EnvironmentExitSessionActionDefinitionSummary.type = Types::EnvironmentExitSessionActionDefinitionSummary
    EnvironmentTemplateType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    EnvironmentTemplateType.add_member(:yaml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YAML', traits: {"smithy.api#enumValue" => "YAML"}))
    ExceptionContext.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ExceptionContext.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FarmMember.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm member.</p>", "smithy.api#required" => {}}))
    FarmMember.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal ID of the farm member.</p>", "smithy.api#required" => {}}))
    FarmMember.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The principal type of the farm member.</p>", "smithy.api#required" => {}}))
    FarmMember.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The identity store ID of the farm member.</p>", "smithy.api#required" => {}}))
    FarmMember.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The farm member's membership level.</p>", "smithy.api#required" => {}}))
    FarmMember.type = Types::FarmMember
    FarmMembers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FarmMember)
    FarmSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FarmSummary)
    FarmSummary.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    FarmSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the farm.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    FarmSummary.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN for the KMS key.</p>"}))
    FarmSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    FarmSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    FarmSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    FarmSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    FarmSummary.type = Types::FarmSummary
    FieldSortExpression.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order for the field.</p>", "smithy.api#required" => {}}))
    FieldSortExpression.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field.</p>", "smithy.api#required" => {}}))
    FieldSortExpression.type = Types::FieldSortExpression
    FileSystemLocation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The location name.</p>", "smithy.api#required" => {}}))
    FileSystemLocation.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathString, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The file path.</p>", "smithy.api#required" => {}}))
    FileSystemLocation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of file.</p>", "smithy.api#required" => {}}))
    FileSystemLocation.type = Types::FileSystemLocation
    FileSystemLocationType.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    FileSystemLocationType.add_member(:local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL', traits: {"smithy.api#enumValue" => "LOCAL"}))
    FileSystemLocationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocation)
    FixedBudgetSchedule.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartsAt, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>When the budget starts.</p>", "smithy.api#required" => {}}))
    FixedBudgetSchedule.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndsAt, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>When the budget ends.</p>", "smithy.api#required" => {}}))
    FixedBudgetSchedule.type = Types::FixedBudgetSchedule
    FleetAmountCapabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAmountCapability)
    FleetAmountCapability.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmountCapabilityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the fleet capability.</p>", "smithy.api#required" => {}}))
    FleetAmountCapability.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The minimum amount of fleet worker capability.</p>", "smithy.api#required" => {}}))
    FleetAmountCapability.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The maximum amount of the fleet worker capability.</p>"}))
    FleetAmountCapability.type = Types::FleetAmountCapability
    FleetAttributeCapabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAttributeCapability)
    FleetAttributeCapability.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeCapabilityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the fleet attribute capability for the worker.</p>", "smithy.api#required" => {}}))
    FleetAttributeCapability.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeCapabilityValuesList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The number of fleet attribute capabilities.</p>", "smithy.api#required" => {}}))
    FleetAttributeCapability.type = Types::FleetAttributeCapability
    FleetCapabilities.add_member(:amounts, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAmountCapabilities, location_name: 'amounts', traits: {"smithy.api#documentation" => "<p>Amount capabilities of the fleet.</p>"}))
    FleetCapabilities.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAttributeCapabilities, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Attribute capabilities of the fleet.</p>"}))
    FleetCapabilities.type = Types::FleetCapabilities
    FleetConfiguration.add_member(:customer_managed, Types::FleetConfiguration::CustomerManaged, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedFleetConfiguration, location_name: 'customerManaged', traits: {"smithy.api#documentation" => "<p>The customer managed fleets within a fleet configuration.</p>"}))
    FleetConfiguration.add_member(:service_managed_ec2, Types::FleetConfiguration::ServiceManagedEc2, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedEc2FleetConfiguration, location_name: 'serviceManagedEc2', traits: {"smithy.api#documentation" => "<p>The service managed Amazon EC2 instances for a fleet configuration.</p>"}))
    FleetConfiguration.add_member(:unknown, Types::FleetConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FleetConfiguration.type = Types::FleetConfiguration
    FleetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId)
    FleetMember.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    FleetMember.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    FleetMember.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal ID of the fleet member.</p>", "smithy.api#required" => {}}))
    FleetMember.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The principal type of the fleet member.</p>", "smithy.api#required" => {}}))
    FleetMember.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The identity store ID.</p>", "smithy.api#required" => {}}))
    FleetMember.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The fleet member's membership level.</p>", "smithy.api#required" => {}}))
    FleetMember.type = Types::FleetMember
    FleetMembers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetMember)
    FleetStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FleetStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    FleetStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    FleetStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FleetStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    FleetStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    FleetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetSummary)
    FleetSummary.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "fleetId"}))
    FleetSummary.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the fleet summary to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the fleet.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A message that communicates a suspended status of the fleet.</p>"}))
    FleetSummary.add_member(:auto_scaling_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingStatus, location_name: 'autoScalingStatus', traits: {"smithy.api#documentation" => "<p>The Auto Scaling status of a fleet.</p>"}))
    FleetSummary.add_member(:target_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'targetWorkerCount', traits: {"smithy.api#documentation" => "<p>The target number of workers in a fleet.</p>"}))
    FleetSummary.add_member(:worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'workerCount', traits: {"smithy.api#documentation" => "<p>The number of workers in the fleet summary.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:min_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'minWorkerCount', traits: {"smithy.api#documentation" => "<p>The minimum number of workers in the fleet.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of workers specified in the fleet.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration details for the fleet.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    FleetSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    FleetSummary.type = Types::FleetSummary
    GetBudgetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm connected to the budget.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBudgetRequest.add_member(:budget_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetId, location_name: 'budgetId', traits: {"smithy.api#documentation" => "<p>The budget ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBudgetRequest.type = Types::GetBudgetRequest
    GetBudgetResponse.add_member(:budget_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetId, location_name: 'budgetId', traits: {"smithy.api#documentation" => "<p>The budget ID.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:usage_tracking_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageTrackingResource, location_name: 'usageTrackingResource', traits: {"smithy.api#documentation" => "<p>The resource that the budget is tracking usage for.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the budget.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code>–Get a budget being evaluated.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code>–Get an inactive budget. This can include expired,\n               canceled, or deleted statuses.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the budget.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the budget.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    GetBudgetResponse.add_member(:approximate_dollar_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedUsageLimit, location_name: 'approximateDollarLimit', traits: {"smithy.api#documentation" => "<p>The consumed usage limit for the budget.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:usages, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedUsages, location_name: 'usages', traits: {"smithy.api#documentation" => "<p>The usages of the budget.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseBudgetActionList, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The budget actions for the budget.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetSchedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The budget schedule.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetBudgetResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetBudgetResponse.add_member(:queue_stopped_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'queueStoppedAt', traits: {"smithy.api#documentation" => "<p>The date and time the queue stopped.</p>"}))
    GetBudgetResponse.type = Types::GetBudgetResponse
    GetFarmRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFarmRequest.type = Types::GetFarmRequest
    GetFarmResponse.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm to get.</p>", "smithy.api#required" => {}}))
    GetFarmResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the farm.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetFarmResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the farm.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    GetFarmResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key used on the farm.</p>", "smithy.api#required" => {}}))
    GetFarmResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetFarmResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetFarmResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetFarmResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetFarmResponse.type = Types::GetFarmResponse
    GetFleetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm in the fleet.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFleetRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the fleet to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFleetRequest.type = Types::GetFleetRequest
    GetFleetResponse.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm in the fleet.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the fleet.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the fleet.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    GetFleetResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the fleet.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A message that communicates a suspended status of the fleet.</p>"}))
    GetFleetResponse.add_member(:auto_scaling_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingStatus, location_name: 'autoScalingStatus', traits: {"smithy.api#documentation" => "<p>The Auto Scaling status of the fleet. Either <code>GROWING</code>, <code>STEADY</code>, or\n            <code>SHRINKING</code>.</p>"}))
    GetFleetResponse.add_member(:target_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'targetWorkerCount', traits: {"smithy.api#documentation" => "<p>The number of target workers in the fleet.</p>"}))
    GetFleetResponse.add_member(:worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'workerCount', traits: {"smithy.api#documentation" => "<p>The number of workers in the fleet.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:min_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'minWorkerCount', traits: {"smithy.api#documentation" => "<p>The minimum number of workers specified in the fleet.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of workers specified in the fleet.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration setting for the fleet.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:host_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HostConfiguration, location_name: 'hostConfiguration', traits: {"smithy.api#documentation" => "<p>The script that runs as a worker is starting up that you can use to provide additional\n         configuration for workers in your fleet.</p>"}))
    GetFleetResponse.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetCapabilities, location_name: 'capabilities', traits: {"smithy.api#documentation" => "<p>Outlines what the fleet is capable of for minimums, maximums, and naming, in addition to\n         attribute names and values.</p>"}))
    GetFleetResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM role ARN.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetFleetResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetFleetResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetFleetResponse.type = Types::GetFleetResponse
    GetJobEntityError.add_member(:job_details, Types::GetJobEntityError::JobDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetailsError, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>The job details for the failed job entity.</p>"}))
    GetJobEntityError.add_member(:job_attachment_details, Types::GetJobEntityError::JobAttachmentDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentDetailsError, location_name: 'jobAttachmentDetails', traits: {"smithy.api#documentation" => "<p>The job attachment details for the failed job entity.</p>"}))
    GetJobEntityError.add_member(:step_details, Types::GetJobEntityError::StepDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: StepDetailsError, location_name: 'stepDetails', traits: {"smithy.api#documentation" => "<p>The step details for the failed job entity.</p>"}))
    GetJobEntityError.add_member(:environment_details, Types::GetJobEntityError::EnvironmentDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDetailsError, location_name: 'environmentDetails', traits: {"smithy.api#documentation" => "<p>The environment details for the failed job entity.</p>"}))
    GetJobEntityError.add_member(:unknown, Types::GetJobEntityError::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    GetJobEntityError.type = Types::GetJobEntityError
    GetJobRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm in the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID associated with the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.type = Types::GetJobRequest
    GetJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    GetJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the job.</p>", "smithy.api#required" => {}}))
    GetJobResponse.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status for the job. </p>", "smithy.api#required" => {}}))
    GetJobResponse.add_member(:lifecycle_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lifecycleStatusMessage', traits: {"smithy.api#documentation" => "<p>A message that communicates the status of the life cycle for the job.</p>", "smithy.api#required" => {}}))
    GetJobResponse.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The job priority.</p>", "smithy.api#required" => {}}))
    GetJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetJobResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetJobResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetJobResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetJobResponse.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    GetJobResponse.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    GetJobResponse.add_member(:task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'taskRunStatus', traits: {"smithy.api#documentation" => "<p>The task run status for the job.</p>"}))
    GetJobResponse.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status with which the job started.</p>"}))
    GetJobResponse.add_member(:task_run_status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: 'taskRunStatusCounts', traits: {"smithy.api#documentation" => "<p>The number of tasks running on the job.</p>"}))
    GetJobResponse.add_member(:task_failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: 'taskFailureRetryCount', traits: {"smithy.api#documentation" => "<p>The total number of times tasks from the job failed and were retried.</p>"}))
    GetJobResponse.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID associated with the job.</p>"}))
    GetJobResponse.add_member(:max_failed_tasks_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: 'maxFailedTasksCount', traits: {"smithy.api#documentation" => "<p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>"}))
    GetJobResponse.add_member(:max_retries_per_task, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: 'maxRetriesPerTask', traits: {"smithy.api#documentation" => "<p>The maximum number of retries per failed tasks.</p>"}))
    GetJobResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the job.</p>"}))
    GetJobResponse.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>The attachments for the job.</p>"}))
    GetJobResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the job.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    GetJobResponse.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of worker hosts that can concurrently process a job. When the\n            <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the\n         job, even if the fleets assigned to the job's queue has available workers.</p>\n         <p>If you don't set the <code>maxWorkerCount</code> when you create a job, this value is\n         not returned in the response.</p>"}))
    GetJobResponse.add_member(:source_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'sourceJobId', traits: {"smithy.api#documentation" => "<p>The job ID for the source job.</p>"}))
    GetJobResponse.type = Types::GetJobResponse
    GetLicenseEndpointRequest.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The license endpoint ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLicenseEndpointRequest.type = Types::GetLicenseEndpointRequest
    GetLicenseEndpointResponse.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The license endpoint ID.</p>", "smithy.api#required" => {}}))
    GetLicenseEndpointResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the license endpoint.</p>", "smithy.api#required" => {}}))
    GetLicenseEndpointResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the license endpoint.</p>", "smithy.api#required" => {}}))
    GetLicenseEndpointResponse.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VCP(virtual private cloud) ID associated with the license endpoint.</p>"}))
    GetLicenseEndpointResponse.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsName, location_name: 'dnsName', traits: {"smithy.api#documentation" => "<p>The DNS name.</p>"}))
    GetLicenseEndpointResponse.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnet IDs.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}}))
    GetLicenseEndpointResponse.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The security group IDs for the license endpoint.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}}))
    GetLicenseEndpointResponse.type = Types::GetLicenseEndpointResponse
    GetLimitRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the limit.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLimitRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit to return.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLimitRequest.type = Types::GetLimitRequest
    GetLimitResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the limit.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:amount_requirement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmountRequirementName, location_name: 'amountRequirementName', traits: {"smithy.api#documentation" => "<p>The value that you specify as the <code>name</code> in the <code>amounts</code> field of\n         the <code>hostRequirements</code> in a step of a job template to declare the limit\n         requirement.</p>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCount, location_name: 'maxCount', traits: {"smithy.api#documentation" => "<p>The maximum number of resources constrained by this limit. When all of the resources are\n         in use, steps that require the limit won't be scheduled until the resource is\n         available.</p>\n         <p>The <code>maxValue</code> must not be 0. If the value is -1, there is no restriction on\n         the number of resources that can be acquired for this limit.</p>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the limit was created.</p>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that created the limit.</p>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the limit was last updated.</p>"}))
    GetLimitResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that last updated the limit.</p>"}))
    GetLimitResponse.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the limit.</p>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit.</p>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:current_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'currentCount', traits: {"smithy.api#documentation" => "<p>The number of resources from the limit that are being used by jobs. The result is\n         delayed and may not be the count at the time that you called the operation.</p>", "smithy.api#required" => {}}))
    GetLimitResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the limit that helps identify what the limit is used for.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    GetLimitResponse.type = Types::GetLimitResponse
    GetMonitorRequest.add_member(:monitor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorId, location_name: 'monitorId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the monitor. This ID is returned by the\n            <code>CreateMonitor</code> operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMonitorRequest.type = Types::GetMonitorRequest
    GetMonitorResponse.add_member(:monitor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorId, location_name: 'monitorId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the monitor.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name used to identify the monitor on the Deadline Cloud console.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:subdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdomain, location_name: 'subdomain', traits: {"smithy.api#documentation" => "<p>The subdomain used for the monitor URL. The full URL of the monitor is\n         subdomain.Region.deadlinecloud.amazonaws.com.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The complete URL of the monitor. The full URL of the monitor is\n         subdomain.Region.deadlinecloud.amazonaws.com.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role for the monitor. Users of the monitor use this role to\n         access Deadline Cloud resources.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'identityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center instance responsible for authenticating monitor users.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'identityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that the IAM Identity Center assigned to the monitor when it was created.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The UNIX timestamp of the date and time that the monitor was created.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user name of the person that created the monitor.</p>", "smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The UNIX timestamp of the last date and time that the monitor was updated.</p>"}))
    GetMonitorResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user name of the person that last updated the monitor.</p>"}))
    GetMonitorResponse.type = Types::GetMonitorResponse
    GetQueueEnvironmentRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the queue environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueEnvironmentRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueEnvironmentRequest.add_member(:queue_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentId, location_name: 'queueEnvironmentId', traits: {"smithy.api#documentation" => "<p>The queue environment ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueEnvironmentRequest.type = Types::GetQueueEnvironmentRequest
    GetQueueEnvironmentResponse.add_member(:queue_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentId, location_name: 'queueEnvironmentId', traits: {"smithy.api#documentation" => "<p>The queue environment ID.</p>", "smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the queue environment.</p>", "smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority of the queue environment.</p>", "smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The type of template for the queue environment.</p>", "smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The template for the queue environment.</p>", "smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.&gt;</p>", "smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetQueueEnvironmentResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetQueueEnvironmentResponse.type = Types::GetQueueEnvironmentResponse
    GetQueueFleetAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm that contains the queue-fleet association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueFleetAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue-fleet association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueFleetAssociationRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID for the queue-fleet association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueFleetAssociationRequest.type = Types::GetQueueFleetAssociationRequest
    GetQueueFleetAssociationResponse.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue-fleet association.</p>", "smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID for the queue-fleet association.</p>", "smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueFleetAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the queue-fleet association.</p>", "smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetQueueFleetAssociationResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetQueueFleetAssociationResponse.type = Types::GetQueueFleetAssociationResponse
    GetQueueLimitAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the associated queue and limit.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueLimitAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the queue associated with the limit.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueLimitAssociationRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit associated with the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueLimitAssociationRequest.type = Types::GetQueueLimitAssociationRequest
    GetQueueLimitAssociationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the association was created.</p>", "smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that created the association.</p>", "smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the association was last updated.</p>"}))
    GetQueueLimitAssociationResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that last updated the association.</p>"}))
    GetQueueLimitAssociationResponse.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the queue associated with the limit.</p>", "smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit associated with the queue.</p>", "smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueLimitAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the limit.</p>", "smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.type = Types::GetQueueLimitAssociationResponse
    GetQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm in the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueRequest.type = Types::GetQueueRequest
    GetQueueResponse.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#required" => {}}))
    GetQueueResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the queue.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetQueueResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the queue.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    GetQueueResponse.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the queue.</p>", "smithy.api#required" => {}}))
    GetQueueResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the queue.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code>–The queue is active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULING</code>–The queue is scheduling.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULING_BLOCKED</code>–The queue scheduling is blocked. See the\n               provided reason.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetQueueResponse.add_member(:default_budget_action, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, location_name: 'defaultBudgetAction', traits: {"smithy.api#documentation" => "<p>The default action taken on a queue if a budget wasn't configured.</p>", "smithy.api#required" => {}}))
    GetQueueResponse.add_member(:blocked_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueBlockedReason, location_name: 'blockedReason', traits: {"smithy.api#documentation" => "<p>The reason the queue was blocked.</p>"}))
    GetQueueResponse.add_member(:job_attachment_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: 'jobAttachmentSettings', traits: {"smithy.api#documentation" => "<p>The job attachment settings for the queue.</p>"}))
    GetQueueResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM role ARN.</p>"}))
    GetQueueResponse.add_member(:required_file_system_location_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: 'requiredFileSystemLocationNames', traits: {"smithy.api#documentation" => "<p>A list of the required file system location names in the queue.</p>"}))
    GetQueueResponse.add_member(:allowed_storage_profile_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: 'allowedStorageProfileIds', traits: {"smithy.api#documentation" => "<p>The storage profile IDs for the queue.</p>"}))
    GetQueueResponse.add_member(:job_run_as_user, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: 'jobRunAsUser', traits: {"smithy.api#documentation" => "<p>The jobs in the queue ran as this specified POSIX user.</p>"}))
    GetQueueResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetQueueResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetQueueResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetQueueResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetQueueResponse.type = Types::GetQueueResponse
    GetSessionActionRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the session action.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the session action.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.add_member(:session_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId, location_name: 'sessionActionId', traits: {"smithy.api#documentation" => "<p>The session action ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.type = Types::GetSessionActionRequest
    GetSessionActionResponse.add_member(:session_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId, location_name: 'sessionActionId', traits: {"smithy.api#documentation" => "<p>The session action ID.</p>", "smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the session action.</p>", "smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    GetSessionActionResponse.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    GetSessionActionResponse.add_member(:worker_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'workerUpdatedAt', traits: {"smithy.api#documentation" => "<p>The Linux timestamp of the date and time the session action was last updated.</p>"}))
    GetSessionActionResponse.add_member(:progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionProgressPercent, location_name: 'progressPercent', traits: {"smithy.api#documentation" => "<p>The percentage completed for a session action.</p>"}))
    GetSessionActionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID for the session action.</p>", "smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:process_exit_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessExitCode, location_name: 'processExitCode', traits: {"smithy.api#documentation" => "<p>The process exit code. The default Deadline Cloud worker agent converts unsigned\n         32-bit exit codes to signed 32-bit exit codes.</p>"}))
    GetSessionActionResponse.add_member(:progress_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionProgressMessage, location_name: 'progressMessage', traits: {"smithy.api#documentation" => "<p>The message that communicates the progress of the session action.</p>"}))
    GetSessionActionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The session action definition.</p>", "smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:acquired_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: AcquiredLimits, location_name: 'acquiredLimits', traits: {"smithy.api#documentation" => "<p>The limits and their amounts acquired during a session action. If no limits were\n         acquired during the session, this field isn't returned.</p>"}))
    GetSessionActionResponse.add_member(:manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesListResponse, location_name: 'manifests', traits: {"smithy.api#documentation" => "<p>The list of manifest properties that describe file attachments for the task run.</p>"}))
    GetSessionActionResponse.type = Types::GetSessionActionResponse
    GetSessionRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    GetSessionResponse.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID for the session.</p>", "smithy.api#required" => {}}))
    GetSessionResponse.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID for the session.</p>", "smithy.api#required" => {}}))
    GetSessionResponse.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>", "smithy.api#required" => {}}))
    GetSessionResponse.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'log', traits: {"smithy.api#documentation" => "<p>The session log.</p>", "smithy.api#required" => {}}))
    GetSessionResponse.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status of the session.</p>", "smithy.api#required" => {}}))
    GetSessionResponse.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    GetSessionResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetSessionResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetSessionResponse.add_member(:target_lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, location_name: 'targetLifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status with which the session started.</p>"}))
    GetSessionResponse.add_member(:host_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: 'hostProperties', traits: {"smithy.api#documentation" => "<p>Provides the Amazon EC2 properties of the host.</p>"}))
    GetSessionResponse.add_member(:worker_log, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'workerLog', traits: {"smithy.api#documentation" => "<p>The worker log for the session.</p>"}))
    GetSessionResponse.type = Types::GetSessionResponse
    GetSessionsStatisticsAggregationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The identifier of the farm to include in the statistics. This should be the same as the\n         farm ID used in the call to the <code>StartSessionsStatisticsAggregation</code>\n         operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionsStatisticsAggregationRequest.add_member(:aggregation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationId, location_name: 'aggregationId', traits: {"smithy.api#documentation" => "<p>The identifier returned by the <code>StartSessionsStatisticsAggregation</code> operation\n         that identifies the aggregated statistics.</p>", "smithy.api#httpQuery" => "aggregationId", "smithy.api#required" => {}}))
    GetSessionsStatisticsAggregationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetSessionsStatisticsAggregationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetSessionsStatisticsAggregationRequest.type = Types::GetSessionsStatisticsAggregationRequest
    GetSessionsStatisticsAggregationResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticsList, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>The statistics for the specified fleets or queues.</p>"}))
    GetSessionsStatisticsAggregationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    GetSessionsStatisticsAggregationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionsStatisticsAggregationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the aggregated results. An aggregation may fail or time out if the results\n         are too large. If this happens, you can call the\n            <code>StartSessionsStatisticsAggregation</code> operation after you reduce the\n         aggregation time frame, reduce the number of queues or fleets in the aggregation, or\n         increase the period length.</p>\n         <p>If you call the <code>StartSessionsStatisticsAggregation </code> operation when the\n         status is <code>IN_PROGRESS</code>, you will receive a\n         <code>ThrottlingException</code>.</p>", "smithy.api#required" => {}}))
    GetSessionsStatisticsAggregationResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the status.</p>"}))
    GetSessionsStatisticsAggregationResponse.type = Types::GetSessionsStatisticsAggregationResponse
    GetStepRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the step.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the step.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the step.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.type = Types::GetStepRequest
    GetStepResponse.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    GetStepResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the step.</p>", "smithy.api#required" => {}}))
    GetStepResponse.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StepLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status of the step.</p>", "smithy.api#required" => {}}))
    GetStepResponse.add_member(:lifecycle_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lifecycleStatusMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the lifecycle status of the step.</p>"}))
    GetStepResponse.add_member(:task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'taskRunStatus', traits: {"smithy.api#documentation" => "<p>The task run status for the job.</p>", "smithy.api#required" => {}}))
    GetStepResponse.add_member(:task_run_status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: 'taskRunStatusCounts', traits: {"smithy.api#documentation" => "<p>The number of tasks running on the job.</p>", "smithy.api#required" => {}}))
    GetStepResponse.add_member(:task_failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: 'taskFailureRetryCount', traits: {"smithy.api#documentation" => "<p>The total number of times tasks from the step failed and were retried.</p>"}))
    GetStepResponse.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status with which the job started.</p>"}))
    GetStepResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetStepResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetStepResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetStepResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetStepResponse.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    GetStepResponse.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    GetStepResponse.add_member(:dependency_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyCounts, location_name: 'dependencyCounts', traits: {"smithy.api#documentation" => "<p>The number of dependencies in the step.</p>"}))
    GetStepResponse.add_member(:required_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: StepRequiredCapabilities, location_name: 'requiredCapabilities', traits: {"smithy.api#documentation" => "<p>The required capabilities of the step.</p>"}))
    GetStepResponse.add_member(:parameter_space, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterSpace, location_name: 'parameterSpace', traits: {"smithy.api#documentation" => "<p>A list of step parameters and the combination expression for the step.</p>"}))
    GetStepResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: StepDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the step.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    GetStepResponse.type = Types::GetStepResponse
    GetStorageProfileForQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the queue in storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileForQueueRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID the queue in the storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileForQueueRequest.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID for the storage profile in the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileForQueueRequest.type = Types::GetStorageProfileForQueueRequest
    GetStorageProfileForQueueResponse.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID.</p>", "smithy.api#required" => {}}))
    GetStorageProfileForQueueResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the storage profile connected to a queue.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetStorageProfileForQueueResponse.add_member(:os_family, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, location_name: 'osFamily', traits: {"smithy.api#documentation" => "<p>The operating system of the storage profile in the queue.</p>", "smithy.api#required" => {}}))
    GetStorageProfileForQueueResponse.add_member(:file_system_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: 'fileSystemLocations', traits: {"smithy.api#documentation" => "<p>The location of the files for the storage profile within the queue.</p>"}))
    GetStorageProfileForQueueResponse.type = Types::GetStorageProfileForQueueResponse
    GetStorageProfileRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileRequest.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileRequest.type = Types::GetStorageProfileRequest
    GetStorageProfileResponse.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID.</p>", "smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the storage profile.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:os_family, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, location_name: 'osFamily', traits: {"smithy.api#documentation" => "<p>The operating system (OS) for the storage profile.</p>", "smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetStorageProfileResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetStorageProfileResponse.add_member(:file_system_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: 'fileSystemLocations', traits: {"smithy.api#documentation" => "<p>The location of the files for the storage profile.</p>"}))
    GetStorageProfileResponse.type = Types::GetStorageProfileResponse
    GetTaskRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the farm connected to the task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue connected to the task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID of the job connected to the task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID for the step connected to the task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.type = Types::GetTaskRequest
    GetTaskResponse.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>", "smithy.api#required" => {}}))
    GetTaskResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetTaskResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetTaskResponse.add_member(:run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'runStatus', traits: {"smithy.api#documentation" => "<p>The run status for the task.</p>", "smithy.api#required" => {}}))
    GetTaskResponse.add_member(:target_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTargetRunStatus, location_name: 'targetRunStatus', traits: {"smithy.api#documentation" => "<p>The run status with which to start the task.</p>"}))
    GetTaskResponse.add_member(:failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRetryCount, location_name: 'failureRetryCount', traits: {"smithy.api#documentation" => "<p>The number of times that the task failed and was retried.</p>"}))
    GetTaskResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the task.</p>"}))
    GetTaskResponse.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    GetTaskResponse.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    GetTaskResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetTaskResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetTaskResponse.add_member(:latest_session_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId, location_name: 'latestSessionActionId', traits: {"smithy.api#documentation" => "<p>The latest session ID for the task.</p>"}))
    GetTaskResponse.type = Types::GetTaskResponse
    GetWorkerRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the worker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkerRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the worker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkerRequest.type = Types::GetWorkerRequest
    GetWorkerResponse.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID.</p>", "smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:host_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: 'hostProperties', traits: {"smithy.api#documentation" => "<p>The host properties for the worker.</p>"}))
    GetWorkerResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the worker.</p>", "smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'log', traits: {"smithy.api#documentation" => "<p>The logs for the associated worker.</p>"}))
    GetWorkerResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    GetWorkerResponse.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    GetWorkerResponse.type = Types::GetWorkerResponse
    HostConfiguration.add_member(:script_body, Smithy::Schema::Shapes::ShapeRef.new(shape: HostConfigurationScript, location_name: 'scriptBody', traits: {"smithy.api#documentation" => "<p>The text of the script that runs as a worker is starting up that you can use to provide\n         additional configuration for workers in your fleet. The script runs after a worker enters\n         the <code>STARTING</code> state and before the worker processes tasks.</p>\n         <p>For more information about using the script, see <a href=\"https://docs.aws.amazon.com/deadline-cloud/latest/developerguide/smf-admin.html\">Run scripts as an\n            administrator to configure workers</a> in the <i>Deadline Cloud Developer\n            Guide</i>. </p>\n         <important>\n            <p>The script runs as an administrative user (<code>sudo root</code> on Linux, as an\n            Administrator on Windows). </p>\n         </important>", "smithy.api#required" => {}}))
    HostConfiguration.add_member(:script_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HostConfigurationScriptTimeoutSeconds, location_name: 'scriptTimeoutSeconds', traits: {"smithy.api#default" => 300, "smithy.api#documentation" => "<p>The maximum time that the host configuration can run. If the timeout expires, the worker\n         enters the <code>NOT RESPONDING</code> state and shuts down. You are charged for the time\n         that the worker is running the host configuration script.</p>\n         <note>\n            <p>You should configure your fleet for a maximum of one worker while testing your host\n            configuration script to avoid starting additional workers.</p>\n         </note>\n         <p>The default is 300 seconds (5 minutes).</p>"}))
    HostConfiguration.type = Types::HostConfiguration
    HostPropertiesRequest.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: 'ipAddresses', traits: {"smithy.api#documentation" => "<p>The IP address of the host.</p>"}))
    HostPropertiesRequest.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName', traits: {"smithy.api#documentation" => "<p>The host name.</p>"}))
    HostPropertiesRequest.type = Types::HostPropertiesRequest
    HostPropertiesResponse.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: 'ipAddresses', traits: {"smithy.api#documentation" => "<p>The IP address of the host.</p>"}))
    HostPropertiesResponse.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName', traits: {"smithy.api#documentation" => "<p>The host name.</p>"}))
    HostPropertiesResponse.add_member(:ec2_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ec2InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the host EC2 instance.</p>"}))
    HostPropertiesResponse.add_member(:ec2_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'ec2InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type of the host EC2 instance.</p>"}))
    HostPropertiesResponse.type = Types::HostPropertiesResponse
    InstanceTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType)
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerErrorException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds a client should wait before retrying the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    IpAddresses.add_member(:ip_v4_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4Addresses, location_name: 'ipV4Addresses', traits: {"smithy.api#documentation" => "<p>The IpV4 address of the network.</p>"}))
    IpAddresses.add_member(:ip_v6_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpV6Addresses, location_name: 'ipV6Addresses', traits: {"smithy.api#documentation" => "<p>The IpV6 address for the network and node component.</p>"}))
    IpAddresses.type = Types::IpAddresses
    IpV4Addresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4Address)
    IpV6Addresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpV6Address)
    JobAttachmentDetailsEntity.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobAttachmentDetailsEntity.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>The job attachments.</p>", "smithy.api#required" => {}}))
    JobAttachmentDetailsEntity.type = Types::JobAttachmentDetailsEntity
    JobAttachmentDetailsError.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobAttachmentDetailsError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntityErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    JobAttachmentDetailsError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message detailing the error's cause.</p>", "smithy.api#required" => {}}))
    JobAttachmentDetailsError.type = Types::JobAttachmentDetailsError
    JobAttachmentDetailsIdentifiers.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobAttachmentDetailsIdentifiers.type = Types::JobAttachmentDetailsIdentifiers
    JobAttachmentSettings.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 's3BucketName', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name.</p>", "smithy.api#required" => {}}))
    JobAttachmentSettings.add_member(:root_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'rootPrefix', traits: {"smithy.api#documentation" => "<p>The root prefix.</p>", "smithy.api#required" => {}}))
    JobAttachmentSettings.type = Types::JobAttachmentSettings
    JobAttachmentsFileSystem.add_member(:copied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPIED', traits: {"smithy.api#enumValue" => "COPIED"}))
    JobAttachmentsFileSystem.add_member(:virtual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIRTUAL', traits: {"smithy.api#enumValue" => "VIRTUAL"}))
    JobDetailsEntity.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobDetailsEntity.add_member(:job_attachment_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: 'jobAttachmentSettings', traits: {"smithy.api#documentation" => "<p>The job attachment settings.</p>"}))
    JobDetailsEntity.add_member(:job_run_as_user, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: 'jobRunAsUser', traits: {"smithy.api#documentation" => "<p>The user name and group that the job uses when run.</p>"}))
    JobDetailsEntity.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The log group name.</p>", "smithy.api#required" => {}}))
    JobDetailsEntity.add_member(:queue_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'queueRoleArn', traits: {"smithy.api#documentation" => "<p>The queue role ARN.</p>"}))
    JobDetailsEntity.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters.</p>"}))
    JobDetailsEntity.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version.</p>", "smithy.api#required" => {}}))
    JobDetailsEntity.add_member(:path_mapping_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: PathMappingRules, location_name: 'pathMappingRules', traits: {"smithy.api#documentation" => "<p>The path mapping rules.</p>"}))
    JobDetailsEntity.type = Types::JobDetailsEntity
    JobDetailsError.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobDetailsError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntityErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    JobDetailsError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message detailing the error's cause.</p>", "smithy.api#required" => {}}))
    JobDetailsError.type = Types::JobDetailsError
    JobDetailsIdentifiers.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobDetailsIdentifiers.type = Types::JobDetailsIdentifiers
    JobEntity.add_member(:job_details, Types::JobEntity::JobDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetailsEntity, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>The job details.</p>"}))
    JobEntity.add_member(:job_attachment_details, Types::JobEntity::JobAttachmentDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentDetailsEntity, location_name: 'jobAttachmentDetails', traits: {"smithy.api#documentation" => "<p>The job attachment details.</p>"}))
    JobEntity.add_member(:step_details, Types::JobEntity::StepDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: StepDetailsEntity, location_name: 'stepDetails', traits: {"smithy.api#documentation" => "<p>The step details.</p>"}))
    JobEntity.add_member(:environment_details, Types::JobEntity::EnvironmentDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDetailsEntity, location_name: 'environmentDetails', traits: {"smithy.api#documentation" => "<p>The environment details for the job entity.</p>"}))
    JobEntity.add_member(:unknown, Types::JobEntity::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    JobEntity.type = Types::JobEntity
    JobEntityErrorCode.add_member(:access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDeniedException', traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    JobEntityErrorCode.add_member(:internal_server_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServerException', traits: {"smithy.api#enumValue" => "InternalServerException"}))
    JobEntityErrorCode.add_member(:validation_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationException', traits: {"smithy.api#enumValue" => "ValidationException"}))
    JobEntityErrorCode.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    JobEntityErrorCode.add_member(:max_payload_size_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MaxPayloadSizeExceeded', traits: {"smithy.api#enumValue" => "MaxPayloadSizeExceeded"}))
    JobEntityErrorCode.add_member(:conflict_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConflictException', traits: {"smithy.api#enumValue" => "ConflictException"}))
    JobEntityIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntityIdentifiersUnion)
    JobEntityIdentifiersUnion.add_member(:job_details, Types::JobEntityIdentifiersUnion::JobDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetailsIdentifiers, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>The job details.</p>"}))
    JobEntityIdentifiersUnion.add_member(:job_attachment_details, Types::JobEntityIdentifiersUnion::JobAttachmentDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentDetailsIdentifiers, location_name: 'jobAttachmentDetails', traits: {"smithy.api#documentation" => "<p>The job attachment details.</p>"}))
    JobEntityIdentifiersUnion.add_member(:step_details, Types::JobEntityIdentifiersUnion::StepDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: StepDetailsIdentifiers, location_name: 'stepDetails', traits: {"smithy.api#documentation" => "<p>The step details.</p>"}))
    JobEntityIdentifiersUnion.add_member(:environment_details, Types::JobEntityIdentifiersUnion::EnvironmentDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDetailsIdentifiers, location_name: 'environmentDetails', traits: {"smithy.api#documentation" => "<p>The environment details.</p>"}))
    JobEntityIdentifiersUnion.add_member(:unknown, Types::JobEntityIdentifiersUnion::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    JobEntityIdentifiersUnion.type = Types::JobEntityIdentifiersUnion
    JobLifecycleStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    JobLifecycleStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    JobLifecycleStatus.add_member(:create_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    JobLifecycleStatus.add_member(:upload_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPLOAD_IN_PROGRESS"}))
    JobLifecycleStatus.add_member(:upload_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_FAILED', traits: {"smithy.api#enumValue" => "UPLOAD_FAILED"}))
    JobLifecycleStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    JobLifecycleStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    JobLifecycleStatus.add_member(:update_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_SUCCEEDED', traits: {"smithy.api#enumValue" => "UPDATE_SUCCEEDED"}))
    JobLifecycleStatus.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    JobMember.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    JobMember.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#required" => {}}))
    JobMember.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobMember.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal ID of the job member.</p>", "smithy.api#required" => {}}))
    JobMember.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The principal type of the job member.</p>", "smithy.api#required" => {}}))
    JobMember.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The identity store ID.</p>", "smithy.api#required" => {}}))
    JobMember.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The job member's membership level.</p>", "smithy.api#required" => {}}))
    JobMember.type = Types::JobMember
    JobMembers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobMember)
    JobParameter.add_member(:int, Types::JobParameter::Int, Smithy::Schema::Shapes::ShapeRef.new(shape: IntString, location_name: 'int', traits: {"smithy.api#documentation" => "<p>A signed integer represented as a string.</p>"}))
    JobParameter.add_member(:float, Types::JobParameter::Float, Smithy::Schema::Shapes::ShapeRef.new(shape: FloatString, location_name: 'float', traits: {"smithy.api#documentation" => "<p>A double precision IEEE-754 floating point number represented as a string.</p>"}))
    JobParameter.add_member(:string, Types::JobParameter::String, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterString, location_name: 'string', traits: {"smithy.api#documentation" => "<p>A UTF-8 string.</p>"}))
    JobParameter.add_member(:path, Types::JobParameter::Path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathString, location_name: 'path', traits: {"smithy.api#documentation" => "<p>A file system path represented as a string.</p>"}))
    JobParameter.add_member(:unknown, Types::JobParameter::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    JobParameter.type = Types::JobParameter
    JobParameterDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameterDefinition)
    JobParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    JobParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameter)
    JobRunAsUser.add_member(:posix, Smithy::Schema::Shapes::ShapeRef.new(shape: PosixUser, location_name: 'posix', traits: {"smithy.api#documentation" => "<p>The user and group that the jobs in the queue run as.</p>"}))
    JobRunAsUser.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: WindowsUser, location_name: 'windows', traits: {"smithy.api#documentation" => "<p>Identifies a Microsoft Windows user.</p>"}))
    JobRunAsUser.add_member(:run_as, Smithy::Schema::Shapes::ShapeRef.new(shape: RunAs, location_name: 'runAs', traits: {"smithy.api#documentation" => "<p>Specifies whether the job should run using the queue's system user or if the job should\n         run using the worker agent system user.</p>", "smithy.api#required" => {}}))
    JobRunAsUser.type = Types::JobRunAsUser
    JobSearchSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobSearchSummary)
    JobSearchSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>"}))
    JobSearchSummary.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>"}))
    JobSearchSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The job name.</p>"}))
    JobSearchSummary.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status.</p>"}))
    JobSearchSummary.add_member(:lifecycle_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lifecycleStatusMessage', traits: {"smithy.api#documentation" => "<p>The life cycle status message.</p>"}))
    JobSearchSummary.add_member(:task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'taskRunStatus', traits: {"smithy.api#documentation" => "<p>The task run status for the job.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code>–pending and waiting for resources.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code>–ready to be processed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ASSIGNED</code>–assigned and will run next on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULED</code>–scheduled to be run on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERRUPTING</code>–being interrupted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code>–running on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code>–the task is suspended.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELED</code>–the task has been canceled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code>–the task has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCEEDED</code>–the task has succeeded.</p>\n            </li>\n         </ul>"}))
    JobSearchSummary.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status to start with on the job.</p>"}))
    JobSearchSummary.add_member(:task_run_status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: 'taskRunStatusCounts', traits: {"smithy.api#documentation" => "<p>The number of tasks running on the job.</p>"}))
    JobSearchSummary.add_member(:task_failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: 'taskFailureRetryCount', traits: {"smithy.api#documentation" => "<p>The total number of times tasks from the job failed and were retried.</p>"}))
    JobSearchSummary.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The job priority.</p>"}))
    JobSearchSummary.add_member(:max_failed_tasks_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: 'maxFailedTasksCount', traits: {"smithy.api#documentation" => "<p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>"}))
    JobSearchSummary.add_member(:max_retries_per_task, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: 'maxRetriesPerTask', traits: {"smithy.api#documentation" => "<p>The maximum number of retries for a job.</p>"}))
    JobSearchSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>"}))
    JobSearchSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>"}))
    JobSearchSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    JobSearchSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    JobSearchSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    JobSearchSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    JobSearchSummary.add_member(:job_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameters, location_name: 'jobParameters', traits: {"smithy.api#documentation" => "<p>The job parameters.</p>"}))
    JobSearchSummary.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of worker hosts that can concurrently process a job. When the\n            <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the\n         job, even if the fleets assigned to the job's queue has available workers.</p>\n         <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no\n         maximum number of workers.</p>\n         <p>If you don't specify the <code>maxWorkerCount</code>, the default is -1.</p>"}))
    JobSearchSummary.add_member(:source_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'sourceJobId', traits: {"smithy.api#documentation" => "<p>The job ID for the source job.</p>"}))
    JobSearchSummary.type = Types::JobSearchSummary
    JobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary)
    JobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The job name.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:lifecycle_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lifecycleStatusMessage', traits: {"smithy.api#documentation" => "<p>The life cycle status message.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The job priority.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    JobSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    JobSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    JobSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    JobSummary.add_member(:task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'taskRunStatus', traits: {"smithy.api#documentation" => "<p>The task run status for the job.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code>–pending and waiting for resources.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code>–ready to be processed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ASSIGNED</code>–assigned and will run next on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULED</code>–scheduled to be run on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERRUPTING</code>–being interrupted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code>–running on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code>–the task is suspended.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELED</code>–the task has been canceled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code>–the task has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCEEDED</code>–the task has succeeded.</p>\n            </li>\n         </ul>"}))
    JobSummary.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status to start with on the job.</p>"}))
    JobSummary.add_member(:task_run_status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: 'taskRunStatusCounts', traits: {"smithy.api#documentation" => "<p>The number of tasks running on the job.</p>"}))
    JobSummary.add_member(:task_failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: 'taskFailureRetryCount', traits: {"smithy.api#documentation" => "<p>The total number of times tasks from the job failed and were retried.</p>"}))
    JobSummary.add_member(:max_failed_tasks_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: 'maxFailedTasksCount', traits: {"smithy.api#documentation" => "<p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>"}))
    JobSummary.add_member(:max_retries_per_task, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: 'maxRetriesPerTask', traits: {"smithy.api#documentation" => "<p>The maximum number of retries for a job.</p>"}))
    JobSummary.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of worker hosts that can concurrently process a job. When the\n            <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the\n         job, even if the fleets assigned to the job's queue has available workers.</p>\n         <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no\n         maximum number of workers.</p>\n         <p>If you don't specify the <code>maxWorkerCount</code>, the default is -1.</p>"}))
    JobSummary.add_member(:source_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'sourceJobId', traits: {"smithy.api#documentation" => "<p>The job ID for the source job.</p>"}))
    JobSummary.type = Types::JobSummary
    JobTargetTaskRunStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    JobTargetTaskRunStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobTargetTaskRunStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobTargetTaskRunStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    JobTargetTaskRunStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    JobTargetTaskRunStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    JobTemplateType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    JobTemplateType.add_member(:yaml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YAML', traits: {"smithy.api#enumValue" => "YAML"}))
    LicenseEndpointStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    LicenseEndpointStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    LicenseEndpointStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    LicenseEndpointStatus.add_member(:not_ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_READY', traits: {"smithy.api#enumValue" => "NOT_READY"}))
    LicenseEndpointSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointSummary)
    LicenseEndpointSummary.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The license endpoint ID.</p>"}))
    LicenseEndpointSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the license endpoint.</p>"}))
    LicenseEndpointSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the license endpoint.</p>"}))
    LicenseEndpointSummary.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VCP(virtual private cloud) ID associated with the license endpoint.</p>"}))
    LicenseEndpointSummary.type = Types::LicenseEndpointSummary
    LimitSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LimitSummary)
    LimitSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the limit used in lists to identify the limit.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    LimitSummary.add_member(:amount_requirement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmountRequirementName, location_name: 'amountRequirementName', traits: {"smithy.api#documentation" => "<p>The value that you specify as the <code>name</code> in the <code>amounts</code> field of\n         the <code>hostRequirements</code> in a step of a job template to declare the limit\n         requirement.</p>", "smithy.api#required" => {}}))
    LimitSummary.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCount, location_name: 'maxCount', traits: {"smithy.api#documentation" => "<p>The maximum number of resources constrained by this limit. When all of the resources are\n         in use, steps that require the limit won't be scheduled until the resource is\n         available.</p>\n         <p>The <code>maxValue</code> must not be 0. If the value is -1, there is no restriction on\n         the number of resources that can be acquired for this limit.</p>", "smithy.api#required" => {}}))
    LimitSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the limit was created.</p>", "smithy.api#required" => {}}))
    LimitSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that created the limit.</p>", "smithy.api#required" => {}}))
    LimitSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the limit was last updated.</p>"}))
    LimitSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that last updated the limit.</p>"}))
    LimitSummary.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the limit.</p>", "smithy.api#required" => {}}))
    LimitSummary.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit.</p>", "smithy.api#required" => {}}))
    LimitSummary.add_member(:current_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'currentCount', traits: {"smithy.api#documentation" => "<p>The number of resources from the limit that are being used by jobs. The result is\n         delayed and may not be the count at the time that you called the operation.</p>", "smithy.api#required" => {}}))
    LimitSummary.type = Types::LimitSummary
    ListAttributeCapabilityValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeCapabilityValue)
    ListAvailableMeteredProductsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAvailableMeteredProductsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAvailableMeteredProductsRequest.type = Types::ListAvailableMeteredProductsRequest
    ListAvailableMeteredProductsResponse.add_member(:metered_products, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteredProductSummaryList, location_name: 'meteredProducts', traits: {"smithy.api#documentation" => "<p>The metered products.</p>", "smithy.api#required" => {}}))
    ListAvailableMeteredProductsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListAvailableMeteredProductsResponse.type = Types::ListAvailableMeteredProductsResponse
    ListBudgetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListBudgetsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID associated with the budgets.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBudgetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListBudgetsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status to list for the budgets.</p>", "smithy.api#httpQuery" => "status"}))
    ListBudgetsRequest.type = Types::ListBudgetsRequest
    ListBudgetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListBudgetsResponse.add_member(:budgets, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetSummaries, location_name: 'budgets', traits: {"smithy.api#documentation" => "<p>The budgets to include on the list.</p>", "smithy.api#required" => {}}))
    ListBudgetsResponse.type = Types::ListBudgetsResponse
    ListFarmMembersRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFarmMembersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFarmMembersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFarmMembersRequest.type = Types::ListFarmMembersRequest
    ListFarmMembersResponse.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmMembers, location_name: 'members', traits: {"smithy.api#documentation" => "<p>The members on the list.</p>", "smithy.api#required" => {}}))
    ListFarmMembersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListFarmMembersResponse.type = Types::ListFarmMembersResponse
    ListFarmsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFarmsRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal ID of the member to list on the farm.</p>", "smithy.api#httpQuery" => "principalId"}))
    ListFarmsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFarmsRequest.type = Types::ListFarmsRequest
    ListFarmsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListFarmsResponse.add_member(:farms, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmSummaries, location_name: 'farms', traits: {"smithy.api#documentation" => "<p>Farms on the list.</p>", "smithy.api#required" => {}}))
    ListFarmsResponse.type = Types::ListFarmsResponse
    ListFleetMembersRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the fleet.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFleetMembersRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFleetMembersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFleetMembersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFleetMembersRequest.type = Types::ListFleetMembersRequest
    ListFleetMembersResponse.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetMembers, location_name: 'members', traits: {"smithy.api#documentation" => "<p>The members on the list.</p>", "smithy.api#required" => {}}))
    ListFleetMembersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListFleetMembersResponse.type = Types::ListFleetMembersResponse
    ListFleetsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the fleets.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFleetsRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal ID of the members to include in the fleet.</p>", "smithy.api#httpQuery" => "principalId"}))
    ListFleetsRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display names of a list of fleets.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#httpQuery" => "displayName"}))
    ListFleetsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the fleet.</p>", "smithy.api#httpQuery" => "status"}))
    ListFleetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFleetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFleetsRequest.type = Types::ListFleetsRequest
    ListFleetsResponse.add_member(:fleets, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetSummaries, location_name: 'fleets', traits: {"smithy.api#documentation" => "<p>The fleets on the list.</p>", "smithy.api#required" => {}}))
    ListFleetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListFleetsResponse.type = Types::ListFleetsResponse
    ListJobMembersRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the job to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobMembersRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobMembersRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobMembersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobMembersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobMembersRequest.type = Types::ListJobMembersRequest
    ListJobMembersResponse.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: JobMembers, location_name: 'members', traits: {"smithy.api#documentation" => "<p>The members on the list.</p>", "smithy.api#required" => {}}))
    ListJobMembersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListJobMembersResponse.type = Types::ListJobMembersResponse
    ListJobParameterDefinitionsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the job to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobParameterDefinitionsRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobParameterDefinitionsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobParameterDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobParameterDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobParameterDefinitionsRequest.type = Types::ListJobParameterDefinitionsRequest
    ListJobParameterDefinitionsResponse.add_member(:job_parameter_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameterDefinitions, location_name: 'jobParameterDefinitions', traits: {"smithy.api#documentation" => "<p>Lists parameter definitions of a job.</p>", "smithy.api#required" => {}}))
    ListJobParameterDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListJobParameterDefinitionsResponse.type = Types::ListJobParameterDefinitionsResponse
    ListJobsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the jobs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal ID of the members on the jobs.</p>", "smithy.api#httpQuery" => "principalId"}))
    ListJobsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResponse.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummaries, location_name: 'jobs', traits: {"smithy.api#documentation" => "<p>The jobs on the list.</p>", "smithy.api#required" => {}}))
    ListJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListJobsResponse.type = Types::ListJobsResponse
    ListLicenseEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListLicenseEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListLicenseEndpointsRequest.type = Types::ListLicenseEndpointsRequest
    ListLicenseEndpointsResponse.add_member(:license_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointSummaries, location_name: 'licenseEndpoints', traits: {"smithy.api#documentation" => "<p>The license endpoints.</p>", "smithy.api#required" => {}}))
    ListLicenseEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListLicenseEndpointsResponse.type = Types::ListLicenseEndpointsResponse
    ListLimitsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the limits.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLimitsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListLimitsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of limits to return in each page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListLimitsRequest.type = Types::ListLimitsRequest
    ListLimitsResponse.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitSummaries, location_name: 'limits', traits: {"smithy.api#documentation" => "<p>A list of limits that the farm contains.</p>", "smithy.api#required" => {}}))
    ListLimitsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListLimitsResponse.type = Types::ListLimitsResponse
    ListMeteredProductsRequest.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The license endpoint ID to include on the list of metered products.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMeteredProductsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMeteredProductsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMeteredProductsRequest.type = Types::ListMeteredProductsRequest
    ListMeteredProductsResponse.add_member(:metered_products, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteredProductSummaryList, location_name: 'meteredProducts', traits: {"smithy.api#documentation" => "<p>The metered products to list.</p>", "smithy.api#required" => {}}))
    ListMeteredProductsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListMeteredProductsResponse.type = Types::ListMeteredProductsResponse
    ListMonitorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMonitorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMonitorsRequest.type = Types::ListMonitorsRequest
    ListMonitorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListMonitorsResponse.add_member(:monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorSummaries, location_name: 'monitors', traits: {"smithy.api#documentation" => "<p>A list of <code>MonitorSummary</code> objects that describe your monitors in the\n         Deadline Cloud.</p>", "smithy.api#required" => {}}))
    ListMonitorsResponse.type = Types::ListMonitorsResponse
    ListQueueEnvironmentsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the queue environment list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueEnvironmentsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue environment list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueEnvironmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListQueueEnvironmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListQueueEnvironmentsRequest.type = Types::ListQueueEnvironmentsRequest
    ListQueueEnvironmentsResponse.add_member(:environments, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentSummaries, location_name: 'environments', traits: {"smithy.api#documentation" => "<p>The environments to include in the queue environments list.</p>", "smithy.api#required" => {}}))
    ListQueueEnvironmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListQueueEnvironmentsResponse.type = Types::ListQueueEnvironmentsResponse
    ListQueueFleetAssociationsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the queue-fleet association list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueFleetAssociationsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue-fleet association list.</p>", "smithy.api#httpQuery" => "queueId"}))
    ListQueueFleetAssociationsRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID for the queue-fleet association list.</p>", "smithy.api#httpQuery" => "fleetId"}))
    ListQueueFleetAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListQueueFleetAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListQueueFleetAssociationsRequest.type = Types::ListQueueFleetAssociationsRequest
    ListQueueFleetAssociationsResponse.add_member(:queue_fleet_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueFleetAssociationSummaries, location_name: 'queueFleetAssociations', traits: {"smithy.api#documentation" => "<p>The queue-fleet associations on the list.</p>", "smithy.api#required" => {}}))
    ListQueueFleetAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListQueueFleetAssociationsResponse.type = Types::ListQueueFleetAssociationsResponse
    ListQueueLimitAssociationsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the limits and associations.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueLimitAssociationsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>Specifies that the operation should return only the queue limit associations for the\n         specified queue. If you specify both the <code>queueId</code> and the <code>limitId</code>,\n         only the specified limit is returned if it exists.</p>", "smithy.api#httpQuery" => "queueId"}))
    ListQueueLimitAssociationsRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>Specifies that the operation should return only the queue limit associations for the\n         specified limit. If you specify both the <code>queueId</code> and the <code>limitId</code>,\n         only the specified limit is returned if it exists.</p>", "smithy.api#httpQuery" => "limitId"}))
    ListQueueLimitAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListQueueLimitAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of associations to return in each page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListQueueLimitAssociationsRequest.type = Types::ListQueueLimitAssociationsRequest
    ListQueueLimitAssociationsResponse.add_member(:queue_limit_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueLimitAssociationSummaries, location_name: 'queueLimitAssociations', traits: {"smithy.api#documentation" => "<p>A list of associations between limits and queues in the farm specified in the\n         request.</p>", "smithy.api#required" => {}}))
    ListQueueLimitAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListQueueLimitAssociationsResponse.type = Types::ListQueueLimitAssociationsResponse
    ListQueueMembersRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueMembersRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueMembersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListQueueMembersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListQueueMembersRequest.type = Types::ListQueueMembersRequest
    ListQueueMembersResponse.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueMemberList, location_name: 'members', traits: {"smithy.api#documentation" => "<p>The members on the list.</p>", "smithy.api#required" => {}}))
    ListQueueMembersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListQueueMembersResponse.type = Types::ListQueueMembersResponse
    ListQueuesRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueuesRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal IDs to include in the list of queues.</p>", "smithy.api#httpQuery" => "principalId"}))
    ListQueuesRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the queues listed.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code>–The queues are active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULING</code>–The queues are scheduling.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULING_BLOCKED</code>–The queue scheduling is blocked for these\n               queues.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "status"}))
    ListQueuesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListQueuesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListQueuesRequest.type = Types::ListQueuesRequest
    ListQueuesResponse.add_member(:queues, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueSummaries, location_name: 'queues', traits: {"smithy.api#documentation" => "<p>The queues on the list.</p>", "smithy.api#required" => {}}))
    ListQueuesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListQueuesResponse.type = Types::ListQueuesResponse
    ListSessionActionsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the session actions list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionActionsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the session actions list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionActionsRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the session actions list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionActionsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID to include on the sessions action list.</p>", "smithy.api#httpQuery" => "sessionId"}))
    ListSessionActionsRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID for the session actions list.</p>", "smithy.api#httpQuery" => "taskId"}))
    ListSessionActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSessionActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSessionActionsRequest.type = Types::ListSessionActionsRequest
    ListSessionActionsResponse.add_member(:session_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionSummaries, location_name: 'sessionActions', traits: {"smithy.api#documentation" => "<p>The session actions.</p>", "smithy.api#required" => {}}))
    ListSessionActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListSessionActionsResponse.type = Types::ListSessionActionsResponse
    ListSessionsForWorkerRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsForWorkerRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsForWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsForWorkerRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSessionsForWorkerRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSessionsForWorkerRequest.type = Types::ListSessionsForWorkerRequest
    ListSessionsForWorkerResponse.add_member(:sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsForWorkerSummaries, location_name: 'sessions', traits: {"smithy.api#documentation" => "<p>The sessions in the response.</p>", "smithy.api#required" => {}}))
    ListSessionsForWorkerResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>"}))
    ListSessionsForWorkerResponse.type = Types::ListSessionsForWorkerResponse
    ListSessionsForWorkerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerSessionSummary)
    ListSessionsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the list of sessions.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the list of sessions</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the list of sessions.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummaries, location_name: 'sessions', traits: {"smithy.api#documentation" => "<p>The sessions on the list.</p>", "smithy.api#required" => {}}))
    ListSessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListStepConsumersRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the list of step consumers.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the step consumer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the step consumer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListStepConsumersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListStepConsumersRequest.type = Types::ListStepConsumersRequest
    ListStepConsumersResponse.add_member(:consumers, Smithy::Schema::Shapes::ShapeRef.new(shape: StepConsumers, location_name: 'consumers', traits: {"smithy.api#documentation" => "<p>The consumers on the list.</p>", "smithy.api#required" => {}}))
    ListStepConsumersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListStepConsumersResponse.type = Types::ListStepConsumersResponse
    ListStepDependenciesRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID for the step dependencies list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the step dependencies list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the step dependencies list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID to include on the list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListStepDependenciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListStepDependenciesRequest.type = Types::ListStepDependenciesRequest
    ListStepDependenciesResponse.add_member(:dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: StepDependencies, location_name: 'dependencies', traits: {"smithy.api#documentation" => "<p>The dependencies on the list.</p>", "smithy.api#required" => {}}))
    ListStepDependenciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListStepDependenciesResponse.type = Types::ListStepDependenciesResponse
    ListStepsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to include on the list of steps.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepsRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to include on the list of steps.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepsRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to include on the list of steps.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListStepsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListStepsRequest.type = Types::ListStepsRequest
    ListStepsResponse.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: StepSummaries, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>The steps on the list.</p>", "smithy.api#required" => {}}))
    ListStepsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListStepsResponse.type = Types::ListStepsResponse
    ListStorageProfilesForQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the queue's storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStorageProfilesForQueueRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStorageProfilesForQueueRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListStorageProfilesForQueueRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListStorageProfilesForQueueRequest.type = Types::ListStorageProfilesForQueueRequest
    ListStorageProfilesForQueueResponse.add_member(:storage_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileSummaries, location_name: 'storageProfiles', traits: {"smithy.api#documentation" => "<p>The storage profiles in the queue.</p>", "smithy.api#required" => {}}))
    ListStorageProfilesForQueueResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListStorageProfilesForQueueResponse.type = Types::ListStorageProfilesForQueueResponse
    ListStorageProfilesRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the storage profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStorageProfilesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListStorageProfilesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListStorageProfilesRequest.type = Types::ListStorageProfilesRequest
    ListStorageProfilesResponse.add_member(:storage_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileSummaries, location_name: 'storageProfiles', traits: {"smithy.api#documentation" => "<p>The storage profiles.</p>", "smithy.api#required" => {}}))
    ListStorageProfilesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListStorageProfilesResponse.type = Types::ListStorageProfilesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN to list tags for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTasksRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID connected to the tasks.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID connected to the tasks.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the tasks.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID for the tasks.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTasksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTasksRequest.type = Types::ListTasksRequest
    ListTasksResponse.add_member(:tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSummaries, location_name: 'tasks', traits: {"smithy.api#documentation" => "<p>Tasks for the job.</p>", "smithy.api#required" => {}}))
    ListTasksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListTasksResponse.type = Types::ListTasksResponse
    ListWorkersRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID connected to the workers.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkersRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID of the workers.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWorkersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListWorkersRequest.type = Types::ListWorkersRequest
    ListWorkersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>"}))
    ListWorkersResponse.add_member(:workers, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerSummaries, location_name: 'workers', traits: {"smithy.api#documentation" => "<p>The workers on the list.</p>", "smithy.api#required" => {}}))
    ListWorkersResponse.type = Types::ListWorkersResponse
    LogConfiguration.add_member(:log_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDriver, location_name: 'logDriver', traits: {"smithy.api#documentation" => "<p>The log drivers for worker related logs.</p>", "smithy.api#required" => {}}))
    LogConfiguration.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogOptions, location_name: 'options', traits: {"smithy.api#documentation" => "<p>The options for a log driver.</p>"}))
    LogConfiguration.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: LogParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the log configuration.</p>"}))
    LogConfiguration.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: LogError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The log configuration error details.</p>"}))
    LogConfiguration.type = Types::LogConfiguration
    LogOptions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LogOptions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LogParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LogParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LogicalOperator.add_member(:and, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AND', traits: {"smithy.api#enumValue" => "AND"}))
    LogicalOperator.add_member(:or, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OR', traits: {"smithy.api#enumValue" => "OR"}))
    ManifestProperties.add_member(:file_system_location_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationName, location_name: 'fileSystemLocationName', traits: {"smithy.api#documentation" => "<p>The file system location name.</p>"}))
    ManifestProperties.add_member(:root_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootPath', traits: {"smithy.api#documentation" => "<p>The file's root path.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    ManifestProperties.add_member(:root_path_format, Smithy::Schema::Shapes::ShapeRef.new(shape: PathFormat, location_name: 'rootPathFormat', traits: {"smithy.api#documentation" => "<p>The format of the root path.</p>", "smithy.api#required" => {}}))
    ManifestProperties.add_member(:output_relative_directories, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputRelativeDirectoriesList, location_name: 'outputRelativeDirectories', traits: {"smithy.api#documentation" => "<p>The file path relative to the directory.</p>"}))
    ManifestProperties.add_member(:input_manifest_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'inputManifestPath', traits: {"smithy.api#documentation" => "<p>The file path.</p>", "smithy.api#length" => {"min" => 1, "max" => 512}}))
    ManifestProperties.add_member(:input_manifest_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'inputManifestHash', traits: {"smithy.api#documentation" => "<p>The hash value of the file.</p>", "smithy.api#length" => {"min" => 1, "max" => 256}}))
    ManifestProperties.type = Types::ManifestProperties
    ManifestPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestProperties)
    MembershipLevel.add_member(:viewer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIEWER', traits: {"smithy.api#enumValue" => "VIEWER"}))
    MembershipLevel.add_member(:contributor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTRIBUTOR', traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    MembershipLevel.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OWNER', traits: {"smithy.api#enumValue" => "OWNER"}))
    MembershipLevel.add_member(:manager, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGER', traits: {"smithy.api#enumValue" => "MANAGER"}))
    MemoryMiBRange.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryAmountMiB, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The minimum amount of memory (in MiB).</p>", "smithy.api#required" => {}}))
    MemoryMiBRange.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryAmountMiB, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The maximum amount of memory (in MiB).</p>"}))
    MemoryMiBRange.type = Types::MemoryMiBRange
    MeteredProductSummary.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteredProductId, location_name: 'productId', traits: {"smithy.api#documentation" => "<p>The product ID.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "productId"}))
    MeteredProductSummary.add_member(:family, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'family', traits: {"smithy.api#documentation" => "<p>The family to which the metered product belongs.</p>", "smithy.api#required" => {}}))
    MeteredProductSummary.add_member(:vendor, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'vendor', traits: {"smithy.api#documentation" => "<p>The vendor.</p>", "smithy.api#required" => {}}))
    MeteredProductSummary.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port on which the metered product should run.</p>", "smithy.api#required" => {}}))
    MeteredProductSummary.type = Types::MeteredProductSummary
    MeteredProductSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MeteredProductSummary)
    MonitorSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorSummary)
    MonitorSummary.add_member(:monitor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorId, location_name: 'monitorId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the monitor.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the monitor that displays on the Deadline Cloud console.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:subdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdomain, location_name: 'subdomain', traits: {"smithy.api#documentation" => "<p>The subdomain used for the monitor URL. The full URL of the monitor is\n         subdomain.Region.deadlinecloud.amazonaws.com.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The complete URL of the monitor. The full URL of the monitor is\n         subdomain.Region.deadlinecloud.amazonaws.com.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role for the monitor. Users of the monitor use this role to\n         access Deadline Cloud resources.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'identityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center instance responsible for authenticating monitor users.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'identityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that the IAM Identity Center assigned to the monitor when it was created.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The UNIX timestamp of the date and time that the monitor was created.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user name of the person that created the monitor.</p>", "smithy.api#required" => {}}))
    MonitorSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The UNIX timestamp of the date and time that the monitor was last updated.</p>"}))
    MonitorSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user name of the person that last updated the monitor.</p>"}))
    MonitorSummary.type = Types::MonitorSummary
    OutputRelativeDirectoriesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ParameterFilterExpression.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the parameter to filter on.</p>", "smithy.api#required" => {}}))
    ParameterFilterExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The type of comparison to use to filter results.</p>", "smithy.api#required" => {}}))
    ParameterFilterExpression.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The parameter's value.</p>", "smithy.api#required" => {}}))
    ParameterFilterExpression.type = Types::ParameterFilterExpression
    ParameterSortExpression.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order for the parameter.</p>", "smithy.api#required" => {}}))
    ParameterSortExpression.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The parameter name to sort by.</p>", "smithy.api#required" => {}}))
    ParameterSortExpression.type = Types::ParameterSortExpression
    ParameterSpace.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: StepParameterList, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters to search for.</p>", "smithy.api#required" => {}}))
    ParameterSpace.add_member(:combination, Smithy::Schema::Shapes::ShapeRef.new(shape: CombinationExpression, location_name: 'combination', traits: {"smithy.api#documentation" => "<p>The combination expression to use in the search.</p>"}))
    ParameterSpace.type = Types::ParameterSpace
    PathFormat.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "windows"}))
    PathFormat.add_member(:posix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSIX', traits: {"smithy.api#enumValue" => "posix"}))
    PathMappingRule.add_member(:source_path_format, Smithy::Schema::Shapes::ShapeRef.new(shape: PathFormat, location_name: 'sourcePathFormat', traits: {"smithy.api#documentation" => "<p>The source path format.</p>", "smithy.api#required" => {}}))
    PathMappingRule.add_member(:source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourcePath', traits: {"smithy.api#documentation" => "<p>The source path.</p>", "smithy.api#required" => {}}))
    PathMappingRule.add_member(:destination_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'destinationPath', traits: {"smithy.api#documentation" => "<p>The destination path.</p>", "smithy.api#required" => {}}))
    PathMappingRule.type = Types::PathMappingRule
    PathMappingRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PathMappingRule)
    Period.add_member(:hourly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURLY', traits: {"smithy.api#enumValue" => "HOURLY"}))
    Period.add_member(:daily, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    Period.add_member(:weekly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "WEEKLY"}))
    Period.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    PosixUser.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'user', traits: {"smithy.api#documentation" => "<p>The name of the POSIX user.</p>", "smithy.api#length" => {"min" => 0, "max" => 31}, "smithy.api#pattern" => "^(?:[a-z][a-z0-9-]{0,30})?$", "smithy.api#required" => {}}))
    PosixUser.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'group', traits: {"smithy.api#documentation" => "<p>The name of the POSIX user's group.</p>", "smithy.api#length" => {"min" => 0, "max" => 31}, "smithy.api#pattern" => "^(?:[a-z][a-z0-9-]{0,30})?$", "smithy.api#required" => {}}))
    PosixUser.type = Types::PosixUser
    PutMeteredProductRequest.add_member(:license_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseEndpointId, location_name: 'licenseEndpointId', traits: {"smithy.api#documentation" => "<p>The license endpoint ID to add to the metered product.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMeteredProductRequest.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MeteredProductId, location_name: 'productId', traits: {"smithy.api#documentation" => "<p>The product ID to add to the metered product.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMeteredProductRequest.type = Types::PutMeteredProductRequest
    PutMeteredProductResponse.type = Types::PutMeteredProductResponse
    QueueBlockedReason.add_member(:no_budget_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_BUDGET_CONFIGURED', traits: {"smithy.api#enumValue" => "NO_BUDGET_CONFIGURED"}))
    QueueBlockedReason.add_member(:budget_threshold_reached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUDGET_THRESHOLD_REACHED', traits: {"smithy.api#enumValue" => "BUDGET_THRESHOLD_REACHED"}))
    QueueEnvironmentSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentSummary)
    QueueEnvironmentSummary.add_member(:queue_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentId, location_name: 'queueEnvironmentId', traits: {"smithy.api#documentation" => "<p>The queue environment ID.</p>", "smithy.api#required" => {}}))
    QueueEnvironmentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the queue environment.</p>", "smithy.api#required" => {}}))
    QueueEnvironmentSummary.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The queue environment's priority.</p>", "smithy.api#required" => {}}))
    QueueEnvironmentSummary.type = Types::QueueEnvironmentSummary
    QueueFleetAssociationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QueueFleetAssociationStatus.add_member(:stop_scheduling_and_complete_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_COMPLETE_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    QueueFleetAssociationStatus.add_member(:stop_scheduling_and_cancel_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_CANCEL_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    QueueFleetAssociationStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    QueueFleetAssociationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueueFleetAssociationSummary)
    QueueFleetAssociationSummary.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueFleetAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of task scheduling in the queue-fleet association.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code>–Association is active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOP_SCHEDULING_AND_COMPLETE_TASKS</code>–Association has stopped\n               scheduling new tasks and is completing current tasks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOP_SCHEDULING_AND_CANCEL_TASKS</code>–Association has stopped\n               scheduling new tasks and is canceling current tasks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPED</code>–Association has been stopped.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    QueueFleetAssociationSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    QueueFleetAssociationSummary.type = Types::QueueFleetAssociationSummary
    QueueIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId)
    QueueLimitAssociationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QueueLimitAssociationStatus.add_member(:stop_limit_usage_and_complete_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_LIMIT_USAGE_AND_COMPLETE_TASKS', traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS"}))
    QueueLimitAssociationStatus.add_member(:stop_limit_usage_and_cancel_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_LIMIT_USAGE_AND_CANCEL_TASKS', traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_CANCEL_TASKS"}))
    QueueLimitAssociationStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    QueueLimitAssociationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueueLimitAssociationSummary)
    QueueLimitAssociationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the association was created.</p>", "smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that created the association.</p>", "smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of the date and time that the association was last updated.</p>"}))
    QueueLimitAssociationSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user identifier of the person that updated the association.</p>"}))
    QueueLimitAssociationSummary.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the queue in the association.</p>", "smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit in the association.</p>", "smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueLimitAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of task scheduling in the queue-limit association.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - Association is active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOP_LIMIT_USAGE_AND_COMPLETE_TASKS</code> - Association has stopped\n               scheduling new tasks and is completing current tasks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOP_LIMIT_USAGE_AND_CANCEL_TASKS</code> - Association has stopped\n               scheduling new tasks and is canceling current tasks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPED</code> - Association has been stopped.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    QueueLimitAssociationSummary.type = Types::QueueLimitAssociationSummary
    QueueMember.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    QueueMember.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#required" => {}}))
    QueueMember.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterPrincipalId, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal ID of the queue member.</p>", "smithy.api#required" => {}}))
    QueueMember.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeadlinePrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The principal type of the queue member.</p>", "smithy.api#required" => {}}))
    QueueMember.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The identity store ID.</p>", "smithy.api#required" => {}}))
    QueueMember.add_member(:membership_level, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipLevel, location_name: 'membershipLevel', traits: {"smithy.api#documentation" => "<p>The queue member's membership level.</p>", "smithy.api#required" => {}}))
    QueueMember.type = Types::QueueMember
    QueueMemberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueueMember)
    QueueStatus.add_member(:idle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    QueueStatus.add_member(:scheduling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULING', traits: {"smithy.api#enumValue" => "SCHEDULING"}))
    QueueStatus.add_member(:scheduling_blocked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULING_BLOCKED', traits: {"smithy.api#enumValue" => "SCHEDULING_BLOCKED"}))
    QueueSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueueSummary)
    QueueSummary.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the queue summary to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>That status of the queue.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:default_budget_action, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, location_name: 'defaultBudgetAction', traits: {"smithy.api#documentation" => "<p>The default action taken on a queue summary if a budget wasn't configured.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:blocked_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueBlockedReason, location_name: 'blockedReason', traits: {"smithy.api#documentation" => "<p>The reason the queue is blocked, if applicable.</p>"}))
    QueueSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    QueueSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    QueueSummary.type = Types::QueueSummary
    RequiredFileSystemLocationNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationName)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource that couldn't be found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that couldn't be found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContext, location_name: 'context', traits: {"smithy.api#documentation" => "<p>Information about the resources in use when the exception was thrown.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseBudgetAction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The action taken on the budget once scheduling stops.</p>", "smithy.api#required" => {}}))
    ResponseBudgetAction.add_member(:threshold_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdPercentage, location_name: 'thresholdPercentage', traits: {"smithy.api#documentation" => "<p>The percentage threshold for the budget.</p>", "smithy.api#required" => {}}))
    ResponseBudgetAction.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The budget action description.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    ResponseBudgetAction.type = Types::ResponseBudgetAction
    ResponseBudgetActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseBudgetAction)
    RunAs.add_member(:queue_configured_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUE_CONFIGURED_USER', traits: {"smithy.api#enumValue" => "QUEUE_CONFIGURED_USER"}))
    RunAs.add_member(:worker_agent_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKER_AGENT_USER', traits: {"smithy.api#enumValue" => "WORKER_AGENT_USER"}))
    S3Location.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The Amazon S3 object key that uniquely identifies the Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    SearchFilterExpression.add_member(:date_time_filter, Types::SearchFilterExpression::DateTimeFilter, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeFilterExpression, location_name: 'dateTimeFilter', traits: {"smithy.api#documentation" => "<p>Filters based on date and time.</p>"}))
    SearchFilterExpression.add_member(:parameter_filter, Types::SearchFilterExpression::ParameterFilter, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterFilterExpression, location_name: 'parameterFilter', traits: {"smithy.api#documentation" => "<p>Filters by parameter.</p>"}))
    SearchFilterExpression.add_member(:search_term_filter, Types::SearchFilterExpression::SearchTermFilter, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchTermFilterExpression, location_name: 'searchTermFilter', traits: {"smithy.api#documentation" => "<p>Filters by a specified search term.</p>"}))
    SearchFilterExpression.add_member(:string_filter, Types::SearchFilterExpression::StringFilter, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilterExpression, location_name: 'stringFilter', traits: {"smithy.api#documentation" => "<p>Filters by a string.</p>"}))
    SearchFilterExpression.add_member(:group_filter, Types::SearchFilterExpression::GroupFilter, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: 'groupFilter', traits: {"smithy.api#documentation" => "<p>Filters by group.</p>"}))
    SearchFilterExpression.add_member(:unknown, Types::SearchFilterExpression::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SearchFilterExpression.type = Types::SearchFilterExpression
    SearchFilterExpressions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterExpression)
    SearchGroupedFilterExpressions.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterExpressions, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filters to use for the search.</p>", "smithy.api#required" => {}}))
    SearchGroupedFilterExpressions.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: LogicalOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operators to include in the search.</p>", "smithy.api#required" => {}}))
    SearchGroupedFilterExpressions.type = Types::SearchGroupedFilterExpressions
    SearchJobsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchJobsRequest.add_member(:queue_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIds, location_name: 'queueIds', traits: {"smithy.api#documentation" => "<p>The queue ID to use in the job search.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchJobsRequest.add_member(:filter_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: 'filterExpressions', traits: {"smithy.api#documentation" => "<p>The filter expression, <code>AND</code> or <code>OR</code>, to use\nwhen searching among a group of search strings in a resource.\n\nYou can use two groupings per search each within parenthesis <code>()</code>.</p>"}))
    SearchJobsRequest.add_member(:sort_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: 'sortExpressions', traits: {"smithy.api#documentation" => "<p>The search terms for a resource.</p>"}))
    SearchJobsRequest.add_member(:item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'itemOffset', traits: {"smithy.api#documentation" => "<p>Defines how far into the scrollable list to start the return of results.</p>", "smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pageSize', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>Specifies the number of items per page for the resource.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchJobsRequest.type = Types::SearchJobsRequest
    SearchJobsResponse.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSearchSummaries, location_name: 'jobs', traits: {"smithy.api#documentation" => "<p>The jobs in the search.</p>", "smithy.api#required" => {}}))
    SearchJobsResponse.add_member(:next_item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: NextItemOffset, location_name: 'nextItemOffset', traits: {"smithy.api#documentation" => "<p>The next incremental starting point after the defined <code>itemOffset</code>.</p>"}))
    SearchJobsResponse.add_member(:total_results, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalResults, location_name: 'totalResults', traits: {"smithy.api#documentation" => "<p>The total number of results in the search.</p>", "smithy.api#required" => {}}))
    SearchJobsResponse.type = Types::SearchJobsResponse
    SearchSortExpression.add_member(:user_jobs_first, Types::SearchSortExpression::UserJobsFirst, Smithy::Schema::Shapes::ShapeRef.new(shape: UserJobsFirst, location_name: 'userJobsFirst', traits: {"smithy.api#documentation" => "<p>Options for sorting a particular user's jobs first.</p>"}))
    SearchSortExpression.add_member(:field_sort, Types::SearchSortExpression::FieldSort, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldSortExpression, location_name: 'fieldSort', traits: {"smithy.api#documentation" => "<p>Options for sorting by a field.</p>"}))
    SearchSortExpression.add_member(:parameter_sort, Types::SearchSortExpression::ParameterSort, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterSortExpression, location_name: 'parameterSort', traits: {"smithy.api#documentation" => "<p>Options for sorting by a parameter.</p>"}))
    SearchSortExpression.add_member(:unknown, Types::SearchSortExpression::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SearchSortExpression.type = Types::SearchSortExpression
    SearchSortExpressions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSortExpression)
    SearchStepsRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to use for the step search.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchStepsRequest.add_member(:queue_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIds, location_name: 'queueIds', traits: {"smithy.api#documentation" => "<p>The queue IDs in the step search.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchStepsRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to use in the step search.</p>"}))
    SearchStepsRequest.add_member(:filter_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: 'filterExpressions', traits: {"smithy.api#documentation" => "<p>The filter expression, <code>AND</code> or <code>OR</code>, to use\nwhen searching among a group of search strings in a resource.\n\nYou can use two groupings per search each within parenthesis <code>()</code>.</p>"}))
    SearchStepsRequest.add_member(:sort_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: 'sortExpressions', traits: {"smithy.api#documentation" => "<p>The search terms for a resource.</p>"}))
    SearchStepsRequest.add_member(:item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'itemOffset', traits: {"smithy.api#documentation" => "<p>Defines how far into the scrollable list to start the return of results.</p>", "smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchStepsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pageSize', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>Specifies the number of items per page for the resource.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchStepsRequest.type = Types::SearchStepsRequest
    SearchStepsResponse.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: StepSearchSummaries, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>The steps in the search.</p>", "smithy.api#required" => {}}))
    SearchStepsResponse.add_member(:next_item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: NextItemOffset, location_name: 'nextItemOffset', traits: {"smithy.api#documentation" => "<p>The next incremental starting point after the defined <code>itemOffset</code>.</p>"}))
    SearchStepsResponse.add_member(:total_results, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalResults, location_name: 'totalResults', traits: {"smithy.api#documentation" => "<p>The total number of results in the search.</p>", "smithy.api#required" => {}}))
    SearchStepsResponse.type = Types::SearchStepsResponse
    SearchTasksRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchTasksRequest.add_member(:queue_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIds, location_name: 'queueIds', traits: {"smithy.api#documentation" => "<p>The queue IDs to include in the search.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchTasksRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the task search.</p>"}))
    SearchTasksRequest.add_member(:filter_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: 'filterExpressions', traits: {"smithy.api#documentation" => "<p>The filter expression, <code>AND</code> or <code>OR</code>, to use\nwhen searching among a group of search strings in a resource.\n\nYou can use two groupings per search each within parenthesis <code>()</code>.</p>"}))
    SearchTasksRequest.add_member(:sort_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: 'sortExpressions', traits: {"smithy.api#documentation" => "<p>The search terms for a resource.</p>"}))
    SearchTasksRequest.add_member(:item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'itemOffset', traits: {"smithy.api#documentation" => "<p>Defines how far into the scrollable list to start the return of results.</p>", "smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchTasksRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pageSize', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>Specifies the number of items per page for the resource.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchTasksRequest.type = Types::SearchTasksRequest
    SearchTasksResponse.add_member(:tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSearchSummaries, location_name: 'tasks', traits: {"smithy.api#documentation" => "<p>Tasks in the search.</p>", "smithy.api#required" => {}}))
    SearchTasksResponse.add_member(:next_item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: NextItemOffset, location_name: 'nextItemOffset', traits: {"smithy.api#documentation" => "<p>The next incremental starting point after the defined <code>itemOffset</code>.</p>"}))
    SearchTasksResponse.add_member(:total_results, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalResults, location_name: 'totalResults', traits: {"smithy.api#documentation" => "<p>The total number of results in the search.</p>", "smithy.api#required" => {}}))
    SearchTasksResponse.type = Types::SearchTasksResponse
    SearchTermFilterExpression.add_member(:search_term, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchTerm, location_name: 'searchTerm', traits: {"smithy.api#documentation" => "<p>The term to search for.</p>", "smithy.api#required" => {}}))
    SearchTermFilterExpression.add_member(:match_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchTermMatchingType, location_name: 'matchType', traits: {"smithy.api#default" => "FUZZY_MATCH", "smithy.api#documentation" => "<p>Specifies how Deadline Cloud matches your search term in the results. If you don't\n         specify a <code>matchType</code> the default is <code>FUZZY_MATCH</code>.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>FUZZY_MATCH</code> - Matches if a portion of the search term is found in the\n               result.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CONTAINS</code> - Matches if the exact search term is contained in the\n               result.</p>\n            </li>\n         </ul>"}))
    SearchTermFilterExpression.type = Types::SearchTermFilterExpression
    SearchTermMatchingType.add_member(:fuzzy_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FUZZY_MATCH', traits: {"smithy.api#enumValue" => "FUZZY_MATCH"}))
    SearchTermMatchingType.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    SearchWorkersRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID in the workers search.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchWorkersRequest.add_member(:fleet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetIds, location_name: 'fleetIds', traits: {"smithy.api#documentation" => "<p>The fleet ID of the workers to search for.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchWorkersRequest.add_member(:filter_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchGroupedFilterExpressions, location_name: 'filterExpressions', traits: {"smithy.api#documentation" => "<p>The filter expression, <code>AND</code> or <code>OR</code>, to use\nwhen searching among a group of search strings in a resource.\n\nYou can use two groupings per search each within parenthesis <code>()</code>.</p>"}))
    SearchWorkersRequest.add_member(:sort_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSortExpressions, location_name: 'sortExpressions', traits: {"smithy.api#documentation" => "<p>The search terms for a resource.</p>"}))
    SearchWorkersRequest.add_member(:item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'itemOffset', traits: {"smithy.api#documentation" => "<p>Defines how far into the scrollable list to start the return of results.</p>", "smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchWorkersRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pageSize', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>Specifies the number of items per page for the resource.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchWorkersRequest.type = Types::SearchWorkersRequest
    SearchWorkersResponse.add_member(:workers, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerSearchSummaries, location_name: 'workers', traits: {"smithy.api#documentation" => "<p>The workers for the search.</p>", "smithy.api#required" => {}}))
    SearchWorkersResponse.add_member(:next_item_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: NextItemOffset, location_name: 'nextItemOffset', traits: {"smithy.api#documentation" => "<p>The next incremental starting point after the defined <code>itemOffset</code>.</p>"}))
    SearchWorkersResponse.add_member(:total_results, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalResults, location_name: 'totalResults', traits: {"smithy.api#documentation" => "<p>The total number of results in the search.</p>", "smithy.api#required" => {}}))
    SearchWorkersResponse.type = Types::SearchWorkersResponse
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceManagedEc2FleetConfiguration.add_member(:instance_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedEc2InstanceCapabilities, location_name: 'instanceCapabilities', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instance capabilities.</p>", "smithy.api#required" => {}}))
    ServiceManagedEc2FleetConfiguration.add_member(:instance_market_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedEc2InstanceMarketOptions, location_name: 'instanceMarketOptions', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 market type.</p>", "smithy.api#required" => {}}))
    ServiceManagedEc2FleetConfiguration.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration', traits: {"smithy.api#documentation" => "<p>The VPC configuration details for a service managed Amazon EC2 fleet.</p>"}))
    ServiceManagedEc2FleetConfiguration.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID.</p>"}))
    ServiceManagedEc2FleetConfiguration.type = Types::ServiceManagedEc2FleetConfiguration
    ServiceManagedEc2InstanceCapabilities.add_member(:v_cpu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: VCpuCountRange, location_name: 'vCpuCount', traits: {"smithy.api#documentation" => "<p>The amount of vCPU to require for instances in this fleet.</p>", "smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:memory_mi_b, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryMiBRange, location_name: 'memoryMiB', traits: {"smithy.api#documentation" => "<p>The memory, as MiB, for the Amazon EC2 instance type.</p>", "smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:os_family, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedFleetOperatingSystemFamily, location_name: 'osFamily', traits: {"smithy.api#documentation" => "<p>The operating system (OS) family.</p>", "smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:cpu_architecture_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CpuArchitectureType, location_name: 'cpuArchitectureType', traits: {"smithy.api#documentation" => "<p>The CPU architecture type.</p>", "smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:root_ebs_volume, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2EbsVolume, location_name: 'rootEbsVolume', traits: {"smithy.api#documentation" => "<p>The root EBS volume.</p>"}))
    ServiceManagedEc2InstanceCapabilities.add_member(:accelerator_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorCapabilities, location_name: 'acceleratorCapabilities', traits: {"smithy.api#documentation" => "<p>Describes the GPU accelerator capabilities required for worker host instances in this\n         fleet.</p>"}))
    ServiceManagedEc2InstanceCapabilities.add_member(:allowed_instance_types, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypes, location_name: 'allowedInstanceTypes', traits: {"smithy.api#documentation" => "<p>The allowable Amazon EC2 instance types.</p>"}))
    ServiceManagedEc2InstanceCapabilities.add_member(:excluded_instance_types, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypes, location_name: 'excludedInstanceTypes', traits: {"smithy.api#documentation" => "<p>The instance types to exclude from the fleet.</p>"}))
    ServiceManagedEc2InstanceCapabilities.add_member(:custom_amounts, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomFleetAmountCapabilities, location_name: 'customAmounts', traits: {"smithy.api#documentation" => "<p>The custom capability amounts to require for instances in this fleet.</p>"}))
    ServiceManagedEc2InstanceCapabilities.add_member(:custom_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomFleetAttributeCapabilities, location_name: 'customAttributes', traits: {"smithy.api#documentation" => "<p>The custom capability attributes to require for instances in this fleet.</p>"}))
    ServiceManagedEc2InstanceCapabilities.type = Types::ServiceManagedEc2InstanceCapabilities
    ServiceManagedEc2InstanceMarketOptions.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2MarketType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instance type.</p>", "smithy.api#required" => {}}))
    ServiceManagedEc2InstanceMarketOptions.type = Types::ServiceManagedEc2InstanceMarketOptions
    ServiceManagedFleetOperatingSystemFamily.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "WINDOWS"}))
    ServiceManagedFleetOperatingSystemFamily.add_member(:linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX', traits: {"smithy.api#enumValue" => "LINUX"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A string that describes the reason the quota was exceeded.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the affected resource</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Identifies the service that exceeded the quota.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Identifies the quota that has been exceeded.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the affected resource.</p>"}))
    ServiceQuotaExceededException.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContext, location_name: 'context', traits: {"smithy.api#documentation" => "<p>Information about the resources in use when the exception was thrown.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:service_quota_exceeded_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_QUOTA_EXCEEDED_EXCEPTION', traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED_EXCEPTION"}))
    ServiceQuotaExceededExceptionReason.add_member(:kms_key_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_KEY_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "KMS_KEY_LIMIT_EXCEEDED"}))
    ServiceQuotaExceededExceptionReason.add_member(:dependency_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "DEPENDENCY_LIMIT_EXCEEDED"}))
    SessionActionDefinition.add_member(:env_enter, Types::SessionActionDefinition::EnvEnter, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentEnterSessionActionDefinition, location_name: 'envEnter', traits: {"smithy.api#documentation" => "<p>The environment to enter into.</p>"}))
    SessionActionDefinition.add_member(:env_exit, Types::SessionActionDefinition::EnvExit, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentExitSessionActionDefinition, location_name: 'envExit', traits: {"smithy.api#documentation" => "<p>The environment to exit from.</p>"}))
    SessionActionDefinition.add_member(:task_run, Types::SessionActionDefinition::TaskRun, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunSessionActionDefinition, location_name: 'taskRun', traits: {"smithy.api#documentation" => "<p>The task run in the session.</p>"}))
    SessionActionDefinition.add_member(:sync_input_job_attachments, Types::SessionActionDefinition::SyncInputJobAttachments, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncInputJobAttachmentsSessionActionDefinition, location_name: 'syncInputJobAttachments', traits: {"smithy.api#documentation" => "<p>The job attachments to sync with a session action.</p>"}))
    SessionActionDefinition.add_member(:unknown, Types::SessionActionDefinition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SessionActionDefinition.type = Types::SessionActionDefinition
    SessionActionDefinitionSummary.add_member(:env_enter, Types::SessionActionDefinitionSummary::EnvEnter, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentEnterSessionActionDefinitionSummary, location_name: 'envEnter', traits: {"smithy.api#documentation" => "<p>The environment to enter into.</p>"}))
    SessionActionDefinitionSummary.add_member(:env_exit, Types::SessionActionDefinitionSummary::EnvExit, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentExitSessionActionDefinitionSummary, location_name: 'envExit', traits: {"smithy.api#documentation" => "<p>The environment to exit from.</p>"}))
    SessionActionDefinitionSummary.add_member(:task_run, Types::SessionActionDefinitionSummary::TaskRun, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunSessionActionDefinitionSummary, location_name: 'taskRun', traits: {"smithy.api#documentation" => "<p>The task run.</p>"}))
    SessionActionDefinitionSummary.add_member(:sync_input_job_attachments, Types::SessionActionDefinitionSummary::SyncInputJobAttachments, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncInputJobAttachmentsSessionActionDefinitionSummary, location_name: 'syncInputJobAttachments', traits: {"smithy.api#documentation" => "<p>The job attachments to sync with the session action definition.</p>"}))
    SessionActionDefinitionSummary.add_member(:unknown, Types::SessionActionDefinitionSummary::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SessionActionDefinitionSummary.type = Types::SessionActionDefinitionSummary
    SessionActionIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId)
    SessionActionStatus.add_member(:assigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSIGNED', traits: {"smithy.api#enumValue" => "ASSIGNED"}))
    SessionActionStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    SessionActionStatus.add_member(:canceling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELING', traits: {"smithy.api#enumValue" => "CANCELING"}))
    SessionActionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    SessionActionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionActionStatus.add_member(:interrupted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERRUPTED', traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    SessionActionStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    SessionActionStatus.add_member(:never_attempted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER_ATTEMPTED', traits: {"smithy.api#enumValue" => "NEVER_ATTEMPTED"}))
    SessionActionStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    SessionActionStatus.add_member(:reclaiming, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECLAIMING', traits: {"smithy.api#enumValue" => "RECLAIMING"}))
    SessionActionStatus.add_member(:reclaimed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECLAIMED', traits: {"smithy.api#enumValue" => "RECLAIMED"}))
    SessionActionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionSummary)
    SessionActionSummary.add_member(:session_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId, location_name: 'sessionActionId', traits: {"smithy.api#documentation" => "<p>The session action ID.</p>", "smithy.api#required" => {}}))
    SessionActionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the session action.</p>", "smithy.api#required" => {}}))
    SessionActionSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    SessionActionSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    SessionActionSummary.add_member(:worker_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'workerUpdatedAt', traits: {"smithy.api#documentation" => "<p>The Linux timestamp of the last date and time that the session action was\n         updated.</p>"}))
    SessionActionSummary.add_member(:progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionProgressPercent, location_name: 'progressPercent', traits: {"smithy.api#documentation" => "<p>The completion percentage for the session action.</p>"}))
    SessionActionSummary.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionDefinitionSummary, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The session action definition.</p>", "smithy.api#required" => {}}))
    SessionActionSummary.add_member(:manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesListResponse, location_name: 'manifests', traits: {"smithy.api#documentation" => "<p>The list of manifest properties that describe file attachments for the task run.</p>"}))
    SessionActionSummary.type = Types::SessionActionSummary
    SessionLifecycleStatus.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTED', traits: {"smithy.api#enumValue" => "STARTED"}))
    SessionLifecycleStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    SessionLifecycleStatus.add_member(:update_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_SUCCEEDED', traits: {"smithy.api#enumValue" => "UPDATE_SUCCEEDED"}))
    SessionLifecycleStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    SessionLifecycleStatus.add_member(:ended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDED', traits: {"smithy.api#enumValue" => "ENDED"}))
    SessionLifecycleTargetStatus.add_member(:ended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDED', traits: {"smithy.api#enumValue" => "ENDED"}))
    SessionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    SessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status for the session.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    SessionSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    SessionSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    SessionSummary.add_member(:target_lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, location_name: 'targetLifecycleStatus', traits: {"smithy.api#documentation" => "<p>The target life cycle status for the session.</p>"}))
    SessionSummary.type = Types::SessionSummary
    SessionsStatisticsAggregationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SessionsStatisticsAggregationStatus.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    SessionsStatisticsAggregationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionsStatisticsAggregationStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SessionsStatisticsResources.add_member(:queue_ids, Types::SessionsStatisticsResources::QueueIds, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIds, location_name: 'queueIds', traits: {"smithy.api#documentation" => "<p>One to 10 queue IDs that specify the queues to return statistics for. If you specify the\n            <code>queueIds</code> field, you can't specify the <code>fleetIds</code> field.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}}))
    SessionsStatisticsResources.add_member(:fleet_ids, Types::SessionsStatisticsResources::FleetIds, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetIds, location_name: 'fleetIds', traits: {"smithy.api#documentation" => "<p>One to 10 fleet IDs that specify the fleets to return statistics for. If you specify the\n            <code>fleetIds</code> field, you can't specify the <code>queueIds</code> field.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}}))
    SessionsStatisticsResources.add_member(:unknown, Types::SessionsStatisticsResources::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SessionsStatisticsResources.type = Types::SessionsStatisticsResources
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartSessionsStatisticsAggregationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The identifier of the farm that contains queues or fleets to return statistics\n         for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.add_member(:resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionsStatisticsResources, location_name: 'resourceIds', traits: {"smithy.api#documentation" => "<p>A list of fleet IDs or queue IDs to gather statistics for.</p>", "smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The Linux timestamp of the date and time that the statistics start.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartSessionsStatisticsAggregationRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The Linux timestamp of the date and time that the statistics end.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartSessionsStatisticsAggregationRequest.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, location_name: 'timezone', traits: {"smithy.api#documentation" => "<p>The timezone to use for the statistics. Use UTC notation such as \"UTC+8.\"</p>"}))
    StartSessionsStatisticsAggregationRequest.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: 'period', traits: {"smithy.api#documentation" => "<p>The period to aggregate the statistics.</p>"}))
    StartSessionsStatisticsAggregationRequest.add_member(:group_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroupBy, location_name: 'groupBy', traits: {"smithy.api#documentation" => "<p>The field to use to group the statistics.</p>", "smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>One to four statistics to return.</p>", "smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.type = Types::StartSessionsStatisticsAggregationRequest
    StartSessionsStatisticsAggregationResponse.add_member(:aggregation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationId, location_name: 'aggregationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the aggregated statistics. Use this identifier with the\n            <code>GetAggregatedStatisticsForSessions</code> operation to return the\n         statistics.</p>", "smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationResponse.type = Types::StartSessionsStatisticsAggregationResponse
    Statistics.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>"}))
    Statistics.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>"}))
    Statistics.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>"}))
    Statistics.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The job name.</p>"}))
    Statistics.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>"}))
    Statistics.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'usageType', traits: {"smithy.api#documentation" => "<p>The type of usage for the statistics.</p>"}))
    Statistics.add_member(:license_product, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseProduct, location_name: 'licenseProduct', traits: {"smithy.api#documentation" => "<p>The licensed product.</p>"}))
    Statistics.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The type of instance.</p>"}))
    Statistics.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of instances in a list of statistics.</p>", "smithy.api#required" => {}}))
    Statistics.add_member(:cost_in_usd, Smithy::Schema::Shapes::ShapeRef.new(shape: Stats, location_name: 'costInUsd', traits: {"smithy.api#documentation" => "<p>How the statistics should appear in USD. Options include: minimum, maximum, average or\n         sum.</p>", "smithy.api#required" => {}}))
    Statistics.add_member(:runtime_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Stats, location_name: 'runtimeInSeconds', traits: {"smithy.api#documentation" => "<p>The total aggregated runtime.</p>", "smithy.api#required" => {}}))
    Statistics.add_member(:aggregation_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'aggregationStartTime', traits: {"smithy.api#documentation" => "<p>The start time for the aggregation.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Statistics.add_member(:aggregation_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'aggregationEndTime', traits: {"smithy.api#documentation" => "<p>The end time for the aggregation.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Statistics.type = Types::Statistics
    StatisticsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Statistics)
    Stats.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The minimum of the usage statistics.</p>"}))
    Stats.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The maximum among the usage statistics.</p>"}))
    Stats.add_member(:avg, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'avg', traits: {"smithy.api#documentation" => "<p>The average of the usage statistics.</p>"}))
    Stats.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'sum', traits: {"smithy.api#documentation" => "<p>The sum of the usage statistics.</p>"}))
    Stats.type = Types::Stats
    StepAmountCapabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepAmountCapability)
    StepAmountCapability.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmountCapabilityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the step.</p>", "smithy.api#required" => {}}))
    StepAmountCapability.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The minimum amount.</p>"}))
    StepAmountCapability.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The maximum amount.</p>"}))
    StepAmountCapability.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The amount value.</p>"}))
    StepAmountCapability.type = Types::StepAmountCapability
    StepAttributeCapabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepAttributeCapability)
    StepAttributeCapability.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeCapabilityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the step attribute.</p>", "smithy.api#required" => {}}))
    StepAttributeCapability.add_member(:any_of, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeCapabilityValue, location_name: 'anyOf', traits: {"smithy.api#documentation" => "<p>Requires any of the step attributes in a given list.</p>"}))
    StepAttributeCapability.add_member(:all_of, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeCapabilityValue, location_name: 'allOf', traits: {"smithy.api#documentation" => "<p>Requires all of the step attribute values.</p>"}))
    StepAttributeCapability.type = Types::StepAttributeCapability
    StepConsumer.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    StepConsumer.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyConsumerResolutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The step consumer status.</p>", "smithy.api#required" => {}}))
    StepConsumer.type = Types::StepConsumer
    StepConsumers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepConsumer)
    StepDependencies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepDependency)
    StepDependency.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    StepDependency.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyConsumerResolutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The step dependency status.</p>", "smithy.api#required" => {}}))
    StepDependency.type = Types::StepDependency
    StepDetailsEntity.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version for a step template.</p>", "smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The template for a step.</p>", "smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: DependenciesList, location_name: 'dependencies', traits: {"smithy.api#documentation" => "<p>The dependencies for a step.</p>", "smithy.api#required" => {}}))
    StepDetailsEntity.type = Types::StepDetailsEntity
    StepDetailsError.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    StepDetailsError.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    StepDetailsError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntityErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    StepDetailsError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message detailing the error's cause.</p>", "smithy.api#required" => {}}))
    StepDetailsError.type = Types::StepDetailsError
    StepDetailsIdentifiers.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>", "smithy.api#required" => {}}))
    StepDetailsIdentifiers.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    StepDetailsIdentifiers.type = Types::StepDetailsIdentifiers
    StepLifecycleStatus.add_member(:create_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    StepLifecycleStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    StepLifecycleStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    StepLifecycleStatus.add_member(:update_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_SUCCEEDED', traits: {"smithy.api#enumValue" => "UPDATE_SUCCEEDED"}))
    StepParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StepParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the parameter.</p>", "smithy.api#required" => {}}))
    StepParameter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: StepParameterType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data type of the parameter.</p>", "smithy.api#required" => {}}))
    StepParameter.type = Types::StepParameter
    StepParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepParameter)
    StepParameterType.add_member(:int, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT', traits: {"smithy.api#enumValue" => "INT"}))
    StepParameterType.add_member(:float, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT', traits: {"smithy.api#enumValue" => "FLOAT"}))
    StepParameterType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    StepParameterType.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATH', traits: {"smithy.api#enumValue" => "PATH"}))
    StepParameterType.add_member(:chunk_int, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHUNK_INT', traits: {"smithy.api#enumValue" => "CHUNK_INT"}))
    StepRequiredCapabilities.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StepAttributeCapabilities, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The capability attributes that the step requires.</p>", "smithy.api#required" => {}}))
    StepRequiredCapabilities.add_member(:amounts, Smithy::Schema::Shapes::ShapeRef.new(shape: StepAmountCapabilities, location_name: 'amounts', traits: {"smithy.api#documentation" => "<p>The capability amounts that the step requires.</p>", "smithy.api#required" => {}}))
    StepRequiredCapabilities.type = Types::StepRequiredCapabilities
    StepSearchSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepSearchSummary)
    StepSearchSummary.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>"}))
    StepSearchSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>"}))
    StepSearchSummary.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>"}))
    StepSearchSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The step name.</p>"}))
    StepSearchSummary.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StepLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status.</p>"}))
    StepSearchSummary.add_member(:lifecycle_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lifecycleStatusMessage', traits: {"smithy.api#documentation" => "<p>The life cycle status message.</p>"}))
    StepSearchSummary.add_member(:task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'taskRunStatus', traits: {"smithy.api#documentation" => "<p>The task run status for the job.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code>–pending and waiting for resources.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code>–ready to be processed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ASSIGNED</code>–assigned and will run next on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULED</code>–scheduled to be run on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERRUPTING</code>–being interrupted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code>–running on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code>–the task is suspended.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELED</code>–the task has been canceled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code>–the task has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCEEDED</code>–the task has succeeded.</p>\n            </li>\n         </ul>"}))
    StepSearchSummary.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status to start with on the job.</p>"}))
    StepSearchSummary.add_member(:task_run_status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: 'taskRunStatusCounts', traits: {"smithy.api#documentation" => "<p>The number of tasks running on the job.</p>"}))
    StepSearchSummary.add_member(:task_failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: 'taskFailureRetryCount', traits: {"smithy.api#documentation" => "<p>The total number of times tasks from the step failed and were retried.</p>"}))
    StepSearchSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>"}))
    StepSearchSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>"}))
    StepSearchSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    StepSearchSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    StepSearchSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    StepSearchSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    StepSearchSummary.add_member(:parameter_space, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterSpace, location_name: 'parameterSpace', traits: {"smithy.api#documentation" => "<p>The parameters and combination expressions for the search.</p>"}))
    StepSearchSummary.type = Types::StepSearchSummary
    StepSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StepSummary)
    StepSummary.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    StepSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the step.</p>", "smithy.api#required" => {}}))
    StepSummary.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StepLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status.</p>", "smithy.api#required" => {}}))
    StepSummary.add_member(:lifecycle_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lifecycleStatusMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the lifecycle of the step.</p>"}))
    StepSummary.add_member(:task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'taskRunStatus', traits: {"smithy.api#documentation" => "<p>The task run status for the job.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code>–pending and waiting for resources.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code>–ready to process.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ASSIGNED</code>–assigned and will run next on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SCHEDULED</code>–scheduled to run on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERRUPTING</code>–being interrupted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code>–running on a worker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code>–the task is suspended.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELED</code>–the task has been canceled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code>–the task has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCEEDED</code>–the task has succeeded.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    StepSummary.add_member(:task_run_status_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatusCounts, location_name: 'taskRunStatusCounts', traits: {"smithy.api#documentation" => "<p>The number of tasks running on the job.</p>", "smithy.api#required" => {}}))
    StepSummary.add_member(:task_failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailureRetryCount, location_name: 'taskFailureRetryCount', traits: {"smithy.api#documentation" => "<p>The total number of times tasks from the step failed and were retried.</p>"}))
    StepSummary.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status to start with on the job.</p>"}))
    StepSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    StepSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    StepSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    StepSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    StepSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    StepSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    StepSummary.add_member(:dependency_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyCounts, location_name: 'dependencyCounts', traits: {"smithy.api#documentation" => "<p>The number of dependencies for the step.</p>"}))
    StepSummary.type = Types::StepSummary
    StepTargetTaskRunStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    StepTargetTaskRunStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StepTargetTaskRunStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    StepTargetTaskRunStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    StepTargetTaskRunStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    StepTargetTaskRunStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    StorageProfileOperatingSystemFamily.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "WINDOWS"}))
    StorageProfileOperatingSystemFamily.add_member(:linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX', traits: {"smithy.api#enumValue" => "LINUX"}))
    StorageProfileOperatingSystemFamily.add_member(:macos, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MACOS', traits: {"smithy.api#enumValue" => "MACOS"}))
    StorageProfileSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileSummary)
    StorageProfileSummary.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID.</p>", "smithy.api#required" => {}}))
    StorageProfileSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the storage profile summary to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>", "smithy.api#required" => {}}))
    StorageProfileSummary.add_member(:os_family, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, location_name: 'osFamily', traits: {"smithy.api#documentation" => "<p>The operating system (OS) family.</p>", "smithy.api#required" => {}}))
    StorageProfileSummary.type = Types::StorageProfileSummary
    StringFilterExpression.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The field name to search.</p>", "smithy.api#required" => {}}))
    StringFilterExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The type of comparison to use for this search.</p>", "smithy.api#required" => {}}))
    StringFilterExpression.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The string to search for.</p>", "smithy.api#required" => {}}))
    StringFilterExpression.type = Types::StringFilterExpression
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    SyncInputJobAttachmentsSessionActionDefinition.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID for the step in the job attachment.</p>"}))
    SyncInputJobAttachmentsSessionActionDefinition.type = Types::SyncInputJobAttachmentsSessionActionDefinition
    SyncInputJobAttachmentsSessionActionDefinitionSummary.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID of the step in the job attachment.</p>"}))
    SyncInputJobAttachmentsSessionActionDefinitionSummary.type = Types::SyncInputJobAttachmentsSessionActionDefinitionSummary
    TagPropagationMode.add_member(:no_propagation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_PROPAGATION', traits: {"smithy.api#enumValue" => "NO_PROPAGATION"}))
    TagPropagationMode.add_member(:propagate_tags_to_workers_at_launch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH', traits: {"smithy.api#enumValue" => "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"}))
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to apply tags to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>"}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TaskParameterValue.add_member(:int, Types::TaskParameterValue::Int, Smithy::Schema::Shapes::ShapeRef.new(shape: IntString, location_name: 'int', traits: {"smithy.api#documentation" => "<p>A signed integer represented as a string.</p>"}))
    TaskParameterValue.add_member(:float, Types::TaskParameterValue::Float, Smithy::Schema::Shapes::ShapeRef.new(shape: FloatString, location_name: 'float', traits: {"smithy.api#documentation" => "<p>A double precision IEEE-754 floating point number represented as a string.</p>"}))
    TaskParameterValue.add_member(:string, Types::TaskParameterValue::String, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterString, location_name: 'string', traits: {"smithy.api#documentation" => "<p>A UTF-8 string.</p>"}))
    TaskParameterValue.add_member(:path, Types::TaskParameterValue::Path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathString, location_name: 'path', traits: {"smithy.api#documentation" => "<p>A file system path represented as a string.</p>"}))
    TaskParameterValue.add_member(:chunk_int, Types::TaskParameterValue::ChunkInt, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'chunkInt', traits: {"smithy.api#documentation" => "<p>A range (for example 1-10) or selection of specific (for example 1,3,7,8,10) integers represented as a string.</p>"}))
    TaskParameterValue.add_member(:unknown, Types::TaskParameterValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TaskParameterValue.type = Types::TaskParameterValue
    TaskParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TaskParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskParameterValue)
    TaskRunManifestPropertiesListRequest.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesRequest)
    TaskRunManifestPropertiesListResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesResponse)
    TaskRunManifestPropertiesRequest.add_member(:output_manifest_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'outputManifestPath', traits: {"smithy.api#documentation" => "<p>The manifest file path.</p>", "smithy.api#length" => {"min" => 1, "max" => 512}}))
    TaskRunManifestPropertiesRequest.add_member(:output_manifest_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'outputManifestHash', traits: {"smithy.api#documentation" => "<p>The hash value of the file.</p>", "smithy.api#length" => {"min" => 1, "max" => 256}}))
    TaskRunManifestPropertiesRequest.type = Types::TaskRunManifestPropertiesRequest
    TaskRunManifestPropertiesResponse.add_member(:output_manifest_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'outputManifestPath', traits: {"smithy.api#documentation" => "<p>The manifest file path.</p>"}))
    TaskRunManifestPropertiesResponse.add_member(:output_manifest_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'outputManifestHash', traits: {"smithy.api#documentation" => "<p>The hash value of the file.</p>"}))
    TaskRunManifestPropertiesResponse.type = Types::TaskRunManifestPropertiesResponse
    TaskRunSessionActionDefinition.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>"}))
    TaskRunSessionActionDefinition.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    TaskRunSessionActionDefinition.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The task parameters.</p>", "smithy.api#required" => {}}))
    TaskRunSessionActionDefinition.type = Types::TaskRunSessionActionDefinition
    TaskRunSessionActionDefinitionSummary.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>"}))
    TaskRunSessionActionDefinitionSummary.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>", "smithy.api#required" => {}}))
    TaskRunSessionActionDefinitionSummary.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters of a task run in a session action.</p>"}))
    TaskRunSessionActionDefinitionSummary.type = Types::TaskRunSessionActionDefinitionSummary
    TaskRunStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    TaskRunStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    TaskRunStatus.add_member(:assigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSIGNED', traits: {"smithy.api#enumValue" => "ASSIGNED"}))
    TaskRunStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    TaskRunStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    TaskRunStatus.add_member(:interrupting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERRUPTING', traits: {"smithy.api#enumValue" => "INTERRUPTING"}))
    TaskRunStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    TaskRunStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    TaskRunStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    TaskRunStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskRunStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TaskRunStatus.add_member(:not_compatible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_COMPATIBLE', traits: {"smithy.api#enumValue" => "NOT_COMPATIBLE"}))
    TaskRunStatusCounts.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus)
    TaskRunStatusCounts.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    TaskSearchSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSearchSummary)
    TaskSearchSummary.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>"}))
    TaskSearchSummary.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID.</p>"}))
    TaskSearchSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID.</p>"}))
    TaskSearchSummary.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>"}))
    TaskSearchSummary.add_member(:run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'runStatus', traits: {"smithy.api#documentation" => "<p>The run status of the task.</p>"}))
    TaskSearchSummary.add_member(:target_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTargetRunStatus, location_name: 'targetRunStatus', traits: {"smithy.api#documentation" => "<p>The run status that the task is being updated to.</p>"}))
    TaskSearchSummary.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters to search for.</p>"}))
    TaskSearchSummary.add_member(:failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRetryCount, location_name: 'failureRetryCount', traits: {"smithy.api#documentation" => "<p>The number of times that the task failed and was retried.</p>"}))
    TaskSearchSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    TaskSearchSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    TaskSearchSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    TaskSearchSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    TaskSearchSummary.type = Types::TaskSearchSummary
    TaskSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSummary)
    TaskSummary.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>", "smithy.api#required" => {}}))
    TaskSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    TaskSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    TaskSummary.add_member(:run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunStatus, location_name: 'runStatus', traits: {"smithy.api#documentation" => "<p>The run status of the task.</p>", "smithy.api#required" => {}}))
    TaskSummary.add_member(:target_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTargetRunStatus, location_name: 'targetRunStatus', traits: {"smithy.api#documentation" => "<p>The run status on which the started.</p>"}))
    TaskSummary.add_member(:failure_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRetryCount, location_name: 'failureRetryCount', traits: {"smithy.api#documentation" => "<p>The number of times that the task failed and was retried.</p>"}))
    TaskSummary.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The task parameters.</p>"}))
    TaskSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>"}))
    TaskSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    TaskSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    TaskSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    TaskSummary.add_member(:latest_session_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId, location_name: 'latestSessionActionId', traits: {"smithy.api#documentation" => "<p>The latest session action for the task.</p>"}))
    TaskSummary.type = Types::TaskSummary
    TaskTargetRunStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    TaskTargetRunStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskTargetRunStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TaskTargetRunStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    TaskTargetRunStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    TaskTargetRunStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Identifies the service that is being throttled.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Identifies the quota that is being throttled.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds a client should wait before retrying the request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContext, location_name: 'context', traits: {"smithy.api#documentation" => "<p>Information about the resources in use when the exception was thrown.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to remove the tag from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>They keys of the tag.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBudgetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateBudgetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the budget to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBudgetRequest.add_member(:budget_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetId, location_name: 'budgetId', traits: {"smithy.api#documentation" => "<p>The budget ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBudgetRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the budget to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateBudgetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the budget to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateBudgetRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Updates the status of the budget.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code>–The budget is being evaluated.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code>–The budget is inactive. This can include Expired,\n               Canceled, or deleted Deleted statuses.</p>\n            </li>\n         </ul>"}))
    UpdateBudgetRequest.add_member(:approximate_dollar_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedUsageLimit, location_name: 'approximateDollarLimit', traits: {"smithy.api#documentation" => "<p>The dollar limit to update on the budget. Based on consumed usage.</p>"}))
    UpdateBudgetRequest.add_member(:actions_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionsToAdd, location_name: 'actionsToAdd', traits: {"smithy.api#documentation" => "<p>The budget actions to add. Budget actions specify what happens when the budget runs\n         out.</p>"}))
    UpdateBudgetRequest.add_member(:actions_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetActionsToRemove, location_name: 'actionsToRemove', traits: {"smithy.api#documentation" => "<p>The budget actions to remove from the budget.</p>"}))
    UpdateBudgetRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetSchedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The schedule to update.</p>"}))
    UpdateBudgetRequest.type = Types::UpdateBudgetRequest
    UpdateBudgetResponse.type = Types::UpdateBudgetResponse
    UpdateFarmRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFarmRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the farm to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateFarmRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the farm to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateFarmRequest.type = Types::UpdateFarmRequest
    UpdateFarmResponse.type = Types::UpdateFarmResponse
    UpdateFleetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateFleetRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFleetRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFleetRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the fleet to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateFleetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the fleet to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateFleetRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM role ARN that the fleet's workers assume while running jobs.</p>"}))
    UpdateFleetRequest.add_member(:min_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'minWorkerCount', traits: {"smithy.api#documentation" => "<p>The minimum number of workers in the fleet.</p>"}))
    UpdateFleetRequest.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinZeroMaxInteger, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of workers in the fleet.</p>\n         <p>Deadline Cloud limits the number of workers to less than or equal to the fleet's\n         maximum worker count. The service maintains eventual consistency for the worker count. If\n         you make multiple rapid calls to <code>CreateWorker</code> before the field updates, you\n         might exceed your fleet's maximum worker count. For example, if your\n         <code>maxWorkerCount</code> is 10 and you currently have 9 workers, making two quick\n         <code>CreateWorker</code> calls might successfully create 2 workers instead of 1,\n         resulting in 11 total workers.</p>"}))
    UpdateFleetRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The fleet configuration to update.</p>"}))
    UpdateFleetRequest.add_member(:host_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HostConfiguration, location_name: 'hostConfiguration', traits: {"smithy.api#documentation" => "<p>Provides a script that runs as a worker is starting up that you can use to provide\n         additional configuration for workers in your fleet.</p>"}))
    UpdateFleetRequest.type = Types::UpdateFleetRequest
    UpdateFleetResponse.type = Types::UpdateFleetResponse
    UpdateJobLifecycleStatus.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    UpdateJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateJobRequest.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status to update the job's tasks to.</p>"}))
    UpdateJobRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The job priority to update.</p>"}))
    UpdateJobRequest.add_member(:max_failed_tasks_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFailedTasksCount, location_name: 'maxFailedTasksCount', traits: {"smithy.api#documentation" => "<p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>"}))
    UpdateJobRequest.add_member(:max_retries_per_task, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetriesPerTask, location_name: 'maxRetriesPerTask', traits: {"smithy.api#documentation" => "<p>The maximum number of retries for a job.</p>"}))
    UpdateJobRequest.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The status of a job in its lifecycle. When you change the status of the job to\n            <code>ARCHIVED</code>, the job can't be scheduled or archived.</p>\n         <important>\n            <p>An archived jobs and its steps and tasks are deleted after 120 days. The job can't be\n            recovered.</p>\n         </important>"}))
    UpdateJobRequest.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkerCount, location_name: 'maxWorkerCount', traits: {"smithy.api#documentation" => "<p>The maximum number of worker hosts that can concurrently process a job. When the\n            <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the\n         job, even if the fleets assigned to the job's queue has available workers.</p>\n         <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no\n         maximum number of workers.</p>\n         <p>If you don't specify the <code>maxWorkerCount</code>, the default is -1.</p>\n         <p>The maximum number of workers that can process tasks in the job.</p>"}))
    UpdateJobRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the job to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the job to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobRequest.type = Types::UpdateJobRequest
    UpdateJobResponse.type = Types::UpdateJobResponse
    UpdateLimitRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the limit.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLimitRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLimitRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The new display name of the limit.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateLimitRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The new description of the limit.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateLimitRequest.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCount, location_name: 'maxCount', traits: {"smithy.api#documentation" => "<p>The maximum number of resources constrained by this limit. When all of the resources are\n         in use, steps that require the limit won't be scheduled until the resource is\n         available.</p>\n         <p>If more than the new maximum number is currently in use, running jobs finish but no new\n         jobs are started until the number of resources in use is below the new maximum\n         number.</p>\n         <p>The <code>maxCount</code> must not be 0. If the value is -1, there is no restriction on\n         the number of resources that can be acquired for this limit.</p>"}))
    UpdateLimitRequest.type = Types::UpdateLimitRequest
    UpdateLimitResponse.type = Types::UpdateLimitResponse
    UpdateMonitorRequest.add_member(:monitor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorId, location_name: 'monitorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the monitor to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMonitorRequest.add_member(:subdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: Subdomain, location_name: 'subdomain', traits: {"smithy.api#documentation" => "<p>The new value of the subdomain to use when forming the monitor URL.</p>"}))
    UpdateMonitorRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The new value to use for the monitor's display name.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateMonitorRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new IAM role to use with the monitor.</p>"}))
    UpdateMonitorRequest.type = Types::UpdateMonitorRequest
    UpdateMonitorResponse.type = Types::UpdateMonitorResponse
    UpdateQueueEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID of the queue environment to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID of the queue environment to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:queue_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueEnvironmentId, location_name: 'queueEnvironmentId', traits: {"smithy.api#documentation" => "<p>The queue environment ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority to update.</p>"}))
    UpdateQueueEnvironmentRequest.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The template type to update.</p>"}))
    UpdateQueueEnvironmentRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTemplate, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The template to update.</p>"}))
    UpdateQueueEnvironmentRequest.type = Types::UpdateQueueEnvironmentRequest
    UpdateQueueEnvironmentResponse.type = Types::UpdateQueueEnvironmentResponse
    UpdateQueueFleetAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueFleetAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status to update.</p>", "smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.type = Types::UpdateQueueFleetAssociationRequest
    UpdateQueueFleetAssociationResponse.type = Types::UpdateQueueFleetAssociationResponse
    UpdateQueueFleetAssociationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UpdateQueueFleetAssociationStatus.add_member(:stop_scheduling_and_complete_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_COMPLETE_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    UpdateQueueFleetAssociationStatus.add_member(:stop_scheduling_and_cancel_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_SCHEDULING_AND_CANCEL_TASKS', traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    UpdateQueueLimitAssociationRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the farm that contains the associated queues and limits.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the queue associated to the limit.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.add_member(:limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitId, location_name: 'limitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the limit associated to the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueLimitAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Sets the status of the limit. You can mark the limit active, or you can stop usage of\n         the limit and either complete existing tasks or cancel any existing tasks immediately.\n      </p>", "smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.type = Types::UpdateQueueLimitAssociationRequest
    UpdateQueueLimitAssociationResponse.type = Types::UpdateQueueLimitAssociationResponse
    UpdateQueueLimitAssociationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UpdateQueueLimitAssociationStatus.add_member(:stop_limit_usage_and_complete_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_LIMIT_USAGE_AND_COMPLETE_TASKS', traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS"}))
    UpdateQueueLimitAssociationStatus.add_member(:stop_limit_usage_and_cancel_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_LIMIT_USAGE_AND_CANCEL_TASKS', traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_CANCEL_TASKS"}))
    UpdateQueueRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The idempotency token to update in the queue.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateQueueRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update in the queue.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the queue to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateQueueRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the queue to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateQueueRequest.add_member(:default_budget_action, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultQueueBudgetAction, location_name: 'defaultBudgetAction', traits: {"smithy.api#documentation" => "<p>The default action to take for a queue update if a budget isn't configured.</p>"}))
    UpdateQueueRequest.add_member(:job_attachment_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: JobAttachmentSettings, location_name: 'jobAttachmentSettings', traits: {"smithy.api#documentation" => "<p>The job attachment settings to update for the\n         queue.</p>"}))
    UpdateQueueRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The IAM role ARN that's used to run jobs from this queue.</p>"}))
    UpdateQueueRequest.add_member(:job_run_as_user, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunAsUser, location_name: 'jobRunAsUser', traits: {"smithy.api#documentation" => "<p>Update the jobs in the queue to run as a specified POSIX user.</p>"}))
    UpdateQueueRequest.add_member(:required_file_system_location_names_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: 'requiredFileSystemLocationNamesToAdd', traits: {"smithy.api#documentation" => "<p>The required file system location names to add to the queue.</p>"}))
    UpdateQueueRequest.add_member(:required_file_system_location_names_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredFileSystemLocationNames, location_name: 'requiredFileSystemLocationNamesToRemove', traits: {"smithy.api#documentation" => "<p>The required file system location names to remove from the queue.</p>"}))
    UpdateQueueRequest.add_member(:allowed_storage_profile_ids_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: 'allowedStorageProfileIdsToAdd', traits: {"smithy.api#documentation" => "<p>The storage profile IDs to add.</p>"}))
    UpdateQueueRequest.add_member(:allowed_storage_profile_ids_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedStorageProfileIds, location_name: 'allowedStorageProfileIdsToRemove', traits: {"smithy.api#documentation" => "<p>The storage profile ID to remove.</p>"}))
    UpdateQueueRequest.type = Types::UpdateQueueRequest
    UpdateQueueResponse.type = Types::UpdateQueueResponse
    UpdateSessionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateSessionRequest.add_member(:target_lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, location_name: 'targetLifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status to update in the session.</p>", "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update in the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to update in the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to update in the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.type = Types::UpdateSessionRequest
    UpdateSessionResponse.type = Types::UpdateSessionResponse
    UpdateStepRequest.add_member(:target_task_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StepTargetTaskRunStatus, location_name: 'targetTaskRunStatus', traits: {"smithy.api#documentation" => "<p>The task status to update the step's tasks to.</p>", "smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateStepRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.type = Types::UpdateStepRequest
    UpdateStepResponse.type = Types::UpdateStepResponse
    UpdateStorageProfileRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateStorageProfileRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageProfileRequest.add_member(:storage_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileId, location_name: 'storageProfileId', traits: {"smithy.api#documentation" => "<p>The storage profile ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageProfileRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the storage profile to update.</p>\n         <important>\n            <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>\n         </important>"}))
    UpdateStorageProfileRequest.add_member(:os_family, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageProfileOperatingSystemFamily, location_name: 'osFamily', traits: {"smithy.api#documentation" => "<p>The OS system to update.</p>"}))
    UpdateStorageProfileRequest.add_member(:file_system_locations_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: 'fileSystemLocationsToAdd', traits: {"smithy.api#documentation" => "<p>The file system location names to add.</p>"}))
    UpdateStorageProfileRequest.add_member(:file_system_locations_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationsList, location_name: 'fileSystemLocationsToRemove', traits: {"smithy.api#documentation" => "<p>The file system location names to remove.</p>"}))
    UpdateStorageProfileRequest.type = Types::UpdateStorageProfileRequest
    UpdateStorageProfileResponse.type = Types::UpdateStorageProfileResponse
    UpdateTaskRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The unique token which the server uses to recognize retries of the same request.</p>", "smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateTaskRequest.add_member(:target_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTargetRunStatus, location_name: 'targetRunStatus', traits: {"smithy.api#documentation" => "<p>The run status with which to start the task.</p>", "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:step_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'stepId', traits: {"smithy.api#documentation" => "<p>The step ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.type = Types::UpdateTaskRequest
    UpdateTaskResponse.type = Types::UpdateTaskResponse
    UpdateWorkerRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedWorkerStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The worker status to update.</p>"}))
    UpdateWorkerRequest.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerCapabilities, location_name: 'capabilities', traits: {"smithy.api#documentation" => "<p>The worker capabilities to update.</p>"}))
    UpdateWorkerRequest.add_member(:host_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: HostPropertiesRequest, location_name: 'hostProperties', traits: {"smithy.api#documentation" => "<p>The host properties to update.</p>"}))
    UpdateWorkerRequest.type = Types::UpdateWorkerRequest
    UpdateWorkerResponse.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'log', traits: {"smithy.api#documentation" => "<p>The worker log to update.</p>"}))
    UpdateWorkerResponse.add_member(:host_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HostConfiguration, location_name: 'hostConfiguration', traits: {"smithy.api#documentation" => "<p>The script that runs as a worker is starting up that you can use to provide additional\n         configuration for workers in your fleet.</p>"}))
    UpdateWorkerResponse.type = Types::UpdateWorkerResponse
    UpdateWorkerScheduleRequest.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerScheduleRequest.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerScheduleRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerScheduleRequest.add_member(:updated_session_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedSessionActions, location_name: 'updatedSessionActions', traits: {"smithy.api#documentation" => "<p>The session actions associated with the worker schedule to update.</p>"}))
    UpdateWorkerScheduleRequest.type = Types::UpdateWorkerScheduleRequest
    UpdateWorkerScheduleResponse.add_member(:assigned_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedSessions, location_name: 'assignedSessions', traits: {"smithy.api#documentation" => "<p>The assigned sessions to update.</p>", "smithy.api#required" => {}}))
    UpdateWorkerScheduleResponse.add_member(:cancel_session_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSessionActions, location_name: 'cancelSessionActions', traits: {"smithy.api#documentation" => "<p>The session actions associated with the worker schedule to cancel.</p>", "smithy.api#required" => {}}))
    UpdateWorkerScheduleResponse.add_member(:desired_worker_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DesiredWorkerStatus, location_name: 'desiredWorkerStatus', traits: {"smithy.api#documentation" => "<p>The status to update the worker to.</p>"}))
    UpdateWorkerScheduleResponse.add_member(:update_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkerScheduleInterval, location_name: 'updateIntervalSeconds', traits: {"smithy.api#documentation" => "<p>Updates the time interval (in seconds) for the schedule.</p>", "smithy.api#required" => {}}))
    UpdateWorkerScheduleResponse.type = Types::UpdateWorkerScheduleResponse
    UpdatedSessionActionInfo.add_member(:completed_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CompletedStatus, location_name: 'completedStatus', traits: {"smithy.api#documentation" => "<p>The status of the session upon completion.</p>"}))
    UpdatedSessionActionInfo.add_member(:process_exit_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessExitCode, location_name: 'processExitCode', traits: {"smithy.api#documentation" => "<p>The process exit code. The default Deadline Cloud worker agent converts unsigned\n         32-bit exit codes to signed 32-bit exit codes.</p>"}))
    UpdatedSessionActionInfo.add_member(:progress_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionProgressMessage, location_name: 'progressMessage', traits: {"smithy.api#documentation" => "<p>A message to indicate the progress of the updated session action.</p>"}))
    UpdatedSessionActionInfo.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>", "smithy.api#timestampFormat" => "date-time"}))
    UpdatedSessionActionInfo.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>", "smithy.api#timestampFormat" => "date-time"}))
    UpdatedSessionActionInfo.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The updated time.</p>", "smithy.api#timestampFormat" => "date-time"}))
    UpdatedSessionActionInfo.add_member(:progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionProgressPercent, location_name: 'progressPercent', traits: {"smithy.api#documentation" => "<p>The percentage completed.</p>"}))
    UpdatedSessionActionInfo.add_member(:manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskRunManifestPropertiesListRequest, location_name: 'manifests', traits: {"smithy.api#documentation" => "<p>A list of output manifest properties reported by the worker\n         agent, with each entry corresponding to a manifest property in the job.</p>"}))
    UpdatedSessionActionInfo.type = Types::UpdatedSessionActionInfo
    UpdatedSessionActions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionActionId)
    UpdatedSessionActions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedSessionActionInfo)
    UpdatedWorkerStatus.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTED', traits: {"smithy.api#enumValue" => "STARTED"}))
    UpdatedWorkerStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    UpdatedWorkerStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    UsageGroupBy.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroupByField)
    UsageGroupByField.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUE_ID', traits: {"smithy.api#enumValue" => "QUEUE_ID"}))
    UsageGroupByField.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_ID', traits: {"smithy.api#enumValue" => "FLEET_ID"}))
    UsageGroupByField.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JOB_ID', traits: {"smithy.api#enumValue" => "JOB_ID"}))
    UsageGroupByField.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_ID', traits: {"smithy.api#enumValue" => "USER_ID"}))
    UsageGroupByField.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE_TYPE', traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    UsageGroupByField.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_TYPE', traits: {"smithy.api#enumValue" => "INSTANCE_TYPE"}))
    UsageGroupByField.add_member(:license_product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LICENSE_PRODUCT', traits: {"smithy.api#enumValue" => "LICENSE_PRODUCT"}))
    UsageStatistic.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUM', traits: {"smithy.api#enumValue" => "SUM"}))
    UsageStatistic.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN', traits: {"smithy.api#enumValue" => "MIN"}))
    UsageStatistic.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX', traits: {"smithy.api#enumValue" => "MAX"}))
    UsageStatistic.add_member(:avg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVG', traits: {"smithy.api#enumValue" => "AVG"}))
    UsageStatistics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatistic)
    UsageTrackingResource.add_member(:queue_id, Types::UsageTrackingResource::QueueId, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID.</p>"}))
    UsageTrackingResource.add_member(:unknown, Types::UsageTrackingResource::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    UsageTrackingResource.type = Types::UsageTrackingResource
    UsageType.add_member(:compute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTE', traits: {"smithy.api#enumValue" => "COMPUTE"}))
    UsageType.add_member(:license, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LICENSE', traits: {"smithy.api#enumValue" => "LICENSE"}))
    UserJobsFirst.add_member(:user_identity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userIdentityId', traits: {"smithy.api#documentation" => "<p>The user's ID.</p>", "smithy.api#required" => {}}))
    UserJobsFirst.type = Types::UserJobsFirst
    VCpuCountRange.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: MinOneMaxTenThousand, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The minimum amount of vCPU.</p>", "smithy.api#required" => {}}))
    VCpuCountRange.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: MinOneMaxTenThousand, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The maximum amount of vCPU.</p>"}))
    VCpuCountRange.type = Types::VCpuCountRange
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason that the request failed validation.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of fields that failed validation.</p>"}))
    ValidationException.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionContext, location_name: 'context', traits: {"smithy.api#documentation" => "<p>Information about the resources in use when the exception was thrown.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message for the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    VpcConfiguration.add_member(:resource_configuration_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcResourceConfigurationArns, location_name: 'resourceConfigurationArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the VPC Lattice resource configurations attached to the fleet.</p>"}))
    VpcConfiguration.type = Types::VpcConfiguration
    VpcResourceConfigurationArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcResourceConfigurationArn)
    WindowsUser.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'user', traits: {"smithy.api#documentation" => "<p>The user.</p>", "smithy.api#length" => {"min" => 0, "max" => 111}, "smithy.api#pattern" => "^[^\"'/\\[\\]:;|=,+*?<>\\s]*$", "smithy.api#required" => {}}))
    WindowsUser.add_member(:password_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'passwordArn', traits: {"smithy.api#documentation" => "<p>The password ARN for the Windows user.</p>", "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):secretsmanager:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:secret:[a-zA-Z0-9-/_+=.@]{1,2028}$", "smithy.api#required" => {}}))
    WindowsUser.type = Types::WindowsUser
    WorkerAmountCapability.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmountCapabilityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the worker amount capability.</p>", "smithy.api#required" => {}}))
    WorkerAmountCapability.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the worker amount capability.</p>", "smithy.api#required" => {}}))
    WorkerAmountCapability.type = Types::WorkerAmountCapability
    WorkerAmountCapabilityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerAmountCapability)
    WorkerAttributeCapability.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeCapabilityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the worker attribute capability.</p>", "smithy.api#required" => {}}))
    WorkerAttributeCapability.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeCapabilityValuesList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of the worker amount capability.</p>", "smithy.api#required" => {}}))
    WorkerAttributeCapability.type = Types::WorkerAttributeCapability
    WorkerAttributeCapabilityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerAttributeCapability)
    WorkerCapabilities.add_member(:amounts, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerAmountCapabilityList, location_name: 'amounts', traits: {"smithy.api#documentation" => "<p>The worker capabilities amounts on a list of worker capabilities.</p>", "smithy.api#required" => {}}))
    WorkerCapabilities.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerAttributeCapabilityList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The worker attribute capabilities in the list of attribute capabilities.</p>", "smithy.api#required" => {}}))
    WorkerCapabilities.type = Types::WorkerCapabilities
    WorkerSearchSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerSearchSummary)
    WorkerSearchSummary.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>"}))
    WorkerSearchSummary.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID.</p>"}))
    WorkerSearchSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the worker search.</p>"}))
    WorkerSearchSummary.add_member(:host_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: 'hostProperties', traits: {"smithy.api#documentation" => "<p>Provides the Amazon EC2 instance properties of the worker host.</p>"}))
    WorkerSearchSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>"}))
    WorkerSearchSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>"}))
    WorkerSearchSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    WorkerSearchSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    WorkerSearchSummary.type = Types::WorkerSearchSummary
    WorkerSessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The session ID for the session action.</p>", "smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'queueId', traits: {"smithy.api#documentation" => "<p>The queue ID for the queue associated to the worker.</p>", "smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for the job associated with the worker's session.</p>", "smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource started running.</p>", "smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLifecycleStatus, location_name: 'lifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status for the worker's session.</p>", "smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EndedAt, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource ended running.</p>"}))
    WorkerSessionSummary.add_member(:target_lifecycle_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionLifecycleTargetStatus, location_name: 'targetLifecycleStatus', traits: {"smithy.api#documentation" => "<p>The life cycle status </p>"}))
    WorkerSessionSummary.type = Types::WorkerSessionSummary
    WorkerStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    WorkerStatus.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTED', traits: {"smithy.api#enumValue" => "STARTED"}))
    WorkerStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    WorkerStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    WorkerStatus.add_member(:not_responding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_RESPONDING', traits: {"smithy.api#enumValue" => "NOT_RESPONDING"}))
    WorkerStatus.add_member(:not_compatible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_COMPATIBLE', traits: {"smithy.api#enumValue" => "NOT_COMPATIBLE"}))
    WorkerStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkerStatus.add_member(:idle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    WorkerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerSummary)
    WorkerSummary.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerId, location_name: 'workerId', traits: {"smithy.api#documentation" => "<p>The worker ID.</p>", "smithy.api#required" => {}}))
    WorkerSummary.add_member(:farm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FarmId, location_name: 'farmId', traits: {"smithy.api#documentation" => "<p>The farm ID.</p>", "smithy.api#required" => {}}))
    WorkerSummary.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p>The fleet ID.</p>", "smithy.api#required" => {}}))
    WorkerSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the worker.</p>", "smithy.api#required" => {}}))
    WorkerSummary.add_member(:host_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: HostPropertiesResponse, location_name: 'hostProperties', traits: {"smithy.api#documentation" => "<p>The host properties of the worker.</p>"}))
    WorkerSummary.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'log', traits: {"smithy.api#documentation" => "<p>The log configuration for the worker.</p>"}))
    WorkerSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}}))
    WorkerSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user or system that created this resource.</p>", "smithy.api#required" => {}}))
    WorkerSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedAt, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was updated.</p>"}))
    WorkerSummary.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The user or system that updated this resource.</p>"}))
    WorkerSummary.type = Types::WorkerSummary

    Deadline = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.deadline#Deadline"
      service.name = "Deadline"
      service.version = "2023-10-12"
      service.traits = {"aws.api#service" => {"sdkId" => "deadline", "arnNamespace" => "deadline"}, "aws.auth#sigv4" => {"name" => "deadline"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "deadline:FarmMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the farm", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:FleetMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the fleet", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:QueueMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the queue", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:JobMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the job", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:RequesterPrincipalId" => {"type" => "String", "documentation" => "Filters access by the user calling the Deadline Cloud API", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:PrincipalId" => {"type" => "String", "documentation" => "Filters access by the principle ID provided in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:AssociatedMembershipLevel" => {"type" => "String", "documentation" => "Filters access by the associated membership level of the principal provided in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:MembershipLevel" => {"type" => "String", "documentation" => "Filters access by the membership level passed in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:CalledAction" => {"type" => "String", "documentation" => "Filters access by the allowed action in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "authorization", "x-amz-date", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-trace-id", "x-amz-client-token", "x-api-key", "x-amz-dryrun"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amz-apigw-id"]}, "smithy.api#title" => "AWSDeadlineCloud"}
      service.add_operation(:associate_member_to_farm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToFarm"
        operation.name = "AssociateMemberToFarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToFarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToFarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToFarm", "documentation" => "Grants permission to associate a member to a farm", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_member_to_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToFleet"
        operation.name = "AssociateMemberToFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToFleet", "documentation" => "Grants permission to associate a member to a fleet", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_member_to_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToJob"
        operation.name = "AssociateMemberToJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToJob", "documentation" => "Grants permission to associate a member to a job", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_member_to_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToQueue"
        operation.name = "AssociateMemberToQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToQueue", "documentation" => "Grants permission to associate a member to a queue", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:assume_fleet_role_for_read, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeFleetRoleForRead"
        operation.name = "AssumeFleetRoleForRead"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeFleetRoleForReadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeFleetRoleForReadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeFleetRoleForRead", "documentation" => "Grants permission to assume a fleet role for read-only access", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/read-roles", "code" => 200}}
      end)
      service.add_operation(:assume_fleet_role_for_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeFleetRoleForWorker"
        operation.name = "AssumeFleetRoleForWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeFleetRoleForWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeFleetRoleForWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeFleetRoleForWorker", "documentation" => "Grants permission to assume a fleet role for a worker"}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/fleet-roles", "code" => 200}}
      end)
      service.add_operation(:assume_queue_role_for_read, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeQueueRoleForRead"
        operation.name = "AssumeQueueRoleForRead"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeQueueRoleForReadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeQueueRoleForReadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeQueueRoleForRead", "documentation" => "Grants permission to assume a queue role for read-only access", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/read-roles", "code" => 200}}
      end)
      service.add_operation(:assume_queue_role_for_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeQueueRoleForUser"
        operation.name = "AssumeQueueRoleForUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeQueueRoleForUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeQueueRoleForUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeQueueRoleForUser", "documentation" => "Grants permission to assume a queue role for a user", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/user-roles", "code" => 200}}
      end)
      service.add_operation(:assume_queue_role_for_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeQueueRoleForWorker"
        operation.name = "AssumeQueueRoleForWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeQueueRoleForWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeQueueRoleForWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeQueueRoleForWorker", "documentation" => "Grants permission to assume a queue role for a worker", "resources" => {"required" => {"worker" => {}, "queue" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/queue-roles", "code" => 200}}
      end)
      service.add_operation(:batch_get_job_entity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#BatchGetJobEntity"
        operation.name = "BatchGetJobEntity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetJobEntityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetJobEntityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "BatchGetJobEntity", "documentation" => "Grants permission to get a job entity for a worker"}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/batchGetJobEntity", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:copy_job_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CopyJobTemplate"
        operation.name = "CopyJobTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyJobTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CopyJobTemplate", "documentation" => "Grants permission to copy a job template to an Amazon S3 bucket", "requiredActions" => ["identitystore:ListGroupMembershipsForMember", "s3:PutObject"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/template", "code" => 200}}
      end)
      service.add_operation(:create_budget, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateBudget"
        operation.name = "CreateBudget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBudgetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBudgetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateBudget", "documentation" => "Grants permission to create a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/budgets", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_farm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateFarm"
        operation.name = "CreateFarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateFarm", "documentation" => "Grants permission to create a farm", "requiredActions" => ["deadline:TagResource"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateFleet", "documentation" => "Grants permission to create a fleet", "requiredActions" => ["deadline:TagResource", "iam:PassRole", "identitystore:ListGroupMembershipsForMember", "logs:CreateLogGroup", "vpc-lattice:GetResourceConfiguration", "vpc-lattice:GetResourceGateway", "ec2:CreateVpcEndpoint"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/fleets", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateJob"
        operation.name = "CreateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateJob", "documentation" => "Grants permission to create a job", "requiredActions" => ["deadline:GetJobTemplate", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_license_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateLicenseEndpoint"
        operation.name = "CreateLicenseEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateLicenseEndpoint", "documentation" => "Grants permission to create a license endpoint for licensed software or products", "requiredActions" => ["deadline:TagResource", "ec2:CreateTags", "ec2:CreateVpcEndpoint", "ec2:DescribeVpcEndpoints"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/license-endpoints", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateLimit"
        operation.name = "CreateLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateLimit", "documentation" => "Grants permission to create a limit for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/limits", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateMonitor"
        operation.name = "CreateMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateMonitor", "documentation" => "Grants permission to create a monitor", "requiredActions" => ["deadline:TagResource", "sso:CreateApplication", "sso:PutApplicationAssignmentConfiguration", "sso:PutApplicationAuthenticationMethod", "sso:PutApplicationGrant", "sso:DeleteApplication", "iam:PassRole"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/monitors", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueue"
        operation.name = "CreateQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateQueue", "documentation" => "Grants permission to create a queue", "requiredActions" => ["deadline:TagResource", "logs:CreateLogGroup", "identitystore:ListGroupMembershipsForMember", "iam:PassRole", "s3:ListBucket"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueueEnvironment"
        operation.name = "CreateQueueEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateQueueEnvironment", "documentation" => "Grants permission to create a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue_fleet_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueueFleetAssociation"
        operation.name = "CreateQueueFleetAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueFleetAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueFleetAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateQueueFleetAssociation", "documentation" => "Grants permission to create a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue_limit_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueueLimitAssociation"
        operation.name = "CreateQueueLimitAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueLimitAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueLimitAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateQueueLimitAssociation", "documentation" => "Grants permission to create a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_storage_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateStorageProfile"
        operation.name = "CreateStorageProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorageProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorageProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateStorageProfile", "documentation" => "Grants permission to create a storage profile for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateWorker"
        operation.name = "CreateWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateWorker", "documentation" => "Grants permission to create a worker", "requiredActions" => ["deadline:TagResource", "deadline:ListTagsForResource"]}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_budget, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteBudget"
        operation.name = "DeleteBudget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBudgetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBudgetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteBudget", "documentation" => "Grants permission to delete a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/budgets/{budgetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_farm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteFarm"
        operation.name = "DeleteFarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteFarm", "documentation" => "Grants permission to delete a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteFleet", "documentation" => "Grants permission to delete a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_license_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteLicenseEndpoint"
        operation.name = "DeleteLicenseEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "DeleteLicenseEndpoint", "documentation" => "Grants permission to delete a license endpoint", "requiredActions" => ["ec2:DeleteVpcEndpoints", "ec2:DescribeVpcEndpoints"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteLimit"
        operation.name = "DeleteLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteLimit", "documentation" => "Grants permission to delete a limit", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/limits/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_metered_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteMeteredProduct"
        operation.name = "DeleteMeteredProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMeteredProductRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMeteredProductResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "DeleteMeteredProduct", "documentation" => "Grants permission to delete a metered product"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteMonitor"
        operation.name = "DeleteMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "DeleteMonitor", "documentation" => "Grants permission to delete a monitor", "requiredActions" => ["sso:DeleteApplication"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/monitors/{monitorId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueue"
        operation.name = "DeleteQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueue", "documentation" => "Grants permission to delete a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueueEnvironment"
        operation.name = "DeleteQueueEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueueEnvironment", "documentation" => "Grants permission to delete a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue_fleet_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueueFleetAssociation"
        operation.name = "DeleteQueueFleetAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueFleetAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueFleetAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueueFleetAssociation", "documentation" => "Grants permission to delete a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue_limit_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueueLimitAssociation"
        operation.name = "DeleteQueueLimitAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueLimitAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueLimitAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueueLimitAssociation", "documentation" => "Grants permission to delete a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_storage_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteStorageProfile"
        operation.name = "DeleteStorageProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteStorageProfile", "documentation" => "Grants permission to delete a storage profile", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteWorker"
        operation.name = "DeleteWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteWorker", "documentation" => "Grants permission to delete a worker"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_farm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromFarm"
        operation.name = "DisassociateMemberFromFarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromFarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromFarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromFarm", "documentation" => "Grants permission to disassociate a member from a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromFleet"
        operation.name = "DisassociateMemberFromFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromFleet", "documentation" => "Grants permission to disassociate a member from a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromJob"
        operation.name = "DisassociateMemberFromJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromJob", "documentation" => "Grants permission to disassociate a member from a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromQueue"
        operation.name = "DisassociateMemberFromQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromQueue", "documentation" => "Grants permission to disassociate a member from a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_budget, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetBudget"
        operation.name = "GetBudget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBudgetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBudgetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetBudget", "documentation" => "Grants permission to get a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/budgets/{budgetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_farm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetFarm"
        operation.name = "GetFarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetFarm", "documentation" => "Grants permission to get a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetFleet"
        operation.name = "GetFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetFleet", "documentation" => "Grants permission to get a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetJob"
        operation.name = "GetJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetJob", "documentation" => "Grants permission to get a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_license_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetLicenseEndpoint"
        operation.name = "GetLicenseEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "GetLicenseEndpoint", "documentation" => "Grants permission to get a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetLimit"
        operation.name = "GetLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetLimit", "documentation" => "Grants permission to get a limit", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/limits/{limitId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetMonitor"
        operation.name = "GetMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "GetMonitor", "documentation" => "Grants permission to get a monitor"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/monitors/{monitorId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueue"
        operation.name = "GetQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueue", "documentation" => "Grants permission to get a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueueEnvironment"
        operation.name = "GetQueueEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueueEnvironment", "documentation" => "Grants permission to get a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue_fleet_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueueFleetAssociation"
        operation.name = "GetQueueFleetAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueFleetAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueFleetAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueueFleetAssociation", "documentation" => "Grants permission to get a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue_limit_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueueLimitAssociation"
        operation.name = "GetQueueLimitAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueLimitAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueLimitAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueueLimitAssociation", "documentation" => "Grants permission to get a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetSession"
        operation.name = "GetSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSession", "documentation" => "Grants permission to get a session for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetSessionAction"
        operation.name = "GetSessionAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSessionAction", "documentation" => "Grants permission to get a session action for a job", "relativeDocumentation" => "API_GetSessionAction.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions/{sessionActionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sessions_statistics_aggregation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetSessionsStatisticsAggregation"
        operation.name = "GetSessionsStatisticsAggregation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionsStatisticsAggregationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionsStatisticsAggregationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSessionsStatisticsAggregation", "documentation" => "Grants permission to get all collected statistics for sessions", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetSessionsStatisticsAggregation.new
      end)
      service.add_operation(:get_step, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetStep"
        operation.name = "GetStep"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStepRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStepResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetStep", "documentation" => "Grants permission to get a step in a job", "relativeDocumentation" => "API_GetStep.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_storage_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetStorageProfile"
        operation.name = "GetStorageProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetStorageProfile", "documentation" => "Grants permission to get a storage profile", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_storage_profile_for_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetStorageProfileForQueue"
        operation.name = "GetStorageProfileForQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageProfileForQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageProfileForQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetStorageProfileForQueue", "documentation" => "Grants permission to get a storage profile for a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetTask"
        operation.name = "GetTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetTask", "documentation" => "Grants permission to get a job task", "relativeDocumentation" => "API_GetTask.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetWorker"
        operation.name = "GetWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetWorker", "documentation" => "Grants permission to get a worker", "relativeDocumentation" => "API_GetWorker.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"worker" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_available_metered_products, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListAvailableMeteredProducts"
        operation.name = "ListAvailableMeteredProducts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableMeteredProductsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableMeteredProductsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListAvailableMeteredProducts", "documentation" => "Grants permission to list all available metered products within a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/metered-products", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAvailableMeteredProducts.new
      end)
      service.add_operation(:list_budgets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListBudgets"
        operation.name = "ListBudgets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBudgetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBudgetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListBudgets", "documentation" => "Grants permission to list all budgets for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/budgets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBudgets.new
      end)
      service.add_operation(:list_farm_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFarmMembers"
        operation.name = "ListFarmMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFarmMembersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFarmMembersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListFarmMembers", "documentation" => "Grants permission to list all members of a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFarmMembers.new
      end)
      service.add_operation(:list_farms, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFarms"
        operation.name = "ListFarms"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFarmsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFarmsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListFarms", "documentation" => "Grants permission to list all farms", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFarms.new
      end)
      service.add_operation(:list_fleet_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFleetMembers"
        operation.name = "ListFleetMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetMembersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetMembersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListFleetMembers", "documentation" => "Grants permission to list all members of a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFleetMembers.new
      end)
      service.add_operation(:list_fleets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFleets"
        operation.name = "ListFleets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListFleets", "documentation" => "Grants permission to list all fleets", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_job_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListJobMembers"
        operation.name = "ListJobMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobMembersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobMembersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListJobMembers", "documentation" => "Grants permission to list all members of a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobMembers.new
      end)
      service.add_operation(:list_job_parameter_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListJobParameterDefinitions"
        operation.name = "ListJobParameterDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobParameterDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobParameterDefinitionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListJobParameterDefinitions", "documentation" => "Grants permission to get a job's parameter definitions in the job template", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/parameter-definitions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobParameterDefinitions.new
      end)
      service.add_operation(:list_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListJobs"
        operation.name = "ListJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListJobs", "documentation" => "Grants permission to list all jobs in a queue", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_license_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListLicenseEndpoints"
        operation.name = "ListLicenseEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListLicenseEndpoints", "documentation" => "Grants permission to list all license endpoints"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/license-endpoints", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLicenseEndpoints.new
      end)
      service.add_operation(:list_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListLimits"
        operation.name = "ListLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimitsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListLimits", "documentation" => "Grants permission to list all limits in a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/limits", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLimits.new
      end)
      service.add_operation(:list_metered_products, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListMeteredProducts"
        operation.name = "ListMeteredProducts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMeteredProductsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMeteredProductsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListMeteredProducts", "documentation" => "Grants permission to list all metered products in a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMeteredProducts.new
      end)
      service.add_operation(:list_monitors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListMonitors"
        operation.name = "ListMonitors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListMonitors", "documentation" => "Grants permission to list all monitors"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/monitors", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMonitors.new
      end)
      service.add_operation(:list_queue_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueEnvironments"
        operation.name = "ListQueueEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueEnvironmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueEnvironmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueEnvironments", "documentation" => "Grants permission to list all queue environments to which a queue is associated", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueEnvironments.new
      end)
      service.add_operation(:list_queue_fleet_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueFleetAssociations"
        operation.name = "ListQueueFleetAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueFleetAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueFleetAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueFleetAssociations", "documentation" => "Grants permission to list all queue-fleet associations", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueFleetAssociations.new
      end)
      service.add_operation(:list_queue_limit_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueLimitAssociations"
        operation.name = "ListQueueLimitAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueLimitAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueLimitAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueLimitAssociations", "documentation" => "Grants permission to list all queue-limit associations", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueLimitAssociations.new
      end)
      service.add_operation(:list_queue_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueMembers"
        operation.name = "ListQueueMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueMembersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueMembersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueMembers", "documentation" => "Grants permission to list all members in a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueMembers.new
      end)
      service.add_operation(:list_queues, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueues"
        operation.name = "ListQueues"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListQueues", "documentation" => "Grants permission to list all queues on a farm", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueues.new
      end)
      service.add_operation(:list_session_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSessionActions"
        operation.name = "ListSessionActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSessionActions", "documentation" => "Grants permission to list all session actions for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessionActions.new
      end)
      service.add_operation(:list_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSessions"
        operation.name = "ListSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSessions", "documentation" => "Grants permission to list all sessions for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_sessions_for_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSessionsForWorker"
        operation.name = "ListSessionsForWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsForWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsForWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSessionsForWorker", "documentation" => "Grants permission to list all sessions for a worker", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/sessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessionsForWorker.new
      end)
      service.add_operation(:list_step_consumers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStepConsumers"
        operation.name = "ListStepConsumers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepConsumersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepConsumersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStepConsumers", "documentation" => "Grants permission to list the step consumers for a job step", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/consumers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStepConsumers.new
      end)
      service.add_operation(:list_step_dependencies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStepDependencies"
        operation.name = "ListStepDependencies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepDependenciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepDependenciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStepDependencies", "documentation" => "Grants permission to list dependencies for a job step", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/dependencies", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStepDependencies.new
      end)
      service.add_operation(:list_steps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSteps"
        operation.name = "ListSteps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSteps", "documentation" => "Grants permission to list all steps for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSteps.new
      end)
      service.add_operation(:list_storage_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStorageProfiles"
        operation.name = "ListStorageProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageProfilesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageProfilesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStorageProfiles", "documentation" => "Grants permission to list all storage profiles in a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStorageProfiles.new
      end)
      service.add_operation(:list_storage_profiles_for_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStorageProfilesForQueue"
        operation.name = "ListStorageProfilesForQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageProfilesForQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageProfilesForQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStorageProfilesForQueue", "documentation" => "Grants permission to list all storage profiles in a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStorageProfilesForQueue.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:CalledAction"], "aws.iam#iamAction" => {"name" => "ListTagsForResource", "documentation" => "Grants permission to list all tags on specified Deadline Cloud resources", "resources" => {"optional" => {"farm" => {}, "fleet" => {}, "license-endpoint" => {}, "queue" => {}, "worker" => {}, "monitor" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListTasks"
        operation.name = "ListTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTasks", "documentation" => "Grants permission to list all tasks for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:list_workers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListWorkers"
        operation.name = "ListWorkers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListWorkers", "documentation" => "Grants permission to list all workers in a fleet", "relativeDocumentation" => "API_ListWorkers.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkers.new
      end)
      service.add_operation(:put_metered_product, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#PutMeteredProduct"
        operation.name = "PutMeteredProduct"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMeteredProductRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMeteredProductResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "PutMeteredProduct", "documentation" => "Grants permission to add a metered product to a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchJobs"
        operation.name = "SearchJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchJobs", "documentation" => "Grants permission to search for jobs in multiple queues", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/jobs", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:search_steps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchSteps"
        operation.name = "SearchSteps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchStepsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchStepsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchSteps", "documentation" => "Grants permission to search the steps within a single job or to search the steps for multiple queues", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/steps", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:search_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchTasks"
        operation.name = "SearchTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchTasks", "documentation" => "Grants permission to search the tasks within a single job or to search the tasks for multiple queues", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/tasks", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:search_workers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchWorkers"
        operation.name = "SearchWorkers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchWorkersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchWorkersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchWorkers", "documentation" => "Grants permission to search for workers in multiple fleets", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/workers", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:start_sessions_statistics_aggregation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#StartSessionsStatisticsAggregation"
        operation.name = "StartSessionsStatisticsAggregation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionsStatisticsAggregationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionsStatisticsAggregationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "StartSessionsStatisticsAggregation", "documentation" => "Grants permission to get all collected statistics for sessions", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "deadline:CalledAction"], "aws.iam#iamAction" => {"name" => "TagResource", "documentation" => "Grants permission to add or overwrite one or more tags for the specified Deadline Cloud resource", "resources" => {"optional" => {"farm" => {}, "fleet" => {}, "license-endpoint" => {}, "queue" => {}, "worker" => {}, "monitor" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"name" => "UntagResource", "documentation" => "Grants permission to disassociate one or more tags from the specified Deadline Cloud resource", "resources" => {"optional" => {"farm" => {}, "fleet" => {}, "license-endpoint" => {}, "queue" => {}, "worker" => {}, "monitor" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_budget, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateBudget"
        operation.name = "UpdateBudget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBudgetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBudgetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateBudget", "documentation" => "Grants permission to update a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/budgets/{budgetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_farm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateFarm"
        operation.name = "UpdateFarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateFarm", "documentation" => "Grants permission to update a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateFleet"
        operation.name = "UpdateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateFleet", "documentation" => "Grants permission to update a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember", "iam:PassRole", "vpc-lattice:GetResourceConfiguration", "vpc-lattice:GetResourceGateway", "ec2:CreateVpcEndpoint"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateJob"
        operation.name = "UpdateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateJob", "documentation" => "Grants permission to update a job", "relativeDocumentation" => "API_UpdateJob.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateLimit"
        operation.name = "UpdateLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateLimit", "documentation" => "Grants permission to update a limit for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/limits/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_monitor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateMonitor"
        operation.name = "UpdateMonitor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "UpdateMonitor", "documentation" => "Grants permission to update a monitor", "requiredActions" => ["sso:UpdateApplication", "sso:PutApplicationGrant", "iam:PassRole"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/monitors/{monitorId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueue"
        operation.name = "UpdateQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueue", "documentation" => "Grants permission to update a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember", "iam:PassRole"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_queue_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueueEnvironment"
        operation.name = "UpdateQueueEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueueEnvironment", "documentation" => "Grants permission to update a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}", "code" => 200}}
      end)
      service.add_operation(:update_queue_fleet_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueueFleetAssociation"
        operation.name = "UpdateQueueFleetAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueFleetAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueFleetAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueueFleetAssociation", "documentation" => "Grants permission to update a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_queue_limit_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueueLimitAssociation"
        operation.name = "UpdateQueueLimitAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueLimitAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueLimitAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueueLimitAssociation", "documentation" => "Grants permission to update a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateSession"
        operation.name = "UpdateSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateSession", "documentation" => "Grants permission to update a session for a job", "relativeDocumentation" => "API_UpdateSession.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_step, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateStep"
        operation.name = "UpdateStep"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStepRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStepResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateStep", "documentation" => "Grants permission to update a step for a job", "relativeDocumentation" => "API_UpdateStep.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_storage_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateStorageProfile"
        operation.name = "UpdateStorageProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStorageProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStorageProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateStorageProfile", "documentation" => "Grants permission to update a storage profile for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateTask"
        operation.name = "UpdateTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateTask", "documentation" => "Grants permission to update a task", "relativeDocumentation" => "API_UpdateTask.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateWorker"
        operation.name = "UpdateWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateWorker", "documentation" => "Grants permission to update a worker", "requiredActions" => ["logs:CreateLogStream"]}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_worker_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateWorkerSchedule"
        operation.name = "UpdateWorkerSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkerScheduleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkerScheduleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateWorkerSchedule", "documentation" => "Grants permission to update the schedule for a worker", "requiredActions" => ["logs:CreateLogStream"]}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/schedule", "code" => 200}, "smithy.api#idempotent" => {}}
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
