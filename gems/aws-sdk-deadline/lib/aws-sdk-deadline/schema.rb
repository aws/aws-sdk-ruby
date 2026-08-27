# frozen_string_literal: true

# This is generated code!

module Aws::Deadline
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceleratorCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AcceleratorCapabilities", name: "AcceleratorCapabilities")
    AcceleratorCountRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AcceleratorCountRange", name: "AcceleratorCountRange")
    AcceleratorName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#AcceleratorName", name: "AcceleratorName")
    AcceleratorRuntime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#AcceleratorRuntime", name: "AcceleratorRuntime", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AcceleratorSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AcceleratorSelection", name: "AcceleratorSelection")
    AcceleratorSelections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#AcceleratorSelections", name: "AcceleratorSelections")
    AcceleratorTotalMemoryMiBRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AcceleratorTotalMemoryMiBRange", name: "AcceleratorTotalMemoryMiBRange")
    AcceleratorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#AcceleratorType", name: "AcceleratorType")
    AcceleratorTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#AcceleratorTypes", name: "AcceleratorTypes")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#AccessKeyId", name: "AccessKeyId", traits: {"smithy.api#sensitive" => {}})
    AcquiredLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AcquiredLimit", name: "AcquiredLimit")
    AcquiredLimits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#AcquiredLimits", name: "AcquiredLimits", traits: {"smithy.api#uniqueItems" => {}})
    AggregationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#AggregationId", name: "AggregationId", traits: {"smithy.api#pattern" => "^[0-9a-f]{32}$"})
    AllowedStorageProfileIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#AllowedStorageProfileIds", name: "AllowedStorageProfileIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#uniqueItems" => {}})
    AmountCapabilityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#AmountCapabilityName", name: "AmountCapabilityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z][a-zA-Z0-9]{0,63}:)?amount(\\.[a-zA-Z][a-zA-Z0-9]{0,63})+$"})
    AmountRequirementName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#AmountRequirementName", name: "AmountRequirementName", traits: {"smithy.api#length" => {"max" => 1024}})
    AssignedEnvironmentEnterSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssignedEnvironmentEnterSessionActionDefinition", name: "AssignedEnvironmentEnterSessionActionDefinition")
    AssignedEnvironmentExitSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssignedEnvironmentExitSessionActionDefinition", name: "AssignedEnvironmentExitSessionActionDefinition")
    AssignedSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssignedSession", name: "AssignedSession")
    AssignedSessionAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssignedSessionAction", name: "AssignedSessionAction")
    AssignedSessionActionDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#AssignedSessionActionDefinition", name: "AssignedSessionActionDefinition")
    AssignedSessionActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#AssignedSessionActions", name: "AssignedSessionActions")
    AssignedSessions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#AssignedSessions", name: "AssignedSessions")
    AssignedSyncInputJobAttachmentsSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssignedSyncInputJobAttachmentsSessionActionDefinition", name: "AssignedSyncInputJobAttachmentsSessionActionDefinition")
    AssignedTaskRunSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssignedTaskRunSessionActionDefinition", name: "AssignedTaskRunSessionActionDefinition")
    AssociateMemberToFarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToFarmRequest", name: "AssociateMemberToFarmRequest", traits: {"aws.api#data" => "permissions"})
    AssociateMemberToFarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToFarmResponse", name: "AssociateMemberToFarmResponse")
    AssociateMemberToFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToFleetRequest", name: "AssociateMemberToFleetRequest", traits: {"aws.api#data" => "permissions"})
    AssociateMemberToFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToFleetResponse", name: "AssociateMemberToFleetResponse")
    AssociateMemberToJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToJobRequest", name: "AssociateMemberToJobRequest", traits: {"aws.api#data" => "permissions"})
    AssociateMemberToJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToJobResponse", name: "AssociateMemberToJobResponse")
    AssociateMemberToQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToQueueRequest", name: "AssociateMemberToQueueRequest", traits: {"aws.api#data" => "permissions"})
    AssociateMemberToQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssociateMemberToQueueResponse", name: "AssociateMemberToQueueResponse")
    AssumeFleetRoleForReadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeFleetRoleForReadRequest", name: "AssumeFleetRoleForReadRequest")
    AssumeFleetRoleForReadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeFleetRoleForReadResponse", name: "AssumeFleetRoleForReadResponse", traits: {"smithy.api#sensitive" => {}})
    AssumeFleetRoleForWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeFleetRoleForWorkerRequest", name: "AssumeFleetRoleForWorkerRequest")
    AssumeFleetRoleForWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeFleetRoleForWorkerResponse", name: "AssumeFleetRoleForWorkerResponse", traits: {"smithy.api#sensitive" => {}})
    AssumeQueueRoleForReadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeQueueRoleForReadRequest", name: "AssumeQueueRoleForReadRequest")
    AssumeQueueRoleForReadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeQueueRoleForReadResponse", name: "AssumeQueueRoleForReadResponse", traits: {"smithy.api#sensitive" => {}})
    AssumeQueueRoleForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeQueueRoleForUserRequest", name: "AssumeQueueRoleForUserRequest")
    AssumeQueueRoleForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeQueueRoleForUserResponse", name: "AssumeQueueRoleForUserResponse", traits: {"smithy.api#sensitive" => {}})
    AssumeQueueRoleForWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeQueueRoleForWorkerRequest", name: "AssumeQueueRoleForWorkerRequest")
    AssumeQueueRoleForWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AssumeQueueRoleForWorkerResponse", name: "AssumeQueueRoleForWorkerResponse", traits: {"smithy.api#sensitive" => {}})
    Attachments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#Attachments", name: "Attachments")
    AttributeCapabilityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#AttributeCapabilityName", name: "AttributeCapabilityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z][a-zA-Z0-9]{0,63}:)?attr(\\.[a-zA-Z][a-zA-Z0-9]{0,63})+$"})
    AttributeCapabilityValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#AttributeCapabilityValue", name: "AttributeCapabilityValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z_]([a-zA-Z0-9_\\-]{0,99})$"})
    AttributeCapabilityValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#AttributeCapabilityValuesList", name: "AttributeCapabilityValuesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AutoScalingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#AutoScalingMode", name: "AutoScalingMode")
    AutoScalingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#AutoScalingStatus", name: "AutoScalingStatus")
    AwsCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#AwsCredentials", name: "AwsCredentials", traits: {"smithy.api#sensitive" => {}})
    BatchGetJobEntityErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#BatchGetJobEntityErrors", name: "BatchGetJobEntityErrors")
    BatchGetJobEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#BatchGetJobEntityList", name: "BatchGetJobEntityList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    BatchGetJobEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#BatchGetJobEntityRequest", name: "BatchGetJobEntityRequest")
    BatchGetJobEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#BatchGetJobEntityResponse", name: "BatchGetJobEntityResponse")
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    BudgetActionToAdd = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#BudgetActionToAdd", name: "BudgetActionToAdd")
    BudgetActionToRemove = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#BudgetActionToRemove", name: "BudgetActionToRemove")
    BudgetActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#BudgetActionType", name: "BudgetActionType")
    BudgetActionsToAdd = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#BudgetActionsToAdd", name: "BudgetActionsToAdd", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BudgetActionsToRemove = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#BudgetActionsToRemove", name: "BudgetActionsToRemove", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BudgetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#BudgetId", name: "BudgetId", traits: {"smithy.api#pattern" => "^budget-[0-9a-f]{32}$"})
    BudgetSchedule = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#BudgetSchedule", name: "BudgetSchedule")
    BudgetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#BudgetStatus", name: "BudgetStatus")
    BudgetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#BudgetSummaries", name: "BudgetSummaries")
    BudgetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#BudgetSummary", name: "BudgetSummary")
    CancelSessionActions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#CancelSessionActions", name: "CancelSessionActions")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CombinationExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#CombinationExpression", name: "CombinationExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 1280}})
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#ComparisonOperator", name: "ComparisonOperator")
    CompletedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#CompletedStatus", name: "CompletedStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#ConflictExceptionReason", name: "ConflictExceptionReason")
    ConsumedUsageLimit = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.deadline#ConsumedUsageLimit", name: "ConsumedUsageLimit", traits: {"smithy.api#range" => {"min" => 0.01}})
    ConsumedUsages = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ConsumedUsages", name: "ConsumedUsages")
    CopyJobTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CopyJobTemplateRequest", name: "CopyJobTemplateRequest")
    CopyJobTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CopyJobTemplateResponse", name: "CopyJobTemplateResponse")
    CpuArchitectureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#CpuArchitectureType", name: "CpuArchitectureType")
    CreateBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateBudgetRequest", name: "CreateBudgetRequest")
    CreateBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateBudgetResponse", name: "CreateBudgetResponse")
    CreateFarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateFarmRequest", name: "CreateFarmRequest")
    CreateFarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateFarmResponse", name: "CreateFarmResponse")
    CreateFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateFleetRequest", name: "CreateFleetRequest")
    CreateFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateFleetResponse", name: "CreateFleetResponse")
    CreateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateJobRequest", name: "CreateJobRequest")
    CreateJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateJobResponse", name: "CreateJobResponse")
    CreateJobTargetTaskRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#CreateJobTargetTaskRunStatus", name: "CreateJobTargetTaskRunStatus")
    CreateLicenseEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateLicenseEndpointRequest", name: "CreateLicenseEndpointRequest")
    CreateLicenseEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateLicenseEndpointResponse", name: "CreateLicenseEndpointResponse")
    CreateLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateLimitRequest", name: "CreateLimitRequest")
    CreateLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateLimitResponse", name: "CreateLimitResponse")
    CreateMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateMonitorRequest", name: "CreateMonitorRequest")
    CreateMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateMonitorResponse", name: "CreateMonitorResponse")
    CreateQueueEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueEnvironmentRequest", name: "CreateQueueEnvironmentRequest")
    CreateQueueEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueEnvironmentResponse", name: "CreateQueueEnvironmentResponse")
    CreateQueueFleetAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueFleetAssociationRequest", name: "CreateQueueFleetAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    CreateQueueFleetAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueFleetAssociationResponse", name: "CreateQueueFleetAssociationResponse")
    CreateQueueLimitAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueLimitAssociationRequest", name: "CreateQueueLimitAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    CreateQueueLimitAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueLimitAssociationResponse", name: "CreateQueueLimitAssociationResponse")
    CreateQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueRequest", name: "CreateQueueRequest")
    CreateQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateQueueResponse", name: "CreateQueueResponse")
    CreateStorageProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateStorageProfileRequest", name: "CreateStorageProfileRequest")
    CreateStorageProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateStorageProfileResponse", name: "CreateStorageProfileResponse")
    CreateWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateWorkerRequest", name: "CreateWorkerRequest")
    CreateWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CreateWorkerResponse", name: "CreateWorkerResponse")
    CreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.deadline#CreatedAt", name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"})
    CreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#CreatedBy", name: "CreatedBy")
    CustomFleetAmountCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#CustomFleetAmountCapabilities", name: "CustomFleetAmountCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    CustomFleetAttributeCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#CustomFleetAttributeCapabilities", name: "CustomFleetAttributeCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    CustomerManagedFleetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CustomerManagedFleetConfiguration", name: "CustomerManagedFleetConfiguration")
    CustomerManagedFleetOperatingSystemFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#CustomerManagedFleetOperatingSystemFamily", name: "CustomerManagedFleetOperatingSystemFamily")
    CustomerManagedWorkerCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#CustomerManagedWorkerCapabilities", name: "CustomerManagedWorkerCapabilities")
    DateTimeFilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DateTimeFilterExpression", name: "DateTimeFilterExpression")
    DeadlinePrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#DeadlinePrincipalType", name: "DeadlinePrincipalType")
    DefaultQueueBudgetAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#DefaultQueueBudgetAction", name: "DefaultQueueBudgetAction")
    DeleteBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteBudgetRequest", name: "DeleteBudgetRequest")
    DeleteBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteBudgetResponse", name: "DeleteBudgetResponse")
    DeleteFarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteFarmRequest", name: "DeleteFarmRequest")
    DeleteFarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteFarmResponse", name: "DeleteFarmResponse")
    DeleteFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteFleetRequest", name: "DeleteFleetRequest")
    DeleteFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteFleetResponse", name: "DeleteFleetResponse")
    DeleteLicenseEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteLicenseEndpointRequest", name: "DeleteLicenseEndpointRequest")
    DeleteLicenseEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteLicenseEndpointResponse", name: "DeleteLicenseEndpointResponse")
    DeleteLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteLimitRequest", name: "DeleteLimitRequest")
    DeleteLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteLimitResponse", name: "DeleteLimitResponse")
    DeleteMeteredProductRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteMeteredProductRequest", name: "DeleteMeteredProductRequest")
    DeleteMeteredProductResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteMeteredProductResponse", name: "DeleteMeteredProductResponse")
    DeleteMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteMonitorRequest", name: "DeleteMonitorRequest")
    DeleteMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteMonitorResponse", name: "DeleteMonitorResponse")
    DeleteQueueEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueEnvironmentRequest", name: "DeleteQueueEnvironmentRequest")
    DeleteQueueEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueEnvironmentResponse", name: "DeleteQueueEnvironmentResponse")
    DeleteQueueFleetAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueFleetAssociationRequest", name: "DeleteQueueFleetAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    DeleteQueueFleetAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueFleetAssociationResponse", name: "DeleteQueueFleetAssociationResponse")
    DeleteQueueLimitAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueLimitAssociationRequest", name: "DeleteQueueLimitAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    DeleteQueueLimitAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueLimitAssociationResponse", name: "DeleteQueueLimitAssociationResponse")
    DeleteQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueRequest", name: "DeleteQueueRequest")
    DeleteQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteQueueResponse", name: "DeleteQueueResponse")
    DeleteStorageProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteStorageProfileRequest", name: "DeleteStorageProfileRequest")
    DeleteStorageProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteStorageProfileResponse", name: "DeleteStorageProfileResponse")
    DeleteWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteWorkerRequest", name: "DeleteWorkerRequest")
    DeleteWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DeleteWorkerResponse", name: "DeleteWorkerResponse")
    DependenciesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#DependenciesList", name: "DependenciesList")
    DependencyConsumerResolutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#DependencyConsumerResolutionStatus", name: "DependencyConsumerResolutionStatus")
    DependencyCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DependencyCounts", name: "DependencyCounts")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    DesiredWorkerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#DesiredWorkerStatus", name: "DesiredWorkerStatus")
    DisassociateMemberFromFarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromFarmRequest", name: "DisassociateMemberFromFarmRequest", traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromFarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromFarmResponse", name: "DisassociateMemberFromFarmResponse")
    DisassociateMemberFromFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromFleetRequest", name: "DisassociateMemberFromFleetRequest", traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromFleetResponse", name: "DisassociateMemberFromFleetResponse")
    DisassociateMemberFromJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromJobRequest", name: "DisassociateMemberFromJobRequest", traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromJobResponse", name: "DisassociateMemberFromJobResponse")
    DisassociateMemberFromQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromQueueRequest", name: "DisassociateMemberFromQueueRequest", traits: {"aws.api#data" => "permissions"})
    DisassociateMemberFromQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#DisassociateMemberFromQueueResponse", name: "DisassociateMemberFromQueueResponse")
    DnsName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#DnsName", name: "DnsName")
    Document = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.deadline#Document", name: "Document", traits: {"smithy.api#sensitive" => {}})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.deadline#Double", name: "Double")
    EbsIops = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#EbsIops", name: "EbsIops", traits: {"smithy.api#range" => {"min" => 3000, "max" => 16000}})
    EbsThroughputMiB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#EbsThroughputMiB", name: "EbsThroughputMiB", traits: {"smithy.api#range" => {"min" => 125, "max" => 1000}})
    Ec2EbsVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#Ec2EbsVolume", name: "Ec2EbsVolume")
    Ec2MarketType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#Ec2MarketType", name: "Ec2MarketType")
    EndedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.deadline#EndedAt", name: "EndedAt", traits: {"smithy.api#timestampFormat" => "date-time"})
    EndsAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.deadline#EndsAt", name: "EndsAt", traits: {"smithy.api#timestampFormat" => "date-time"})
    EnvironmentDetailsEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#EnvironmentDetailsEntity", name: "EnvironmentDetailsEntity")
    EnvironmentDetailsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#EnvironmentDetailsError", name: "EnvironmentDetailsError")
    EnvironmentDetailsIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#EnvironmentDetailsIdentifiers", name: "EnvironmentDetailsIdentifiers")
    EnvironmentEnterSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#EnvironmentEnterSessionActionDefinition", name: "EnvironmentEnterSessionActionDefinition")
    EnvironmentEnterSessionActionDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#EnvironmentEnterSessionActionDefinitionSummary", name: "EnvironmentEnterSessionActionDefinitionSummary")
    EnvironmentExitSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#EnvironmentExitSessionActionDefinition", name: "EnvironmentExitSessionActionDefinition")
    EnvironmentExitSessionActionDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#EnvironmentExitSessionActionDefinitionSummary", name: "EnvironmentExitSessionActionDefinitionSummary")
    EnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#EnvironmentId", name: "EnvironmentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(STEP:step-[0-9a-f]{32}:.*)|(JOB:job-[0-9a-f]{32}:.*)$"})
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#EnvironmentName", name: "EnvironmentName")
    EnvironmentTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#EnvironmentTemplate", name: "EnvironmentTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 15000}, "smithy.api#sensitive" => {}})
    EnvironmentTemplateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#EnvironmentTemplateType", name: "EnvironmentTemplateType")
    ExceptionContext = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#ExceptionContext", name: "ExceptionContext")
    FarmId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#FarmId", name: "FarmId", traits: {"smithy.api#pattern" => "^farm-[0-9a-f]{32}$"})
    FarmMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FarmMember", name: "FarmMember")
    FarmMembers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FarmMembers", name: "FarmMembers")
    FarmSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FarmSummaries", name: "FarmSummaries")
    FarmSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FarmSummary", name: "FarmSummary")
    FieldSortExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FieldSortExpression", name: "FieldSortExpression")
    FileSystemLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FileSystemLocation", name: "FileSystemLocation", traits: {"smithy.api#sensitive" => {}})
    FileSystemLocationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#FileSystemLocationName", name: "FileSystemLocationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z ]*$"})
    FileSystemLocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#FileSystemLocationType", name: "FileSystemLocationType")
    FileSystemLocationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FileSystemLocationsList", name: "FileSystemLocationsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    FixedBudgetSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FixedBudgetSchedule", name: "FixedBudgetSchedule")
    FleetAmountCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FleetAmountCapabilities", name: "FleetAmountCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    FleetAmountCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FleetAmountCapability", name: "FleetAmountCapability")
    FleetAttributeCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FleetAttributeCapabilities", name: "FleetAttributeCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    FleetAttributeCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FleetAttributeCapability", name: "FleetAttributeCapability")
    FleetCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FleetCapabilities", name: "FleetCapabilities")
    FleetConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#FleetConfiguration", name: "FleetConfiguration")
    FleetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#FleetId", name: "FleetId", traits: {"smithy.api#pattern" => "^fleet-[0-9a-f]{32}$"})
    FleetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FleetIds", name: "FleetIds", traits: {"smithy.api#length" => {"min" => 1}})
    FleetMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FleetMember", name: "FleetMember")
    FleetMembers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FleetMembers", name: "FleetMembers")
    FleetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#FleetStatus", name: "FleetStatus")
    FleetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#FleetSummaries", name: "FleetSummaries")
    FleetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#FleetSummary", name: "FleetSummary")
    FloatString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#FloatString", name: "FloatString", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}, "smithy.api#pattern" => "^[-]?(0|[1-9][0-9]*)([.][0-9]+)?([eE][+-]?[0-9]+)?$"})
    GetBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetBudgetRequest", name: "GetBudgetRequest")
    GetBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetBudgetResponse", name: "GetBudgetResponse")
    GetFarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetFarmRequest", name: "GetFarmRequest")
    GetFarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetFarmResponse", name: "GetFarmResponse")
    GetFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetFleetRequest", name: "GetFleetRequest")
    GetFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetFleetResponse", name: "GetFleetResponse")
    GetJobEntityError = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#GetJobEntityError", name: "GetJobEntityError")
    GetJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetJobRequest", name: "GetJobRequest")
    GetJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetJobResponse", name: "GetJobResponse")
    GetLicenseEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetLicenseEndpointRequest", name: "GetLicenseEndpointRequest")
    GetLicenseEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetLicenseEndpointResponse", name: "GetLicenseEndpointResponse")
    GetLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetLimitRequest", name: "GetLimitRequest")
    GetLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetLimitResponse", name: "GetLimitResponse")
    GetMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetMonitorRequest", name: "GetMonitorRequest")
    GetMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetMonitorResponse", name: "GetMonitorResponse")
    GetQueueEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueEnvironmentRequest", name: "GetQueueEnvironmentRequest")
    GetQueueEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueEnvironmentResponse", name: "GetQueueEnvironmentResponse")
    GetQueueFleetAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueFleetAssociationRequest", name: "GetQueueFleetAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    GetQueueFleetAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueFleetAssociationResponse", name: "GetQueueFleetAssociationResponse")
    GetQueueLimitAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueLimitAssociationRequest", name: "GetQueueLimitAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    GetQueueLimitAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueLimitAssociationResponse", name: "GetQueueLimitAssociationResponse")
    GetQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueRequest", name: "GetQueueRequest")
    GetQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetQueueResponse", name: "GetQueueResponse")
    GetSessionActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetSessionActionRequest", name: "GetSessionActionRequest")
    GetSessionActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetSessionActionResponse", name: "GetSessionActionResponse")
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetSessionRequest", name: "GetSessionRequest")
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetSessionResponse", name: "GetSessionResponse")
    GetSessionsStatisticsAggregationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetSessionsStatisticsAggregationRequest", name: "GetSessionsStatisticsAggregationRequest")
    GetSessionsStatisticsAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetSessionsStatisticsAggregationResponse", name: "GetSessionsStatisticsAggregationResponse")
    GetStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetStepRequest", name: "GetStepRequest")
    GetStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetStepResponse", name: "GetStepResponse")
    GetStorageProfileForQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetStorageProfileForQueueRequest", name: "GetStorageProfileForQueueRequest")
    GetStorageProfileForQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetStorageProfileForQueueResponse", name: "GetStorageProfileForQueueResponse")
    GetStorageProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetStorageProfileRequest", name: "GetStorageProfileRequest")
    GetStorageProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetStorageProfileResponse", name: "GetStorageProfileResponse")
    GetTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetTaskRequest", name: "GetTaskRequest")
    GetTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetTaskResponse", name: "GetTaskResponse")
    GetWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetWorkerRequest", name: "GetWorkerRequest")
    GetWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#GetWorkerResponse", name: "GetWorkerResponse")
    HostConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#HostConfiguration", name: "HostConfiguration")
    HostConfigurationScript = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#HostConfigurationScript", name: "HostConfigurationScript", traits: {"smithy.api#length" => {"min" => 0, "max" => 15000}, "smithy.api#sensitive" => {}})
    HostConfigurationScriptTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#HostConfigurationScriptTimeoutSeconds", name: "HostConfigurationScriptTimeoutSeconds", traits: {"smithy.api#range" => {"min" => 300, "max" => 3600}})
    HostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#HostName", name: "HostName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]{0,255}$"})
    HostPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#HostPropertiesRequest", name: "HostPropertiesRequest")
    HostPropertiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#HostPropertiesResponse", name: "HostPropertiesResponse")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):iam::\\d{12}:role(/[!-.0-~]+)*/[\\w+=,.@-]+$"})
    IdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IdentityCenterApplicationArn", name: "IdentityCenterApplicationArn")
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IdentityCenterInstanceArn", name: "IdentityCenterInstanceArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IdentityCenterPrincipalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IdentityCenterPrincipalId", name: "IdentityCenterPrincipalId", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    IdentityStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IdentityStoreId", name: "IdentityStoreId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$|^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#InstanceType", name: "InstanceType", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]+\\.[a-zA-Z0-9]+$"})
    InstanceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#InstanceTypes", name: "InstanceTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IntString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IntString", name: "IntString", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[-]?(0|[1-9][0-9]*)$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#Integer", name: "Integer")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddresses = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#IpAddresses", name: "IpAddresses")
    IpV4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IpV4Address", name: "IpV4Address", traits: {"smithy.api#pattern" => "^(?:[0-9]{1,3}\\.){3}[0-9]{1,3}$"})
    IpV4Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#IpV4Addresses", name: "IpV4Addresses")
    IpV6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#IpV6Address", name: "IpV6Address", traits: {"smithy.api#pattern" => "^(?:[A-F0-9]{1,4}:){7}[A-F0-9]{1,4}$"})
    IpV6Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#IpV6Addresses", name: "IpV6Addresses")
    JobAttachmentDetailsEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobAttachmentDetailsEntity", name: "JobAttachmentDetailsEntity")
    JobAttachmentDetailsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobAttachmentDetailsError", name: "JobAttachmentDetailsError")
    JobAttachmentDetailsIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobAttachmentDetailsIdentifiers", name: "JobAttachmentDetailsIdentifiers")
    JobAttachmentSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobAttachmentSettings", name: "JobAttachmentSettings")
    JobAttachmentsFileSystem = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#JobAttachmentsFileSystem", name: "JobAttachmentsFileSystem")
    JobDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#JobDescription", name: "JobDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    JobDetailsEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobDetailsEntity", name: "JobDetailsEntity")
    JobDetailsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobDetailsError", name: "JobDetailsError")
    JobDetailsIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobDetailsIdentifiers", name: "JobDetailsIdentifiers")
    JobEntity = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#JobEntity", name: "JobEntity")
    JobEntityErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#JobEntityErrorCode", name: "JobEntityErrorCode")
    JobEntityIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#JobEntityIdentifiers", name: "JobEntityIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    JobEntityIdentifiersUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#JobEntityIdentifiersUnion", name: "JobEntityIdentifiersUnion")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#JobId", name: "JobId", traits: {"smithy.api#pattern" => "^job-[0-9a-f]{32}$"})
    JobLifecycleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#JobLifecycleStatus", name: "JobLifecycleStatus")
    JobMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobMember", name: "JobMember")
    JobMembers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#JobMembers", name: "JobMembers")
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    JobParameter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#JobParameter", name: "JobParameter")
    JobParameterDefinition = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.deadline#JobParameterDefinition", name: "JobParameterDefinition")
    JobParameterDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#JobParameterDefinitions", name: "JobParameterDefinitions")
    JobParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#JobParameters", name: "JobParameters", traits: {"smithy.api#sensitive" => {}})
    JobPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#JobPriority", name: "JobPriority", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    JobRunAsUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobRunAsUser", name: "JobRunAsUser")
    JobSearchSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#JobSearchSummaries", name: "JobSearchSummaries")
    JobSearchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobSearchSummary", name: "JobSearchSummary")
    JobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#JobSummaries", name: "JobSummaries")
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#JobSummary", name: "JobSummary")
    JobTargetTaskRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#JobTargetTaskRunStatus", name: "JobTargetTaskRunStatus")
    JobTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#JobTemplate", name: "JobTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}, "smithy.api#sensitive" => {}})
    JobTemplateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#JobTemplateType", name: "JobTemplateType")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):kms:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:key/[\\w-]{1,120}$"})
    LicenseEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#LicenseEndpointId", name: "LicenseEndpointId", traits: {"smithy.api#pattern" => "^le-[0-9a-f]{32}$"})
    LicenseEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#LicenseEndpointStatus", name: "LicenseEndpointStatus")
    LicenseEndpointSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#LicenseEndpointSummaries", name: "LicenseEndpointSummaries")
    LicenseEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#LicenseEndpointSummary", name: "LicenseEndpointSummary")
    LicenseProduct = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#LicenseProduct", name: "LicenseProduct")
    LimitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#LimitId", name: "LimitId", traits: {"smithy.api#pattern" => "^limit-[0-9a-f]{32}$"})
    LimitSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#LimitSummaries", name: "LimitSummaries")
    LimitSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#LimitSummary", name: "LimitSummary", traits: {"smithy.api#tags" => ["concurrent_limits"]})
    ListAttributeCapabilityValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#ListAttributeCapabilityValue", name: "ListAttributeCapabilityValue")
    ListAvailableMeteredProductsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListAvailableMeteredProductsRequest", name: "ListAvailableMeteredProductsRequest")
    ListAvailableMeteredProductsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListAvailableMeteredProductsResponse", name: "ListAvailableMeteredProductsResponse")
    ListBudgetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListBudgetsRequest", name: "ListBudgetsRequest")
    ListBudgetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListBudgetsResponse", name: "ListBudgetsResponse")
    ListFarmMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFarmMembersRequest", name: "ListFarmMembersRequest")
    ListFarmMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFarmMembersResponse", name: "ListFarmMembersResponse")
    ListFarmsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFarmsRequest", name: "ListFarmsRequest")
    ListFarmsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFarmsResponse", name: "ListFarmsResponse")
    ListFleetMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFleetMembersRequest", name: "ListFleetMembersRequest")
    ListFleetMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFleetMembersResponse", name: "ListFleetMembersResponse")
    ListFleetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFleetsRequest", name: "ListFleetsRequest")
    ListFleetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListFleetsResponse", name: "ListFleetsResponse")
    ListJobMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListJobMembersRequest", name: "ListJobMembersRequest")
    ListJobMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListJobMembersResponse", name: "ListJobMembersResponse")
    ListJobParameterDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListJobParameterDefinitionsRequest", name: "ListJobParameterDefinitionsRequest")
    ListJobParameterDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListJobParameterDefinitionsResponse", name: "ListJobParameterDefinitionsResponse")
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListJobsRequest", name: "ListJobsRequest")
    ListJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListJobsResponse", name: "ListJobsResponse")
    ListLicenseEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListLicenseEndpointsRequest", name: "ListLicenseEndpointsRequest")
    ListLicenseEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListLicenseEndpointsResponse", name: "ListLicenseEndpointsResponse")
    ListLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListLimitsRequest", name: "ListLimitsRequest")
    ListLimitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListLimitsResponse", name: "ListLimitsResponse")
    ListMeteredProductsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListMeteredProductsRequest", name: "ListMeteredProductsRequest")
    ListMeteredProductsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListMeteredProductsResponse", name: "ListMeteredProductsResponse")
    ListMonitorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListMonitorsRequest", name: "ListMonitorsRequest")
    ListMonitorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListMonitorsResponse", name: "ListMonitorsResponse")
    ListQueueEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueEnvironmentsRequest", name: "ListQueueEnvironmentsRequest")
    ListQueueEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueEnvironmentsResponse", name: "ListQueueEnvironmentsResponse")
    ListQueueFleetAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueFleetAssociationsRequest", name: "ListQueueFleetAssociationsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    ListQueueFleetAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueFleetAssociationsResponse", name: "ListQueueFleetAssociationsResponse")
    ListQueueLimitAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueLimitAssociationsRequest", name: "ListQueueLimitAssociationsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    ListQueueLimitAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueLimitAssociationsResponse", name: "ListQueueLimitAssociationsResponse")
    ListQueueMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueMembersRequest", name: "ListQueueMembersRequest")
    ListQueueMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueueMembersResponse", name: "ListQueueMembersResponse")
    ListQueuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueuesRequest", name: "ListQueuesRequest")
    ListQueuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListQueuesResponse", name: "ListQueuesResponse")
    ListSessionActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListSessionActionsRequest", name: "ListSessionActionsRequest")
    ListSessionActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListSessionActionsResponse", name: "ListSessionActionsResponse")
    ListSessionsForWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListSessionsForWorkerRequest", name: "ListSessionsForWorkerRequest")
    ListSessionsForWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListSessionsForWorkerResponse", name: "ListSessionsForWorkerResponse")
    ListSessionsForWorkerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#ListSessionsForWorkerSummaries", name: "ListSessionsForWorkerSummaries")
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListSessionsRequest", name: "ListSessionsRequest")
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListSessionsResponse", name: "ListSessionsResponse")
    ListStepConsumersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStepConsumersRequest", name: "ListStepConsumersRequest")
    ListStepConsumersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStepConsumersResponse", name: "ListStepConsumersResponse")
    ListStepDependenciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStepDependenciesRequest", name: "ListStepDependenciesRequest")
    ListStepDependenciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStepDependenciesResponse", name: "ListStepDependenciesResponse")
    ListStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStepsRequest", name: "ListStepsRequest")
    ListStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStepsResponse", name: "ListStepsResponse")
    ListStorageProfilesForQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStorageProfilesForQueueRequest", name: "ListStorageProfilesForQueueRequest")
    ListStorageProfilesForQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStorageProfilesForQueueResponse", name: "ListStorageProfilesForQueueResponse")
    ListStorageProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStorageProfilesRequest", name: "ListStorageProfilesRequest")
    ListStorageProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListStorageProfilesResponse", name: "ListStorageProfilesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource", "ids" => {"farmId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#FleetResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#QueueResource", "ids" => {"farmId" => "resourceArn", "queueId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#LicenseEndpointResource", "ids" => {"licenseEndpointId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#WorkerResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn", "workerId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#MonitorResource", "ids" => {"monitorId" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListTasksRequest", name: "ListTasksRequest")
    ListTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListTasksResponse", name: "ListTasksResponse")
    ListWorkersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListWorkersRequest", name: "ListWorkersRequest")
    ListWorkersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ListWorkersResponse", name: "ListWorkersResponse")
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#LogConfiguration", name: "LogConfiguration")
    LogDriver = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#LogDriver", name: "LogDriver", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#LogError", name: "LogError", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#LogOptions", name: "LogOptions")
    LogParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#LogParameters", name: "LogParameters")
    LogicalOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#LogicalOperator", name: "LogicalOperator")
    ManifestProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ManifestProperties", name: "ManifestProperties", traits: {"smithy.api#sensitive" => {}})
    ManifestPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#ManifestPropertiesList", name: "ManifestPropertiesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    MaxCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MaxCount", name: "MaxCount", traits: {"smithy.api#range" => {"min" => -1, "max" => 2147483647}})
    MaxFailedTasksCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MaxFailedTasksCount", name: "MaxFailedTasksCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxRetriesPerTask = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MaxRetriesPerTask", name: "MaxRetriesPerTask", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MaxWorkerCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MaxWorkerCount", name: "MaxWorkerCount", traits: {"smithy.api#range" => {"min" => -1, "max" => 2147483647}})
    MembershipLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#MembershipLevel", name: "MembershipLevel")
    MemoryAmountMiB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MemoryAmountMiB", name: "MemoryAmountMiB", traits: {"smithy.api#range" => {"min" => 512, "max" => 2147483647}})
    MemoryMiBRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#MemoryMiBRange", name: "MemoryMiBRange")
    MeteredProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#MeteredProductId", name: "MeteredProductId", traits: {"smithy.api#pattern" => "^[0-9a-z]{1,32}-[.0-9a-z]{1,32}$"})
    MeteredProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#MeteredProductSummary", name: "MeteredProductSummary")
    MeteredProductSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#MeteredProductSummaryList", name: "MeteredProductSummaryList")
    MinOneMaxInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MinOneMaxInteger", name: "MinOneMaxInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 2147483647}})
    MinOneMaxTenThousand = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MinOneMaxTenThousand", name: "MinOneMaxTenThousand", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MinZeroMaxInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#MinZeroMaxInteger", name: "MinZeroMaxInteger", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MonitorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#MonitorId", name: "MonitorId", traits: {"smithy.api#pattern" => "^monitor-[0-9a-f]{32}$"})
    MonitorSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#MonitorSummaries", name: "MonitorSummaries")
    MonitorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#MonitorSummary", name: "MonitorSummary")
    NextItemOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#NextItemOffset", name: "NextItemOffset", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    OutputRelativeDirectoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#OutputRelativeDirectoriesList", name: "OutputRelativeDirectoriesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#uniqueItems" => {}})
    ParameterFilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ParameterFilterExpression", name: "ParameterFilterExpression")
    ParameterSortExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ParameterSortExpression", name: "ParameterSortExpression")
    ParameterSpace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ParameterSpace", name: "ParameterSpace")
    ParameterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#ParameterString", name: "ParameterString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PathFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#PathFormat", name: "PathFormat")
    PathMappingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#PathMappingRule", name: "PathMappingRule", traits: {"smithy.api#sensitive" => {}})
    PathMappingRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#PathMappingRules", name: "PathMappingRules")
    PathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#PathString", name: "PathString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Period = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#Period", name: "Period")
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 1024, "max" => 65535}})
    PosixUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#PosixUser", name: "PosixUser")
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#Priority", name: "Priority", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    ProcessExitCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#ProcessExitCode", name: "ProcessExitCode", traits: {"smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}})
    PutMeteredProductRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#PutMeteredProductRequest", name: "PutMeteredProductRequest")
    PutMeteredProductResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#PutMeteredProductResponse", name: "PutMeteredProductResponse")
    QueueBlockedReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#QueueBlockedReason", name: "QueueBlockedReason")
    QueueEnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#QueueEnvironmentId", name: "QueueEnvironmentId", traits: {"smithy.api#pattern" => "^queueenv-[0-9a-f]{32}$"})
    QueueEnvironmentSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#QueueEnvironmentSummaries", name: "QueueEnvironmentSummaries")
    QueueEnvironmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#QueueEnvironmentSummary", name: "QueueEnvironmentSummary")
    QueueFleetAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#QueueFleetAssociationStatus", name: "QueueFleetAssociationStatus")
    QueueFleetAssociationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#QueueFleetAssociationSummaries", name: "QueueFleetAssociationSummaries")
    QueueFleetAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#QueueFleetAssociationSummary", name: "QueueFleetAssociationSummary")
    QueueId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#QueueId", name: "QueueId", traits: {"smithy.api#pattern" => "^queue-[0-9a-f]{32}$"})
    QueueIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#QueueIds", name: "QueueIds", traits: {"smithy.api#length" => {"min" => 1}})
    QueueLimitAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#QueueLimitAssociationStatus", name: "QueueLimitAssociationStatus")
    QueueLimitAssociationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#QueueLimitAssociationSummaries", name: "QueueLimitAssociationSummaries")
    QueueLimitAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#QueueLimitAssociationSummary", name: "QueueLimitAssociationSummary", traits: {"smithy.api#tags" => ["concurrent_limits"]})
    QueueMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#QueueMember", name: "QueueMember")
    QueueMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#QueueMemberList", name: "QueueMemberList")
    QueueStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#QueueStatus", name: "QueueStatus")
    QueueSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#QueueSummaries", name: "QueueSummaries")
    QueueSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#QueueSummary", name: "QueueSummary")
    RequiredFileSystemLocationNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#RequiredFileSystemLocationNames", name: "RequiredFileSystemLocationNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#uniqueItems" => {}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseBudgetAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ResponseBudgetAction", name: "ResponseBudgetAction")
    ResponseBudgetActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#ResponseBudgetActionList", name: "ResponseBudgetActionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RunAs = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#RunAs", name: "RunAs")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#S3Location", name: "S3Location")
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9-_/]+$"})
    SearchFilterExpression = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#SearchFilterExpression", name: "SearchFilterExpression")
    SearchFilterExpressions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#SearchFilterExpressions", name: "SearchFilterExpressions", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    SearchGroupedFilterExpressions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchGroupedFilterExpressions", name: "SearchGroupedFilterExpressions")
    SearchJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchJobsRequest", name: "SearchJobsRequest")
    SearchJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchJobsResponse", name: "SearchJobsResponse")
    SearchSortExpression = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#SearchSortExpression", name: "SearchSortExpression")
    SearchSortExpressions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#SearchSortExpressions", name: "SearchSortExpressions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SearchStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchStepsRequest", name: "SearchStepsRequest")
    SearchStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchStepsResponse", name: "SearchStepsResponse")
    SearchTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchTasksRequest", name: "SearchTasksRequest")
    SearchTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchTasksResponse", name: "SearchTasksResponse")
    SearchTerm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SearchTerm", name: "SearchTerm", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SearchTermFilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchTermFilterExpression", name: "SearchTermFilterExpression")
    SearchTermMatchingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#SearchTermMatchingType", name: "SearchTermMatchingType")
    SearchWorkersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchWorkersRequest", name: "SearchWorkersRequest")
    SearchWorkersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SearchWorkersResponse", name: "SearchWorkersResponse")
    SecretAccessKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SecretAccessKey", name: "SecretAccessKey", traits: {"smithy.api#sensitive" => {}})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#pattern" => "^sg-[\\w]{1,120}$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#SecurityGroupIdList", name: "SecurityGroupIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ServiceManagedEc2FleetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ServiceManagedEc2FleetConfiguration", name: "ServiceManagedEc2FleetConfiguration")
    ServiceManagedEc2InstanceCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ServiceManagedEc2InstanceCapabilities", name: "ServiceManagedEc2InstanceCapabilities")
    ServiceManagedEc2InstanceMarketOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ServiceManagedEc2InstanceMarketOptions", name: "ServiceManagedEc2InstanceMarketOptions")
    ServiceManagedFleetOperatingSystemFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#ServiceManagedFleetOperatingSystemFamily", name: "ServiceManagedFleetOperatingSystemFamily")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#ServiceQuotaExceededExceptionReason", name: "ServiceQuotaExceededExceptionReason")
    SessionActionDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#SessionActionDefinition", name: "SessionActionDefinition")
    SessionActionDefinitionSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#SessionActionDefinitionSummary", name: "SessionActionDefinitionSummary")
    SessionActionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SessionActionId", name: "SessionActionId", traits: {"smithy.api#pattern" => "^sessionaction-[0-9a-f]{32}-(0|([1-9][0-9]{0,9}))$"})
    SessionActionIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#SessionActionIdList", name: "SessionActionIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SessionActionProgressMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SessionActionProgressMessage", name: "SessionActionProgressMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    SessionActionProgressPercent = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.deadline#SessionActionProgressPercent", name: "SessionActionProgressPercent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    SessionActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#SessionActionStatus", name: "SessionActionStatus")
    SessionActionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#SessionActionSummaries", name: "SessionActionSummaries")
    SessionActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SessionActionSummary", name: "SessionActionSummary")
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SessionId", name: "SessionId", traits: {"smithy.api#pattern" => "^session-[0-9a-f]{32}$"})
    SessionLifecycleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#SessionLifecycleStatus", name: "SessionLifecycleStatus")
    SessionLifecycleTargetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#SessionLifecycleTargetStatus", name: "SessionLifecycleTargetStatus")
    SessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#SessionSummaries", name: "SessionSummaries")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SessionSummary", name: "SessionSummary")
    SessionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SessionToken", name: "SessionToken", traits: {"smithy.api#sensitive" => {}})
    SessionsStatisticsAggregationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#SessionsStatisticsAggregationStatus", name: "SessionsStatisticsAggregationStatus")
    SessionsStatisticsResources = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#SessionsStatisticsResources", name: "SessionsStatisticsResources")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#SortOrder", name: "SortOrder")
    StartSessionsStatisticsAggregationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StartSessionsStatisticsAggregationRequest", name: "StartSessionsStatisticsAggregationRequest")
    StartSessionsStatisticsAggregationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StartSessionsStatisticsAggregationResponse", name: "StartSessionsStatisticsAggregationResponse")
    StartedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.deadline#StartedAt", name: "StartedAt", traits: {"smithy.api#timestampFormat" => "date-time"})
    StartsAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.deadline#StartsAt", name: "StartsAt", traits: {"smithy.api#timestampFormat" => "date-time"})
    Statistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#Statistics", name: "Statistics")
    StatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StatisticsList", name: "StatisticsList")
    Stats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#Stats", name: "Stats")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    StepAmountCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StepAmountCapabilities", name: "StepAmountCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StepAmountCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepAmountCapability", name: "StepAmountCapability")
    StepAttributeCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StepAttributeCapabilities", name: "StepAttributeCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StepAttributeCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepAttributeCapability", name: "StepAttributeCapability")
    StepConsumer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepConsumer", name: "StepConsumer")
    StepConsumers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StepConsumers", name: "StepConsumers")
    StepDependencies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StepDependencies", name: "StepDependencies")
    StepDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepDependency", name: "StepDependency")
    StepDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#StepDescription", name: "StepDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    StepDetailsEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepDetailsEntity", name: "StepDetailsEntity")
    StepDetailsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepDetailsError", name: "StepDetailsError")
    StepDetailsIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepDetailsIdentifiers", name: "StepDetailsIdentifiers")
    StepId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#StepId", name: "StepId", traits: {"smithy.api#pattern" => "^step-[0-9a-f]{32}$"})
    StepLifecycleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#StepLifecycleStatus", name: "StepLifecycleStatus")
    StepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#StepName", name: "StepName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    StepParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepParameter", name: "StepParameter")
    StepParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StepParameterList", name: "StepParameterList")
    StepParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#StepParameterName", name: "StepParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    StepParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#StepParameterType", name: "StepParameterType")
    StepRequiredCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepRequiredCapabilities", name: "StepRequiredCapabilities")
    StepSearchSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StepSearchSummaries", name: "StepSearchSummaries")
    StepSearchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepSearchSummary", name: "StepSearchSummary")
    StepSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StepSummaries", name: "StepSummaries")
    StepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StepSummary", name: "StepSummary")
    StepTargetTaskRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#StepTargetTaskRunStatus", name: "StepTargetTaskRunStatus")
    StorageProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#StorageProfileId", name: "StorageProfileId", traits: {"smithy.api#pattern" => "^sp-[0-9a-f]{32}$"})
    StorageProfileOperatingSystemFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#StorageProfileOperatingSystemFamily", name: "StorageProfileOperatingSystemFamily")
    StorageProfileSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StorageProfileSummaries", name: "StorageProfileSummaries")
    StorageProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StorageProfileSummary", name: "StorageProfileSummary")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#String", name: "String")
    StringFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#StringFilter", name: "StringFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    StringFilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#StringFilterExpression", name: "StringFilterExpression")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#StringList", name: "StringList")
    Subdomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#Subdomain", name: "Subdomain", traits: {"smithy.api#pattern" => "^[a-z0-9-]{1,100}$"})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^subnet-[\\w]{1,120}$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#SubnetIdList", name: "SubnetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SyncInputJobAttachmentsSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SyncInputJobAttachmentsSessionActionDefinition", name: "SyncInputJobAttachmentsSessionActionDefinition")
    SyncInputJobAttachmentsSessionActionDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#SyncInputJobAttachmentsSessionActionDefinitionSummary", name: "SyncInputJobAttachmentsSessionActionDefinitionSummary")
    TagPropagationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#TagPropagationMode", name: "TagPropagationMode")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TagResourceRequest", name: "TagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource", "ids" => {"farmId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#FleetResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#QueueResource", "ids" => {"farmId" => "resourceArn", "queueId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#LicenseEndpointResource", "ids" => {"licenseEndpointId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#WorkerResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn", "workerId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#MonitorResource", "ids" => {"monitorId" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TagResourceResponse", name: "TagResourceResponse")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#Tags", name: "Tags")
    TaskFailureRetryCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#TaskFailureRetryCount", name: "TaskFailureRetryCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    TaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#TaskId", name: "TaskId", traits: {"smithy.api#pattern" => "^task-[0-9a-f]{32}-(0|([1-9][0-9]{0,9}))$"})
    TaskParameterValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#TaskParameterValue", name: "TaskParameterValue", traits: {"smithy.api#sensitive" => {}})
    TaskParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#TaskParameters", name: "TaskParameters", traits: {"smithy.api#sensitive" => {}})
    TaskRetryCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#TaskRetryCount", name: "TaskRetryCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    TaskRunManifestPropertiesListRequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#TaskRunManifestPropertiesListRequest", name: "TaskRunManifestPropertiesListRequest", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TaskRunManifestPropertiesListResponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#TaskRunManifestPropertiesListResponse", name: "TaskRunManifestPropertiesListResponse")
    TaskRunManifestPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TaskRunManifestPropertiesRequest", name: "TaskRunManifestPropertiesRequest")
    TaskRunManifestPropertiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TaskRunManifestPropertiesResponse", name: "TaskRunManifestPropertiesResponse")
    TaskRunSessionActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TaskRunSessionActionDefinition", name: "TaskRunSessionActionDefinition")
    TaskRunSessionActionDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TaskRunSessionActionDefinitionSummary", name: "TaskRunSessionActionDefinitionSummary")
    TaskRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#TaskRunStatus", name: "TaskRunStatus")
    TaskRunStatusCounts = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#TaskRunStatusCounts", name: "TaskRunStatusCounts")
    TaskSearchSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#TaskSearchSummaries", name: "TaskSearchSummaries")
    TaskSearchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TaskSearchSummary", name: "TaskSearchSummary")
    TaskSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#TaskSummaries", name: "TaskSummaries")
    TaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#TaskSummary", name: "TaskSummary")
    TaskTargetRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#TaskTargetRunStatus", name: "TaskTargetRunStatus")
    ThresholdPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.deadline#ThresholdPercentage", name: "ThresholdPercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.deadline#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#Timezone", name: "Timezone", traits: {"smithy.api#length" => {"min" => 9, "max" => 9}, "smithy.api#pattern" => "^UTC[-+][01][0-9]:(30|00)$"})
    TotalResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#TotalResults", name: "TotalResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UntagResourceRequest", name: "UntagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource", "ids" => {"farmId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#FleetResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#QueueResource", "ids" => {"farmId" => "resourceArn", "queueId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#LicenseEndpointResource", "ids" => {"licenseEndpointId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#WorkerResource", "ids" => {"farmId" => "resourceArn", "fleetId" => "resourceArn", "workerId" => "resourceArn"}}, {"resource" => "com.amazonaws.deadline#MonitorResource", "ids" => {"monitorId" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBudgetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateBudgetRequest", name: "UpdateBudgetRequest")
    UpdateBudgetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateBudgetResponse", name: "UpdateBudgetResponse")
    UpdateFarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateFarmRequest", name: "UpdateFarmRequest")
    UpdateFarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateFarmResponse", name: "UpdateFarmResponse")
    UpdateFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateFleetRequest", name: "UpdateFleetRequest")
    UpdateFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateFleetResponse", name: "UpdateFleetResponse")
    UpdateJobLifecycleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#UpdateJobLifecycleStatus", name: "UpdateJobLifecycleStatus")
    UpdateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateJobRequest", name: "UpdateJobRequest")
    UpdateJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateJobResponse", name: "UpdateJobResponse")
    UpdateLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateLimitRequest", name: "UpdateLimitRequest")
    UpdateLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateLimitResponse", name: "UpdateLimitResponse")
    UpdateMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateMonitorRequest", name: "UpdateMonitorRequest")
    UpdateMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateMonitorResponse", name: "UpdateMonitorResponse")
    UpdateQueueEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueEnvironmentRequest", name: "UpdateQueueEnvironmentRequest")
    UpdateQueueEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueEnvironmentResponse", name: "UpdateQueueEnvironmentResponse")
    UpdateQueueFleetAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueFleetAssociationRequest", name: "UpdateQueueFleetAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#QueueResource"}, {"resource" => "com.amazonaws.deadline#FleetResource"}]})
    UpdateQueueFleetAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueFleetAssociationResponse", name: "UpdateQueueFleetAssociationResponse")
    UpdateQueueFleetAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#UpdateQueueFleetAssociationStatus", name: "UpdateQueueFleetAssociationStatus")
    UpdateQueueLimitAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueLimitAssociationRequest", name: "UpdateQueueLimitAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.deadline#FarmResource"}, {"resource" => "com.amazonaws.deadline#QueueResource"}]})
    UpdateQueueLimitAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueLimitAssociationResponse", name: "UpdateQueueLimitAssociationResponse")
    UpdateQueueLimitAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#UpdateQueueLimitAssociationStatus", name: "UpdateQueueLimitAssociationStatus")
    UpdateQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueRequest", name: "UpdateQueueRequest")
    UpdateQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateQueueResponse", name: "UpdateQueueResponse")
    UpdateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateSessionRequest", name: "UpdateSessionRequest")
    UpdateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateSessionResponse", name: "UpdateSessionResponse")
    UpdateStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateStepRequest", name: "UpdateStepRequest")
    UpdateStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateStepResponse", name: "UpdateStepResponse")
    UpdateStorageProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateStorageProfileRequest", name: "UpdateStorageProfileRequest")
    UpdateStorageProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateStorageProfileResponse", name: "UpdateStorageProfileResponse")
    UpdateTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateTaskRequest", name: "UpdateTaskRequest")
    UpdateTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateTaskResponse", name: "UpdateTaskResponse")
    UpdateWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateWorkerRequest", name: "UpdateWorkerRequest")
    UpdateWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateWorkerResponse", name: "UpdateWorkerResponse")
    UpdateWorkerScheduleInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.deadline#UpdateWorkerScheduleInterval", name: "UpdateWorkerScheduleInterval", traits: {"smithy.api#range" => {"min" => 0}})
    UpdateWorkerScheduleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateWorkerScheduleRequest", name: "UpdateWorkerScheduleRequest")
    UpdateWorkerScheduleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdateWorkerScheduleResponse", name: "UpdateWorkerScheduleResponse")
    UpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.deadline#UpdatedAt", name: "UpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"})
    UpdatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#UpdatedBy", name: "UpdatedBy")
    UpdatedSessionActionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UpdatedSessionActionInfo", name: "UpdatedSessionActionInfo")
    UpdatedSessionActions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.deadline#UpdatedSessionActions", name: "UpdatedSessionActions")
    UpdatedWorkerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#UpdatedWorkerStatus", name: "UpdatedWorkerStatus")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#Url", name: "Url")
    UsageGroupBy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#UsageGroupBy", name: "UsageGroupBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    UsageGroupByField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#UsageGroupByField", name: "UsageGroupByField")
    UsageStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#UsageStatistic", name: "UsageStatistic")
    UsageStatistics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#UsageStatistics", name: "UsageStatistics", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#uniqueItems" => {}})
    UsageTrackingResource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.deadline#UsageTrackingResource", name: "UsageTrackingResource")
    UsageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#UsageType", name: "UsageType")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#UserId", name: "UserId")
    UserJobsFirst = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#UserJobsFirst", name: "UserJobsFirst")
    VCpuCountRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#VCpuCountRange", name: "VCpuCountRange")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#ValidationExceptionReason", name: "ValidationExceptionReason")
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#VpcConfiguration", name: "VpcConfiguration")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^vpc-[\\w]{1,120}$"})
    VpcResourceConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#VpcResourceConfigurationArn", name: "VpcResourceConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    VpcResourceConfigurationArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#VpcResourceConfigurationArns", name: "VpcResourceConfigurationArns")
    WindowsUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#WindowsUser", name: "WindowsUser")
    WorkerAmountCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#WorkerAmountCapability", name: "WorkerAmountCapability")
    WorkerAmountCapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#WorkerAmountCapabilityList", name: "WorkerAmountCapabilityList", traits: {"smithy.api#length" => {"min" => 2, "max" => 17}})
    WorkerAttributeCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#WorkerAttributeCapability", name: "WorkerAttributeCapability")
    WorkerAttributeCapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#WorkerAttributeCapabilityList", name: "WorkerAttributeCapabilityList", traits: {"smithy.api#length" => {"min" => 2, "max" => 17}})
    WorkerCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#WorkerCapabilities", name: "WorkerCapabilities")
    WorkerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.deadline#WorkerId", name: "WorkerId", traits: {"smithy.api#pattern" => "^worker-[0-9a-f]{32}$"})
    WorkerSearchSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#WorkerSearchSummaries", name: "WorkerSearchSummaries")
    WorkerSearchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#WorkerSearchSummary", name: "WorkerSearchSummary")
    WorkerSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#WorkerSessionSummary", name: "WorkerSessionSummary")
    WorkerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.deadline#WorkerStatus", name: "WorkerStatus")
    WorkerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.deadline#WorkerSummaries", name: "WorkerSummaries")
    WorkerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.deadline#WorkerSummary", name: "WorkerSummary")

    AcceleratorCapabilities.add_member(:selections, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorSelections, name: "selections", traits: {"smithy.api#required" => {}}))
    AcceleratorCapabilities.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorCountRange, name: "count"))
    AcceleratorCapabilities.type = Types::AcceleratorCapabilities
    AcceleratorCountRange.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "min", traits: {"smithy.api#required" => {}}))
    AcceleratorCountRange.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "max"))
    AcceleratorCountRange.type = Types::AcceleratorCountRange
    AcceleratorName.add_member(:t4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T4", traits: {"smithy.api#enumValue" => "t4"}))
    AcceleratorName.add_member(:a10_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A10G", traits: {"smithy.api#enumValue" => "a10g"}))
    AcceleratorName.add_member(:l4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "L4", traits: {"smithy.api#enumValue" => "l4"}))
    AcceleratorName.add_member(:l40_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "L40S", traits: {"smithy.api#enumValue" => "l40s"}))
    AcceleratorSelection.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorName, name: "name", traits: {"smithy.api#required" => {}}))
    AcceleratorSelection.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorRuntime, name: "runtime", traits: {"smithy.api#default" => "latest"}))
    AcceleratorSelection.type = Types::AcceleratorSelection
    AcceleratorSelections.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorSelection, name: "member")
    AcceleratorTotalMemoryMiBRange.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "min", traits: {"smithy.api#required" => {}}))
    AcceleratorTotalMemoryMiBRange.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "max"))
    AcceleratorTotalMemoryMiBRange.type = Types::AcceleratorTotalMemoryMiBRange
    AcceleratorType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU", traits: {"smithy.api#enumValue" => "gpu"}))
    AcceleratorTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorType, name: "member")
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContext, name: "context"))
    AccessDeniedException.type = Types::AccessDeniedException
    AcquiredLimit.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#required" => {}}))
    AcquiredLimit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinOneMaxInteger, name: "count", traits: {"smithy.api#required" => {}}))
    AcquiredLimit.type = Types::AcquiredLimit
    AcquiredLimits.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcquiredLimit, name: "member")
    AllowedStorageProfileIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "member")
    AssignedEnvironmentEnterSessionActionDefinition.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    AssignedEnvironmentEnterSessionActionDefinition.type = Types::AssignedEnvironmentEnterSessionActionDefinition
    AssignedEnvironmentExitSessionActionDefinition.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    AssignedEnvironmentExitSessionActionDefinition.type = Types::AssignedEnvironmentExitSessionActionDefinition
    AssignedSession.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    AssignedSession.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    AssignedSession.add_member(:session_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedSessionActions, name: "sessionActions", traits: {"smithy.api#required" => {}}))
    AssignedSession.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration", traits: {"smithy.api#required" => {}}))
    AssignedSession.type = Types::AssignedSession
    AssignedSessionAction.add_member(:session_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "sessionActionId", traits: {"smithy.api#required" => {}}))
    AssignedSessionAction.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedSessionActionDefinition, name: "definition", traits: {"smithy.api#required" => {}}))
    AssignedSessionAction.type = Types::AssignedSessionAction
    AssignedSessionActionDefinition.add_member(:env_enter, Types::AssignedSessionActionDefinition::EnvEnter, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedEnvironmentEnterSessionActionDefinition, name: "envEnter"))
    AssignedSessionActionDefinition.add_member(:env_exit, Types::AssignedSessionActionDefinition::EnvExit, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedEnvironmentExitSessionActionDefinition, name: "envExit"))
    AssignedSessionActionDefinition.add_member(:task_run, Types::AssignedSessionActionDefinition::TaskRun, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedTaskRunSessionActionDefinition, name: "taskRun"))
    AssignedSessionActionDefinition.add_member(:sync_input_job_attachments, Types::AssignedSessionActionDefinition::SyncInputJobAttachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedSyncInputJobAttachmentsSessionActionDefinition, name: "syncInputJobAttachments"))
    AssignedSessionActionDefinition.add_member(:unknown, Types::AssignedSessionActionDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssignedSessionActionDefinition.type = Types::AssignedSessionActionDefinition
    AssignedSessionActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedSessionAction, name: "member")
    AssignedSessions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "key")
    AssignedSessions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedSession, name: "value")
    AssignedSyncInputJobAttachmentsSessionActionDefinition.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId"))
    AssignedSyncInputJobAttachmentsSessionActionDefinition.type = Types::AssignedSyncInputJobAttachmentsSessionActionDefinition
    AssignedTaskRunSessionActionDefinition.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId"))
    AssignedTaskRunSessionActionDefinition.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    AssignedTaskRunSessionActionDefinition.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskParameters, name: "parameters", traits: {"smithy.api#required" => {}}))
    AssignedTaskRunSessionActionDefinition.type = Types::AssignedTaskRunSessionActionDefinition
    AssociateMemberToFarmRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    AssociateMemberToFarmRequest.type = Types::AssociateMemberToFarmRequest
    AssociateMemberToFarmResponse.type = Types::AssociateMemberToFarmResponse
    AssociateMemberToFleetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    AssociateMemberToFleetRequest.type = Types::AssociateMemberToFleetRequest
    AssociateMemberToFleetResponse.type = Types::AssociateMemberToFleetResponse
    AssociateMemberToJobRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    AssociateMemberToJobRequest.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    AssociateMemberToJobRequest.type = Types::AssociateMemberToJobRequest
    AssociateMemberToJobResponse.type = Types::AssociateMemberToJobResponse
    AssociateMemberToQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    AssociateMemberToQueueRequest.type = Types::AssociateMemberToQueueRequest
    AssociateMemberToQueueResponse.type = Types::AssociateMemberToQueueResponse
    AssumeFleetRoleForReadRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForReadRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForReadRequest.type = Types::AssumeFleetRoleForReadRequest
    AssumeFleetRoleForReadResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, name: "credentials", traits: {"smithy.api#required" => {}}))
    AssumeFleetRoleForReadResponse.type = Types::AssumeFleetRoleForReadResponse
    AssumeFleetRoleForWorkerRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerRequest.type = Types::AssumeFleetRoleForWorkerRequest
    AssumeFleetRoleForWorkerResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, name: "credentials", traits: {"smithy.api#required" => {}}))
    AssumeFleetRoleForWorkerResponse.type = Types::AssumeFleetRoleForWorkerResponse
    AssumeQueueRoleForReadRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForReadRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForReadRequest.type = Types::AssumeQueueRoleForReadRequest
    AssumeQueueRoleForReadResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, name: "credentials", traits: {"smithy.api#required" => {}}))
    AssumeQueueRoleForReadResponse.type = Types::AssumeQueueRoleForReadResponse
    AssumeQueueRoleForUserRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForUserRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForUserRequest.type = Types::AssumeQueueRoleForUserRequest
    AssumeQueueRoleForUserResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, name: "credentials", traits: {"smithy.api#required" => {}}))
    AssumeQueueRoleForUserResponse.type = Types::AssumeQueueRoleForUserResponse
    AssumeQueueRoleForWorkerRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpQuery" => "queueId", "smithy.api#required" => {}}))
    AssumeQueueRoleForWorkerRequest.type = Types::AssumeQueueRoleForWorkerRequest
    AssumeQueueRoleForWorkerResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, name: "credentials"))
    AssumeQueueRoleForWorkerResponse.type = Types::AssumeQueueRoleForWorkerResponse
    Attachments.add_member(:manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestPropertiesList, name: "manifests", traits: {"smithy.api#required" => {}}))
    Attachments.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentsFileSystem, name: "fileSystem", traits: {"smithy.api#default" => "COPIED"}))
    Attachments.type = Types::Attachments
    AttributeCapabilityValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeCapabilityValue, name: "member")
    AutoScalingMode.add_member(:no_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_SCALING", traits: {"smithy.api#enumValue" => "NO_SCALING"}))
    AutoScalingMode.add_member(:event_based_auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT_BASED_AUTO_SCALING", traits: {"smithy.api#enumValue" => "EVENT_BASED_AUTO_SCALING"}))
    AutoScalingStatus.add_member(:growing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROWING", traits: {"smithy.api#enumValue" => "GROWING"}))
    AutoScalingStatus.add_member(:steady, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEADY", traits: {"smithy.api#enumValue" => "STEADY"}))
    AutoScalingStatus.add_member(:shrinking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHRINKING", traits: {"smithy.api#enumValue" => "SHRINKING"}))
    AwsCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyId, name: "accessKeyId", traits: {"smithy.api#required" => {}}))
    AwsCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKey, name: "secretAccessKey", traits: {"smithy.api#required" => {}}))
    AwsCredentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionToken, name: "sessionToken", traits: {"smithy.api#required" => {}}))
    AwsCredentials.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expiration", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AwsCredentials.type = Types::AwsCredentials
    BatchGetJobEntityErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetJobEntityError, name: "member")
    BatchGetJobEntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntity, name: "member")
    BatchGetJobEntityRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetJobEntityRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetJobEntityRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetJobEntityRequest.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntityIdentifiers, name: "identifiers", traits: {"smithy.api#required" => {}}))
    BatchGetJobEntityRequest.type = Types::BatchGetJobEntityRequest
    BatchGetJobEntityResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetJobEntityList, name: "entities", traits: {"smithy.api#required" => {}}))
    BatchGetJobEntityResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetJobEntityErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetJobEntityResponse.type = Types::BatchGetJobEntityResponse
    BudgetActionToAdd.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionType, name: "type", traits: {"smithy.api#required" => {}}))
    BudgetActionToAdd.add_member(:threshold_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdPercentage, name: "thresholdPercentage", traits: {"smithy.api#required" => {}}))
    BudgetActionToAdd.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    BudgetActionToAdd.type = Types::BudgetActionToAdd
    BudgetActionToRemove.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionType, name: "type", traits: {"smithy.api#required" => {}}))
    BudgetActionToRemove.add_member(:threshold_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdPercentage, name: "thresholdPercentage", traits: {"smithy.api#required" => {}}))
    BudgetActionToRemove.type = Types::BudgetActionToRemove
    BudgetActionType.add_member(:stop_scheduling_and_complete_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_COMPLETE_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    BudgetActionType.add_member(:stop_scheduling_and_cancel_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_CANCEL_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    BudgetActionsToAdd.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionToAdd, name: "member")
    BudgetActionsToRemove.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionToRemove, name: "member")
    BudgetSchedule.add_member(:fixed, Types::BudgetSchedule::Fixed, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedBudgetSchedule, name: "fixed"))
    BudgetSchedule.add_member(:unknown, Types::BudgetSchedule::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    BudgetSchedule.type = Types::BudgetSchedule
    BudgetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BudgetStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    BudgetSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetSummary, name: "member")
    BudgetSummary.add_member(:budget_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetId, name: "budgetId", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:usage_tracking_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTrackingResource, name: "usageTrackingResource", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetStatus, name: "status", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#deprecated" => {"message" => "ListBudgets no longer supports description. Use GetBudget if description is needed."}}))
    BudgetSummary.add_member(:approximate_dollar_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedUsageLimit, name: "approximateDollarLimit", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:usages, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedUsages, name: "usages", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    BudgetSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    BudgetSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    BudgetSummary.type = Types::BudgetSummary
    CancelSessionActions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "key")
    CancelSessionActions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionIdList, name: "value")
    ComparisonOperator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComparisonOperator.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    ComparisonOperator.add_member(:greater_than_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_EQUAL_TO"}))
    ComparisonOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ComparisonOperator.add_member(:less_than_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_EQUAL_TO"}))
    ComparisonOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    CompletedStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CompletedStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CompletedStatus.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    CompletedStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    CompletedStatus.add_member(:never_attempted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEVER_ATTEMPTED", traits: {"smithy.api#enumValue" => "NEVER_ATTEMPTED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContext, name: "context"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:conflict_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICT_EXCEPTION", traits: {"smithy.api#enumValue" => "CONFLICT_EXCEPTION"}))
    ConflictExceptionReason.add_member(:concurrent_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT_MODIFICATION", traits: {"smithy.api#enumValue" => "CONCURRENT_MODIFICATION"}))
    ConflictExceptionReason.add_member(:resource_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "RESOURCE_ALREADY_EXISTS"}))
    ConflictExceptionReason.add_member(:resource_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_IN_USE", traits: {"smithy.api#enumValue" => "RESOURCE_IN_USE"}))
    ConflictExceptionReason.add_member(:status_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS_CONFLICT", traits: {"smithy.api#enumValue" => "STATUS_CONFLICT"}))
    ConsumedUsages.add_member(:approximate_dollar_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "approximateDollarUsage", traits: {"smithy.api#required" => {}}))
    ConsumedUsages.type = Types::ConsumedUsages
    CopyJobTemplateRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyJobTemplateRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyJobTemplateRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyJobTemplateRequest.add_member(:target_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "targetS3Location", traits: {"smithy.api#required" => {}}))
    CopyJobTemplateRequest.type = Types::CopyJobTemplateRequest
    CopyJobTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplateType, name: "templateType", traits: {"smithy.api#required" => {}}))
    CopyJobTemplateResponse.type = Types::CopyJobTemplateResponse
    CpuArchitectureType.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "X86_64", traits: {"smithy.api#enumValue" => "x86_64"}))
    CpuArchitectureType.add_member(:arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM64", traits: {"smithy.api#enumValue" => "arm64"}))
    CreateBudgetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBudgetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:usage_tracking_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTrackingResource, name: "usageTrackingResource", traits: {"smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#default" => ""}))
    CreateBudgetRequest.add_member(:approximate_dollar_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedUsageLimit, name: "approximateDollarLimit", traits: {"smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionsToAdd, name: "actions", traits: {"smithy.api#required" => {}}))
    CreateBudgetRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetSchedule, name: "schedule", traits: {"smithy.api#required" => {}}))
    CreateBudgetRequest.type = Types::CreateBudgetRequest
    CreateBudgetResponse.add_member(:budget_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetId, name: "budgetId", traits: {"smithy.api#required" => {}}))
    CreateBudgetResponse.type = Types::CreateBudgetResponse
    CreateFarmRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateFarmRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateFarmRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#default" => ""}))
    CreateFarmRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateFarmRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateFarmRequest.type = Types::CreateFarmRequest
    CreateFarmResponse.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    CreateFarmResponse.type = Types::CreateFarmResponse
    CreateFleetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateFleetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#default" => ""}))
    CreateFleetRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:min_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "minWorkerCount", traits: {"smithy.api#default" => 0}))
    CreateFleetRequest.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "maxWorkerCount", traits: {"smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateFleetRequest.add_member(:host_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HostConfiguration, name: "hostConfiguration"))
    CreateFleetRequest.type = Types::CreateFleetRequest
    CreateFleetResponse.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    CreateFleetResponse.type = Types::CreateFleetResponse
    CreateJobRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateJobRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplate, name: "template"))
    CreateJobRequest.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTemplateType, name: "templateType"))
    CreateJobRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameters, name: "parameters"))
    CreateJobRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "attachments"))
    CreateJobRequest.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId"))
    CreateJobRequest.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateJobTargetTaskRunStatus, name: "targetTaskRunStatus", traits: {"smithy.api#default" => "READY"}))
    CreateJobRequest.add_member(:max_failed_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFailedTasksCount, name: "maxFailedTasksCount", traits: {"smithy.api#default" => 100}))
    CreateJobRequest.add_member(:max_retries_per_task, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetriesPerTask, name: "maxRetriesPerTask", traits: {"smithy.api#default" => 5}))
    CreateJobRequest.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxWorkerCount, name: "maxWorkerCount"))
    CreateJobRequest.add_member(:source_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "sourceJobId"))
    CreateJobRequest.type = Types::CreateJobRequest
    CreateJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    CreateJobResponse.type = Types::CreateJobResponse
    CreateJobTargetTaskRunStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    CreateJobTargetTaskRunStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    CreateLicenseEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateLicenseEndpointRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    CreateLicenseEndpointRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    CreateLicenseEndpointRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    CreateLicenseEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateLicenseEndpointRequest.type = Types::CreateLicenseEndpointRequest
    CreateLicenseEndpointResponse.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId", traits: {"smithy.api#required" => {}}))
    CreateLicenseEndpointResponse.type = Types::CreateLicenseEndpointResponse
    CreateLimitRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateLimitRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:amount_requirement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountRequirementName, name: "amountRequirementName", traits: {"smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCount, name: "maxCount", traits: {"smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLimitRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#default" => ""}))
    CreateLimitRequest.type = Types::CreateLimitRequest
    CreateLimitResponse.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#required" => {}}))
    CreateLimitResponse.type = Types::CreateLimitResponse
    CreateMonitorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateMonitorRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "identityCenterInstanceArn", traits: {"smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:subdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: Subdomain, name: "subdomain", traits: {"smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateMonitorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateMonitorRequest.type = Types::CreateMonitorRequest
    CreateMonitorResponse.add_member(:monitor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorId, name: "monitorId", traits: {"smithy.api#required" => {}}))
    CreateMonitorResponse.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "identityCenterApplicationArn", traits: {"smithy.api#required" => {}}))
    CreateMonitorResponse.type = Types::CreateMonitorResponse
    CreateQueueEnvironmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateQueueEnvironmentRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentTemplateType, name: "templateType", traits: {"smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentTemplate, name: "template", traits: {"smithy.api#required" => {}}))
    CreateQueueEnvironmentRequest.type = Types::CreateQueueEnvironmentRequest
    CreateQueueEnvironmentResponse.add_member(:queue_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentId, name: "queueEnvironmentId", traits: {"smithy.api#required" => {}}))
    CreateQueueEnvironmentResponse.type = Types::CreateQueueEnvironmentResponse
    CreateQueueFleetAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueFleetAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    CreateQueueFleetAssociationRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    CreateQueueFleetAssociationRequest.type = Types::CreateQueueFleetAssociationRequest
    CreateQueueFleetAssociationResponse.type = Types::CreateQueueFleetAssociationResponse
    CreateQueueLimitAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueLimitAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    CreateQueueLimitAssociationRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#required" => {}}))
    CreateQueueLimitAssociationRequest.type = Types::CreateQueueLimitAssociationRequest
    CreateQueueLimitAssociationResponse.type = Types::CreateQueueLimitAssociationResponse
    CreateQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#default" => ""}))
    CreateQueueRequest.add_member(:default_budget_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultQueueBudgetAction, name: "defaultBudgetAction", traits: {"smithy.api#default" => "NONE"}))
    CreateQueueRequest.add_member(:job_attachment_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentSettings, name: "jobAttachmentSettings"))
    CreateQueueRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    CreateQueueRequest.add_member(:job_run_as_user, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunAsUser, name: "jobRunAsUser"))
    CreateQueueRequest.add_member(:required_file_system_location_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredFileSystemLocationNames, name: "requiredFileSystemLocationNames"))
    CreateQueueRequest.add_member(:allowed_storage_profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedStorageProfileIds, name: "allowedStorageProfileIds"))
    CreateQueueRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateQueueRequest.type = Types::CreateQueueRequest
    CreateQueueResponse.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    CreateQueueResponse.type = Types::CreateQueueResponse
    CreateStorageProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateStorageProfileRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStorageProfileRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateStorageProfileRequest.add_member(:os_family, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileOperatingSystemFamily, name: "osFamily", traits: {"smithy.api#required" => {}}))
    CreateStorageProfileRequest.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationsList, name: "fileSystemLocations"))
    CreateStorageProfileRequest.type = Types::CreateStorageProfileRequest
    CreateStorageProfileResponse.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#required" => {}}))
    CreateStorageProfileResponse.type = Types::CreateStorageProfileResponse
    CreateWorkerRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkerRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkerRequest.add_member(:host_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: HostPropertiesRequest, name: "hostProperties"))
    CreateWorkerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateWorkerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateWorkerRequest.type = Types::CreateWorkerRequest
    CreateWorkerResponse.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#required" => {}}))
    CreateWorkerResponse.type = Types::CreateWorkerResponse
    CustomFleetAmountCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAmountCapability, name: "member")
    CustomFleetAttributeCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttributeCapability, name: "member")
    CustomerManagedFleetConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingMode, name: "mode", traits: {"smithy.api#required" => {}}))
    CustomerManagedFleetConfiguration.add_member(:worker_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedWorkerCapabilities, name: "workerCapabilities", traits: {"smithy.api#required" => {}}))
    CustomerManagedFleetConfiguration.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId"))
    CustomerManagedFleetConfiguration.add_member(:tag_propagation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TagPropagationMode, name: "tagPropagationMode"))
    CustomerManagedFleetConfiguration.type = Types::CustomerManagedFleetConfiguration
    CustomerManagedFleetOperatingSystemFamily.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    CustomerManagedFleetOperatingSystemFamily.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX", traits: {"smithy.api#enumValue" => "LINUX"}))
    CustomerManagedFleetOperatingSystemFamily.add_member(:macos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MACOS", traits: {"smithy.api#enumValue" => "MACOS"}))
    CustomerManagedWorkerCapabilities.add_member(:v_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: VCpuCountRange, name: "vCpuCount", traits: {"smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMiBRange, name: "memoryMiB", traits: {"smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTypes, name: "acceleratorTypes"))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorCountRange, name: "acceleratorCount"))
    CustomerManagedWorkerCapabilities.add_member(:accelerator_total_memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTotalMemoryMiBRange, name: "acceleratorTotalMemoryMiB"))
    CustomerManagedWorkerCapabilities.add_member(:os_family, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedFleetOperatingSystemFamily, name: "osFamily", traits: {"smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:cpu_architecture_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuArchitectureType, name: "cpuArchitectureType", traits: {"smithy.api#required" => {}}))
    CustomerManagedWorkerCapabilities.add_member(:custom_amounts, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomFleetAmountCapabilities, name: "customAmounts"))
    CustomerManagedWorkerCapabilities.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomFleetAttributeCapabilities, name: "customAttributes"))
    CustomerManagedWorkerCapabilities.type = Types::CustomerManagedWorkerCapabilities
    DateTimeFilterExpression.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    DateTimeFilterExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    DateTimeFilterExpression.add_member(:date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "dateTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    DateTimeFilterExpression.type = Types::DateTimeFilterExpression
    DeadlinePrincipalType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    DeadlinePrincipalType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    DefaultQueueBudgetAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DefaultQueueBudgetAction.add_member(:stop_scheduling_and_complete_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_COMPLETE_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    DefaultQueueBudgetAction.add_member(:stop_scheduling_and_cancel_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_CANCEL_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    DeleteBudgetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBudgetRequest.add_member(:budget_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetId, name: "budgetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBudgetRequest.type = Types::DeleteBudgetRequest
    DeleteBudgetResponse.type = Types::DeleteBudgetResponse
    DeleteFarmRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFarmRequest.type = Types::DeleteFarmRequest
    DeleteFarmResponse.type = Types::DeleteFarmResponse
    DeleteFleetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteFleetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFleetRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFleetRequest.type = Types::DeleteFleetRequest
    DeleteFleetResponse.type = Types::DeleteFleetResponse
    DeleteLicenseEndpointRequest.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLicenseEndpointRequest.type = Types::DeleteLicenseEndpointRequest
    DeleteLicenseEndpointResponse.type = Types::DeleteLicenseEndpointResponse
    DeleteLimitRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLimitRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLimitRequest.type = Types::DeleteLimitRequest
    DeleteLimitResponse.type = Types::DeleteLimitResponse
    DeleteMeteredProductRequest.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMeteredProductRequest.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteredProductId, name: "productId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMeteredProductRequest.type = Types::DeleteMeteredProductRequest
    DeleteMeteredProductResponse.type = Types::DeleteMeteredProductResponse
    DeleteMonitorRequest.add_member(:monitor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorId, name: "monitorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMonitorRequest.type = Types::DeleteMonitorRequest
    DeleteMonitorResponse.type = Types::DeleteMonitorResponse
    DeleteQueueEnvironmentRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueEnvironmentRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueEnvironmentRequest.add_member(:queue_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentId, name: "queueEnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueEnvironmentRequest.type = Types::DeleteQueueEnvironmentRequest
    DeleteQueueEnvironmentResponse.type = Types::DeleteQueueEnvironmentResponse
    DeleteQueueFleetAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueFleetAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueFleetAssociationRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueFleetAssociationRequest.type = Types::DeleteQueueFleetAssociationRequest
    DeleteQueueFleetAssociationResponse.type = Types::DeleteQueueFleetAssociationResponse
    DeleteQueueLimitAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueLimitAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueLimitAssociationRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueLimitAssociationRequest.type = Types::DeleteQueueLimitAssociationRequest
    DeleteQueueLimitAssociationResponse.type = Types::DeleteQueueLimitAssociationResponse
    DeleteQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueueRequest.type = Types::DeleteQueueRequest
    DeleteQueueResponse.type = Types::DeleteQueueResponse
    DeleteStorageProfileRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageProfileRequest.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageProfileRequest.type = Types::DeleteStorageProfileRequest
    DeleteStorageProfileResponse.type = Types::DeleteStorageProfileResponse
    DeleteWorkerRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerRequest.type = Types::DeleteWorkerRequest
    DeleteWorkerResponse.type = Types::DeleteWorkerResponse
    DependenciesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "member")
    DependencyConsumerResolutionStatus.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVED", traits: {"smithy.api#enumValue" => "RESOLVED"}))
    DependencyConsumerResolutionStatus.add_member(:unresolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNRESOLVED", traits: {"smithy.api#enumValue" => "UNRESOLVED"}))
    DependencyCounts.add_member(:dependencies_resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "dependenciesResolved", traits: {"smithy.api#required" => {}}))
    DependencyCounts.add_member(:dependencies_unresolved, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "dependenciesUnresolved", traits: {"smithy.api#required" => {}}))
    DependencyCounts.add_member(:consumers_resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "consumersResolved", traits: {"smithy.api#required" => {}}))
    DependencyCounts.add_member(:consumers_unresolved, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "consumersUnresolved", traits: {"smithy.api#required" => {}}))
    DependencyCounts.type = Types::DependencyCounts
    DesiredWorkerStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    DisassociateMemberFromFarmRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFarmRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFarmRequest.type = Types::DisassociateMemberFromFarmRequest
    DisassociateMemberFromFarmResponse.type = Types::DisassociateMemberFromFarmResponse
    DisassociateMemberFromFleetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFleetRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFleetRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromFleetRequest.type = Types::DisassociateMemberFromFleetRequest
    DisassociateMemberFromFleetResponse.type = Types::DisassociateMemberFromFleetResponse
    DisassociateMemberFromJobRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromJobRequest.type = Types::DisassociateMemberFromJobRequest
    DisassociateMemberFromJobResponse.type = Types::DisassociateMemberFromJobResponse
    DisassociateMemberFromQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromQueueRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromQueueRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberFromQueueRequest.type = Types::DisassociateMemberFromQueueRequest
    DisassociateMemberFromQueueResponse.type = Types::DisassociateMemberFromQueueResponse
    Ec2EbsVolume.add_member(:size_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeGiB", traits: {"smithy.api#default" => 250}))
    Ec2EbsVolume.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsIops, name: "iops", traits: {"smithy.api#default" => 3000}))
    Ec2EbsVolume.add_member(:throughput_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsThroughputMiB, name: "throughputMiB", traits: {"smithy.api#default" => 125}))
    Ec2EbsVolume.type = Types::Ec2EbsVolume
    Ec2MarketType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "on-demand"}))
    Ec2MarketType.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT", traits: {"smithy.api#enumValue" => "spot"}))
    Ec2MarketType.add_member(:wait_and_save, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAIT_AND_SAVE", traits: {"smithy.api#enumValue" => "wait-and-save"}))
    EnvironmentDetailsEntity.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsEntity.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsEntity.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schemaVersion", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsEntity.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "template", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsEntity.type = Types::EnvironmentDetailsEntity
    EnvironmentDetailsError.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsError.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntityErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsError.type = Types::EnvironmentDetailsError
    EnvironmentDetailsIdentifiers.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsIdentifiers.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    EnvironmentDetailsIdentifiers.type = Types::EnvironmentDetailsIdentifiers
    EnvironmentEnterSessionActionDefinition.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    EnvironmentEnterSessionActionDefinition.type = Types::EnvironmentEnterSessionActionDefinition
    EnvironmentEnterSessionActionDefinitionSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    EnvironmentEnterSessionActionDefinitionSummary.type = Types::EnvironmentEnterSessionActionDefinitionSummary
    EnvironmentExitSessionActionDefinition.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    EnvironmentExitSessionActionDefinition.type = Types::EnvironmentExitSessionActionDefinition
    EnvironmentExitSessionActionDefinitionSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "environmentId", traits: {"smithy.api#required" => {}}))
    EnvironmentExitSessionActionDefinitionSummary.type = Types::EnvironmentExitSessionActionDefinitionSummary
    EnvironmentTemplateType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    EnvironmentTemplateType.add_member(:yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    ExceptionContext.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    ExceptionContext.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    FarmMember.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    FarmMember.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#required" => {}}))
    FarmMember.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    FarmMember.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    FarmMember.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    FarmMember.type = Types::FarmMember
    FarmMembers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FarmMember, name: "member")
    FarmSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FarmSummary, name: "member")
    FarmSummary.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    FarmSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    FarmSummary.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    FarmSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FarmSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    FarmSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    FarmSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    FarmSummary.type = Types::FarmSummary
    FieldSortExpression.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    FieldSortExpression.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    FieldSortExpression.type = Types::FieldSortExpression
    FileSystemLocation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationName, name: "name", traits: {"smithy.api#required" => {}}))
    FileSystemLocation.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathString, name: "path", traits: {"smithy.api#required" => {}}))
    FileSystemLocation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationType, name: "type", traits: {"smithy.api#required" => {}}))
    FileSystemLocation.type = Types::FileSystemLocation
    FileSystemLocationType.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    FileSystemLocationType.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL", traits: {"smithy.api#enumValue" => "LOCAL"}))
    FileSystemLocationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocation, name: "member")
    FixedBudgetSchedule.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartsAt, name: "startTime", traits: {"smithy.api#required" => {}}))
    FixedBudgetSchedule.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndsAt, name: "endTime", traits: {"smithy.api#required" => {}}))
    FixedBudgetSchedule.type = Types::FixedBudgetSchedule
    FleetAmountCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAmountCapability, name: "member")
    FleetAmountCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountCapabilityName, name: "name", traits: {"smithy.api#required" => {}}))
    FleetAmountCapability.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "min", traits: {"smithy.api#required" => {}}))
    FleetAmountCapability.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "max"))
    FleetAmountCapability.type = Types::FleetAmountCapability
    FleetAttributeCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttributeCapability, name: "member")
    FleetAttributeCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeCapabilityName, name: "name", traits: {"smithy.api#required" => {}}))
    FleetAttributeCapability.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeCapabilityValuesList, name: "values", traits: {"smithy.api#required" => {}}))
    FleetAttributeCapability.type = Types::FleetAttributeCapability
    FleetCapabilities.add_member(:amounts, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAmountCapabilities, name: "amounts"))
    FleetCapabilities.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttributeCapabilities, name: "attributes"))
    FleetCapabilities.type = Types::FleetCapabilities
    FleetConfiguration.add_member(:customer_managed, Types::FleetConfiguration::CustomerManaged, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedFleetConfiguration, name: "customerManaged"))
    FleetConfiguration.add_member(:service_managed_ec2, Types::FleetConfiguration::ServiceManagedEc2, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedEc2FleetConfiguration, name: "serviceManagedEc2"))
    FleetConfiguration.add_member(:unknown, Types::FleetConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FleetConfiguration.type = Types::FleetConfiguration
    FleetIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "member")
    FleetMember.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    FleetMember.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    FleetMember.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#required" => {}}))
    FleetMember.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    FleetMember.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    FleetMember.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    FleetMember.type = Types::FleetMember
    FleetMembers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetMember, name: "member")
    FleetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FleetStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    FleetStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    FleetStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FleetStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    FleetStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    FleetSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetSummary, name: "member")
    FleetSummary.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "fleetId"}))
    FleetSummary.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    FleetSummary.add_member(:auto_scaling_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingStatus, name: "autoScalingStatus"))
    FleetSummary.add_member(:target_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "targetWorkerCount"))
    FleetSummary.add_member(:worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "workerCount", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:min_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "minWorkerCount", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "maxWorkerCount", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    FleetSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    FleetSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    FleetSummary.type = Types::FleetSummary
    GetBudgetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBudgetRequest.add_member(:budget_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetId, name: "budgetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBudgetRequest.type = Types::GetBudgetRequest
    GetBudgetResponse.add_member(:budget_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetId, name: "budgetId", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:usage_tracking_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTrackingResource, name: "usageTrackingResource", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetBudgetResponse.add_member(:approximate_dollar_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedUsageLimit, name: "approximateDollarLimit", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:usages, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedUsages, name: "usages", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseBudgetActionList, name: "actions", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetSchedule, name: "schedule", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetBudgetResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetBudgetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetBudgetResponse.add_member(:queue_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "queueStoppedAt"))
    GetBudgetResponse.type = Types::GetBudgetResponse
    GetFarmRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFarmRequest.type = Types::GetFarmRequest
    GetFarmResponse.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    GetFarmResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetFarmResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetFarmResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn", traits: {"smithy.api#required" => {}}))
    GetFarmResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetFarmResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetFarmResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetFarmResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetFarmResponse.type = Types::GetFarmResponse
    GetFleetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFleetRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFleetRequest.type = Types::GetFleetRequest
    GetFleetResponse.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetFleetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    GetFleetResponse.add_member(:auto_scaling_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingStatus, name: "autoScalingStatus"))
    GetFleetResponse.add_member(:target_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "targetWorkerCount"))
    GetFleetResponse.add_member(:worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "workerCount", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:min_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "minWorkerCount", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "maxWorkerCount", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:host_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HostConfiguration, name: "hostConfiguration"))
    GetFleetResponse.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapabilities, name: "capabilities"))
    GetFleetResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetFleetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetFleetResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetFleetResponse.type = Types::GetFleetResponse
    GetJobEntityError.add_member(:job_details, Types::GetJobEntityError::JobDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDetailsError, name: "jobDetails"))
    GetJobEntityError.add_member(:job_attachment_details, Types::GetJobEntityError::JobAttachmentDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentDetailsError, name: "jobAttachmentDetails"))
    GetJobEntityError.add_member(:step_details, Types::GetJobEntityError::StepDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDetailsError, name: "stepDetails"))
    GetJobEntityError.add_member(:environment_details, Types::GetJobEntityError::EnvironmentDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentDetailsError, name: "environmentDetails"))
    GetJobEntityError.add_member(:unknown, Types::GetJobEntityError::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GetJobEntityError.type = Types::GetJobEntityError
    GetJobRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.type = Types::GetJobRequest
    GetJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    GetJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "name", traits: {"smithy.api#required" => {}}))
    GetJobResponse.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLifecycleStatus, name: "lifecycleStatus", traits: {"smithy.api#required" => {}}))
    GetJobResponse.add_member(:lifecycle_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lifecycleStatusMessage", traits: {"smithy.api#required" => {}}))
    GetJobResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "priority", traits: {"smithy.api#required" => {}}))
    GetJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetJobResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetJobResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetJobResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetJobResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    GetJobResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    GetJobResponse.add_member(:task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "taskRunStatus"))
    GetJobResponse.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTargetTaskRunStatus, name: "targetTaskRunStatus"))
    GetJobResponse.add_member(:task_run_status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatusCounts, name: "taskRunStatusCounts"))
    GetJobResponse.add_member(:task_failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailureRetryCount, name: "taskFailureRetryCount"))
    GetJobResponse.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId"))
    GetJobResponse.add_member(:max_failed_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFailedTasksCount, name: "maxFailedTasksCount"))
    GetJobResponse.add_member(:max_retries_per_task, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetriesPerTask, name: "maxRetriesPerTask"))
    GetJobResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameters, name: "parameters"))
    GetJobResponse.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "attachments"))
    GetJobResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDescription, name: "description"))
    GetJobResponse.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxWorkerCount, name: "maxWorkerCount"))
    GetJobResponse.add_member(:source_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "sourceJobId"))
    GetJobResponse.type = Types::GetJobResponse
    GetLicenseEndpointRequest.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLicenseEndpointRequest.type = Types::GetLicenseEndpointRequest
    GetLicenseEndpointResponse.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId", traits: {"smithy.api#required" => {}}))
    GetLicenseEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetLicenseEndpointResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage", traits: {"smithy.api#required" => {}}))
    GetLicenseEndpointResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    GetLicenseEndpointResponse.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, name: "dnsName"))
    GetLicenseEndpointResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}}))
    GetLicenseEndpointResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}}))
    GetLicenseEndpointResponse.type = Types::GetLicenseEndpointResponse
    GetLimitRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLimitRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLimitRequest.type = Types::GetLimitRequest
    GetLimitResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:amount_requirement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountRequirementName, name: "amountRequirementName", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCount, name: "maxCount", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetLimitResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetLimitResponse.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:current_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "currentCount", traits: {"smithy.api#required" => {}}))
    GetLimitResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetLimitResponse.type = Types::GetLimitResponse
    GetMonitorRequest.add_member(:monitor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorId, name: "monitorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMonitorRequest.type = Types::GetMonitorRequest
    GetMonitorResponse.add_member(:monitor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorId, name: "monitorId", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:subdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: Subdomain, name: "subdomain", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "identityCenterInstanceArn", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "identityCenterApplicationArn", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetMonitorResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetMonitorResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetMonitorResponse.type = Types::GetMonitorResponse
    GetQueueEnvironmentRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueEnvironmentRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueEnvironmentRequest.add_member(:queue_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentId, name: "queueEnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueEnvironmentRequest.type = Types::GetQueueEnvironmentRequest
    GetQueueEnvironmentResponse.add_member(:queue_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentId, name: "queueEnvironmentId", traits: {"smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, name: "name", traits: {"smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentTemplateType, name: "templateType", traits: {"smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentTemplate, name: "template", traits: {"smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetQueueEnvironmentResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetQueueEnvironmentResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetQueueEnvironmentResponse.type = Types::GetQueueEnvironmentResponse
    GetQueueFleetAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueFleetAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueFleetAssociationRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueFleetAssociationRequest.type = Types::GetQueueFleetAssociationRequest
    GetQueueFleetAssociationResponse.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueFleetAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetQueueFleetAssociationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetQueueFleetAssociationResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetQueueFleetAssociationResponse.type = Types::GetQueueFleetAssociationResponse
    GetQueueLimitAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueLimitAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueLimitAssociationRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueLimitAssociationRequest.type = Types::GetQueueLimitAssociationRequest
    GetQueueLimitAssociationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetQueueLimitAssociationResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetQueueLimitAssociationResponse.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueLimitAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetQueueLimitAssociationResponse.type = Types::GetQueueLimitAssociationResponse
    GetQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueueRequest.type = Types::GetQueueRequest
    GetQueueResponse.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    GetQueueResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetQueueResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetQueueResponse.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    GetQueueResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetQueueResponse.add_member(:default_budget_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultQueueBudgetAction, name: "defaultBudgetAction", traits: {"smithy.api#required" => {}}))
    GetQueueResponse.add_member(:blocked_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueBlockedReason, name: "blockedReason"))
    GetQueueResponse.add_member(:job_attachment_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentSettings, name: "jobAttachmentSettings"))
    GetQueueResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    GetQueueResponse.add_member(:required_file_system_location_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredFileSystemLocationNames, name: "requiredFileSystemLocationNames"))
    GetQueueResponse.add_member(:allowed_storage_profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedStorageProfileIds, name: "allowedStorageProfileIds"))
    GetQueueResponse.add_member(:job_run_as_user, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunAsUser, name: "jobRunAsUser"))
    GetQueueResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetQueueResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetQueueResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetQueueResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetQueueResponse.type = Types::GetQueueResponse
    GetSessionActionRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.add_member(:session_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "sessionActionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionActionRequest.type = Types::GetSessionActionRequest
    GetSessionActionResponse.add_member(:session_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "sessionActionId", traits: {"smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    GetSessionActionResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    GetSessionActionResponse.add_member(:worker_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "workerUpdatedAt"))
    GetSessionActionResponse.add_member(:progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionProgressPercent, name: "progressPercent"))
    GetSessionActionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:process_exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessExitCode, name: "processExitCode"))
    GetSessionActionResponse.add_member(:progress_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionProgressMessage, name: "progressMessage"))
    GetSessionActionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionDefinition, name: "definition", traits: {"smithy.api#required" => {}}))
    GetSessionActionResponse.add_member(:acquired_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: AcquiredLimits, name: "acquiredLimits"))
    GetSessionActionResponse.add_member(:manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunManifestPropertiesListResponse, name: "manifests"))
    GetSessionActionResponse.type = Types::GetSessionActionResponse
    GetSessionRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "log", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLifecycleStatus, name: "lifecycleStatus", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    GetSessionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetSessionResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetSessionResponse.add_member(:target_lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLifecycleTargetStatus, name: "targetLifecycleStatus"))
    GetSessionResponse.add_member(:host_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: HostPropertiesResponse, name: "hostProperties"))
    GetSessionResponse.add_member(:worker_log, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "workerLog"))
    GetSessionResponse.type = Types::GetSessionResponse
    GetSessionsStatisticsAggregationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionsStatisticsAggregationRequest.add_member(:aggregation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationId, name: "aggregationId", traits: {"smithy.api#httpQuery" => "aggregationId", "smithy.api#required" => {}}))
    GetSessionsStatisticsAggregationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    GetSessionsStatisticsAggregationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetSessionsStatisticsAggregationRequest.type = Types::GetSessionsStatisticsAggregationRequest
    GetSessionsStatisticsAggregationResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticsList, name: "statistics"))
    GetSessionsStatisticsAggregationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    GetSessionsStatisticsAggregationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionsStatisticsAggregationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetSessionsStatisticsAggregationResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    GetSessionsStatisticsAggregationResponse.type = Types::GetSessionsStatisticsAggregationResponse
    GetStepRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStepRequest.type = Types::GetStepRequest
    GetStepResponse.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    GetStepResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, name: "name", traits: {"smithy.api#required" => {}}))
    GetStepResponse.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepLifecycleStatus, name: "lifecycleStatus", traits: {"smithy.api#required" => {}}))
    GetStepResponse.add_member(:lifecycle_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lifecycleStatusMessage"))
    GetStepResponse.add_member(:task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "taskRunStatus", traits: {"smithy.api#required" => {}}))
    GetStepResponse.add_member(:task_run_status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatusCounts, name: "taskRunStatusCounts", traits: {"smithy.api#required" => {}}))
    GetStepResponse.add_member(:task_failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailureRetryCount, name: "taskFailureRetryCount"))
    GetStepResponse.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepTargetTaskRunStatus, name: "targetTaskRunStatus"))
    GetStepResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetStepResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetStepResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetStepResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetStepResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    GetStepResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    GetStepResponse.add_member(:dependency_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyCounts, name: "dependencyCounts"))
    GetStepResponse.add_member(:required_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: StepRequiredCapabilities, name: "requiredCapabilities"))
    GetStepResponse.add_member(:parameter_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterSpace, name: "parameterSpace"))
    GetStepResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDescription, name: "description"))
    GetStepResponse.type = Types::GetStepResponse
    GetStorageProfileForQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileForQueueRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileForQueueRequest.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileForQueueRequest.type = Types::GetStorageProfileForQueueRequest
    GetStorageProfileForQueueResponse.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#required" => {}}))
    GetStorageProfileForQueueResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetStorageProfileForQueueResponse.add_member(:os_family, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileOperatingSystemFamily, name: "osFamily", traits: {"smithy.api#required" => {}}))
    GetStorageProfileForQueueResponse.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationsList, name: "fileSystemLocations"))
    GetStorageProfileForQueueResponse.type = Types::GetStorageProfileForQueueResponse
    GetStorageProfileRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileRequest.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageProfileRequest.type = Types::GetStorageProfileRequest
    GetStorageProfileResponse.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:os_family, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileOperatingSystemFamily, name: "osFamily", traits: {"smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetStorageProfileResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetStorageProfileResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetStorageProfileResponse.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationsList, name: "fileSystemLocations"))
    GetStorageProfileResponse.type = Types::GetStorageProfileResponse
    GetTaskRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskRequest.type = Types::GetTaskRequest
    GetTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId", traits: {"smithy.api#required" => {}}))
    GetTaskResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetTaskResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetTaskResponse.add_member(:run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "runStatus", traits: {"smithy.api#required" => {}}))
    GetTaskResponse.add_member(:target_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTargetRunStatus, name: "targetRunStatus"))
    GetTaskResponse.add_member(:failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRetryCount, name: "failureRetryCount"))
    GetTaskResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskParameters, name: "parameters"))
    GetTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    GetTaskResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    GetTaskResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetTaskResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetTaskResponse.add_member(:latest_session_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "latestSessionActionId"))
    GetTaskResponse.type = Types::GetTaskResponse
    GetWorkerRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkerRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkerRequest.type = Types::GetWorkerRequest
    GetWorkerResponse.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:host_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: HostPropertiesResponse, name: "hostProperties"))
    GetWorkerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "log"))
    GetWorkerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetWorkerResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    GetWorkerResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    GetWorkerResponse.type = Types::GetWorkerResponse
    HostConfiguration.add_member(:script_body, ::Smithy::Schema::Shapes::MemberShape.new(target: HostConfigurationScript, name: "scriptBody", traits: {"smithy.api#required" => {}}))
    HostConfiguration.add_member(:script_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HostConfigurationScriptTimeoutSeconds, name: "scriptTimeoutSeconds", traits: {"smithy.api#default" => 300}))
    HostConfiguration.type = Types::HostConfiguration
    HostPropertiesRequest.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddresses, name: "ipAddresses"))
    HostPropertiesRequest.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "hostName"))
    HostPropertiesRequest.type = Types::HostPropertiesRequest
    HostPropertiesResponse.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddresses, name: "ipAddresses"))
    HostPropertiesResponse.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "hostName"))
    HostPropertiesResponse.add_member(:ec2_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2InstanceArn"))
    HostPropertiesResponse.add_member(:ec2_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "ec2InstanceType"))
    HostPropertiesResponse.type = Types::HostPropertiesResponse
    InstanceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "member")
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerErrorException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    IpAddresses.add_member(:ip_v4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4Addresses, name: "ipV4Addresses"))
    IpAddresses.add_member(:ip_v6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV6Addresses, name: "ipV6Addresses"))
    IpAddresses.type = Types::IpAddresses
    IpV4Addresses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4Address, name: "member")
    IpV6Addresses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpV6Address, name: "member")
    JobAttachmentDetailsEntity.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobAttachmentDetailsEntity.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "attachments", traits: {"smithy.api#required" => {}}))
    JobAttachmentDetailsEntity.type = Types::JobAttachmentDetailsEntity
    JobAttachmentDetailsError.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobAttachmentDetailsError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntityErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    JobAttachmentDetailsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    JobAttachmentDetailsError.type = Types::JobAttachmentDetailsError
    JobAttachmentDetailsIdentifiers.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobAttachmentDetailsIdentifiers.type = Types::JobAttachmentDetailsIdentifiers
    JobAttachmentSettings.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName", traits: {"smithy.api#required" => {}}))
    JobAttachmentSettings.add_member(:root_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "rootPrefix", traits: {"smithy.api#required" => {}}))
    JobAttachmentSettings.type = Types::JobAttachmentSettings
    JobAttachmentsFileSystem.add_member(:copied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPIED", traits: {"smithy.api#enumValue" => "COPIED"}))
    JobAttachmentsFileSystem.add_member(:virtual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIRTUAL", traits: {"smithy.api#enumValue" => "VIRTUAL"}))
    JobDetailsEntity.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobDetailsEntity.add_member(:job_attachment_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentSettings, name: "jobAttachmentSettings"))
    JobDetailsEntity.add_member(:job_run_as_user, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunAsUser, name: "jobRunAsUser"))
    JobDetailsEntity.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logGroupName", traits: {"smithy.api#required" => {}}))
    JobDetailsEntity.add_member(:queue_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "queueRoleArn"))
    JobDetailsEntity.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameters, name: "parameters"))
    JobDetailsEntity.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schemaVersion", traits: {"smithy.api#required" => {}}))
    JobDetailsEntity.add_member(:path_mapping_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PathMappingRules, name: "pathMappingRules"))
    JobDetailsEntity.type = Types::JobDetailsEntity
    JobDetailsError.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobDetailsError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntityErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    JobDetailsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    JobDetailsError.type = Types::JobDetailsError
    JobDetailsIdentifiers.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobDetailsIdentifiers.type = Types::JobDetailsIdentifiers
    JobEntity.add_member(:job_details, Types::JobEntity::JobDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDetailsEntity, name: "jobDetails"))
    JobEntity.add_member(:job_attachment_details, Types::JobEntity::JobAttachmentDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentDetailsEntity, name: "jobAttachmentDetails"))
    JobEntity.add_member(:step_details, Types::JobEntity::StepDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDetailsEntity, name: "stepDetails"))
    JobEntity.add_member(:environment_details, Types::JobEntity::EnvironmentDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentDetailsEntity, name: "environmentDetails"))
    JobEntity.add_member(:unknown, Types::JobEntity::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobEntity.type = Types::JobEntity
    JobEntityErrorCode.add_member(:access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDeniedException", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    JobEntityErrorCode.add_member(:internal_server_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalServerException", traits: {"smithy.api#enumValue" => "InternalServerException"}))
    JobEntityErrorCode.add_member(:validation_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationException", traits: {"smithy.api#enumValue" => "ValidationException"}))
    JobEntityErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    JobEntityErrorCode.add_member(:max_payload_size_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MaxPayloadSizeExceeded", traits: {"smithy.api#enumValue" => "MaxPayloadSizeExceeded"}))
    JobEntityErrorCode.add_member(:conflict_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConflictException", traits: {"smithy.api#enumValue" => "ConflictException"}))
    JobEntityIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntityIdentifiersUnion, name: "member")
    JobEntityIdentifiersUnion.add_member(:job_details, Types::JobEntityIdentifiersUnion::JobDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDetailsIdentifiers, name: "jobDetails"))
    JobEntityIdentifiersUnion.add_member(:job_attachment_details, Types::JobEntityIdentifiersUnion::JobAttachmentDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentDetailsIdentifiers, name: "jobAttachmentDetails"))
    JobEntityIdentifiersUnion.add_member(:step_details, Types::JobEntityIdentifiersUnion::StepDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDetailsIdentifiers, name: "stepDetails"))
    JobEntityIdentifiersUnion.add_member(:environment_details, Types::JobEntityIdentifiersUnion::EnvironmentDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentDetailsIdentifiers, name: "environmentDetails"))
    JobEntityIdentifiersUnion.add_member(:unknown, Types::JobEntityIdentifiersUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobEntityIdentifiersUnion.type = Types::JobEntityIdentifiersUnion
    JobLifecycleStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    JobLifecycleStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    JobLifecycleStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    JobLifecycleStatus.add_member(:upload_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLOAD_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPLOAD_IN_PROGRESS"}))
    JobLifecycleStatus.add_member(:upload_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLOAD_FAILED", traits: {"smithy.api#enumValue" => "UPLOAD_FAILED"}))
    JobLifecycleStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    JobLifecycleStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    JobLifecycleStatus.add_member(:update_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SUCCEEDED", traits: {"smithy.api#enumValue" => "UPDATE_SUCCEEDED"}))
    JobLifecycleStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    JobMember.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    JobMember.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    JobMember.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobMember.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#required" => {}}))
    JobMember.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    JobMember.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    JobMember.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    JobMember.type = Types::JobMember
    JobMembers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobMember, name: "member")
    JobParameter.add_member(:int, Types::JobParameter::Int, ::Smithy::Schema::Shapes::MemberShape.new(target: IntString, name: "int"))
    JobParameter.add_member(:float, Types::JobParameter::Float, ::Smithy::Schema::Shapes::MemberShape.new(target: FloatString, name: "float"))
    JobParameter.add_member(:string, Types::JobParameter::String, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterString, name: "string"))
    JobParameter.add_member(:path, Types::JobParameter::Path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathString, name: "path"))
    JobParameter.add_member(:unknown, Types::JobParameter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobParameter.type = Types::JobParameter
    JobParameterDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameterDefinition, name: "member")
    JobParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    JobParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameter, name: "value")
    JobRunAsUser.add_member(:posix, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "posix"))
    JobRunAsUser.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsUser, name: "windows"))
    JobRunAsUser.add_member(:run_as, ::Smithy::Schema::Shapes::MemberShape.new(target: RunAs, name: "runAs", traits: {"smithy.api#required" => {}}))
    JobRunAsUser.type = Types::JobRunAsUser
    JobSearchSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobSearchSummary, name: "member")
    JobSearchSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    JobSearchSummary.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId"))
    JobSearchSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "name"))
    JobSearchSummary.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLifecycleStatus, name: "lifecycleStatus"))
    JobSearchSummary.add_member(:lifecycle_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lifecycleStatusMessage"))
    JobSearchSummary.add_member(:task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "taskRunStatus"))
    JobSearchSummary.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTargetTaskRunStatus, name: "targetTaskRunStatus"))
    JobSearchSummary.add_member(:task_run_status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatusCounts, name: "taskRunStatusCounts"))
    JobSearchSummary.add_member(:task_failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailureRetryCount, name: "taskFailureRetryCount"))
    JobSearchSummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "priority"))
    JobSearchSummary.add_member(:max_failed_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFailedTasksCount, name: "maxFailedTasksCount"))
    JobSearchSummary.add_member(:max_retries_per_task, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetriesPerTask, name: "maxRetriesPerTask"))
    JobSearchSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy"))
    JobSearchSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt"))
    JobSearchSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    JobSearchSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    JobSearchSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    JobSearchSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    JobSearchSummary.add_member(:job_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameters, name: "jobParameters"))
    JobSearchSummary.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxWorkerCount, name: "maxWorkerCount"))
    JobSearchSummary.add_member(:source_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "sourceJobId"))
    JobSearchSummary.type = Types::JobSearchSummary
    JobSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, name: "member")
    JobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "name", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLifecycleStatus, name: "lifecycleStatus", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:lifecycle_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lifecycleStatusMessage", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "priority", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    JobSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    JobSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    JobSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    JobSummary.add_member(:task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "taskRunStatus"))
    JobSummary.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTargetTaskRunStatus, name: "targetTaskRunStatus"))
    JobSummary.add_member(:task_run_status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatusCounts, name: "taskRunStatusCounts"))
    JobSummary.add_member(:task_failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailureRetryCount, name: "taskFailureRetryCount"))
    JobSummary.add_member(:max_failed_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFailedTasksCount, name: "maxFailedTasksCount"))
    JobSummary.add_member(:max_retries_per_task, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetriesPerTask, name: "maxRetriesPerTask"))
    JobSummary.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxWorkerCount, name: "maxWorkerCount"))
    JobSummary.add_member(:source_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "sourceJobId"))
    JobSummary.type = Types::JobSummary
    JobTargetTaskRunStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    JobTargetTaskRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobTargetTaskRunStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobTargetTaskRunStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    JobTargetTaskRunStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    JobTargetTaskRunStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    JobTemplateType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    JobTemplateType.add_member(:yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    LicenseEndpointStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    LicenseEndpointStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    LicenseEndpointStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    LicenseEndpointStatus.add_member(:not_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_READY", traits: {"smithy.api#enumValue" => "NOT_READY"}))
    LicenseEndpointSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointSummary, name: "member")
    LicenseEndpointSummary.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId"))
    LicenseEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointStatus, name: "status"))
    LicenseEndpointSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    LicenseEndpointSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    LicenseEndpointSummary.type = Types::LicenseEndpointSummary
    LimitSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LimitSummary, name: "member")
    LimitSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    LimitSummary.add_member(:amount_requirement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountRequirementName, name: "amountRequirementName", traits: {"smithy.api#required" => {}}))
    LimitSummary.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCount, name: "maxCount", traits: {"smithy.api#required" => {}}))
    LimitSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    LimitSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    LimitSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    LimitSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    LimitSummary.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    LimitSummary.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#required" => {}}))
    LimitSummary.add_member(:current_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "currentCount", traits: {"smithy.api#required" => {}}))
    LimitSummary.type = Types::LimitSummary
    ListAttributeCapabilityValue.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeCapabilityValue, name: "member")
    ListAvailableMeteredProductsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAvailableMeteredProductsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListAvailableMeteredProductsRequest.type = Types::ListAvailableMeteredProductsRequest
    ListAvailableMeteredProductsResponse.add_member(:metered_products, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteredProductSummaryList, name: "meteredProducts", traits: {"smithy.api#required" => {}}))
    ListAvailableMeteredProductsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAvailableMeteredProductsResponse.type = Types::ListAvailableMeteredProductsResponse
    ListBudgetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBudgetsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBudgetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListBudgetsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListBudgetsRequest.type = Types::ListBudgetsRequest
    ListBudgetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBudgetsResponse.add_member(:budgets, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetSummaries, name: "budgets", traits: {"smithy.api#required" => {}}))
    ListBudgetsResponse.type = Types::ListBudgetsResponse
    ListFarmMembersRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFarmMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFarmMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListFarmMembersRequest.type = Types::ListFarmMembersRequest
    ListFarmMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmMembers, name: "members", traits: {"smithy.api#required" => {}}))
    ListFarmMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListFarmMembersResponse.type = Types::ListFarmMembersResponse
    ListFarmsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFarmsRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpQuery" => "principalId"}))
    ListFarmsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListFarmsRequest.type = Types::ListFarmsRequest
    ListFarmsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListFarmsResponse.add_member(:farms, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmSummaries, name: "farms", traits: {"smithy.api#required" => {}}))
    ListFarmsResponse.type = Types::ListFarmsResponse
    ListFleetMembersRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFleetMembersRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFleetMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFleetMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListFleetMembersRequest.type = Types::ListFleetMembersRequest
    ListFleetMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetMembers, name: "members", traits: {"smithy.api#required" => {}}))
    ListFleetMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListFleetMembersResponse.type = Types::ListFleetMembersResponse
    ListFleetsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFleetsRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpQuery" => "principalId"}))
    ListFleetsRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#httpQuery" => "displayName"}))
    ListFleetsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListFleetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFleetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListFleetsRequest.type = Types::ListFleetsRequest
    ListFleetsResponse.add_member(:fleets, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetSummaries, name: "fleets", traits: {"smithy.api#required" => {}}))
    ListFleetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListFleetsResponse.type = Types::ListFleetsResponse
    ListJobMembersRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobMembersRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobMembersRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListJobMembersRequest.type = Types::ListJobMembersRequest
    ListJobMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: JobMembers, name: "members", traits: {"smithy.api#required" => {}}))
    ListJobMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListJobMembersResponse.type = Types::ListJobMembersResponse
    ListJobParameterDefinitionsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobParameterDefinitionsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobParameterDefinitionsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobParameterDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobParameterDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListJobParameterDefinitionsRequest.type = Types::ListJobParameterDefinitionsRequest
    ListJobParameterDefinitionsResponse.add_member(:job_parameter_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameterDefinitions, name: "jobParameterDefinitions", traits: {"smithy.api#required" => {}}))
    ListJobParameterDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListJobParameterDefinitionsResponse.type = Types::ListJobParameterDefinitionsResponse
    ListJobsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpQuery" => "principalId"}))
    ListJobsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummaries, name: "jobs", traits: {"smithy.api#required" => {}}))
    ListJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListJobsResponse.type = Types::ListJobsResponse
    ListLicenseEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLicenseEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListLicenseEndpointsRequest.type = Types::ListLicenseEndpointsRequest
    ListLicenseEndpointsResponse.add_member(:license_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointSummaries, name: "licenseEndpoints", traits: {"smithy.api#required" => {}}))
    ListLicenseEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListLicenseEndpointsResponse.type = Types::ListLicenseEndpointsResponse
    ListLimitsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLimitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLimitsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListLimitsRequest.type = Types::ListLimitsRequest
    ListLimitsResponse.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitSummaries, name: "limits", traits: {"smithy.api#required" => {}}))
    ListLimitsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListLimitsResponse.type = Types::ListLimitsResponse
    ListMeteredProductsRequest.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMeteredProductsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMeteredProductsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListMeteredProductsRequest.type = Types::ListMeteredProductsRequest
    ListMeteredProductsResponse.add_member(:metered_products, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteredProductSummaryList, name: "meteredProducts", traits: {"smithy.api#required" => {}}))
    ListMeteredProductsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListMeteredProductsResponse.type = Types::ListMeteredProductsResponse
    ListMonitorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMonitorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListMonitorsRequest.type = Types::ListMonitorsRequest
    ListMonitorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListMonitorsResponse.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorSummaries, name: "monitors", traits: {"smithy.api#required" => {}}))
    ListMonitorsResponse.type = Types::ListMonitorsResponse
    ListQueueEnvironmentsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueEnvironmentsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQueueEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListQueueEnvironmentsRequest.type = Types::ListQueueEnvironmentsRequest
    ListQueueEnvironmentsResponse.add_member(:environments, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentSummaries, name: "environments", traits: {"smithy.api#required" => {}}))
    ListQueueEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListQueueEnvironmentsResponse.type = Types::ListQueueEnvironmentsResponse
    ListQueueFleetAssociationsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueFleetAssociationsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpQuery" => "queueId"}))
    ListQueueFleetAssociationsRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpQuery" => "fleetId"}))
    ListQueueFleetAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQueueFleetAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListQueueFleetAssociationsRequest.type = Types::ListQueueFleetAssociationsRequest
    ListQueueFleetAssociationsResponse.add_member(:queue_fleet_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueFleetAssociationSummaries, name: "queueFleetAssociations", traits: {"smithy.api#required" => {}}))
    ListQueueFleetAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListQueueFleetAssociationsResponse.type = Types::ListQueueFleetAssociationsResponse
    ListQueueLimitAssociationsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueLimitAssociationsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpQuery" => "queueId"}))
    ListQueueLimitAssociationsRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#httpQuery" => "limitId"}))
    ListQueueLimitAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQueueLimitAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListQueueLimitAssociationsRequest.type = Types::ListQueueLimitAssociationsRequest
    ListQueueLimitAssociationsResponse.add_member(:queue_limit_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueLimitAssociationSummaries, name: "queueLimitAssociations", traits: {"smithy.api#required" => {}}))
    ListQueueLimitAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListQueueLimitAssociationsResponse.type = Types::ListQueueLimitAssociationsResponse
    ListQueueMembersRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueMembersRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueueMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQueueMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListQueueMembersRequest.type = Types::ListQueueMembersRequest
    ListQueueMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueMemberList, name: "members", traits: {"smithy.api#required" => {}}))
    ListQueueMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListQueueMembersResponse.type = Types::ListQueueMembersResponse
    ListQueuesRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueuesRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#httpQuery" => "principalId"}))
    ListQueuesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListQueuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQueuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListQueuesRequest.type = Types::ListQueuesRequest
    ListQueuesResponse.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSummaries, name: "queues", traits: {"smithy.api#required" => {}}))
    ListQueuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListQueuesResponse.type = Types::ListQueuesResponse
    ListSessionActionsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionActionsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionActionsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionActionsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId"}))
    ListSessionActionsRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId", traits: {"smithy.api#httpQuery" => "taskId"}))
    ListSessionActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSessionActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListSessionActionsRequest.type = Types::ListSessionActionsRequest
    ListSessionActionsResponse.add_member(:session_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionSummaries, name: "sessionActions", traits: {"smithy.api#required" => {}}))
    ListSessionActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSessionActionsResponse.type = Types::ListSessionActionsResponse
    ListSessionsForWorkerRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsForWorkerRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsForWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsForWorkerRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSessionsForWorkerRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListSessionsForWorkerRequest.type = Types::ListSessionsForWorkerRequest
    ListSessionsForWorkerResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSessionsForWorkerSummaries, name: "sessions", traits: {"smithy.api#required" => {}}))
    ListSessionsForWorkerResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSessionsForWorkerResponse.type = Types::ListSessionsForWorkerResponse
    ListSessionsForWorkerSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerSessionSummary, name: "member")
    ListSessionsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaries, name: "sessions", traits: {"smithy.api#required" => {}}))
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListStepConsumersRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepConsumersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStepConsumersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListStepConsumersRequest.type = Types::ListStepConsumersRequest
    ListStepConsumersResponse.add_member(:consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: StepConsumers, name: "consumers", traits: {"smithy.api#required" => {}}))
    ListStepConsumersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListStepConsumersResponse.type = Types::ListStepConsumersResponse
    ListStepDependenciesRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepDependenciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStepDependenciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListStepDependenciesRequest.type = Types::ListStepDependenciesRequest
    ListStepDependenciesResponse.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDependencies, name: "dependencies", traits: {"smithy.api#required" => {}}))
    ListStepDependenciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListStepDependenciesResponse.type = Types::ListStepDependenciesResponse
    ListStepsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepsRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListStepsRequest.type = Types::ListStepsRequest
    ListStepsResponse.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepSummaries, name: "steps", traits: {"smithy.api#required" => {}}))
    ListStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListStepsResponse.type = Types::ListStepsResponse
    ListStorageProfilesForQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStorageProfilesForQueueRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStorageProfilesForQueueRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStorageProfilesForQueueRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListStorageProfilesForQueueRequest.type = Types::ListStorageProfilesForQueueRequest
    ListStorageProfilesForQueueResponse.add_member(:storage_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileSummaries, name: "storageProfiles", traits: {"smithy.api#required" => {}}))
    ListStorageProfilesForQueueResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListStorageProfilesForQueueResponse.type = Types::ListStorageProfilesForQueueResponse
    ListStorageProfilesRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStorageProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStorageProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListStorageProfilesRequest.type = Types::ListStorageProfilesRequest
    ListStorageProfilesResponse.add_member(:storage_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileSummaries, name: "storageProfiles", traits: {"smithy.api#required" => {}}))
    ListStorageProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListStorageProfilesResponse.type = Types::ListStorageProfilesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTasksRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTasksRequest.type = Types::ListTasksRequest
    ListTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSummaries, name: "tasks", traits: {"smithy.api#required" => {}}))
    ListTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListTasksResponse.type = Types::ListTasksResponse
    ListWorkersRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkersRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListWorkersRequest.type = Types::ListWorkersRequest
    ListWorkersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListWorkersResponse.add_member(:workers, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerSummaries, name: "workers", traits: {"smithy.api#required" => {}}))
    ListWorkersResponse.type = Types::ListWorkersResponse
    LogConfiguration.add_member(:log_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDriver, name: "logDriver", traits: {"smithy.api#required" => {}}))
    LogConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: LogOptions, name: "options"))
    LogConfiguration.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LogParameters, name: "parameters"))
    LogConfiguration.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: LogError, name: "error"))
    LogConfiguration.type = Types::LogConfiguration
    LogOptions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    LogOptions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    LogParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    LogParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    LogicalOperator.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    LogicalOperator.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    ManifestProperties.add_member(:file_system_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationName, name: "fileSystemLocationName"))
    ManifestProperties.add_member(:root_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    ManifestProperties.add_member(:root_path_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PathFormat, name: "rootPathFormat", traits: {"smithy.api#required" => {}}))
    ManifestProperties.add_member(:output_relative_directories, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputRelativeDirectoriesList, name: "outputRelativeDirectories"))
    ManifestProperties.add_member(:input_manifest_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "inputManifestPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}}))
    ManifestProperties.add_member(:input_manifest_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "inputManifestHash", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    ManifestProperties.type = Types::ManifestProperties
    ManifestPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestProperties, name: "member")
    MembershipLevel.add_member(:viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIEWER", traits: {"smithy.api#enumValue" => "VIEWER"}))
    MembershipLevel.add_member(:contributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRIBUTOR", traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    MembershipLevel.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNER", traits: {"smithy.api#enumValue" => "OWNER"}))
    MembershipLevel.add_member(:manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGER", traits: {"smithy.api#enumValue" => "MANAGER"}))
    MemoryMiBRange.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryAmountMiB, name: "min", traits: {"smithy.api#required" => {}}))
    MemoryMiBRange.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryAmountMiB, name: "max"))
    MemoryMiBRange.type = Types::MemoryMiBRange
    MeteredProductSummary.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteredProductId, name: "productId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "productId"}))
    MeteredProductSummary.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "family", traits: {"smithy.api#required" => {}}))
    MeteredProductSummary.add_member(:vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "vendor", traits: {"smithy.api#required" => {}}))
    MeteredProductSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, name: "port", traits: {"smithy.api#required" => {}}))
    MeteredProductSummary.type = Types::MeteredProductSummary
    MeteredProductSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MeteredProductSummary, name: "member")
    MonitorSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorSummary, name: "member")
    MonitorSummary.add_member(:monitor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorId, name: "monitorId", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:subdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: Subdomain, name: "subdomain", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "identityCenterInstanceArn", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "identityCenterApplicationArn", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    MonitorSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    MonitorSummary.type = Types::MonitorSummary
    OutputRelativeDirectoriesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ParameterFilterExpression.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    ParameterFilterExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    ParameterFilterExpression.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "value", traits: {"smithy.api#required" => {}}))
    ParameterFilterExpression.type = Types::ParameterFilterExpression
    ParameterSortExpression.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    ParameterSortExpression.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    ParameterSortExpression.type = Types::ParameterSortExpression
    ParameterSpace.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StepParameterList, name: "parameters", traits: {"smithy.api#required" => {}}))
    ParameterSpace.add_member(:combination, ::Smithy::Schema::Shapes::MemberShape.new(target: CombinationExpression, name: "combination"))
    ParameterSpace.type = Types::ParameterSpace
    PathFormat.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "windows"}))
    PathFormat.add_member(:posix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSIX", traits: {"smithy.api#enumValue" => "posix"}))
    PathMappingRule.add_member(:source_path_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PathFormat, name: "sourcePathFormat", traits: {"smithy.api#required" => {}}))
    PathMappingRule.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourcePath", traits: {"smithy.api#required" => {}}))
    PathMappingRule.add_member(:destination_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "destinationPath", traits: {"smithy.api#required" => {}}))
    PathMappingRule.type = Types::PathMappingRule
    PathMappingRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PathMappingRule, name: "member")
    Period.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    Period.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    Period.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKLY", traits: {"smithy.api#enumValue" => "WEEKLY"}))
    Period.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    PosixUser.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user", traits: {"smithy.api#length" => {"min" => 0, "max" => 31}, "smithy.api#pattern" => "^(?:[a-z][a-z0-9-]{0,30})?$", "smithy.api#required" => {}}))
    PosixUser.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "group", traits: {"smithy.api#length" => {"min" => 0, "max" => 31}, "smithy.api#pattern" => "^(?:[a-z][a-z0-9-]{0,30})?$", "smithy.api#required" => {}}))
    PosixUser.type = Types::PosixUser
    PutMeteredProductRequest.add_member(:license_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEndpointId, name: "licenseEndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMeteredProductRequest.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MeteredProductId, name: "productId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMeteredProductRequest.type = Types::PutMeteredProductRequest
    PutMeteredProductResponse.type = Types::PutMeteredProductResponse
    QueueBlockedReason.add_member(:no_budget_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_BUDGET_CONFIGURED", traits: {"smithy.api#enumValue" => "NO_BUDGET_CONFIGURED"}))
    QueueBlockedReason.add_member(:budget_threshold_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUDGET_THRESHOLD_REACHED", traits: {"smithy.api#enumValue" => "BUDGET_THRESHOLD_REACHED"}))
    QueueEnvironmentSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentSummary, name: "member")
    QueueEnvironmentSummary.add_member(:queue_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentId, name: "queueEnvironmentId", traits: {"smithy.api#required" => {}}))
    QueueEnvironmentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, name: "name", traits: {"smithy.api#required" => {}}))
    QueueEnvironmentSummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    QueueEnvironmentSummary.type = Types::QueueEnvironmentSummary
    QueueFleetAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QueueFleetAssociationStatus.add_member(:stop_scheduling_and_complete_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_COMPLETE_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    QueueFleetAssociationStatus.add_member(:stop_scheduling_and_cancel_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_CANCEL_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    QueueFleetAssociationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    QueueFleetAssociationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueueFleetAssociationSummary, name: "member")
    QueueFleetAssociationSummary.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueFleetAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    QueueFleetAssociationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    QueueFleetAssociationSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    QueueFleetAssociationSummary.type = Types::QueueFleetAssociationSummary
    QueueIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "member")
    QueueLimitAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QueueLimitAssociationStatus.add_member(:stop_limit_usage_and_complete_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS", traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS"}))
    QueueLimitAssociationStatus.add_member(:stop_limit_usage_and_cancel_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_LIMIT_USAGE_AND_CANCEL_TASKS", traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_CANCEL_TASKS"}))
    QueueLimitAssociationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    QueueLimitAssociationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueueLimitAssociationSummary, name: "member")
    QueueLimitAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    QueueLimitAssociationSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    QueueLimitAssociationSummary.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#required" => {}}))
    QueueLimitAssociationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueLimitAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QueueLimitAssociationSummary.type = Types::QueueLimitAssociationSummary
    QueueMember.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    QueueMember.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    QueueMember.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalId, name: "principalId", traits: {"smithy.api#required" => {}}))
    QueueMember.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadlinePrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    QueueMember.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    QueueMember.add_member(:membership_level, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipLevel, name: "membershipLevel", traits: {"smithy.api#required" => {}}))
    QueueMember.type = Types::QueueMember
    QueueMemberList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueueMember, name: "member")
    QueueStatus.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "IDLE"}))
    QueueStatus.add_member(:scheduling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULING", traits: {"smithy.api#enumValue" => "SCHEDULING"}))
    QueueStatus.add_member(:scheduling_blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULING_BLOCKED", traits: {"smithy.api#enumValue" => "SCHEDULING_BLOCKED"}))
    QueueSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSummary, name: "member")
    QueueSummary.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:default_budget_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultQueueBudgetAction, name: "defaultBudgetAction", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:blocked_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueBlockedReason, name: "blockedReason"))
    QueueSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    QueueSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    QueueSummary.type = Types::QueueSummary
    RequiredFileSystemLocationNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationName, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContext, name: "context"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseBudgetAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionType, name: "type", traits: {"smithy.api#required" => {}}))
    ResponseBudgetAction.add_member(:threshold_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdPercentage, name: "thresholdPercentage", traits: {"smithy.api#required" => {}}))
    ResponseBudgetAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ResponseBudgetAction.type = Types::ResponseBudgetAction
    ResponseBudgetActionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseBudgetAction, name: "member")
    RunAs.add_member(:queue_configured_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUE_CONFIGURED_USER", traits: {"smithy.api#enumValue" => "QUEUE_CONFIGURED_USER"}))
    RunAs.add_member(:worker_agent_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKER_AGENT_USER", traits: {"smithy.api#enumValue" => "WORKER_AGENT_USER"}))
    S3Location.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "key", traits: {"smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    SearchFilterExpression.add_member(:date_time_filter, Types::SearchFilterExpression::DateTimeFilter, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeFilterExpression, name: "dateTimeFilter"))
    SearchFilterExpression.add_member(:parameter_filter, Types::SearchFilterExpression::ParameterFilter, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterFilterExpression, name: "parameterFilter"))
    SearchFilterExpression.add_member(:search_term_filter, Types::SearchFilterExpression::SearchTermFilter, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTermFilterExpression, name: "searchTermFilter"))
    SearchFilterExpression.add_member(:string_filter, Types::SearchFilterExpression::StringFilter, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilterExpression, name: "stringFilter"))
    SearchFilterExpression.add_member(:group_filter, Types::SearchFilterExpression::GroupFilter, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchGroupedFilterExpressions, name: "groupFilter"))
    SearchFilterExpression.add_member(:unknown, Types::SearchFilterExpression::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SearchFilterExpression.type = Types::SearchFilterExpression
    SearchFilterExpressions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterExpression, name: "member")
    SearchGroupedFilterExpressions.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterExpressions, name: "filters", traits: {"smithy.api#required" => {}}))
    SearchGroupedFilterExpressions.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    SearchGroupedFilterExpressions.type = Types::SearchGroupedFilterExpressions
    SearchJobsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchJobsRequest.add_member(:queue_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueIds, name: "queueIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchJobsRequest.add_member(:filter_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchGroupedFilterExpressions, name: "filterExpressions"))
    SearchJobsRequest.add_member(:sort_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSortExpressions, name: "sortExpressions"))
    SearchJobsRequest.add_member(:item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "itemOffset", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pageSize", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchJobsRequest.type = Types::SearchJobsRequest
    SearchJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSearchSummaries, name: "jobs", traits: {"smithy.api#required" => {}}))
    SearchJobsResponse.add_member(:next_item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: NextItemOffset, name: "nextItemOffset"))
    SearchJobsResponse.add_member(:total_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalResults, name: "totalResults", traits: {"smithy.api#required" => {}}))
    SearchJobsResponse.type = Types::SearchJobsResponse
    SearchSortExpression.add_member(:user_jobs_first, Types::SearchSortExpression::UserJobsFirst, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJobsFirst, name: "userJobsFirst"))
    SearchSortExpression.add_member(:field_sort, Types::SearchSortExpression::FieldSort, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldSortExpression, name: "fieldSort"))
    SearchSortExpression.add_member(:parameter_sort, Types::SearchSortExpression::ParameterSort, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterSortExpression, name: "parameterSort"))
    SearchSortExpression.add_member(:unknown, Types::SearchSortExpression::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SearchSortExpression.type = Types::SearchSortExpression
    SearchSortExpressions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSortExpression, name: "member")
    SearchStepsRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchStepsRequest.add_member(:queue_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueIds, name: "queueIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchStepsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    SearchStepsRequest.add_member(:filter_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchGroupedFilterExpressions, name: "filterExpressions"))
    SearchStepsRequest.add_member(:sort_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSortExpressions, name: "sortExpressions"))
    SearchStepsRequest.add_member(:item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "itemOffset", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchStepsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pageSize", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchStepsRequest.type = Types::SearchStepsRequest
    SearchStepsResponse.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepSearchSummaries, name: "steps", traits: {"smithy.api#required" => {}}))
    SearchStepsResponse.add_member(:next_item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: NextItemOffset, name: "nextItemOffset"))
    SearchStepsResponse.add_member(:total_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalResults, name: "totalResults", traits: {"smithy.api#required" => {}}))
    SearchStepsResponse.type = Types::SearchStepsResponse
    SearchTasksRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchTasksRequest.add_member(:queue_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueIds, name: "queueIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchTasksRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    SearchTasksRequest.add_member(:filter_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchGroupedFilterExpressions, name: "filterExpressions"))
    SearchTasksRequest.add_member(:sort_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSortExpressions, name: "sortExpressions"))
    SearchTasksRequest.add_member(:item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "itemOffset", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchTasksRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pageSize", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchTasksRequest.type = Types::SearchTasksRequest
    SearchTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSearchSummaries, name: "tasks", traits: {"smithy.api#required" => {}}))
    SearchTasksResponse.add_member(:next_item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: NextItemOffset, name: "nextItemOffset"))
    SearchTasksResponse.add_member(:total_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalResults, name: "totalResults", traits: {"smithy.api#required" => {}}))
    SearchTasksResponse.type = Types::SearchTasksResponse
    SearchTermFilterExpression.add_member(:search_term, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTerm, name: "searchTerm", traits: {"smithy.api#required" => {}}))
    SearchTermFilterExpression.add_member(:match_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTermMatchingType, name: "matchType", traits: {"smithy.api#default" => "FUZZY_MATCH"}))
    SearchTermFilterExpression.type = Types::SearchTermFilterExpression
    SearchTermMatchingType.add_member(:fuzzy_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FUZZY_MATCH", traits: {"smithy.api#enumValue" => "FUZZY_MATCH"}))
    SearchTermMatchingType.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    SearchWorkersRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchWorkersRequest.add_member(:fleet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIds, name: "fleetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchWorkersRequest.add_member(:filter_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchGroupedFilterExpressions, name: "filterExpressions"))
    SearchWorkersRequest.add_member(:sort_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSortExpressions, name: "sortExpressions"))
    SearchWorkersRequest.add_member(:item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "itemOffset", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    SearchWorkersRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pageSize", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchWorkersRequest.type = Types::SearchWorkersRequest
    SearchWorkersResponse.add_member(:workers, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerSearchSummaries, name: "workers", traits: {"smithy.api#required" => {}}))
    SearchWorkersResponse.add_member(:next_item_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: NextItemOffset, name: "nextItemOffset"))
    SearchWorkersResponse.add_member(:total_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalResults, name: "totalResults", traits: {"smithy.api#required" => {}}))
    SearchWorkersResponse.type = Types::SearchWorkersResponse
    SecurityGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member")
    ServiceManagedEc2FleetConfiguration.add_member(:instance_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedEc2InstanceCapabilities, name: "instanceCapabilities", traits: {"smithy.api#required" => {}}))
    ServiceManagedEc2FleetConfiguration.add_member(:instance_market_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedEc2InstanceMarketOptions, name: "instanceMarketOptions", traits: {"smithy.api#required" => {}}))
    ServiceManagedEc2FleetConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "vpcConfiguration"))
    ServiceManagedEc2FleetConfiguration.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId"))
    ServiceManagedEc2FleetConfiguration.type = Types::ServiceManagedEc2FleetConfiguration
    ServiceManagedEc2InstanceCapabilities.add_member(:v_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: VCpuCountRange, name: "vCpuCount", traits: {"smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMiBRange, name: "memoryMiB", traits: {"smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:os_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedFleetOperatingSystemFamily, name: "osFamily", traits: {"smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:cpu_architecture_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuArchitectureType, name: "cpuArchitectureType", traits: {"smithy.api#required" => {}}))
    ServiceManagedEc2InstanceCapabilities.add_member(:root_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2EbsVolume, name: "rootEbsVolume"))
    ServiceManagedEc2InstanceCapabilities.add_member(:accelerator_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorCapabilities, name: "acceleratorCapabilities"))
    ServiceManagedEc2InstanceCapabilities.add_member(:allowed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypes, name: "allowedInstanceTypes"))
    ServiceManagedEc2InstanceCapabilities.add_member(:excluded_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypes, name: "excludedInstanceTypes"))
    ServiceManagedEc2InstanceCapabilities.add_member(:custom_amounts, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomFleetAmountCapabilities, name: "customAmounts"))
    ServiceManagedEc2InstanceCapabilities.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomFleetAttributeCapabilities, name: "customAttributes"))
    ServiceManagedEc2InstanceCapabilities.type = Types::ServiceManagedEc2InstanceCapabilities
    ServiceManagedEc2InstanceMarketOptions.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2MarketType, name: "type", traits: {"smithy.api#required" => {}}))
    ServiceManagedEc2InstanceMarketOptions.type = Types::ServiceManagedEc2InstanceMarketOptions
    ServiceManagedFleetOperatingSystemFamily.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    ServiceManagedFleetOperatingSystemFamily.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX", traits: {"smithy.api#enumValue" => "LINUX"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContext, name: "context"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:service_quota_exceeded_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_QUOTA_EXCEEDED_EXCEPTION", traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED_EXCEPTION"}))
    ServiceQuotaExceededExceptionReason.add_member(:kms_key_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "KMS_KEY_LIMIT_EXCEEDED"}))
    ServiceQuotaExceededExceptionReason.add_member(:dependency_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPENDENCY_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "DEPENDENCY_LIMIT_EXCEEDED"}))
    SessionActionDefinition.add_member(:env_enter, Types::SessionActionDefinition::EnvEnter, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentEnterSessionActionDefinition, name: "envEnter"))
    SessionActionDefinition.add_member(:env_exit, Types::SessionActionDefinition::EnvExit, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentExitSessionActionDefinition, name: "envExit"))
    SessionActionDefinition.add_member(:task_run, Types::SessionActionDefinition::TaskRun, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunSessionActionDefinition, name: "taskRun"))
    SessionActionDefinition.add_member(:sync_input_job_attachments, Types::SessionActionDefinition::SyncInputJobAttachments, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncInputJobAttachmentsSessionActionDefinition, name: "syncInputJobAttachments"))
    SessionActionDefinition.add_member(:unknown, Types::SessionActionDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SessionActionDefinition.type = Types::SessionActionDefinition
    SessionActionDefinitionSummary.add_member(:env_enter, Types::SessionActionDefinitionSummary::EnvEnter, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentEnterSessionActionDefinitionSummary, name: "envEnter"))
    SessionActionDefinitionSummary.add_member(:env_exit, Types::SessionActionDefinitionSummary::EnvExit, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentExitSessionActionDefinitionSummary, name: "envExit"))
    SessionActionDefinitionSummary.add_member(:task_run, Types::SessionActionDefinitionSummary::TaskRun, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunSessionActionDefinitionSummary, name: "taskRun"))
    SessionActionDefinitionSummary.add_member(:sync_input_job_attachments, Types::SessionActionDefinitionSummary::SyncInputJobAttachments, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncInputJobAttachmentsSessionActionDefinitionSummary, name: "syncInputJobAttachments"))
    SessionActionDefinitionSummary.add_member(:unknown, Types::SessionActionDefinitionSummary::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SessionActionDefinitionSummary.type = Types::SessionActionDefinitionSummary
    SessionActionIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "member")
    SessionActionStatus.add_member(:assigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSIGNED", traits: {"smithy.api#enumValue" => "ASSIGNED"}))
    SessionActionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    SessionActionStatus.add_member(:canceling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELING", traits: {"smithy.api#enumValue" => "CANCELING"}))
    SessionActionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    SessionActionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionActionStatus.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    SessionActionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    SessionActionStatus.add_member(:never_attempted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEVER_ATTEMPTED", traits: {"smithy.api#enumValue" => "NEVER_ATTEMPTED"}))
    SessionActionStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    SessionActionStatus.add_member(:reclaiming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECLAIMING", traits: {"smithy.api#enumValue" => "RECLAIMING"}))
    SessionActionStatus.add_member(:reclaimed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECLAIMED", traits: {"smithy.api#enumValue" => "RECLAIMED"}))
    SessionActionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionSummary, name: "member")
    SessionActionSummary.add_member(:session_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "sessionActionId", traits: {"smithy.api#required" => {}}))
    SessionActionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SessionActionSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    SessionActionSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    SessionActionSummary.add_member(:worker_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "workerUpdatedAt"))
    SessionActionSummary.add_member(:progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionProgressPercent, name: "progressPercent"))
    SessionActionSummary.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionDefinitionSummary, name: "definition", traits: {"smithy.api#required" => {}}))
    SessionActionSummary.add_member(:manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunManifestPropertiesListResponse, name: "manifests"))
    SessionActionSummary.type = Types::SessionActionSummary
    SessionLifecycleStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    SessionLifecycleStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    SessionLifecycleStatus.add_member(:update_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SUCCEEDED", traits: {"smithy.api#enumValue" => "UPDATE_SUCCEEDED"}))
    SessionLifecycleStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    SessionLifecycleStatus.add_member(:ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDED", traits: {"smithy.api#enumValue" => "ENDED"}))
    SessionLifecycleTargetStatus.add_member(:ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDED", traits: {"smithy.api#enumValue" => "ENDED"}))
    SessionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member")
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLifecycleStatus, name: "lifecycleStatus", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    SessionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    SessionSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    SessionSummary.add_member(:target_lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLifecycleTargetStatus, name: "targetLifecycleStatus"))
    SessionSummary.type = Types::SessionSummary
    SessionsStatisticsAggregationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SessionsStatisticsAggregationStatus.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    SessionsStatisticsAggregationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionsStatisticsAggregationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SessionsStatisticsResources.add_member(:queue_ids, Types::SessionsStatisticsResources::QueueIds, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueIds, name: "queueIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}}))
    SessionsStatisticsResources.add_member(:fleet_ids, Types::SessionsStatisticsResources::FleetIds, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIds, name: "fleetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}}))
    SessionsStatisticsResources.add_member(:unknown, Types::SessionsStatisticsResources::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SessionsStatisticsResources.type = Types::SessionsStatisticsResources
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartSessionsStatisticsAggregationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionsStatisticsResources, name: "resourceIds", traits: {"smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartSessionsStatisticsAggregationRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartSessionsStatisticsAggregationRequest.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, name: "timezone"))
    StartSessionsStatisticsAggregationRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "period"))
    StartSessionsStatisticsAggregationRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageGroupBy, name: "groupBy", traits: {"smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageStatistics, name: "statistics", traits: {"smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationRequest.type = Types::StartSessionsStatisticsAggregationRequest
    StartSessionsStatisticsAggregationResponse.add_member(:aggregation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationId, name: "aggregationId", traits: {"smithy.api#required" => {}}))
    StartSessionsStatisticsAggregationResponse.type = Types::StartSessionsStatisticsAggregationResponse
    Statistics.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId"))
    Statistics.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId"))
    Statistics.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    Statistics.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "jobName"))
    Statistics.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    Statistics.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageType, name: "usageType"))
    Statistics.add_member(:license_product, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseProduct, name: "licenseProduct"))
    Statistics.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    Statistics.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "count", traits: {"smithy.api#required" => {}}))
    Statistics.add_member(:cost_in_usd, ::Smithy::Schema::Shapes::MemberShape.new(target: Stats, name: "costInUsd", traits: {"smithy.api#required" => {}}))
    Statistics.add_member(:runtime_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Stats, name: "runtimeInSeconds", traits: {"smithy.api#required" => {}}))
    Statistics.add_member(:aggregation_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "aggregationStartTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Statistics.add_member(:aggregation_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "aggregationEndTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Statistics.type = Types::Statistics
    StatisticsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Statistics, name: "member")
    Stats.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "min"))
    Stats.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "max"))
    Stats.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "avg"))
    Stats.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "sum"))
    Stats.type = Types::Stats
    StepAmountCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepAmountCapability, name: "member")
    StepAmountCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountCapabilityName, name: "name", traits: {"smithy.api#required" => {}}))
    StepAmountCapability.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "min"))
    StepAmountCapability.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "max"))
    StepAmountCapability.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "value"))
    StepAmountCapability.type = Types::StepAmountCapability
    StepAttributeCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepAttributeCapability, name: "member")
    StepAttributeCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeCapabilityName, name: "name", traits: {"smithy.api#required" => {}}))
    StepAttributeCapability.add_member(:any_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttributeCapabilityValue, name: "anyOf"))
    StepAttributeCapability.add_member(:all_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttributeCapabilityValue, name: "allOf"))
    StepAttributeCapability.type = Types::StepAttributeCapability
    StepConsumer.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    StepConsumer.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConsumerResolutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StepConsumer.type = Types::StepConsumer
    StepConsumers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepConsumer, name: "member")
    StepDependencies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepDependency, name: "member")
    StepDependency.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    StepDependency.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyConsumerResolutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StepDependency.type = Types::StepDependency
    StepDetailsEntity.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schemaVersion", traits: {"smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "template", traits: {"smithy.api#required" => {}}))
    StepDetailsEntity.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: DependenciesList, name: "dependencies", traits: {"smithy.api#required" => {}}))
    StepDetailsEntity.type = Types::StepDetailsEntity
    StepDetailsError.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    StepDetailsError.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    StepDetailsError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntityErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    StepDetailsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    StepDetailsError.type = Types::StepDetailsError
    StepDetailsIdentifiers.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    StepDetailsIdentifiers.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    StepDetailsIdentifiers.type = Types::StepDetailsIdentifiers
    StepLifecycleStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    StepLifecycleStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    StepLifecycleStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    StepLifecycleStatus.add_member(:update_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SUCCEEDED", traits: {"smithy.api#enumValue" => "UPDATE_SUCCEEDED"}))
    StepParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepParameterName, name: "name", traits: {"smithy.api#required" => {}}))
    StepParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: StepParameterType, name: "type", traits: {"smithy.api#required" => {}}))
    StepParameter.type = Types::StepParameter
    StepParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepParameter, name: "member")
    StepParameterType.add_member(:int, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INT", traits: {"smithy.api#enumValue" => "INT"}))
    StepParameterType.add_member(:float, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOAT", traits: {"smithy.api#enumValue" => "FLOAT"}))
    StepParameterType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    StepParameterType.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATH", traits: {"smithy.api#enumValue" => "PATH"}))
    StepParameterType.add_member(:chunk_int, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHUNK_INT", traits: {"smithy.api#enumValue" => "CHUNK_INT"}))
    StepRequiredCapabilities.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAttributeCapabilities, name: "attributes", traits: {"smithy.api#required" => {}}))
    StepRequiredCapabilities.add_member(:amounts, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAmountCapabilities, name: "amounts", traits: {"smithy.api#required" => {}}))
    StepRequiredCapabilities.type = Types::StepRequiredCapabilities
    StepSearchSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepSearchSummary, name: "member")
    StepSearchSummary.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId"))
    StepSearchSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    StepSearchSummary.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId"))
    StepSearchSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, name: "name"))
    StepSearchSummary.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepLifecycleStatus, name: "lifecycleStatus"))
    StepSearchSummary.add_member(:lifecycle_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lifecycleStatusMessage"))
    StepSearchSummary.add_member(:task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "taskRunStatus"))
    StepSearchSummary.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepTargetTaskRunStatus, name: "targetTaskRunStatus"))
    StepSearchSummary.add_member(:task_run_status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatusCounts, name: "taskRunStatusCounts"))
    StepSearchSummary.add_member(:task_failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailureRetryCount, name: "taskFailureRetryCount"))
    StepSearchSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt"))
    StepSearchSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy"))
    StepSearchSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    StepSearchSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    StepSearchSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    StepSearchSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    StepSearchSummary.add_member(:parameter_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterSpace, name: "parameterSpace"))
    StepSearchSummary.type = Types::StepSearchSummary
    StepSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepSummary, name: "member")
    StepSummary.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    StepSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, name: "name", traits: {"smithy.api#required" => {}}))
    StepSummary.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepLifecycleStatus, name: "lifecycleStatus", traits: {"smithy.api#required" => {}}))
    StepSummary.add_member(:lifecycle_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lifecycleStatusMessage"))
    StepSummary.add_member(:task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "taskRunStatus", traits: {"smithy.api#required" => {}}))
    StepSummary.add_member(:task_run_status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatusCounts, name: "taskRunStatusCounts", traits: {"smithy.api#required" => {}}))
    StepSummary.add_member(:task_failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailureRetryCount, name: "taskFailureRetryCount"))
    StepSummary.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepTargetTaskRunStatus, name: "targetTaskRunStatus"))
    StepSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    StepSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    StepSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    StepSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    StepSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    StepSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    StepSummary.add_member(:dependency_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyCounts, name: "dependencyCounts"))
    StepSummary.type = Types::StepSummary
    StepTargetTaskRunStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    StepTargetTaskRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StepTargetTaskRunStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    StepTargetTaskRunStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    StepTargetTaskRunStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    StepTargetTaskRunStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    StorageProfileOperatingSystemFamily.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    StorageProfileOperatingSystemFamily.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX", traits: {"smithy.api#enumValue" => "LINUX"}))
    StorageProfileOperatingSystemFamily.add_member(:macos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MACOS", traits: {"smithy.api#enumValue" => "MACOS"}))
    StorageProfileSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileSummary, name: "member")
    StorageProfileSummary.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#required" => {}}))
    StorageProfileSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName", traits: {"smithy.api#required" => {}}))
    StorageProfileSummary.add_member(:os_family, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileOperatingSystemFamily, name: "osFamily", traits: {"smithy.api#required" => {}}))
    StorageProfileSummary.type = Types::StorageProfileSummary
    StringFilterExpression.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    StringFilterExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    StringFilterExpression.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "value", traits: {"smithy.api#required" => {}}))
    StringFilterExpression.type = Types::StringFilterExpression
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    SubnetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member")
    SyncInputJobAttachmentsSessionActionDefinition.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId"))
    SyncInputJobAttachmentsSessionActionDefinition.type = Types::SyncInputJobAttachmentsSessionActionDefinition
    SyncInputJobAttachmentsSessionActionDefinitionSummary.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId"))
    SyncInputJobAttachmentsSessionActionDefinitionSummary.type = Types::SyncInputJobAttachmentsSessionActionDefinitionSummary
    TagPropagationMode.add_member(:no_propagation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PROPAGATION", traits: {"smithy.api#enumValue" => "NO_PROPAGATION"}))
    TagPropagationMode.add_member(:propagate_tags_to_workers_at_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH", traits: {"smithy.api#enumValue" => "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    TaskParameterValue.add_member(:int, Types::TaskParameterValue::Int, ::Smithy::Schema::Shapes::MemberShape.new(target: IntString, name: "int"))
    TaskParameterValue.add_member(:float, Types::TaskParameterValue::Float, ::Smithy::Schema::Shapes::MemberShape.new(target: FloatString, name: "float"))
    TaskParameterValue.add_member(:string, Types::TaskParameterValue::String, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterString, name: "string"))
    TaskParameterValue.add_member(:path, Types::TaskParameterValue::Path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathString, name: "path"))
    TaskParameterValue.add_member(:chunk_int, Types::TaskParameterValue::ChunkInt, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "chunkInt"))
    TaskParameterValue.add_member(:unknown, Types::TaskParameterValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TaskParameterValue.type = Types::TaskParameterValue
    TaskParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    TaskParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskParameterValue, name: "value")
    TaskRunManifestPropertiesListRequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunManifestPropertiesRequest, name: "member")
    TaskRunManifestPropertiesListResponse.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunManifestPropertiesResponse, name: "member")
    TaskRunManifestPropertiesRequest.add_member(:output_manifest_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "outputManifestPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}}))
    TaskRunManifestPropertiesRequest.add_member(:output_manifest_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "outputManifestHash", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    TaskRunManifestPropertiesRequest.type = Types::TaskRunManifestPropertiesRequest
    TaskRunManifestPropertiesResponse.add_member(:output_manifest_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "outputManifestPath"))
    TaskRunManifestPropertiesResponse.add_member(:output_manifest_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "outputManifestHash"))
    TaskRunManifestPropertiesResponse.type = Types::TaskRunManifestPropertiesResponse
    TaskRunSessionActionDefinition.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId"))
    TaskRunSessionActionDefinition.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    TaskRunSessionActionDefinition.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskParameters, name: "parameters", traits: {"smithy.api#required" => {}}))
    TaskRunSessionActionDefinition.type = Types::TaskRunSessionActionDefinition
    TaskRunSessionActionDefinitionSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId"))
    TaskRunSessionActionDefinitionSummary.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#required" => {}}))
    TaskRunSessionActionDefinitionSummary.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskParameters, name: "parameters"))
    TaskRunSessionActionDefinitionSummary.type = Types::TaskRunSessionActionDefinitionSummary
    TaskRunStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    TaskRunStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    TaskRunStatus.add_member(:assigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSIGNED", traits: {"smithy.api#enumValue" => "ASSIGNED"}))
    TaskRunStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    TaskRunStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    TaskRunStatus.add_member(:interrupting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTING", traits: {"smithy.api#enumValue" => "INTERRUPTING"}))
    TaskRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    TaskRunStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    TaskRunStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    TaskRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskRunStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TaskRunStatus.add_member(:not_compatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_COMPATIBLE", traits: {"smithy.api#enumValue" => "NOT_COMPATIBLE"}))
    TaskRunStatusCounts.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "key")
    TaskRunStatusCounts.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "value")
    TaskSearchSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSearchSummary, name: "member")
    TaskSearchSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId"))
    TaskSearchSummary.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId"))
    TaskSearchSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    TaskSearchSummary.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId"))
    TaskSearchSummary.add_member(:run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "runStatus"))
    TaskSearchSummary.add_member(:target_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTargetRunStatus, name: "targetRunStatus"))
    TaskSearchSummary.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskParameters, name: "parameters"))
    TaskSearchSummary.add_member(:failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRetryCount, name: "failureRetryCount"))
    TaskSearchSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    TaskSearchSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    TaskSearchSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    TaskSearchSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    TaskSearchSummary.type = Types::TaskSearchSummary
    TaskSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSummary, name: "member")
    TaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId", traits: {"smithy.api#required" => {}}))
    TaskSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    TaskSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    TaskSummary.add_member(:run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunStatus, name: "runStatus", traits: {"smithy.api#required" => {}}))
    TaskSummary.add_member(:target_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTargetRunStatus, name: "targetRunStatus"))
    TaskSummary.add_member(:failure_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRetryCount, name: "failureRetryCount"))
    TaskSummary.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskParameters, name: "parameters"))
    TaskSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt"))
    TaskSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    TaskSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    TaskSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    TaskSummary.add_member(:latest_session_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "latestSessionActionId"))
    TaskSummary.type = Types::TaskSummary
    TaskTargetRunStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    TaskTargetRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskTargetRunStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TaskTargetRunStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    TaskTargetRunStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    TaskTargetRunStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContext, name: "context"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBudgetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateBudgetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBudgetRequest.add_member(:budget_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetId, name: "budgetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBudgetRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName"))
    UpdateBudgetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateBudgetRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetStatus, name: "status"))
    UpdateBudgetRequest.add_member(:approximate_dollar_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedUsageLimit, name: "approximateDollarLimit"))
    UpdateBudgetRequest.add_member(:actions_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionsToAdd, name: "actionsToAdd"))
    UpdateBudgetRequest.add_member(:actions_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetActionsToRemove, name: "actionsToRemove"))
    UpdateBudgetRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetSchedule, name: "schedule"))
    UpdateBudgetRequest.type = Types::UpdateBudgetRequest
    UpdateBudgetResponse.type = Types::UpdateBudgetResponse
    UpdateFarmRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFarmRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName"))
    UpdateFarmRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateFarmRequest.type = Types::UpdateFarmRequest
    UpdateFarmResponse.type = Types::UpdateFarmResponse
    UpdateFleetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateFleetRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFleetRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFleetRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName"))
    UpdateFleetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateFleetRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    UpdateFleetRequest.add_member(:min_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "minWorkerCount"))
    UpdateFleetRequest.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinZeroMaxInteger, name: "maxWorkerCount"))
    UpdateFleetRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetConfiguration, name: "configuration"))
    UpdateFleetRequest.add_member(:host_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HostConfiguration, name: "hostConfiguration"))
    UpdateFleetRequest.type = Types::UpdateFleetRequest
    UpdateFleetResponse.type = Types::UpdateFleetResponse
    UpdateJobLifecycleStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    UpdateJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateJobRequest.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTargetTaskRunStatus, name: "targetTaskRunStatus"))
    UpdateJobRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "priority"))
    UpdateJobRequest.add_member(:max_failed_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFailedTasksCount, name: "maxFailedTasksCount"))
    UpdateJobRequest.add_member(:max_retries_per_task, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetriesPerTask, name: "maxRetriesPerTask"))
    UpdateJobRequest.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateJobLifecycleStatus, name: "lifecycleStatus"))
    UpdateJobRequest.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxWorkerCount, name: "maxWorkerCount"))
    UpdateJobRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobRequest.type = Types::UpdateJobRequest
    UpdateJobResponse.type = Types::UpdateJobResponse
    UpdateLimitRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLimitRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLimitRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName"))
    UpdateLimitRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateLimitRequest.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCount, name: "maxCount"))
    UpdateLimitRequest.type = Types::UpdateLimitRequest
    UpdateLimitResponse.type = Types::UpdateLimitResponse
    UpdateMonitorRequest.add_member(:monitor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorId, name: "monitorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMonitorRequest.add_member(:subdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: Subdomain, name: "subdomain"))
    UpdateMonitorRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName"))
    UpdateMonitorRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    UpdateMonitorRequest.type = Types::UpdateMonitorRequest
    UpdateMonitorResponse.type = Types::UpdateMonitorResponse
    UpdateQueueEnvironmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:queue_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueEnvironmentId, name: "queueEnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueEnvironmentRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority"))
    UpdateQueueEnvironmentRequest.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentTemplateType, name: "templateType"))
    UpdateQueueEnvironmentRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentTemplate, name: "template"))
    UpdateQueueEnvironmentRequest.type = Types::UpdateQueueEnvironmentRequest
    UpdateQueueEnvironmentResponse.type = Types::UpdateQueueEnvironmentResponse
    UpdateQueueFleetAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateQueueFleetAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateQueueFleetAssociationRequest.type = Types::UpdateQueueFleetAssociationRequest
    UpdateQueueFleetAssociationResponse.type = Types::UpdateQueueFleetAssociationResponse
    UpdateQueueFleetAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UpdateQueueFleetAssociationStatus.add_member(:stop_scheduling_and_complete_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_COMPLETE_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_COMPLETE_TASKS"}))
    UpdateQueueFleetAssociationStatus.add_member(:stop_scheduling_and_cancel_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SCHEDULING_AND_CANCEL_TASKS", traits: {"smithy.api#enumValue" => "STOP_SCHEDULING_AND_CANCEL_TASKS"}))
    UpdateQueueLimitAssociationRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.add_member(:limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitId, name: "limitId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateQueueLimitAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateQueueLimitAssociationRequest.type = Types::UpdateQueueLimitAssociationRequest
    UpdateQueueLimitAssociationResponse.type = Types::UpdateQueueLimitAssociationResponse
    UpdateQueueLimitAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UpdateQueueLimitAssociationStatus.add_member(:stop_limit_usage_and_complete_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS", traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS"}))
    UpdateQueueLimitAssociationStatus.add_member(:stop_limit_usage_and_cancel_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_LIMIT_USAGE_AND_CANCEL_TASKS", traits: {"smithy.api#enumValue" => "STOP_LIMIT_USAGE_AND_CANCEL_TASKS"}))
    UpdateQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateQueueRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName"))
    UpdateQueueRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateQueueRequest.add_member(:default_budget_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultQueueBudgetAction, name: "defaultBudgetAction"))
    UpdateQueueRequest.add_member(:job_attachment_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: JobAttachmentSettings, name: "jobAttachmentSettings"))
    UpdateQueueRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    UpdateQueueRequest.add_member(:job_run_as_user, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunAsUser, name: "jobRunAsUser"))
    UpdateQueueRequest.add_member(:required_file_system_location_names_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredFileSystemLocationNames, name: "requiredFileSystemLocationNamesToAdd"))
    UpdateQueueRequest.add_member(:required_file_system_location_names_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredFileSystemLocationNames, name: "requiredFileSystemLocationNamesToRemove"))
    UpdateQueueRequest.add_member(:allowed_storage_profile_ids_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedStorageProfileIds, name: "allowedStorageProfileIdsToAdd"))
    UpdateQueueRequest.add_member(:allowed_storage_profile_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedStorageProfileIds, name: "allowedStorageProfileIdsToRemove"))
    UpdateQueueRequest.type = Types::UpdateQueueRequest
    UpdateQueueResponse.type = Types::UpdateQueueResponse
    UpdateSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateSessionRequest.add_member(:target_lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLifecycleTargetStatus, name: "targetLifecycleStatus", traits: {"smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.type = Types::UpdateSessionRequest
    UpdateSessionResponse.type = Types::UpdateSessionResponse
    UpdateStepRequest.add_member(:target_task_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepTargetTaskRunStatus, name: "targetTaskRunStatus", traits: {"smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateStepRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStepRequest.type = Types::UpdateStepRequest
    UpdateStepResponse.type = Types::UpdateStepResponse
    UpdateStorageProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateStorageProfileRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageProfileRequest.add_member(:storage_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileId, name: "storageProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageProfileRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "displayName"))
    UpdateStorageProfileRequest.add_member(:os_family, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageProfileOperatingSystemFamily, name: "osFamily"))
    UpdateStorageProfileRequest.add_member(:file_system_locations_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationsList, name: "fileSystemLocationsToAdd"))
    UpdateStorageProfileRequest.add_member(:file_system_locations_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationsList, name: "fileSystemLocationsToRemove"))
    UpdateStorageProfileRequest.type = Types::UpdateStorageProfileRequest
    UpdateStorageProfileResponse.type = Types::UpdateStorageProfileResponse
    UpdateTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateTaskRequest.add_member(:target_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTargetRunStatus, name: "targetRunStatus", traits: {"smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "stepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTaskRequest.type = Types::UpdateTaskRequest
    UpdateTaskResponse.type = Types::UpdateTaskResponse
    UpdateWorkerRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedWorkerStatus, name: "status"))
    UpdateWorkerRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerCapabilities, name: "capabilities"))
    UpdateWorkerRequest.add_member(:host_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: HostPropertiesRequest, name: "hostProperties"))
    UpdateWorkerRequest.type = Types::UpdateWorkerRequest
    UpdateWorkerResponse.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "log"))
    UpdateWorkerResponse.add_member(:host_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HostConfiguration, name: "hostConfiguration"))
    UpdateWorkerResponse.type = Types::UpdateWorkerResponse
    UpdateWorkerScheduleRequest.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerScheduleRequest.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerScheduleRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkerScheduleRequest.add_member(:updated_session_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedSessionActions, name: "updatedSessionActions"))
    UpdateWorkerScheduleRequest.type = Types::UpdateWorkerScheduleRequest
    UpdateWorkerScheduleResponse.add_member(:assigned_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedSessions, name: "assignedSessions", traits: {"smithy.api#required" => {}}))
    UpdateWorkerScheduleResponse.add_member(:cancel_session_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelSessionActions, name: "cancelSessionActions", traits: {"smithy.api#required" => {}}))
    UpdateWorkerScheduleResponse.add_member(:desired_worker_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredWorkerStatus, name: "desiredWorkerStatus"))
    UpdateWorkerScheduleResponse.add_member(:update_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateWorkerScheduleInterval, name: "updateIntervalSeconds", traits: {"smithy.api#required" => {}}))
    UpdateWorkerScheduleResponse.type = Types::UpdateWorkerScheduleResponse
    UpdatedSessionActionInfo.add_member(:completed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletedStatus, name: "completedStatus"))
    UpdatedSessionActionInfo.add_member(:process_exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessExitCode, name: "processExitCode"))
    UpdatedSessionActionInfo.add_member(:progress_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionProgressMessage, name: "progressMessage"))
    UpdatedSessionActionInfo.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdatedSessionActionInfo.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdatedSessionActionInfo.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdatedSessionActionInfo.add_member(:progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionProgressPercent, name: "progressPercent"))
    UpdatedSessionActionInfo.add_member(:manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskRunManifestPropertiesListRequest, name: "manifests"))
    UpdatedSessionActionInfo.type = Types::UpdatedSessionActionInfo
    UpdatedSessionActions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionActionId, name: "key")
    UpdatedSessionActions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedSessionActionInfo, name: "value")
    UpdatedWorkerStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    UpdatedWorkerStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    UpdatedWorkerStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    UsageGroupBy.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UsageGroupByField, name: "member")
    UsageGroupByField.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUE_ID", traits: {"smithy.api#enumValue" => "QUEUE_ID"}))
    UsageGroupByField.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEET_ID", traits: {"smithy.api#enumValue" => "FLEET_ID"}))
    UsageGroupByField.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOB_ID", traits: {"smithy.api#enumValue" => "JOB_ID"}))
    UsageGroupByField.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_ID", traits: {"smithy.api#enumValue" => "USER_ID"}))
    UsageGroupByField.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE_TYPE", traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    UsageGroupByField.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "INSTANCE_TYPE"}))
    UsageGroupByField.add_member(:license_product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_PRODUCT", traits: {"smithy.api#enumValue" => "LICENSE_PRODUCT"}))
    UsageStatistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "SUM"}))
    UsageStatistic.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN", traits: {"smithy.api#enumValue" => "MIN"}))
    UsageStatistic.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX", traits: {"smithy.api#enumValue" => "MAX"}))
    UsageStatistic.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVG", traits: {"smithy.api#enumValue" => "AVG"}))
    UsageStatistics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UsageStatistic, name: "member")
    UsageTrackingResource.add_member(:queue_id, Types::UsageTrackingResource::QueueId, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId"))
    UsageTrackingResource.add_member(:unknown, Types::UsageTrackingResource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UsageTrackingResource.type = Types::UsageTrackingResource
    UsageType.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTE", traits: {"smithy.api#enumValue" => "COMPUTE"}))
    UsageType.add_member(:license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE", traits: {"smithy.api#enumValue" => "LICENSE"}))
    UserJobsFirst.add_member(:user_identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userIdentityId", traits: {"smithy.api#required" => {}}))
    UserJobsFirst.type = Types::UserJobsFirst
    VCpuCountRange.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: MinOneMaxTenThousand, name: "min", traits: {"smithy.api#required" => {}}))
    VCpuCountRange.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: MinOneMaxTenThousand, name: "max"))
    VCpuCountRange.type = Types::VCpuCountRange
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionContext, name: "context"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VpcConfiguration.add_member(:resource_configuration_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcResourceConfigurationArns, name: "resourceConfigurationArns"))
    VpcConfiguration.type = Types::VpcConfiguration
    VpcResourceConfigurationArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcResourceConfigurationArn, name: "member")
    WindowsUser.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user", traits: {"smithy.api#length" => {"min" => 0, "max" => 111}, "smithy.api#pattern" => "^[^\"'/\\[\\]:;|=,+*?<>\\s]*$", "smithy.api#required" => {}}))
    WindowsUser.add_member(:password_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "passwordArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):secretsmanager:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:secret:[a-zA-Z0-9-/_+=.@]{1,2028}$", "smithy.api#required" => {}}))
    WindowsUser.type = Types::WindowsUser
    WorkerAmountCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountCapabilityName, name: "name", traits: {"smithy.api#required" => {}}))
    WorkerAmountCapability.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "value", traits: {"smithy.api#required" => {}}))
    WorkerAmountCapability.type = Types::WorkerAmountCapability
    WorkerAmountCapabilityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerAmountCapability, name: "member")
    WorkerAttributeCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeCapabilityName, name: "name", traits: {"smithy.api#required" => {}}))
    WorkerAttributeCapability.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeCapabilityValuesList, name: "values", traits: {"smithy.api#required" => {}}))
    WorkerAttributeCapability.type = Types::WorkerAttributeCapability
    WorkerAttributeCapabilityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerAttributeCapability, name: "member")
    WorkerCapabilities.add_member(:amounts, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerAmountCapabilityList, name: "amounts", traits: {"smithy.api#required" => {}}))
    WorkerCapabilities.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerAttributeCapabilityList, name: "attributes", traits: {"smithy.api#required" => {}}))
    WorkerCapabilities.type = Types::WorkerCapabilities
    WorkerSearchSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerSearchSummary, name: "member")
    WorkerSearchSummary.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId"))
    WorkerSearchSummary.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId"))
    WorkerSearchSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerStatus, name: "status"))
    WorkerSearchSummary.add_member(:host_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: HostPropertiesResponse, name: "hostProperties"))
    WorkerSearchSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy"))
    WorkerSearchSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt"))
    WorkerSearchSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    WorkerSearchSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    WorkerSearchSummary.type = Types::WorkerSearchSummary
    WorkerSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:queue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueId, name: "queueId", traits: {"smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, name: "startedAt", traits: {"smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLifecycleStatus, name: "lifecycleStatus", traits: {"smithy.api#required" => {}}))
    WorkerSessionSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EndedAt, name: "endedAt"))
    WorkerSessionSummary.add_member(:target_lifecycle_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLifecycleTargetStatus, name: "targetLifecycleStatus"))
    WorkerSessionSummary.type = Types::WorkerSessionSummary
    WorkerStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    WorkerStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    WorkerStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    WorkerStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    WorkerStatus.add_member(:not_responding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_RESPONDING", traits: {"smithy.api#enumValue" => "NOT_RESPONDING"}))
    WorkerStatus.add_member(:not_compatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_COMPATIBLE", traits: {"smithy.api#enumValue" => "NOT_COMPATIBLE"}))
    WorkerStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkerStatus.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "IDLE"}))
    WorkerSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerSummary, name: "member")
    WorkerSummary.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerId, name: "workerId", traits: {"smithy.api#required" => {}}))
    WorkerSummary.add_member(:farm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FarmId, name: "farmId", traits: {"smithy.api#required" => {}}))
    WorkerSummary.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, name: "fleetId", traits: {"smithy.api#required" => {}}))
    WorkerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerStatus, name: "status", traits: {"smithy.api#required" => {}}))
    WorkerSummary.add_member(:host_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: HostPropertiesResponse, name: "hostProperties"))
    WorkerSummary.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "log"))
    WorkerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt", traits: {"smithy.api#required" => {}}))
    WorkerSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy", traits: {"smithy.api#required" => {}}))
    WorkerSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, name: "updatedAt"))
    WorkerSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, name: "updatedBy"))
    WorkerSummary.type = Types::WorkerSummary

    Deadline = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.deadline#Deadline"
      service.name = "Deadline"
      service.version = "2023-10-12"
      service.traits = {"aws.api#service" => {"sdkId" => "deadline", "arnNamespace" => "deadline"}, "aws.auth#sigv4" => {"name" => "deadline"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "deadline:FarmMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the farm", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:FleetMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the fleet", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:QueueMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the queue", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:JobMembershipLevels" => {"type" => "ArrayOfString", "documentation" => "Filters access by membership levels on the job", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:RequesterPrincipalId" => {"type" => "String", "documentation" => "Filters access by the user calling the Deadline Cloud API", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:PrincipalId" => {"type" => "String", "documentation" => "Filters access by the principle ID provided in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:AssociatedMembershipLevel" => {"type" => "String", "documentation" => "Filters access by the associated membership level of the principal provided in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:MembershipLevel" => {"type" => "String", "documentation" => "Filters access by the membership level passed in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}, "deadline:CalledAction" => {"type" => "String", "documentation" => "Filters access by the allowed action in the request", "externalDocumentation" => "${ContextKeysDocRoot}"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "authorization", "x-amz-date", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-trace-id", "x-amz-client-token", "x-api-key", "x-amz-dryrun"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amz-apigw-id"]}, "smithy.api#title" => "AWSDeadlineCloud"}
      service.add_operation(:associate_member_to_farm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToFarm"
        operation.name = "AssociateMemberToFarm"
        operation.input = AssociateMemberToFarmRequest
        operation.output = AssociateMemberToFarmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToFarm", "documentation" => "Grants permission to associate a member to a farm", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_member_to_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToFleet"
        operation.name = "AssociateMemberToFleet"
        operation.input = AssociateMemberToFleetRequest
        operation.output = AssociateMemberToFleetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToFleet", "documentation" => "Grants permission to associate a member to a fleet", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_member_to_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToJob"
        operation.name = "AssociateMemberToJob"
        operation.input = AssociateMemberToJobRequest
        operation.output = AssociateMemberToJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToJob", "documentation" => "Grants permission to associate a member to a job", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_member_to_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssociateMemberToQueue"
        operation.name = "AssociateMemberToQueue"
        operation.input = AssociateMemberToQueueRequest
        operation.output = AssociateMemberToQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel", "deadline:MembershipLevel"], "aws.iam#iamAction" => {"name" => "AssociateMemberToQueue", "documentation" => "Grants permission to associate a member to a queue", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:assume_fleet_role_for_read, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeFleetRoleForRead"
        operation.name = "AssumeFleetRoleForRead"
        operation.input = AssumeFleetRoleForReadRequest
        operation.output = AssumeFleetRoleForReadResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeFleetRoleForRead", "documentation" => "Grants permission to assume a fleet role for read-only access", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/read-roles", "code" => 200}}
      end)
      service.add_operation(:assume_fleet_role_for_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeFleetRoleForWorker"
        operation.name = "AssumeFleetRoleForWorker"
        operation.input = AssumeFleetRoleForWorkerRequest
        operation.output = AssumeFleetRoleForWorkerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeFleetRoleForWorker", "documentation" => "Grants permission to assume a fleet role for a worker"}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/fleet-roles", "code" => 200}}
      end)
      service.add_operation(:assume_queue_role_for_read, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeQueueRoleForRead"
        operation.name = "AssumeQueueRoleForRead"
        operation.input = AssumeQueueRoleForReadRequest
        operation.output = AssumeQueueRoleForReadResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeQueueRoleForRead", "documentation" => "Grants permission to assume a queue role for read-only access", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/read-roles", "code" => 200}}
      end)
      service.add_operation(:assume_queue_role_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeQueueRoleForUser"
        operation.name = "AssumeQueueRoleForUser"
        operation.input = AssumeQueueRoleForUserRequest
        operation.output = AssumeQueueRoleForUserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeQueueRoleForUser", "documentation" => "Grants permission to assume a queue role for a user", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/user-roles", "code" => 200}}
      end)
      service.add_operation(:assume_queue_role_for_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#AssumeQueueRoleForWorker"
        operation.name = "AssumeQueueRoleForWorker"
        operation.input = AssumeQueueRoleForWorkerRequest
        operation.output = AssumeQueueRoleForWorkerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "AssumeQueueRoleForWorker", "documentation" => "Grants permission to assume a queue role for a worker", "resources" => {"required" => {"worker" => {}, "queue" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/queue-roles", "code" => 200}}
      end)
      service.add_operation(:batch_get_job_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#BatchGetJobEntity"
        operation.name = "BatchGetJobEntity"
        operation.input = BatchGetJobEntityRequest
        operation.output = BatchGetJobEntityResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "BatchGetJobEntity", "documentation" => "Grants permission to get a job entity for a worker"}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/batchGetJobEntity", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:copy_job_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CopyJobTemplate"
        operation.name = "CopyJobTemplate"
        operation.input = CopyJobTemplateRequest
        operation.output = CopyJobTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CopyJobTemplate", "documentation" => "Grants permission to copy a job template to an Amazon S3 bucket", "requiredActions" => ["identitystore:ListGroupMembershipsForMember", "s3:PutObject"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/template", "code" => 200}}
      end)
      service.add_operation(:create_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateBudget"
        operation.name = "CreateBudget"
        operation.input = CreateBudgetRequest
        operation.output = CreateBudgetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateBudget", "documentation" => "Grants permission to create a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/budgets", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_farm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateFarm"
        operation.name = "CreateFarm"
        operation.input = CreateFarmRequest
        operation.output = CreateFarmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateFarm", "documentation" => "Grants permission to create a farm", "requiredActions" => ["deadline:TagResource"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = CreateFleetRequest
        operation.output = CreateFleetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateFleet", "documentation" => "Grants permission to create a fleet", "requiredActions" => ["deadline:TagResource", "iam:PassRole", "identitystore:ListGroupMembershipsForMember", "logs:CreateLogGroup", "vpc-lattice:GetResourceConfiguration", "vpc-lattice:GetResourceGateway", "ec2:CreateVpcEndpoint"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/fleets", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateJob"
        operation.name = "CreateJob"
        operation.input = CreateJobRequest
        operation.output = CreateJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateJob", "documentation" => "Grants permission to create a job", "requiredActions" => ["deadline:GetJobTemplate", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_license_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateLicenseEndpoint"
        operation.name = "CreateLicenseEndpoint"
        operation.input = CreateLicenseEndpointRequest
        operation.output = CreateLicenseEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateLicenseEndpoint", "documentation" => "Grants permission to create a license endpoint for licensed software or products", "requiredActions" => ["deadline:TagResource", "ec2:CreateTags", "ec2:CreateVpcEndpoint", "ec2:DescribeVpcEndpoints"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/license-endpoints", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateLimit"
        operation.name = "CreateLimit"
        operation.input = CreateLimitRequest
        operation.output = CreateLimitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateLimit", "documentation" => "Grants permission to create a limit for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/limits", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateMonitor"
        operation.name = "CreateMonitor"
        operation.input = CreateMonitorRequest
        operation.output = CreateMonitorResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateMonitor", "documentation" => "Grants permission to create a monitor", "requiredActions" => ["deadline:TagResource", "sso:CreateApplication", "sso:PutApplicationAssignmentConfiguration", "sso:PutApplicationAuthenticationMethod", "sso:PutApplicationGrant", "sso:DeleteApplication", "iam:PassRole"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/monitors", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueue"
        operation.name = "CreateQueue"
        operation.input = CreateQueueRequest
        operation.output = CreateQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateQueue", "documentation" => "Grants permission to create a queue", "requiredActions" => ["deadline:TagResource", "logs:CreateLogGroup", "identitystore:ListGroupMembershipsForMember", "iam:PassRole", "s3:ListBucket"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueueEnvironment"
        operation.name = "CreateQueueEnvironment"
        operation.input = CreateQueueEnvironmentRequest
        operation.output = CreateQueueEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateQueueEnvironment", "documentation" => "Grants permission to create a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue_fleet_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueueFleetAssociation"
        operation.name = "CreateQueueFleetAssociation"
        operation.input = CreateQueueFleetAssociationRequest
        operation.output = CreateQueueFleetAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateQueueFleetAssociation", "documentation" => "Grants permission to create a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_queue_limit_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateQueueLimitAssociation"
        operation.name = "CreateQueueLimitAssociation"
        operation.input = CreateQueueLimitAssociationRequest
        operation.output = CreateQueueLimitAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateQueueLimitAssociation", "documentation" => "Grants permission to create a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_storage_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateStorageProfile"
        operation.name = "CreateStorageProfile"
        operation.input = CreateStorageProfileRequest
        operation.output = CreateStorageProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateStorageProfile", "documentation" => "Grants permission to create a storage profile for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#CreateWorker"
        operation.name = "CreateWorker"
        operation.input = CreateWorkerRequest
        operation.output = CreateWorkerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateWorker", "documentation" => "Grants permission to create a worker", "requiredActions" => ["deadline:TagResource", "deadline:ListTagsForResource"]}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteBudget"
        operation.name = "DeleteBudget"
        operation.input = DeleteBudgetRequest
        operation.output = DeleteBudgetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteBudget", "documentation" => "Grants permission to delete a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/budgets/{budgetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_farm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteFarm"
        operation.name = "DeleteFarm"
        operation.input = DeleteFarmRequest
        operation.output = DeleteFarmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteFarm", "documentation" => "Grants permission to delete a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = DeleteFleetRequest
        operation.output = DeleteFleetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteFleet", "documentation" => "Grants permission to delete a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_license_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteLicenseEndpoint"
        operation.name = "DeleteLicenseEndpoint"
        operation.input = DeleteLicenseEndpointRequest
        operation.output = DeleteLicenseEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "DeleteLicenseEndpoint", "documentation" => "Grants permission to delete a license endpoint", "requiredActions" => ["ec2:DeleteVpcEndpoints", "ec2:DescribeVpcEndpoints"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteLimit"
        operation.name = "DeleteLimit"
        operation.input = DeleteLimitRequest
        operation.output = DeleteLimitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteLimit", "documentation" => "Grants permission to delete a limit", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/limits/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_metered_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteMeteredProduct"
        operation.name = "DeleteMeteredProduct"
        operation.input = DeleteMeteredProductRequest
        operation.output = DeleteMeteredProductResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "DeleteMeteredProduct", "documentation" => "Grants permission to delete a metered product"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteMonitor"
        operation.name = "DeleteMonitor"
        operation.input = DeleteMonitorRequest
        operation.output = DeleteMonitorResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "DeleteMonitor", "documentation" => "Grants permission to delete a monitor", "requiredActions" => ["sso:DeleteApplication"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/monitors/{monitorId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueue"
        operation.name = "DeleteQueue"
        operation.input = DeleteQueueRequest
        operation.output = DeleteQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueue", "documentation" => "Grants permission to delete a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueueEnvironment"
        operation.name = "DeleteQueueEnvironment"
        operation.input = DeleteQueueEnvironmentRequest
        operation.output = DeleteQueueEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueueEnvironment", "documentation" => "Grants permission to delete a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue_fleet_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueueFleetAssociation"
        operation.name = "DeleteQueueFleetAssociation"
        operation.input = DeleteQueueFleetAssociationRequest
        operation.output = DeleteQueueFleetAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueueFleetAssociation", "documentation" => "Grants permission to delete a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_queue_limit_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteQueueLimitAssociation"
        operation.name = "DeleteQueueLimitAssociation"
        operation.input = DeleteQueueLimitAssociationRequest
        operation.output = DeleteQueueLimitAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteQueueLimitAssociation", "documentation" => "Grants permission to delete a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_storage_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteStorageProfile"
        operation.name = "DeleteStorageProfile"
        operation.input = DeleteStorageProfileRequest
        operation.output = DeleteStorageProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteStorageProfile", "documentation" => "Grants permission to delete a storage profile", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DeleteWorker"
        operation.name = "DeleteWorker"
        operation.input = DeleteWorkerRequest
        operation.output = DeleteWorkerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteWorker", "documentation" => "Grants permission to delete a worker"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_farm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromFarm"
        operation.name = "DisassociateMemberFromFarm"
        operation.input = DisassociateMemberFromFarmRequest
        operation.output = DisassociateMemberFromFarmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromFarm", "documentation" => "Grants permission to disassociate a member from a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromFleet"
        operation.name = "DisassociateMemberFromFleet"
        operation.input = DisassociateMemberFromFleetRequest
        operation.output = DisassociateMemberFromFleetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromFleet", "documentation" => "Grants permission to disassociate a member from a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromJob"
        operation.name = "DisassociateMemberFromJob"
        operation.input = DisassociateMemberFromJobRequest
        operation.output = DisassociateMemberFromJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromJob", "documentation" => "Grants permission to disassociate a member from a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#DisassociateMemberFromQueue"
        operation.name = "DisassociateMemberFromQueue"
        operation.input = DisassociateMemberFromQueueRequest
        operation.output = DisassociateMemberFromQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:AssociatedMembershipLevel"], "aws.iam#iamAction" => {"name" => "DisassociateMemberFromQueue", "documentation" => "Grants permission to disassociate a member from a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetBudget"
        operation.name = "GetBudget"
        operation.input = GetBudgetRequest
        operation.output = GetBudgetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetBudget", "documentation" => "Grants permission to get a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/budgets/{budgetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_farm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetFarm"
        operation.name = "GetFarm"
        operation.input = GetFarmRequest
        operation.output = GetFarmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetFarm", "documentation" => "Grants permission to get a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetFleet"
        operation.name = "GetFleet"
        operation.input = GetFleetRequest
        operation.output = GetFleetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetFleet", "documentation" => "Grants permission to get a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetJob"
        operation.name = "GetJob"
        operation.input = GetJobRequest
        operation.output = GetJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetJob", "documentation" => "Grants permission to get a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_license_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetLicenseEndpoint"
        operation.name = "GetLicenseEndpoint"
        operation.input = GetLicenseEndpointRequest
        operation.output = GetLicenseEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "GetLicenseEndpoint", "documentation" => "Grants permission to get a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetLimit"
        operation.name = "GetLimit"
        operation.input = GetLimitRequest
        operation.output = GetLimitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetLimit", "documentation" => "Grants permission to get a limit", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/limits/{limitId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetMonitor"
        operation.name = "GetMonitor"
        operation.input = GetMonitorRequest
        operation.output = GetMonitorResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "GetMonitor", "documentation" => "Grants permission to get a monitor"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/monitors/{monitorId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueue"
        operation.name = "GetQueue"
        operation.input = GetQueueRequest
        operation.output = GetQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueue", "documentation" => "Grants permission to get a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueueEnvironment"
        operation.name = "GetQueueEnvironment"
        operation.input = GetQueueEnvironmentRequest
        operation.output = GetQueueEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueueEnvironment", "documentation" => "Grants permission to get a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue_fleet_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueueFleetAssociation"
        operation.name = "GetQueueFleetAssociation"
        operation.input = GetQueueFleetAssociationRequest
        operation.output = GetQueueFleetAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueueFleetAssociation", "documentation" => "Grants permission to get a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_queue_limit_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetQueueLimitAssociation"
        operation.name = "GetQueueLimitAssociation"
        operation.input = GetQueueLimitAssociationRequest
        operation.output = GetQueueLimitAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetQueueLimitAssociation", "documentation" => "Grants permission to get a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetSession"
        operation.name = "GetSession"
        operation.input = GetSessionRequest
        operation.output = GetSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSession", "documentation" => "Grants permission to get a session for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetSessionAction"
        operation.name = "GetSessionAction"
        operation.input = GetSessionActionRequest
        operation.output = GetSessionActionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSessionAction", "documentation" => "Grants permission to get a session action for a job", "relativeDocumentation" => "API_GetSessionAction.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions/{sessionActionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sessions_statistics_aggregation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetSessionsStatisticsAggregation"
        operation.name = "GetSessionsStatisticsAggregation"
        operation.input = GetSessionsStatisticsAggregationRequest
        operation.output = GetSessionsStatisticsAggregationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSessionsStatisticsAggregation", "documentation" => "Grants permission to get all collected statistics for sessions", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetSessionsStatisticsAggregation.new
      end)
      service.add_operation(:get_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetStep"
        operation.name = "GetStep"
        operation.input = GetStepRequest
        operation.output = GetStepResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetStep", "documentation" => "Grants permission to get a step in a job", "relativeDocumentation" => "API_GetStep.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_storage_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetStorageProfile"
        operation.name = "GetStorageProfile"
        operation.input = GetStorageProfileRequest
        operation.output = GetStorageProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetStorageProfile", "documentation" => "Grants permission to get a storage profile", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_storage_profile_for_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetStorageProfileForQueue"
        operation.name = "GetStorageProfileForQueue"
        operation.input = GetStorageProfileForQueueRequest
        operation.output = GetStorageProfileForQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetStorageProfileForQueue", "documentation" => "Grants permission to get a storage profile for a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetTask"
        operation.name = "GetTask"
        operation.input = GetTaskRequest
        operation.output = GetTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetTask", "documentation" => "Grants permission to get a job task", "relativeDocumentation" => "API_GetTask.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#GetWorker"
        operation.name = "GetWorker"
        operation.input = GetWorkerRequest
        operation.output = GetWorkerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetWorker", "documentation" => "Grants permission to get a worker", "relativeDocumentation" => "API_GetWorker.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"worker" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_available_metered_products, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListAvailableMeteredProducts"
        operation.name = "ListAvailableMeteredProducts"
        operation.input = ListAvailableMeteredProductsRequest
        operation.output = ListAvailableMeteredProductsResponse
        operation.errors << InternalServerErrorException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListAvailableMeteredProducts", "documentation" => "Grants permission to list all available metered products within a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/metered-products", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAvailableMeteredProducts.new
      end)
      service.add_operation(:list_budgets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListBudgets"
        operation.name = "ListBudgets"
        operation.input = ListBudgetsRequest
        operation.output = ListBudgetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListBudgets", "documentation" => "Grants permission to list all budgets for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/budgets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBudgets.new
      end)
      service.add_operation(:list_farm_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFarmMembers"
        operation.name = "ListFarmMembers"
        operation.input = ListFarmMembersRequest
        operation.output = ListFarmMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListFarmMembers", "documentation" => "Grants permission to list all members of a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFarmMembers.new
      end)
      service.add_operation(:list_farms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFarms"
        operation.name = "ListFarms"
        operation.input = ListFarmsRequest
        operation.output = ListFarmsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListFarms", "documentation" => "Grants permission to list all farms", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFarms.new
      end)
      service.add_operation(:list_fleet_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFleetMembers"
        operation.name = "ListFleetMembers"
        operation.input = ListFleetMembersRequest
        operation.output = ListFleetMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListFleetMembers", "documentation" => "Grants permission to list all members of a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFleetMembers.new
      end)
      service.add_operation(:list_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListFleets"
        operation.name = "ListFleets"
        operation.input = ListFleetsRequest
        operation.output = ListFleetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListFleets", "documentation" => "Grants permission to list all fleets", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_job_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListJobMembers"
        operation.name = "ListJobMembers"
        operation.input = ListJobMembersRequest
        operation.output = ListJobMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListJobMembers", "documentation" => "Grants permission to list all members of a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobMembers.new
      end)
      service.add_operation(:list_job_parameter_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListJobParameterDefinitions"
        operation.name = "ListJobParameterDefinitions"
        operation.input = ListJobParameterDefinitionsRequest
        operation.output = ListJobParameterDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListJobParameterDefinitions", "documentation" => "Grants permission to get a job's parameter definitions in the job template", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/parameter-definitions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobParameterDefinitions.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsRequest
        operation.output = ListJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListJobs", "documentation" => "Grants permission to list all jobs in a queue", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_license_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListLicenseEndpoints"
        operation.name = "ListLicenseEndpoints"
        operation.input = ListLicenseEndpointsRequest
        operation.output = ListLicenseEndpointsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListLicenseEndpoints", "documentation" => "Grants permission to list all license endpoints"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/license-endpoints", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLicenseEndpoints.new
      end)
      service.add_operation(:list_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListLimits"
        operation.name = "ListLimits"
        operation.input = ListLimitsRequest
        operation.output = ListLimitsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListLimits", "documentation" => "Grants permission to list all limits in a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/limits", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLimits.new
      end)
      service.add_operation(:list_metered_products, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListMeteredProducts"
        operation.name = "ListMeteredProducts"
        operation.input = ListMeteredProductsRequest
        operation.output = ListMeteredProductsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListMeteredProducts", "documentation" => "Grants permission to list all metered products in a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMeteredProducts.new
      end)
      service.add_operation(:list_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListMonitors"
        operation.name = "ListMonitors"
        operation.input = ListMonitorsRequest
        operation.output = ListMonitorsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "ListMonitors", "documentation" => "Grants permission to list all monitors"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/monitors", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMonitors.new
      end)
      service.add_operation(:list_queue_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueEnvironments"
        operation.name = "ListQueueEnvironments"
        operation.input = ListQueueEnvironmentsRequest
        operation.output = ListQueueEnvironmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueEnvironments", "documentation" => "Grants permission to list all queue environments to which a queue is associated", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueEnvironments.new
      end)
      service.add_operation(:list_queue_fleet_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueFleetAssociations"
        operation.name = "ListQueueFleetAssociations"
        operation.input = ListQueueFleetAssociationsRequest
        operation.output = ListQueueFleetAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueFleetAssociations", "documentation" => "Grants permission to list all queue-fleet associations", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueFleetAssociations.new
      end)
      service.add_operation(:list_queue_limit_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueLimitAssociations"
        operation.name = "ListQueueLimitAssociations"
        operation.input = ListQueueLimitAssociationsRequest
        operation.output = ListQueueLimitAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueLimitAssociations", "documentation" => "Grants permission to list all queue-limit associations", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueLimitAssociations.new
      end)
      service.add_operation(:list_queue_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueueMembers"
        operation.name = "ListQueueMembers"
        operation.input = ListQueueMembersRequest
        operation.output = ListQueueMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListQueueMembers", "documentation" => "Grants permission to list all members in a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/members", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueueMembers.new
      end)
      service.add_operation(:list_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListQueues"
        operation.name = "ListQueues"
        operation.input = ListQueuesRequest
        operation.output = ListQueuesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:RequesterPrincipalId", "deadline:PrincipalId"], "aws.iam#iamAction" => {"name" => "ListQueues", "documentation" => "Grants permission to list all queues on a farm", "requiredActions" => ["identitystore:DescribeGroup", "identitystore:DescribeUser", "identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQueues.new
      end)
      service.add_operation(:list_session_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSessionActions"
        operation.name = "ListSessionActions"
        operation.input = ListSessionActionsRequest
        operation.output = ListSessionActionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSessionActions", "documentation" => "Grants permission to list all session actions for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessionActions.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSessions"
        operation.name = "ListSessions"
        operation.input = ListSessionsRequest
        operation.output = ListSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSessions", "documentation" => "Grants permission to list all sessions for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_sessions_for_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSessionsForWorker"
        operation.name = "ListSessionsForWorker"
        operation.input = ListSessionsForWorkerRequest
        operation.output = ListSessionsForWorkerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSessionsForWorker", "documentation" => "Grants permission to list all sessions for a worker", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/sessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessionsForWorker.new
      end)
      service.add_operation(:list_step_consumers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStepConsumers"
        operation.name = "ListStepConsumers"
        operation.input = ListStepConsumersRequest
        operation.output = ListStepConsumersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStepConsumers", "documentation" => "Grants permission to list the step consumers for a job step", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/consumers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStepConsumers.new
      end)
      service.add_operation(:list_step_dependencies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStepDependencies"
        operation.name = "ListStepDependencies"
        operation.input = ListStepDependenciesRequest
        operation.output = ListStepDependenciesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStepDependencies", "documentation" => "Grants permission to list dependencies for a job step", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/dependencies", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStepDependencies.new
      end)
      service.add_operation(:list_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListSteps"
        operation.name = "ListSteps"
        operation.input = ListStepsRequest
        operation.output = ListStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSteps", "documentation" => "Grants permission to list all steps for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSteps.new
      end)
      service.add_operation(:list_storage_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStorageProfiles"
        operation.name = "ListStorageProfiles"
        operation.input = ListStorageProfilesRequest
        operation.output = ListStorageProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStorageProfiles", "documentation" => "Grants permission to list all storage profiles in a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStorageProfiles.new
      end)
      service.add_operation(:list_storage_profiles_for_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListStorageProfilesForQueue"
        operation.name = "ListStorageProfilesForQueue"
        operation.input = ListStorageProfilesForQueueRequest
        operation.output = ListStorageProfilesForQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListStorageProfilesForQueue", "documentation" => "Grants permission to list all storage profiles in a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStorageProfilesForQueue.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["deadline:CalledAction"], "aws.iam#iamAction" => {"name" => "ListTagsForResource", "documentation" => "Grants permission to list all tags on specified Deadline Cloud resources", "resources" => {"optional" => {"farm" => {}, "fleet" => {}, "license-endpoint" => {}, "queue" => {}, "worker" => {}, "monitor" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListTasks"
        operation.name = "ListTasks"
        operation.input = ListTasksRequest
        operation.output = ListTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTasks", "documentation" => "Grants permission to list all tasks for a job", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:list_workers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#ListWorkers"
        operation.name = "ListWorkers"
        operation.input = ListWorkersRequest
        operation.output = ListWorkersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListWorkers", "documentation" => "Grants permission to list all workers in a fleet", "relativeDocumentation" => "API_ListWorkers.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkers.new
      end)
      service.add_operation(:put_metered_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#PutMeteredProduct"
        operation.name = "PutMeteredProduct"
        operation.input = PutMeteredProductRequest
        operation.output = PutMeteredProductResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "PutMeteredProduct", "documentation" => "Grants permission to add a metered product to a license endpoint"}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchJobs"
        operation.name = "SearchJobs"
        operation.input = SearchJobsRequest
        operation.output = SearchJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchJobs", "documentation" => "Grants permission to search for jobs in multiple queues", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/jobs", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:search_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchSteps"
        operation.name = "SearchSteps"
        operation.input = SearchStepsRequest
        operation.output = SearchStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchSteps", "documentation" => "Grants permission to search the steps within a single job or to search the steps for multiple queues", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/steps", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:search_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchTasks"
        operation.name = "SearchTasks"
        operation.input = SearchTasksRequest
        operation.output = SearchTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchTasks", "documentation" => "Grants permission to search the tasks within a single job or to search the tasks for multiple queues", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/tasks", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:search_workers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#SearchWorkers"
        operation.name = "SearchWorkers"
        operation.input = SearchWorkersRequest
        operation.output = SearchWorkersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchWorkers", "documentation" => "Grants permission to search for workers in multiple fleets", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/search/workers", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
      end)
      service.add_operation(:start_sessions_statistics_aggregation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#StartSessionsStatisticsAggregation"
        operation.name = "StartSessionsStatisticsAggregation"
        operation.input = StartSessionsStatisticsAggregationRequest
        operation.output = StartSessionsStatisticsAggregationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "StartSessionsStatisticsAggregation", "documentation" => "Grants permission to get all collected statistics for sessions", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "deadline:CalledAction"], "aws.iam#iamAction" => {"name" => "TagResource", "documentation" => "Grants permission to add or overwrite one or more tags for the specified Deadline Cloud resource", "resources" => {"optional" => {"farm" => {}, "fleet" => {}, "license-endpoint" => {}, "queue" => {}, "worker" => {}, "monitor" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2023-10-12/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"name" => "UntagResource", "documentation" => "Grants permission to disassociate one or more tags from the specified Deadline Cloud resource", "resources" => {"optional" => {"farm" => {}, "fleet" => {}, "license-endpoint" => {}, "queue" => {}, "worker" => {}, "monitor" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2023-10-12/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_budget, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateBudget"
        operation.name = "UpdateBudget"
        operation.input = UpdateBudgetRequest
        operation.output = UpdateBudgetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateBudget", "documentation" => "Grants permission to update a budget", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/budgets/{budgetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_farm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateFarm"
        operation.name = "UpdateFarm"
        operation.input = UpdateFarmRequest
        operation.output = UpdateFarmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateFarm", "documentation" => "Grants permission to update a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateFleet"
        operation.name = "UpdateFleet"
        operation.input = UpdateFleetRequest
        operation.output = UpdateFleetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateFleet", "documentation" => "Grants permission to update a fleet", "requiredActions" => ["identitystore:ListGroupMembershipsForMember", "iam:PassRole", "vpc-lattice:GetResourceConfiguration", "vpc-lattice:GetResourceGateway", "ec2:CreateVpcEndpoint"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateJob"
        operation.name = "UpdateJob"
        operation.input = UpdateJobRequest
        operation.output = UpdateJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateJob", "documentation" => "Grants permission to update a job", "relativeDocumentation" => "API_UpdateJob.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateLimit"
        operation.name = "UpdateLimit"
        operation.input = UpdateLimitRequest
        operation.output = UpdateLimitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateLimit", "documentation" => "Grants permission to update a limit for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/limits/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateMonitor"
        operation.name = "UpdateMonitor"
        operation.input = UpdateMonitorRequest
        operation.output = UpdateMonitorResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => [], "aws.iam#iamAction" => {"name" => "UpdateMonitor", "documentation" => "Grants permission to update a monitor", "requiredActions" => ["sso:UpdateApplication", "sso:PutApplicationGrant", "iam:PassRole"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/monitors/{monitorId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueue"
        operation.name = "UpdateQueue"
        operation.input = UpdateQueueRequest
        operation.output = UpdateQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueue", "documentation" => "Grants permission to update a queue", "requiredActions" => ["identitystore:ListGroupMembershipsForMember", "iam:PassRole"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_queue_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueueEnvironment"
        operation.name = "UpdateQueueEnvironment"
        operation.input = UpdateQueueEnvironmentRequest
        operation.output = UpdateQueueEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueueEnvironment", "documentation" => "Grants permission to update a queue environment", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}", "code" => 200}}
      end)
      service.add_operation(:update_queue_fleet_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueueFleetAssociation"
        operation.name = "UpdateQueueFleetAssociation"
        operation.input = UpdateQueueFleetAssociationRequest
        operation.output = UpdateQueueFleetAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueueFleetAssociation", "documentation" => "Grants permission to update a queue-fleet association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_queue_limit_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateQueueLimitAssociation"
        operation.name = "UpdateQueueLimitAssociation"
        operation.input = UpdateQueueLimitAssociationRequest
        operation.output = UpdateQueueLimitAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateQueueLimitAssociation", "documentation" => "Grants permission to update a queue-limit association", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateSession"
        operation.name = "UpdateSession"
        operation.input = UpdateSessionRequest
        operation.output = UpdateSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateSession", "documentation" => "Grants permission to update a session for a job", "relativeDocumentation" => "API_UpdateSession.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateStep"
        operation.name = "UpdateStep"
        operation.input = UpdateStepRequest
        operation.output = UpdateStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateStep", "documentation" => "Grants permission to update a step for a job", "relativeDocumentation" => "API_UpdateStep.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_storage_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateStorageProfile"
        operation.name = "UpdateStorageProfile"
        operation.input = UpdateStorageProfileRequest
        operation.output = UpdateStorageProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateStorageProfile", "documentation" => "Grants permission to update a storage profile for a farm", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"]}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateTask"
        operation.name = "UpdateTask"
        operation.input = UpdateTaskRequest
        operation.output = UpdateTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateTask", "documentation" => "Grants permission to update a task", "relativeDocumentation" => "API_UpdateTask.html", "requiredActions" => ["identitystore:ListGroupMembershipsForMember"], "resources" => {"required" => {"job" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "management."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateWorker"
        operation.name = "UpdateWorker"
        operation.input = UpdateWorkerRequest
        operation.output = UpdateWorkerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateWorker", "documentation" => "Grants permission to update a worker", "requiredActions" => ["logs:CreateLogStream"]}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_worker_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.deadline#UpdateWorkerSchedule"
        operation.name = "UpdateWorkerSchedule"
        operation.input = UpdateWorkerScheduleRequest
        operation.output = UpdateWorkerScheduleResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateWorkerSchedule", "documentation" => "Grants permission to update the schedule for a worker", "requiredActions" => ["logs:CreateLogStream"]}, "smithy.api#endpoint" => {"hostPrefix" => "scheduling."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/schedule", "code" => 200}, "smithy.api#idempotent" => {}}
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
