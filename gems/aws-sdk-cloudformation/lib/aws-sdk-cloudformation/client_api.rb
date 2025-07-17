# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudFormation
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptTermsAndConditions = Shapes::BooleanShape.new(name: 'AcceptTermsAndConditions')
    Account = Shapes::StringShape.new(name: 'Account')
    AccountFilterType = Shapes::StringShape.new(name: 'AccountFilterType')
    AccountGateResult = Shapes::StructureShape.new(name: 'AccountGateResult')
    AccountGateStatus = Shapes::StringShape.new(name: 'AccountGateStatus')
    AccountGateStatusReason = Shapes::StringShape.new(name: 'AccountGateStatusReason')
    AccountLimit = Shapes::StructureShape.new(name: 'AccountLimit')
    AccountLimitList = Shapes::ListShape.new(name: 'AccountLimitList')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountsUrl = Shapes::StringShape.new(name: 'AccountsUrl')
    ActivateOrganizationsAccessInput = Shapes::StructureShape.new(name: 'ActivateOrganizationsAccessInput')
    ActivateOrganizationsAccessOutput = Shapes::StructureShape.new(name: 'ActivateOrganizationsAccessOutput')
    ActivateTypeInput = Shapes::StructureShape.new(name: 'ActivateTypeInput')
    ActivateTypeOutput = Shapes::StructureShape.new(name: 'ActivateTypeOutput')
    AfterContext = Shapes::StringShape.new(name: 'AfterContext')
    AfterValue = Shapes::StringShape.new(name: 'AfterValue')
    AllowedValue = Shapes::StringShape.new(name: 'AllowedValue')
    AllowedValues = Shapes::ListShape.new(name: 'AllowedValues')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException', error: {"code" => "AlreadyExistsException", "httpStatusCode" => 400, "senderFault" => true})
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeChangeType = Shapes::StringShape.new(name: 'AttributeChangeType')
    AutoDeployment = Shapes::StructureShape.new(name: 'AutoDeployment')
    AutoDeploymentNullable = Shapes::BooleanShape.new(name: 'AutoDeploymentNullable')
    AutoUpdate = Shapes::BooleanShape.new(name: 'AutoUpdate')
    BatchDescribeTypeConfigurationsError = Shapes::StructureShape.new(name: 'BatchDescribeTypeConfigurationsError')
    BatchDescribeTypeConfigurationsErrors = Shapes::ListShape.new(name: 'BatchDescribeTypeConfigurationsErrors')
    BatchDescribeTypeConfigurationsInput = Shapes::StructureShape.new(name: 'BatchDescribeTypeConfigurationsInput')
    BatchDescribeTypeConfigurationsOutput = Shapes::StructureShape.new(name: 'BatchDescribeTypeConfigurationsOutput')
    BeforeContext = Shapes::StringShape.new(name: 'BeforeContext')
    BeforeValue = Shapes::StringShape.new(name: 'BeforeValue')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    BoxedMaxResults = Shapes::IntegerShape.new(name: 'BoxedMaxResults')
    CFNRegistryException = Shapes::StructureShape.new(name: 'CFNRegistryException', error: {"code" => "CFNRegistryException", "httpStatusCode" => 400, "senderFault" => true})
    CallAs = Shapes::StringShape.new(name: 'CallAs')
    CancelUpdateStackInput = Shapes::StructureShape.new(name: 'CancelUpdateStackInput')
    Capabilities = Shapes::ListShape.new(name: 'Capabilities')
    CapabilitiesReason = Shapes::StringShape.new(name: 'CapabilitiesReason')
    Capability = Shapes::StringShape.new(name: 'Capability')
    Category = Shapes::StringShape.new(name: 'Category')
    CausingEntity = Shapes::StringShape.new(name: 'CausingEntity')
    Change = Shapes::StructureShape.new(name: 'Change')
    ChangeAction = Shapes::StringShape.new(name: 'ChangeAction')
    ChangeSetHook = Shapes::StructureShape.new(name: 'ChangeSetHook')
    ChangeSetHookResourceTargetDetails = Shapes::StructureShape.new(name: 'ChangeSetHookResourceTargetDetails')
    ChangeSetHookTargetDetails = Shapes::StructureShape.new(name: 'ChangeSetHookTargetDetails')
    ChangeSetHooks = Shapes::ListShape.new(name: 'ChangeSetHooks')
    ChangeSetHooksStatus = Shapes::StringShape.new(name: 'ChangeSetHooksStatus')
    ChangeSetId = Shapes::StringShape.new(name: 'ChangeSetId')
    ChangeSetName = Shapes::StringShape.new(name: 'ChangeSetName')
    ChangeSetNameOrId = Shapes::StringShape.new(name: 'ChangeSetNameOrId')
    ChangeSetNotFoundException = Shapes::StructureShape.new(name: 'ChangeSetNotFoundException', error: {"code" => "ChangeSetNotFound", "httpStatusCode" => 404, "senderFault" => true})
    ChangeSetStatus = Shapes::StringShape.new(name: 'ChangeSetStatus')
    ChangeSetStatusReason = Shapes::StringShape.new(name: 'ChangeSetStatusReason')
    ChangeSetSummaries = Shapes::ListShape.new(name: 'ChangeSetSummaries')
    ChangeSetSummary = Shapes::StructureShape.new(name: 'ChangeSetSummary')
    ChangeSetType = Shapes::StringShape.new(name: 'ChangeSetType')
    ChangeSource = Shapes::StringShape.new(name: 'ChangeSource')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    Changes = Shapes::ListShape.new(name: 'Changes')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConcurrencyMode = Shapes::StringShape.new(name: 'ConcurrencyMode')
    ConcurrentResourcesLimitExceededException = Shapes::StructureShape.new(name: 'ConcurrentResourcesLimitExceededException', error: {"code" => "ConcurrentResourcesLimitExceeded", "httpStatusCode" => 429, "senderFault" => true})
    ConfigurationSchema = Shapes::StringShape.new(name: 'ConfigurationSchema')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    ContinueUpdateRollbackInput = Shapes::StructureShape.new(name: 'ContinueUpdateRollbackInput')
    ContinueUpdateRollbackOutput = Shapes::StructureShape.new(name: 'ContinueUpdateRollbackOutput')
    CreateChangeSetInput = Shapes::StructureShape.new(name: 'CreateChangeSetInput')
    CreateChangeSetOutput = Shapes::StructureShape.new(name: 'CreateChangeSetOutput')
    CreateGeneratedTemplateInput = Shapes::StructureShape.new(name: 'CreateGeneratedTemplateInput')
    CreateGeneratedTemplateOutput = Shapes::StructureShape.new(name: 'CreateGeneratedTemplateOutput')
    CreateStackInput = Shapes::StructureShape.new(name: 'CreateStackInput')
    CreateStackInstancesInput = Shapes::StructureShape.new(name: 'CreateStackInstancesInput')
    CreateStackInstancesOutput = Shapes::StructureShape.new(name: 'CreateStackInstancesOutput')
    CreateStackOutput = Shapes::StructureShape.new(name: 'CreateStackOutput')
    CreateStackRefactorInput = Shapes::StructureShape.new(name: 'CreateStackRefactorInput')
    CreateStackRefactorOutput = Shapes::StructureShape.new(name: 'CreateStackRefactorOutput')
    CreateStackSetInput = Shapes::StructureShape.new(name: 'CreateStackSetInput')
    CreateStackSetOutput = Shapes::StructureShape.new(name: 'CreateStackSetOutput')
    CreatedButModifiedException = Shapes::StructureShape.new(name: 'CreatedButModifiedException', error: {"code" => "CreatedButModifiedException", "httpStatusCode" => 409, "senderFault" => true})
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DeactivateOrganizationsAccessInput = Shapes::StructureShape.new(name: 'DeactivateOrganizationsAccessInput')
    DeactivateOrganizationsAccessOutput = Shapes::StructureShape.new(name: 'DeactivateOrganizationsAccessOutput')
    DeactivateTypeInput = Shapes::StructureShape.new(name: 'DeactivateTypeInput')
    DeactivateTypeOutput = Shapes::StructureShape.new(name: 'DeactivateTypeOutput')
    DeleteChangeSetInput = Shapes::StructureShape.new(name: 'DeleteChangeSetInput')
    DeleteChangeSetOutput = Shapes::StructureShape.new(name: 'DeleteChangeSetOutput')
    DeleteGeneratedTemplateInput = Shapes::StructureShape.new(name: 'DeleteGeneratedTemplateInput')
    DeleteStackInput = Shapes::StructureShape.new(name: 'DeleteStackInput')
    DeleteStackInstancesInput = Shapes::StructureShape.new(name: 'DeleteStackInstancesInput')
    DeleteStackInstancesOutput = Shapes::StructureShape.new(name: 'DeleteStackInstancesOutput')
    DeleteStackSetInput = Shapes::StructureShape.new(name: 'DeleteStackSetInput')
    DeleteStackSetOutput = Shapes::StructureShape.new(name: 'DeleteStackSetOutput')
    DeletionMode = Shapes::StringShape.new(name: 'DeletionMode')
    DeletionTime = Shapes::TimestampShape.new(name: 'DeletionTime')
    DeploymentTargets = Shapes::StructureShape.new(name: 'DeploymentTargets')
    DeprecatedStatus = Shapes::StringShape.new(name: 'DeprecatedStatus')
    DeregisterTypeInput = Shapes::StructureShape.new(name: 'DeregisterTypeInput')
    DeregisterTypeOutput = Shapes::StructureShape.new(name: 'DeregisterTypeOutput')
    DescribeAccountLimitsInput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsInput')
    DescribeAccountLimitsOutput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsOutput')
    DescribeChangeSetHooksInput = Shapes::StructureShape.new(name: 'DescribeChangeSetHooksInput')
    DescribeChangeSetHooksOutput = Shapes::StructureShape.new(name: 'DescribeChangeSetHooksOutput')
    DescribeChangeSetInput = Shapes::StructureShape.new(name: 'DescribeChangeSetInput')
    DescribeChangeSetOutput = Shapes::StructureShape.new(name: 'DescribeChangeSetOutput')
    DescribeGeneratedTemplateInput = Shapes::StructureShape.new(name: 'DescribeGeneratedTemplateInput')
    DescribeGeneratedTemplateOutput = Shapes::StructureShape.new(name: 'DescribeGeneratedTemplateOutput')
    DescribeOrganizationsAccessInput = Shapes::StructureShape.new(name: 'DescribeOrganizationsAccessInput')
    DescribeOrganizationsAccessOutput = Shapes::StructureShape.new(name: 'DescribeOrganizationsAccessOutput')
    DescribePublisherInput = Shapes::StructureShape.new(name: 'DescribePublisherInput')
    DescribePublisherOutput = Shapes::StructureShape.new(name: 'DescribePublisherOutput')
    DescribeResourceScanInput = Shapes::StructureShape.new(name: 'DescribeResourceScanInput')
    DescribeResourceScanOutput = Shapes::StructureShape.new(name: 'DescribeResourceScanOutput')
    DescribeStackDriftDetectionStatusInput = Shapes::StructureShape.new(name: 'DescribeStackDriftDetectionStatusInput')
    DescribeStackDriftDetectionStatusOutput = Shapes::StructureShape.new(name: 'DescribeStackDriftDetectionStatusOutput')
    DescribeStackEventsInput = Shapes::StructureShape.new(name: 'DescribeStackEventsInput')
    DescribeStackEventsOutput = Shapes::StructureShape.new(name: 'DescribeStackEventsOutput')
    DescribeStackInstanceInput = Shapes::StructureShape.new(name: 'DescribeStackInstanceInput')
    DescribeStackInstanceOutput = Shapes::StructureShape.new(name: 'DescribeStackInstanceOutput')
    DescribeStackRefactorInput = Shapes::StructureShape.new(name: 'DescribeStackRefactorInput')
    DescribeStackRefactorOutput = Shapes::StructureShape.new(name: 'DescribeStackRefactorOutput')
    DescribeStackResourceDriftsInput = Shapes::StructureShape.new(name: 'DescribeStackResourceDriftsInput')
    DescribeStackResourceDriftsOutput = Shapes::StructureShape.new(name: 'DescribeStackResourceDriftsOutput')
    DescribeStackResourceInput = Shapes::StructureShape.new(name: 'DescribeStackResourceInput')
    DescribeStackResourceOutput = Shapes::StructureShape.new(name: 'DescribeStackResourceOutput')
    DescribeStackResourcesInput = Shapes::StructureShape.new(name: 'DescribeStackResourcesInput')
    DescribeStackResourcesOutput = Shapes::StructureShape.new(name: 'DescribeStackResourcesOutput')
    DescribeStackSetInput = Shapes::StructureShape.new(name: 'DescribeStackSetInput')
    DescribeStackSetOperationInput = Shapes::StructureShape.new(name: 'DescribeStackSetOperationInput')
    DescribeStackSetOperationOutput = Shapes::StructureShape.new(name: 'DescribeStackSetOperationOutput')
    DescribeStackSetOutput = Shapes::StructureShape.new(name: 'DescribeStackSetOutput')
    DescribeStacksInput = Shapes::StructureShape.new(name: 'DescribeStacksInput')
    DescribeStacksOutput = Shapes::StructureShape.new(name: 'DescribeStacksOutput')
    DescribeTypeInput = Shapes::StructureShape.new(name: 'DescribeTypeInput')
    DescribeTypeOutput = Shapes::StructureShape.new(name: 'DescribeTypeOutput')
    DescribeTypeRegistrationInput = Shapes::StructureShape.new(name: 'DescribeTypeRegistrationInput')
    DescribeTypeRegistrationOutput = Shapes::StructureShape.new(name: 'DescribeTypeRegistrationOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DetailedStatus = Shapes::StringShape.new(name: 'DetailedStatus')
    DetectStackDriftInput = Shapes::StructureShape.new(name: 'DetectStackDriftInput')
    DetectStackDriftOutput = Shapes::StructureShape.new(name: 'DetectStackDriftOutput')
    DetectStackResourceDriftInput = Shapes::StructureShape.new(name: 'DetectStackResourceDriftInput')
    DetectStackResourceDriftOutput = Shapes::StructureShape.new(name: 'DetectStackResourceDriftOutput')
    DetectStackSetDriftInput = Shapes::StructureShape.new(name: 'DetectStackSetDriftInput')
    DetectStackSetDriftOutput = Shapes::StructureShape.new(name: 'DetectStackSetDriftOutput')
    DetectionReason = Shapes::StringShape.new(name: 'DetectionReason')
    DifferenceType = Shapes::StringShape.new(name: 'DifferenceType')
    DisableRollback = Shapes::BooleanShape.new(name: 'DisableRollback')
    DriftedStackInstancesCount = Shapes::IntegerShape.new(name: 'DriftedStackInstancesCount')
    EnableStackCreation = Shapes::BooleanShape.new(name: 'EnableStackCreation')
    EnableTerminationProtection = Shapes::BooleanShape.new(name: 'EnableTerminationProtection')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EstimateTemplateCostInput = Shapes::StructureShape.new(name: 'EstimateTemplateCostInput')
    EstimateTemplateCostOutput = Shapes::StructureShape.new(name: 'EstimateTemplateCostOutput')
    EvaluationType = Shapes::StringShape.new(name: 'EvaluationType')
    EventId = Shapes::StringShape.new(name: 'EventId')
    ExecuteChangeSetInput = Shapes::StructureShape.new(name: 'ExecuteChangeSetInput')
    ExecuteChangeSetOutput = Shapes::StructureShape.new(name: 'ExecuteChangeSetOutput')
    ExecuteStackRefactorInput = Shapes::StructureShape.new(name: 'ExecuteStackRefactorInput')
    ExecutionRoleName = Shapes::StringShape.new(name: 'ExecutionRoleName')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionStatusReason = Shapes::StringShape.new(name: 'ExecutionStatusReason')
    Export = Shapes::StructureShape.new(name: 'Export')
    ExportName = Shapes::StringShape.new(name: 'ExportName')
    ExportValue = Shapes::StringShape.new(name: 'ExportValue')
    Exports = Shapes::ListShape.new(name: 'Exports')
    FailedStackInstancesCount = Shapes::IntegerShape.new(name: 'FailedStackInstancesCount')
    FailureToleranceCount = Shapes::IntegerShape.new(name: 'FailureToleranceCount')
    FailureTolerancePercentage = Shapes::IntegerShape.new(name: 'FailureTolerancePercentage')
    GeneratedTemplateDeletionPolicy = Shapes::StringShape.new(name: 'GeneratedTemplateDeletionPolicy')
    GeneratedTemplateId = Shapes::StringShape.new(name: 'GeneratedTemplateId')
    GeneratedTemplateName = Shapes::StringShape.new(name: 'GeneratedTemplateName')
    GeneratedTemplateNotFoundException = Shapes::StructureShape.new(name: 'GeneratedTemplateNotFoundException', error: {"code" => "GeneratedTemplateNotFound", "httpStatusCode" => 404, "senderFault" => true})
    GeneratedTemplateResourceStatus = Shapes::StringShape.new(name: 'GeneratedTemplateResourceStatus')
    GeneratedTemplateStatus = Shapes::StringShape.new(name: 'GeneratedTemplateStatus')
    GeneratedTemplateUpdateReplacePolicy = Shapes::StringShape.new(name: 'GeneratedTemplateUpdateReplacePolicy')
    GetGeneratedTemplateInput = Shapes::StructureShape.new(name: 'GetGeneratedTemplateInput')
    GetGeneratedTemplateOutput = Shapes::StructureShape.new(name: 'GetGeneratedTemplateOutput')
    GetStackPolicyInput = Shapes::StructureShape.new(name: 'GetStackPolicyInput')
    GetStackPolicyOutput = Shapes::StructureShape.new(name: 'GetStackPolicyOutput')
    GetTemplateInput = Shapes::StructureShape.new(name: 'GetTemplateInput')
    GetTemplateOutput = Shapes::StructureShape.new(name: 'GetTemplateOutput')
    GetTemplateSummaryInput = Shapes::StructureShape.new(name: 'GetTemplateSummaryInput')
    GetTemplateSummaryOutput = Shapes::StructureShape.new(name: 'GetTemplateSummaryOutput')
    HandlerErrorCode = Shapes::StringShape.new(name: 'HandlerErrorCode')
    HookFailureMode = Shapes::StringShape.new(name: 'HookFailureMode')
    HookInvocationCount = Shapes::IntegerShape.new(name: 'HookInvocationCount')
    HookInvocationPoint = Shapes::StringShape.new(name: 'HookInvocationPoint')
    HookResultId = Shapes::StringShape.new(name: 'HookResultId')
    HookResultNotFoundException = Shapes::StructureShape.new(name: 'HookResultNotFoundException', error: {"code" => "HookResultNotFound", "httpStatusCode" => 404, "senderFault" => true})
    HookResultSummaries = Shapes::ListShape.new(name: 'HookResultSummaries')
    HookResultSummary = Shapes::StructureShape.new(name: 'HookResultSummary')
    HookStatus = Shapes::StringShape.new(name: 'HookStatus')
    HookStatusReason = Shapes::StringShape.new(name: 'HookStatusReason')
    HookTargetType = Shapes::StringShape.new(name: 'HookTargetType')
    HookTargetTypeName = Shapes::StringShape.new(name: 'HookTargetTypeName')
    HookType = Shapes::StringShape.new(name: 'HookType')
    HookTypeConfigurationVersionId = Shapes::StringShape.new(name: 'HookTypeConfigurationVersionId')
    HookTypeName = Shapes::StringShape.new(name: 'HookTypeName')
    HookTypeVersionId = Shapes::StringShape.new(name: 'HookTypeVersionId')
    IdentityProvider = Shapes::StringShape.new(name: 'IdentityProvider')
    ImportExistingResources = Shapes::BooleanShape.new(name: 'ImportExistingResources')
    ImportStacksToStackSetInput = Shapes::StructureShape.new(name: 'ImportStacksToStackSetInput')
    ImportStacksToStackSetOutput = Shapes::StructureShape.new(name: 'ImportStacksToStackSetOutput')
    Imports = Shapes::ListShape.new(name: 'Imports')
    InProgressStackInstancesCount = Shapes::IntegerShape.new(name: 'InProgressStackInstancesCount')
    InSyncStackInstancesCount = Shapes::IntegerShape.new(name: 'InSyncStackInstancesCount')
    IncludeNestedStacks = Shapes::BooleanShape.new(name: 'IncludeNestedStacks')
    IncludePropertyValues = Shapes::BooleanShape.new(name: 'IncludePropertyValues')
    InsufficientCapabilitiesException = Shapes::StructureShape.new(name: 'InsufficientCapabilitiesException', error: {"code" => "InsufficientCapabilitiesException", "httpStatusCode" => 400, "senderFault" => true})
    InvalidChangeSetStatusException = Shapes::StructureShape.new(name: 'InvalidChangeSetStatusException', error: {"code" => "InvalidChangeSetStatus", "httpStatusCode" => 400, "senderFault" => true})
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException', error: {"code" => "InvalidOperationException", "httpStatusCode" => 400, "senderFault" => true})
    InvalidStateTransitionException = Shapes::StructureShape.new(name: 'InvalidStateTransitionException', error: {"code" => "InvalidStateTransition", "httpStatusCode" => 400, "senderFault" => true})
    IsActivated = Shapes::BooleanShape.new(name: 'IsActivated')
    IsDefaultConfiguration = Shapes::BooleanShape.new(name: 'IsDefaultConfiguration')
    IsDefaultVersion = Shapes::BooleanShape.new(name: 'IsDefaultVersion')
    JazzLogicalResourceIds = Shapes::ListShape.new(name: 'JazzLogicalResourceIds')
    JazzResourceIdentifierProperties = Shapes::MapShape.new(name: 'JazzResourceIdentifierProperties')
    JazzResourceIdentifierPropertyKey = Shapes::StringShape.new(name: 'JazzResourceIdentifierPropertyKey')
    JazzResourceIdentifierPropertyValue = Shapes::StringShape.new(name: 'JazzResourceIdentifierPropertyValue')
    Key = Shapes::StringShape.new(name: 'Key')
    LastUpdatedTime = Shapes::TimestampShape.new(name: 'LastUpdatedTime')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException', error: {"code" => "LimitExceededException", "httpStatusCode" => 400, "senderFault" => true})
    LimitName = Shapes::StringShape.new(name: 'LimitName')
    LimitValue = Shapes::IntegerShape.new(name: 'LimitValue')
    ListChangeSetsInput = Shapes::StructureShape.new(name: 'ListChangeSetsInput')
    ListChangeSetsOutput = Shapes::StructureShape.new(name: 'ListChangeSetsOutput')
    ListExportsInput = Shapes::StructureShape.new(name: 'ListExportsInput')
    ListExportsOutput = Shapes::StructureShape.new(name: 'ListExportsOutput')
    ListGeneratedTemplatesInput = Shapes::StructureShape.new(name: 'ListGeneratedTemplatesInput')
    ListGeneratedTemplatesOutput = Shapes::StructureShape.new(name: 'ListGeneratedTemplatesOutput')
    ListHookResultsInput = Shapes::StructureShape.new(name: 'ListHookResultsInput')
    ListHookResultsOutput = Shapes::StructureShape.new(name: 'ListHookResultsOutput')
    ListHookResultsTargetType = Shapes::StringShape.new(name: 'ListHookResultsTargetType')
    ListImportsInput = Shapes::StructureShape.new(name: 'ListImportsInput')
    ListImportsOutput = Shapes::StructureShape.new(name: 'ListImportsOutput')
    ListResourceScanRelatedResourcesInput = Shapes::StructureShape.new(name: 'ListResourceScanRelatedResourcesInput')
    ListResourceScanRelatedResourcesOutput = Shapes::StructureShape.new(name: 'ListResourceScanRelatedResourcesOutput')
    ListResourceScanResourcesInput = Shapes::StructureShape.new(name: 'ListResourceScanResourcesInput')
    ListResourceScanResourcesOutput = Shapes::StructureShape.new(name: 'ListResourceScanResourcesOutput')
    ListResourceScansInput = Shapes::StructureShape.new(name: 'ListResourceScansInput')
    ListResourceScansOutput = Shapes::StructureShape.new(name: 'ListResourceScansOutput')
    ListStackInstanceResourceDriftsInput = Shapes::StructureShape.new(name: 'ListStackInstanceResourceDriftsInput')
    ListStackInstanceResourceDriftsOutput = Shapes::StructureShape.new(name: 'ListStackInstanceResourceDriftsOutput')
    ListStackInstancesInput = Shapes::StructureShape.new(name: 'ListStackInstancesInput')
    ListStackInstancesOutput = Shapes::StructureShape.new(name: 'ListStackInstancesOutput')
    ListStackRefactorActionsInput = Shapes::StructureShape.new(name: 'ListStackRefactorActionsInput')
    ListStackRefactorActionsOutput = Shapes::StructureShape.new(name: 'ListStackRefactorActionsOutput')
    ListStackRefactorsInput = Shapes::StructureShape.new(name: 'ListStackRefactorsInput')
    ListStackRefactorsOutput = Shapes::StructureShape.new(name: 'ListStackRefactorsOutput')
    ListStackResourcesInput = Shapes::StructureShape.new(name: 'ListStackResourcesInput')
    ListStackResourcesOutput = Shapes::StructureShape.new(name: 'ListStackResourcesOutput')
    ListStackSetAutoDeploymentTargetsInput = Shapes::StructureShape.new(name: 'ListStackSetAutoDeploymentTargetsInput')
    ListStackSetAutoDeploymentTargetsOutput = Shapes::StructureShape.new(name: 'ListStackSetAutoDeploymentTargetsOutput')
    ListStackSetOperationResultsInput = Shapes::StructureShape.new(name: 'ListStackSetOperationResultsInput')
    ListStackSetOperationResultsOutput = Shapes::StructureShape.new(name: 'ListStackSetOperationResultsOutput')
    ListStackSetOperationsInput = Shapes::StructureShape.new(name: 'ListStackSetOperationsInput')
    ListStackSetOperationsOutput = Shapes::StructureShape.new(name: 'ListStackSetOperationsOutput')
    ListStackSetsInput = Shapes::StructureShape.new(name: 'ListStackSetsInput')
    ListStackSetsOutput = Shapes::StructureShape.new(name: 'ListStackSetsOutput')
    ListStacksInput = Shapes::StructureShape.new(name: 'ListStacksInput')
    ListStacksOutput = Shapes::StructureShape.new(name: 'ListStacksOutput')
    ListTypeRegistrationsInput = Shapes::StructureShape.new(name: 'ListTypeRegistrationsInput')
    ListTypeRegistrationsOutput = Shapes::StructureShape.new(name: 'ListTypeRegistrationsOutput')
    ListTypeVersionsInput = Shapes::StructureShape.new(name: 'ListTypeVersionsInput')
    ListTypeVersionsOutput = Shapes::StructureShape.new(name: 'ListTypeVersionsOutput')
    ListTypesInput = Shapes::StructureShape.new(name: 'ListTypesInput')
    ListTypesOutput = Shapes::StructureShape.new(name: 'ListTypesOutput')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    LogicalIdHierarchy = Shapes::StringShape.new(name: 'LogicalIdHierarchy')
    LogicalResourceId = Shapes::StringShape.new(name: 'LogicalResourceId')
    LogicalResourceIds = Shapes::ListShape.new(name: 'LogicalResourceIds')
    MajorVersion = Shapes::IntegerShape.new(name: 'MajorVersion')
    ManagedByStack = Shapes::BooleanShape.new(name: 'ManagedByStack')
    ManagedExecution = Shapes::StructureShape.new(name: 'ManagedExecution')
    ManagedExecutionNullable = Shapes::BooleanShape.new(name: 'ManagedExecutionNullable')
    MaxConcurrentCount = Shapes::IntegerShape.new(name: 'MaxConcurrentCount')
    MaxConcurrentPercentage = Shapes::IntegerShape.new(name: 'MaxConcurrentPercentage')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metadata = Shapes::StringShape.new(name: 'Metadata')
    ModuleInfo = Shapes::StructureShape.new(name: 'ModuleInfo')
    MonitoringTimeInMinutes = Shapes::IntegerShape.new(name: 'MonitoringTimeInMinutes')
    NameAlreadyExistsException = Shapes::StructureShape.new(name: 'NameAlreadyExistsException', error: {"code" => "NameAlreadyExistsException", "httpStatusCode" => 409, "senderFault" => true})
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoEcho = Shapes::BooleanShape.new(name: 'NoEcho')
    NotificationARN = Shapes::StringShape.new(name: 'NotificationARN')
    NotificationARNs = Shapes::ListShape.new(name: 'NotificationARNs')
    NumberOfResources = Shapes::IntegerShape.new(name: 'NumberOfResources')
    OnFailure = Shapes::StringShape.new(name: 'OnFailure')
    OnStackFailure = Shapes::StringShape.new(name: 'OnStackFailure')
    OperationIdAlreadyExistsException = Shapes::StructureShape.new(name: 'OperationIdAlreadyExistsException', error: {"code" => "OperationIdAlreadyExistsException", "httpStatusCode" => 409, "senderFault" => true})
    OperationInProgressException = Shapes::StructureShape.new(name: 'OperationInProgressException', error: {"code" => "OperationInProgressException", "httpStatusCode" => 409, "senderFault" => true})
    OperationNotFoundException = Shapes::StructureShape.new(name: 'OperationNotFoundException', error: {"code" => "OperationNotFoundException", "httpStatusCode" => 404, "senderFault" => true})
    OperationResultFilter = Shapes::StructureShape.new(name: 'OperationResultFilter')
    OperationResultFilterName = Shapes::StringShape.new(name: 'OperationResultFilterName')
    OperationResultFilterValues = Shapes::StringShape.new(name: 'OperationResultFilterValues')
    OperationResultFilters = Shapes::ListShape.new(name: 'OperationResultFilters')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationStatusCheckFailedException = Shapes::StructureShape.new(name: 'OperationStatusCheckFailedException', error: {"code" => "ConditionalCheckFailed", "httpStatusCode" => 400, "senderFault" => true})
    OptionalSecureUrl = Shapes::StringShape.new(name: 'OptionalSecureUrl')
    OrganizationStatus = Shapes::StringShape.new(name: 'OrganizationStatus')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnitIdList = Shapes::ListShape.new(name: 'OrganizationalUnitIdList')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputKey = Shapes::StringShape.new(name: 'OutputKey')
    OutputValue = Shapes::StringShape.new(name: 'OutputValue')
    Outputs = Shapes::ListShape.new(name: 'Outputs')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterConstraints = Shapes::StructureShape.new(name: 'ParameterConstraints')
    ParameterDeclaration = Shapes::StructureShape.new(name: 'ParameterDeclaration')
    ParameterDeclarations = Shapes::ListShape.new(name: 'ParameterDeclarations')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    Parameters = Shapes::ListShape.new(name: 'Parameters')
    PercentageCompleted = Shapes::FloatShape.new(name: 'PercentageCompleted')
    PermissionModels = Shapes::StringShape.new(name: 'PermissionModels')
    PhysicalResourceId = Shapes::StringShape.new(name: 'PhysicalResourceId')
    PhysicalResourceIdContext = Shapes::ListShape.new(name: 'PhysicalResourceIdContext')
    PhysicalResourceIdContextKeyValuePair = Shapes::StructureShape.new(name: 'PhysicalResourceIdContextKeyValuePair')
    PolicyAction = Shapes::StringShape.new(name: 'PolicyAction')
    PrivateTypeArn = Shapes::StringShape.new(name: 'PrivateTypeArn')
    Properties = Shapes::StringShape.new(name: 'Properties')
    PropertyDescription = Shapes::StringShape.new(name: 'PropertyDescription')
    PropertyDifference = Shapes::StructureShape.new(name: 'PropertyDifference')
    PropertyDifferences = Shapes::ListShape.new(name: 'PropertyDifferences')
    PropertyName = Shapes::StringShape.new(name: 'PropertyName')
    PropertyPath = Shapes::StringShape.new(name: 'PropertyPath')
    PropertyValue = Shapes::StringShape.new(name: 'PropertyValue')
    ProvisioningType = Shapes::StringShape.new(name: 'ProvisioningType')
    PublicVersionNumber = Shapes::StringShape.new(name: 'PublicVersionNumber')
    PublishTypeInput = Shapes::StructureShape.new(name: 'PublishTypeInput')
    PublishTypeOutput = Shapes::StructureShape.new(name: 'PublishTypeOutput')
    PublisherId = Shapes::StringShape.new(name: 'PublisherId')
    PublisherName = Shapes::StringShape.new(name: 'PublisherName')
    PublisherProfile = Shapes::StringShape.new(name: 'PublisherProfile')
    PublisherStatus = Shapes::StringShape.new(name: 'PublisherStatus')
    Reason = Shapes::StringShape.new(name: 'Reason')
    RecordHandlerProgressInput = Shapes::StructureShape.new(name: 'RecordHandlerProgressInput')
    RecordHandlerProgressOutput = Shapes::StructureShape.new(name: 'RecordHandlerProgressOutput')
    RefreshAllResources = Shapes::BooleanShape.new(name: 'RefreshAllResources')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionConcurrencyType = Shapes::StringShape.new(name: 'RegionConcurrencyType')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegisterPublisherInput = Shapes::StructureShape.new(name: 'RegisterPublisherInput')
    RegisterPublisherOutput = Shapes::StructureShape.new(name: 'RegisterPublisherOutput')
    RegisterTypeInput = Shapes::StructureShape.new(name: 'RegisterTypeInput')
    RegisterTypeOutput = Shapes::StructureShape.new(name: 'RegisterTypeOutput')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    RegistrationToken = Shapes::StringShape.new(name: 'RegistrationToken')
    RegistrationTokenList = Shapes::ListShape.new(name: 'RegistrationTokenList')
    RegistryType = Shapes::StringShape.new(name: 'RegistryType')
    RelatedResources = Shapes::ListShape.new(name: 'RelatedResources')
    Replacement = Shapes::StringShape.new(name: 'Replacement')
    RequestToken = Shapes::StringShape.new(name: 'RequestToken')
    RequiredActivatedType = Shapes::StructureShape.new(name: 'RequiredActivatedType')
    RequiredActivatedTypes = Shapes::ListShape.new(name: 'RequiredActivatedTypes')
    RequiredProperty = Shapes::BooleanShape.new(name: 'RequiredProperty')
    RequiresRecreation = Shapes::StringShape.new(name: 'RequiresRecreation')
    ResourceAttribute = Shapes::StringShape.new(name: 'ResourceAttribute')
    ResourceChange = Shapes::StructureShape.new(name: 'ResourceChange')
    ResourceChangeDetail = Shapes::StructureShape.new(name: 'ResourceChangeDetail')
    ResourceChangeDetails = Shapes::ListShape.new(name: 'ResourceChangeDetails')
    ResourceDefinition = Shapes::StructureShape.new(name: 'ResourceDefinition')
    ResourceDefinitions = Shapes::ListShape.new(name: 'ResourceDefinitions')
    ResourceDetail = Shapes::StructureShape.new(name: 'ResourceDetail')
    ResourceDetails = Shapes::ListShape.new(name: 'ResourceDetails')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierProperties = Shapes::MapShape.new(name: 'ResourceIdentifierProperties')
    ResourceIdentifierPropertyKey = Shapes::StringShape.new(name: 'ResourceIdentifierPropertyKey')
    ResourceIdentifierPropertyValue = Shapes::StringShape.new(name: 'ResourceIdentifierPropertyValue')
    ResourceIdentifierSummaries = Shapes::ListShape.new(name: 'ResourceIdentifierSummaries')
    ResourceIdentifierSummary = Shapes::StructureShape.new(name: 'ResourceIdentifierSummary')
    ResourceIdentifiers = Shapes::ListShape.new(name: 'ResourceIdentifiers')
    ResourceLocation = Shapes::StructureShape.new(name: 'ResourceLocation')
    ResourceMapping = Shapes::StructureShape.new(name: 'ResourceMapping')
    ResourceMappings = Shapes::ListShape.new(name: 'ResourceMappings')
    ResourceModel = Shapes::StringShape.new(name: 'ResourceModel')
    ResourceProperties = Shapes::StringShape.new(name: 'ResourceProperties')
    ResourcePropertyPath = Shapes::StringShape.new(name: 'ResourcePropertyPath')
    ResourceScanId = Shapes::StringShape.new(name: 'ResourceScanId')
    ResourceScanInProgressException = Shapes::StructureShape.new(name: 'ResourceScanInProgressException', error: {"code" => "ResourceScanInProgress", "httpStatusCode" => 400, "senderFault" => true})
    ResourceScanLimitExceededException = Shapes::StructureShape.new(name: 'ResourceScanLimitExceededException', error: {"code" => "ResourceScanLimitExceeded", "httpStatusCode" => 400, "senderFault" => true})
    ResourceScanNotFoundException = Shapes::StructureShape.new(name: 'ResourceScanNotFoundException', error: {"code" => "ResourceScanNotFound", "httpStatusCode" => 400, "senderFault" => true})
    ResourceScanStatus = Shapes::StringShape.new(name: 'ResourceScanStatus')
    ResourceScanStatusReason = Shapes::StringShape.new(name: 'ResourceScanStatusReason')
    ResourceScanSummaries = Shapes::ListShape.new(name: 'ResourceScanSummaries')
    ResourceScanSummary = Shapes::StructureShape.new(name: 'ResourceScanSummary')
    ResourceScannerMaxResults = Shapes::IntegerShape.new(name: 'ResourceScannerMaxResults')
    ResourceSignalStatus = Shapes::StringShape.new(name: 'ResourceSignalStatus')
    ResourceSignalUniqueId = Shapes::StringShape.new(name: 'ResourceSignalUniqueId')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    ResourceStatusReason = Shapes::StringShape.new(name: 'ResourceStatusReason')
    ResourceTargetDefinition = Shapes::StructureShape.new(name: 'ResourceTargetDefinition')
    ResourceToImport = Shapes::StructureShape.new(name: 'ResourceToImport')
    ResourceToSkip = Shapes::StringShape.new(name: 'ResourceToSkip')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeFilter = Shapes::StringShape.new(name: 'ResourceTypeFilter')
    ResourceTypeFilters = Shapes::ListShape.new(name: 'ResourceTypeFilters')
    ResourceTypePrefix = Shapes::StringShape.new(name: 'ResourceTypePrefix')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    ResourcesFailed = Shapes::IntegerShape.new(name: 'ResourcesFailed')
    ResourcesPending = Shapes::IntegerShape.new(name: 'ResourcesPending')
    ResourcesProcessing = Shapes::IntegerShape.new(name: 'ResourcesProcessing')
    ResourcesRead = Shapes::IntegerShape.new(name: 'ResourcesRead')
    ResourcesScanned = Shapes::IntegerShape.new(name: 'ResourcesScanned')
    ResourcesSucceeded = Shapes::IntegerShape.new(name: 'ResourcesSucceeded')
    ResourcesToImport = Shapes::ListShape.new(name: 'ResourcesToImport')
    ResourcesToSkip = Shapes::ListShape.new(name: 'ResourcesToSkip')
    RetainExceptOnCreate = Shapes::BooleanShape.new(name: 'RetainExceptOnCreate')
    RetainResources = Shapes::ListShape.new(name: 'RetainResources')
    RetainStacks = Shapes::BooleanShape.new(name: 'RetainStacks')
    RetainStacksNullable = Shapes::BooleanShape.new(name: 'RetainStacksNullable')
    RetainStacksOnAccountRemovalNullable = Shapes::BooleanShape.new(name: 'RetainStacksOnAccountRemovalNullable')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RollbackConfiguration = Shapes::StructureShape.new(name: 'RollbackConfiguration')
    RollbackStackInput = Shapes::StructureShape.new(name: 'RollbackStackInput')
    RollbackStackOutput = Shapes::StructureShape.new(name: 'RollbackStackOutput')
    RollbackTrigger = Shapes::StructureShape.new(name: 'RollbackTrigger')
    RollbackTriggers = Shapes::ListShape.new(name: 'RollbackTriggers')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    ScanFilter = Shapes::StructureShape.new(name: 'ScanFilter')
    ScanFilters = Shapes::ListShape.new(name: 'ScanFilters')
    ScanType = Shapes::StringShape.new(name: 'ScanType')
    ScannedResource = Shapes::StructureShape.new(name: 'ScannedResource')
    ScannedResourceIdentifier = Shapes::StructureShape.new(name: 'ScannedResourceIdentifier')
    ScannedResourceIdentifiers = Shapes::ListShape.new(name: 'ScannedResourceIdentifiers')
    ScannedResources = Shapes::ListShape.new(name: 'ScannedResources')
    Scope = Shapes::ListShape.new(name: 'Scope')
    SetStackPolicyInput = Shapes::StructureShape.new(name: 'SetStackPolicyInput')
    SetTypeConfigurationInput = Shapes::StructureShape.new(name: 'SetTypeConfigurationInput')
    SetTypeConfigurationOutput = Shapes::StructureShape.new(name: 'SetTypeConfigurationOutput')
    SetTypeDefaultVersionInput = Shapes::StructureShape.new(name: 'SetTypeDefaultVersionInput')
    SetTypeDefaultVersionOutput = Shapes::StructureShape.new(name: 'SetTypeDefaultVersionOutput')
    SignalResourceInput = Shapes::StructureShape.new(name: 'SignalResourceInput')
    Stack = Shapes::StructureShape.new(name: 'Stack')
    StackDefinition = Shapes::StructureShape.new(name: 'StackDefinition')
    StackDefinitions = Shapes::ListShape.new(name: 'StackDefinitions')
    StackDriftDetectionId = Shapes::StringShape.new(name: 'StackDriftDetectionId')
    StackDriftDetectionStatus = Shapes::StringShape.new(name: 'StackDriftDetectionStatus')
    StackDriftDetectionStatusReason = Shapes::StringShape.new(name: 'StackDriftDetectionStatusReason')
    StackDriftInformation = Shapes::StructureShape.new(name: 'StackDriftInformation')
    StackDriftInformationSummary = Shapes::StructureShape.new(name: 'StackDriftInformationSummary')
    StackDriftStatus = Shapes::StringShape.new(name: 'StackDriftStatus')
    StackEvent = Shapes::StructureShape.new(name: 'StackEvent')
    StackEvents = Shapes::ListShape.new(name: 'StackEvents')
    StackId = Shapes::StringShape.new(name: 'StackId')
    StackIdList = Shapes::ListShape.new(name: 'StackIdList')
    StackIds = Shapes::ListShape.new(name: 'StackIds')
    StackIdsUrl = Shapes::StringShape.new(name: 'StackIdsUrl')
    StackInstance = Shapes::StructureShape.new(name: 'StackInstance')
    StackInstanceComprehensiveStatus = Shapes::StructureShape.new(name: 'StackInstanceComprehensiveStatus')
    StackInstanceDetailedStatus = Shapes::StringShape.new(name: 'StackInstanceDetailedStatus')
    StackInstanceFilter = Shapes::StructureShape.new(name: 'StackInstanceFilter')
    StackInstanceFilterName = Shapes::StringShape.new(name: 'StackInstanceFilterName')
    StackInstanceFilterValues = Shapes::StringShape.new(name: 'StackInstanceFilterValues')
    StackInstanceFilters = Shapes::ListShape.new(name: 'StackInstanceFilters')
    StackInstanceNotFoundException = Shapes::StructureShape.new(name: 'StackInstanceNotFoundException', error: {"code" => "StackInstanceNotFoundException", "httpStatusCode" => 404, "senderFault" => true})
    StackInstanceResourceDriftsSummaries = Shapes::ListShape.new(name: 'StackInstanceResourceDriftsSummaries')
    StackInstanceResourceDriftsSummary = Shapes::StructureShape.new(name: 'StackInstanceResourceDriftsSummary')
    StackInstanceStatus = Shapes::StringShape.new(name: 'StackInstanceStatus')
    StackInstanceSummaries = Shapes::ListShape.new(name: 'StackInstanceSummaries')
    StackInstanceSummary = Shapes::StructureShape.new(name: 'StackInstanceSummary')
    StackName = Shapes::StringShape.new(name: 'StackName')
    StackNameOrId = Shapes::StringShape.new(name: 'StackNameOrId')
    StackNotFoundException = Shapes::StructureShape.new(name: 'StackNotFoundException', error: {"code" => "StackNotFoundException", "httpStatusCode" => 404, "senderFault" => true})
    StackPolicyBody = Shapes::StringShape.new(name: 'StackPolicyBody')
    StackPolicyDuringUpdateBody = Shapes::StringShape.new(name: 'StackPolicyDuringUpdateBody')
    StackPolicyDuringUpdateURL = Shapes::StringShape.new(name: 'StackPolicyDuringUpdateURL')
    StackPolicyURL = Shapes::StringShape.new(name: 'StackPolicyURL')
    StackRefactorAction = Shapes::StructureShape.new(name: 'StackRefactorAction')
    StackRefactorActionEntity = Shapes::StringShape.new(name: 'StackRefactorActionEntity')
    StackRefactorActionType = Shapes::StringShape.new(name: 'StackRefactorActionType')
    StackRefactorActions = Shapes::ListShape.new(name: 'StackRefactorActions')
    StackRefactorDetection = Shapes::StringShape.new(name: 'StackRefactorDetection')
    StackRefactorExecutionStatus = Shapes::StringShape.new(name: 'StackRefactorExecutionStatus')
    StackRefactorExecutionStatusFilter = Shapes::ListShape.new(name: 'StackRefactorExecutionStatusFilter')
    StackRefactorId = Shapes::StringShape.new(name: 'StackRefactorId')
    StackRefactorNotFoundException = Shapes::StructureShape.new(name: 'StackRefactorNotFoundException', error: {"code" => "StackRefactorNotFoundException", "httpStatusCode" => 404, "senderFault" => true})
    StackRefactorResourceIdentifier = Shapes::StringShape.new(name: 'StackRefactorResourceIdentifier')
    StackRefactorStatus = Shapes::StringShape.new(name: 'StackRefactorStatus')
    StackRefactorStatusReason = Shapes::StringShape.new(name: 'StackRefactorStatusReason')
    StackRefactorSummaries = Shapes::ListShape.new(name: 'StackRefactorSummaries')
    StackRefactorSummary = Shapes::StructureShape.new(name: 'StackRefactorSummary')
    StackRefactorTagResources = Shapes::ListShape.new(name: 'StackRefactorTagResources')
    StackRefactorUntagResources = Shapes::ListShape.new(name: 'StackRefactorUntagResources')
    StackResource = Shapes::StructureShape.new(name: 'StackResource')
    StackResourceDetail = Shapes::StructureShape.new(name: 'StackResourceDetail')
    StackResourceDrift = Shapes::StructureShape.new(name: 'StackResourceDrift')
    StackResourceDriftInformation = Shapes::StructureShape.new(name: 'StackResourceDriftInformation')
    StackResourceDriftInformationSummary = Shapes::StructureShape.new(name: 'StackResourceDriftInformationSummary')
    StackResourceDriftStatus = Shapes::StringShape.new(name: 'StackResourceDriftStatus')
    StackResourceDriftStatusFilters = Shapes::ListShape.new(name: 'StackResourceDriftStatusFilters')
    StackResourceDriftStatusReason = Shapes::StringShape.new(name: 'StackResourceDriftStatusReason')
    StackResourceDrifts = Shapes::ListShape.new(name: 'StackResourceDrifts')
    StackResourceSummaries = Shapes::ListShape.new(name: 'StackResourceSummaries')
    StackResourceSummary = Shapes::StructureShape.new(name: 'StackResourceSummary')
    StackResources = Shapes::ListShape.new(name: 'StackResources')
    StackSet = Shapes::StructureShape.new(name: 'StackSet')
    StackSetARN = Shapes::StringShape.new(name: 'StackSetARN')
    StackSetAutoDeploymentTargetSummaries = Shapes::ListShape.new(name: 'StackSetAutoDeploymentTargetSummaries')
    StackSetAutoDeploymentTargetSummary = Shapes::StructureShape.new(name: 'StackSetAutoDeploymentTargetSummary')
    StackSetDriftDetectionDetails = Shapes::StructureShape.new(name: 'StackSetDriftDetectionDetails')
    StackSetDriftDetectionStatus = Shapes::StringShape.new(name: 'StackSetDriftDetectionStatus')
    StackSetDriftStatus = Shapes::StringShape.new(name: 'StackSetDriftStatus')
    StackSetId = Shapes::StringShape.new(name: 'StackSetId')
    StackSetName = Shapes::StringShape.new(name: 'StackSetName')
    StackSetNameOrId = Shapes::StringShape.new(name: 'StackSetNameOrId')
    StackSetNotEmptyException = Shapes::StructureShape.new(name: 'StackSetNotEmptyException', error: {"code" => "StackSetNotEmptyException", "httpStatusCode" => 409, "senderFault" => true})
    StackSetNotFoundException = Shapes::StructureShape.new(name: 'StackSetNotFoundException', error: {"code" => "StackSetNotFoundException", "httpStatusCode" => 404, "senderFault" => true})
    StackSetOperation = Shapes::StructureShape.new(name: 'StackSetOperation')
    StackSetOperationAction = Shapes::StringShape.new(name: 'StackSetOperationAction')
    StackSetOperationPreferences = Shapes::StructureShape.new(name: 'StackSetOperationPreferences')
    StackSetOperationResultStatus = Shapes::StringShape.new(name: 'StackSetOperationResultStatus')
    StackSetOperationResultSummaries = Shapes::ListShape.new(name: 'StackSetOperationResultSummaries')
    StackSetOperationResultSummary = Shapes::StructureShape.new(name: 'StackSetOperationResultSummary')
    StackSetOperationStatus = Shapes::StringShape.new(name: 'StackSetOperationStatus')
    StackSetOperationStatusDetails = Shapes::StructureShape.new(name: 'StackSetOperationStatusDetails')
    StackSetOperationStatusReason = Shapes::StringShape.new(name: 'StackSetOperationStatusReason')
    StackSetOperationSummaries = Shapes::ListShape.new(name: 'StackSetOperationSummaries')
    StackSetOperationSummary = Shapes::StructureShape.new(name: 'StackSetOperationSummary')
    StackSetStatus = Shapes::StringShape.new(name: 'StackSetStatus')
    StackSetSummaries = Shapes::ListShape.new(name: 'StackSetSummaries')
    StackSetSummary = Shapes::StructureShape.new(name: 'StackSetSummary')
    StackStatus = Shapes::StringShape.new(name: 'StackStatus')
    StackStatusFilter = Shapes::ListShape.new(name: 'StackStatusFilter')
    StackStatusReason = Shapes::StringShape.new(name: 'StackStatusReason')
    StackSummaries = Shapes::ListShape.new(name: 'StackSummaries')
    StackSummary = Shapes::StructureShape.new(name: 'StackSummary')
    Stacks = Shapes::ListShape.new(name: 'Stacks')
    StageList = Shapes::ListShape.new(name: 'StageList')
    StaleRequestException = Shapes::StructureShape.new(name: 'StaleRequestException', error: {"code" => "StaleRequestException", "httpStatusCode" => 409, "senderFault" => true})
    StartResourceScanInput = Shapes::StructureShape.new(name: 'StartResourceScanInput')
    StartResourceScanOutput = Shapes::StructureShape.new(name: 'StartResourceScanOutput')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StopStackSetOperationInput = Shapes::StructureShape.new(name: 'StopStackSetOperationInput')
    StopStackSetOperationOutput = Shapes::StructureShape.new(name: 'StopStackSetOperationOutput')
    SupportedMajorVersion = Shapes::IntegerShape.new(name: 'SupportedMajorVersion')
    SupportedMajorVersions = Shapes::ListShape.new(name: 'SupportedMajorVersions')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TemplateBody = Shapes::StringShape.new(name: 'TemplateBody')
    TemplateConfiguration = Shapes::StructureShape.new(name: 'TemplateConfiguration')
    TemplateDescription = Shapes::StringShape.new(name: 'TemplateDescription')
    TemplateFormat = Shapes::StringShape.new(name: 'TemplateFormat')
    TemplateParameter = Shapes::StructureShape.new(name: 'TemplateParameter')
    TemplateParameters = Shapes::ListShape.new(name: 'TemplateParameters')
    TemplateProgress = Shapes::StructureShape.new(name: 'TemplateProgress')
    TemplateStage = Shapes::StringShape.new(name: 'TemplateStage')
    TemplateStatusReason = Shapes::StringShape.new(name: 'TemplateStatusReason')
    TemplateSummaries = Shapes::ListShape.new(name: 'TemplateSummaries')
    TemplateSummary = Shapes::StructureShape.new(name: 'TemplateSummary')
    TemplateSummaryConfig = Shapes::StructureShape.new(name: 'TemplateSummaryConfig')
    TemplateURL = Shapes::StringShape.new(name: 'TemplateURL')
    TestTypeInput = Shapes::StructureShape.new(name: 'TestTypeInput')
    TestTypeOutput = Shapes::StructureShape.new(name: 'TestTypeOutput')
    ThirdPartyType = Shapes::StringShape.new(name: 'ThirdPartyType')
    ThirdPartyTypeArn = Shapes::StringShape.new(name: 'ThirdPartyTypeArn')
    TimeoutMinutes = Shapes::IntegerShape.new(name: 'TimeoutMinutes')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenAlreadyExistsException = Shapes::StructureShape.new(name: 'TokenAlreadyExistsException', error: {"code" => "TokenAlreadyExistsException", "httpStatusCode" => 400, "senderFault" => true})
    TotalStackInstancesCount = Shapes::IntegerShape.new(name: 'TotalStackInstancesCount')
    TotalWarnings = Shapes::IntegerShape.new(name: 'TotalWarnings')
    TransformName = Shapes::StringShape.new(name: 'TransformName')
    TransformsList = Shapes::ListShape.new(name: 'TransformsList')
    TreatUnrecognizedResourceTypesAsWarnings = Shapes::BooleanShape.new(name: 'TreatUnrecognizedResourceTypesAsWarnings')
    Type = Shapes::StringShape.new(name: 'Type')
    TypeArn = Shapes::StringShape.new(name: 'TypeArn')
    TypeConfiguration = Shapes::StringShape.new(name: 'TypeConfiguration')
    TypeConfigurationAlias = Shapes::StringShape.new(name: 'TypeConfigurationAlias')
    TypeConfigurationArn = Shapes::StringShape.new(name: 'TypeConfigurationArn')
    TypeConfigurationDetails = Shapes::StructureShape.new(name: 'TypeConfigurationDetails')
    TypeConfigurationDetailsList = Shapes::ListShape.new(name: 'TypeConfigurationDetailsList')
    TypeConfigurationIdentifier = Shapes::StructureShape.new(name: 'TypeConfigurationIdentifier')
    TypeConfigurationIdentifiers = Shapes::ListShape.new(name: 'TypeConfigurationIdentifiers')
    TypeConfigurationNotFoundException = Shapes::StructureShape.new(name: 'TypeConfigurationNotFoundException', error: {"code" => "TypeConfigurationNotFoundException", "httpStatusCode" => 404, "senderFault" => true})
    TypeFilters = Shapes::StructureShape.new(name: 'TypeFilters')
    TypeHierarchy = Shapes::StringShape.new(name: 'TypeHierarchy')
    TypeName = Shapes::StringShape.new(name: 'TypeName')
    TypeNamePrefix = Shapes::StringShape.new(name: 'TypeNamePrefix')
    TypeNotFoundException = Shapes::StructureShape.new(name: 'TypeNotFoundException', error: {"code" => "TypeNotFoundException", "httpStatusCode" => 404, "senderFault" => true})
    TypeSchema = Shapes::StringShape.new(name: 'TypeSchema')
    TypeSummaries = Shapes::ListShape.new(name: 'TypeSummaries')
    TypeSummary = Shapes::StructureShape.new(name: 'TypeSummary')
    TypeTestsStatus = Shapes::StringShape.new(name: 'TypeTestsStatus')
    TypeTestsStatusDescription = Shapes::StringShape.new(name: 'TypeTestsStatusDescription')
    TypeVersionId = Shapes::StringShape.new(name: 'TypeVersionId')
    TypeVersionSummaries = Shapes::ListShape.new(name: 'TypeVersionSummaries')
    TypeVersionSummary = Shapes::StructureShape.new(name: 'TypeVersionSummary')
    UnprocessedTypeConfigurations = Shapes::ListShape.new(name: 'UnprocessedTypeConfigurations')
    UpdateGeneratedTemplateInput = Shapes::StructureShape.new(name: 'UpdateGeneratedTemplateInput')
    UpdateGeneratedTemplateOutput = Shapes::StructureShape.new(name: 'UpdateGeneratedTemplateOutput')
    UpdateStackInput = Shapes::StructureShape.new(name: 'UpdateStackInput')
    UpdateStackInstancesInput = Shapes::StructureShape.new(name: 'UpdateStackInstancesInput')
    UpdateStackInstancesOutput = Shapes::StructureShape.new(name: 'UpdateStackInstancesOutput')
    UpdateStackOutput = Shapes::StructureShape.new(name: 'UpdateStackOutput')
    UpdateStackSetInput = Shapes::StructureShape.new(name: 'UpdateStackSetInput')
    UpdateStackSetOutput = Shapes::StructureShape.new(name: 'UpdateStackSetOutput')
    UpdateTerminationProtectionInput = Shapes::StructureShape.new(name: 'UpdateTerminationProtectionInput')
    UpdateTerminationProtectionOutput = Shapes::StructureShape.new(name: 'UpdateTerminationProtectionOutput')
    Url = Shapes::StringShape.new(name: 'Url')
    UsePreviousTemplate = Shapes::BooleanShape.new(name: 'UsePreviousTemplate')
    UsePreviousValue = Shapes::BooleanShape.new(name: 'UsePreviousValue')
    ValidateTemplateInput = Shapes::StructureShape.new(name: 'ValidateTemplateInput')
    ValidateTemplateOutput = Shapes::StructureShape.new(name: 'ValidateTemplateOutput')
    Value = Shapes::StringShape.new(name: 'Value')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionBump = Shapes::StringShape.new(name: 'VersionBump')
    Visibility = Shapes::StringShape.new(name: 'Visibility')
    WarningDetail = Shapes::StructureShape.new(name: 'WarningDetail')
    WarningDetails = Shapes::ListShape.new(name: 'WarningDetails')
    WarningProperties = Shapes::ListShape.new(name: 'WarningProperties')
    WarningProperty = Shapes::StructureShape.new(name: 'WarningProperty')
    WarningType = Shapes::StringShape.new(name: 'WarningType')
    Warnings = Shapes::StructureShape.new(name: 'Warnings')

    AccountGateResult.add_member(:status, Shapes::ShapeRef.new(shape: AccountGateStatus, location_name: "Status"))
    AccountGateResult.add_member(:status_reason, Shapes::ShapeRef.new(shape: AccountGateStatusReason, location_name: "StatusReason"))
    AccountGateResult.struct_class = Types::AccountGateResult

    AccountLimit.add_member(:name, Shapes::ShapeRef.new(shape: LimitName, location_name: "Name"))
    AccountLimit.add_member(:value, Shapes::ShapeRef.new(shape: LimitValue, location_name: "Value"))
    AccountLimit.struct_class = Types::AccountLimit

    AccountLimitList.member = Shapes::ShapeRef.new(shape: AccountLimit)

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    ActivateOrganizationsAccessInput.struct_class = Types::ActivateOrganizationsAccessInput

    ActivateOrganizationsAccessOutput.struct_class = Types::ActivateOrganizationsAccessOutput

    ActivateTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: ThirdPartyType, location_name: "Type"))
    ActivateTypeInput.add_member(:public_type_arn, Shapes::ShapeRef.new(shape: ThirdPartyTypeArn, location_name: "PublicTypeArn"))
    ActivateTypeInput.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    ActivateTypeInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    ActivateTypeInput.add_member(:type_name_alias, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeNameAlias"))
    ActivateTypeInput.add_member(:auto_update, Shapes::ShapeRef.new(shape: AutoUpdate, location_name: "AutoUpdate"))
    ActivateTypeInput.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "LoggingConfig"))
    ActivateTypeInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRoleArn"))
    ActivateTypeInput.add_member(:version_bump, Shapes::ShapeRef.new(shape: VersionBump, location_name: "VersionBump"))
    ActivateTypeInput.add_member(:major_version, Shapes::ShapeRef.new(shape: MajorVersion, location_name: "MajorVersion"))
    ActivateTypeInput.struct_class = Types::ActivateTypeInput

    ActivateTypeOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PrivateTypeArn, location_name: "Arn"))
    ActivateTypeOutput.struct_class = Types::ActivateTypeOutput

    AllowedValues.member = Shapes::ShapeRef.new(shape: AllowedValue)

    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    AutoDeployment.add_member(:enabled, Shapes::ShapeRef.new(shape: AutoDeploymentNullable, location_name: "Enabled"))
    AutoDeployment.add_member(:retain_stacks_on_account_removal, Shapes::ShapeRef.new(shape: RetainStacksOnAccountRemovalNullable, location_name: "RetainStacksOnAccountRemoval"))
    AutoDeployment.struct_class = Types::AutoDeployment

    BatchDescribeTypeConfigurationsError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    BatchDescribeTypeConfigurationsError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    BatchDescribeTypeConfigurationsError.add_member(:type_configuration_identifier, Shapes::ShapeRef.new(shape: TypeConfigurationIdentifier, location_name: "TypeConfigurationIdentifier"))
    BatchDescribeTypeConfigurationsError.struct_class = Types::BatchDescribeTypeConfigurationsError

    BatchDescribeTypeConfigurationsErrors.member = Shapes::ShapeRef.new(shape: BatchDescribeTypeConfigurationsError)

    BatchDescribeTypeConfigurationsInput.add_member(:type_configuration_identifiers, Shapes::ShapeRef.new(shape: TypeConfigurationIdentifiers, required: true, location_name: "TypeConfigurationIdentifiers"))
    BatchDescribeTypeConfigurationsInput.struct_class = Types::BatchDescribeTypeConfigurationsInput

    BatchDescribeTypeConfigurationsOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDescribeTypeConfigurationsErrors, location_name: "Errors"))
    BatchDescribeTypeConfigurationsOutput.add_member(:unprocessed_type_configurations, Shapes::ShapeRef.new(shape: UnprocessedTypeConfigurations, location_name: "UnprocessedTypeConfigurations"))
    BatchDescribeTypeConfigurationsOutput.add_member(:type_configurations, Shapes::ShapeRef.new(shape: TypeConfigurationDetailsList, location_name: "TypeConfigurations"))
    BatchDescribeTypeConfigurationsOutput.struct_class = Types::BatchDescribeTypeConfigurationsOutput

    CFNRegistryException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    CFNRegistryException.struct_class = Types::CFNRegistryException

    CancelUpdateStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    CancelUpdateStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    CancelUpdateStackInput.struct_class = Types::CancelUpdateStackInput

    Capabilities.member = Shapes::ShapeRef.new(shape: Capability)

    Change.add_member(:type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "Type"))
    Change.add_member(:hook_invocation_count, Shapes::ShapeRef.new(shape: HookInvocationCount, location_name: "HookInvocationCount"))
    Change.add_member(:resource_change, Shapes::ShapeRef.new(shape: ResourceChange, location_name: "ResourceChange"))
    Change.struct_class = Types::Change

    ChangeSetHook.add_member(:invocation_point, Shapes::ShapeRef.new(shape: HookInvocationPoint, location_name: "InvocationPoint"))
    ChangeSetHook.add_member(:failure_mode, Shapes::ShapeRef.new(shape: HookFailureMode, location_name: "FailureMode"))
    ChangeSetHook.add_member(:type_name, Shapes::ShapeRef.new(shape: HookTypeName, location_name: "TypeName"))
    ChangeSetHook.add_member(:type_version_id, Shapes::ShapeRef.new(shape: HookTypeVersionId, location_name: "TypeVersionId"))
    ChangeSetHook.add_member(:type_configuration_version_id, Shapes::ShapeRef.new(shape: HookTypeConfigurationVersionId, location_name: "TypeConfigurationVersionId"))
    ChangeSetHook.add_member(:target_details, Shapes::ShapeRef.new(shape: ChangeSetHookTargetDetails, location_name: "TargetDetails"))
    ChangeSetHook.struct_class = Types::ChangeSetHook

    ChangeSetHookResourceTargetDetails.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    ChangeSetHookResourceTargetDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: HookTargetTypeName, location_name: "ResourceType"))
    ChangeSetHookResourceTargetDetails.add_member(:resource_action, Shapes::ShapeRef.new(shape: ChangeAction, location_name: "ResourceAction"))
    ChangeSetHookResourceTargetDetails.struct_class = Types::ChangeSetHookResourceTargetDetails

    ChangeSetHookTargetDetails.add_member(:target_type, Shapes::ShapeRef.new(shape: HookTargetType, location_name: "TargetType"))
    ChangeSetHookTargetDetails.add_member(:resource_target_details, Shapes::ShapeRef.new(shape: ChangeSetHookResourceTargetDetails, location_name: "ResourceTargetDetails"))
    ChangeSetHookTargetDetails.struct_class = Types::ChangeSetHookTargetDetails

    ChangeSetHooks.member = Shapes::ShapeRef.new(shape: ChangeSetHook)

    ChangeSetNotFoundException.struct_class = Types::ChangeSetNotFoundException

    ChangeSetSummaries.member = Shapes::ShapeRef.new(shape: ChangeSetSummary)

    ChangeSetSummary.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    ChangeSetSummary.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    ChangeSetSummary.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "ChangeSetId"))
    ChangeSetSummary.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    ChangeSetSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "ExecutionStatus"))
    ChangeSetSummary.add_member(:status, Shapes::ShapeRef.new(shape: ChangeSetStatus, location_name: "Status"))
    ChangeSetSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: ChangeSetStatusReason, location_name: "StatusReason"))
    ChangeSetSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    ChangeSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ChangeSetSummary.add_member(:include_nested_stacks, Shapes::ShapeRef.new(shape: IncludeNestedStacks, location_name: "IncludeNestedStacks"))
    ChangeSetSummary.add_member(:parent_change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "ParentChangeSetId"))
    ChangeSetSummary.add_member(:root_change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "RootChangeSetId"))
    ChangeSetSummary.add_member(:import_existing_resources, Shapes::ShapeRef.new(shape: ImportExistingResources, location_name: "ImportExistingResources"))
    ChangeSetSummary.struct_class = Types::ChangeSetSummary

    Changes.member = Shapes::ShapeRef.new(shape: Change)

    ConcurrentResourcesLimitExceededException.struct_class = Types::ConcurrentResourcesLimitExceededException

    ContinueUpdateRollbackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    ContinueUpdateRollbackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    ContinueUpdateRollbackInput.add_member(:resources_to_skip, Shapes::ShapeRef.new(shape: ResourcesToSkip, location_name: "ResourcesToSkip"))
    ContinueUpdateRollbackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    ContinueUpdateRollbackInput.struct_class = Types::ContinueUpdateRollbackInput

    ContinueUpdateRollbackOutput.struct_class = Types::ContinueUpdateRollbackOutput

    CreateChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    CreateChangeSetInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    CreateChangeSetInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    CreateChangeSetInput.add_member(:use_previous_template, Shapes::ShapeRef.new(shape: UsePreviousTemplate, location_name: "UsePreviousTemplate"))
    CreateChangeSetInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateChangeSetInput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    CreateChangeSetInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    CreateChangeSetInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    CreateChangeSetInput.add_member(:rollback_configuration, Shapes::ShapeRef.new(shape: RollbackConfiguration, location_name: "RollbackConfiguration"))
    CreateChangeSetInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
    CreateChangeSetInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, required: true, location_name: "ChangeSetName"))
    CreateChangeSetInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateChangeSetInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateChangeSetInput.add_member(:change_set_type, Shapes::ShapeRef.new(shape: ChangeSetType, location_name: "ChangeSetType"))
    CreateChangeSetInput.add_member(:resources_to_import, Shapes::ShapeRef.new(shape: ResourcesToImport, location_name: "ResourcesToImport"))
    CreateChangeSetInput.add_member(:include_nested_stacks, Shapes::ShapeRef.new(shape: IncludeNestedStacks, location_name: "IncludeNestedStacks"))
    CreateChangeSetInput.add_member(:on_stack_failure, Shapes::ShapeRef.new(shape: OnStackFailure, location_name: "OnStackFailure"))
    CreateChangeSetInput.add_member(:import_existing_resources, Shapes::ShapeRef.new(shape: ImportExistingResources, location_name: "ImportExistingResources"))
    CreateChangeSetInput.struct_class = Types::CreateChangeSetInput

    CreateChangeSetOutput.add_member(:id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "Id"))
    CreateChangeSetOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    CreateChangeSetOutput.struct_class = Types::CreateChangeSetOutput

    CreateGeneratedTemplateInput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceDefinitions, location_name: "Resources"))
    CreateGeneratedTemplateInput.add_member(:generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, required: true, location_name: "GeneratedTemplateName"))
    CreateGeneratedTemplateInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    CreateGeneratedTemplateInput.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    CreateGeneratedTemplateInput.struct_class = Types::CreateGeneratedTemplateInput

    CreateGeneratedTemplateOutput.add_member(:generated_template_id, Shapes::ShapeRef.new(shape: GeneratedTemplateId, location_name: "GeneratedTemplateId"))
    CreateGeneratedTemplateOutput.struct_class = Types::CreateGeneratedTemplateOutput

    CreateStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    CreateStackInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    CreateStackInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    CreateStackInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateStackInput.add_member(:disable_rollback, Shapes::ShapeRef.new(shape: DisableRollback, location_name: "DisableRollback"))
    CreateStackInput.add_member(:rollback_configuration, Shapes::ShapeRef.new(shape: RollbackConfiguration, location_name: "RollbackConfiguration"))
    CreateStackInput.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: TimeoutMinutes, location_name: "TimeoutInMinutes"))
    CreateStackInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
    CreateStackInput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    CreateStackInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    CreateStackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    CreateStackInput.add_member(:on_failure, Shapes::ShapeRef.new(shape: OnFailure, location_name: "OnFailure"))
    CreateStackInput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
    CreateStackInput.add_member(:stack_policy_url, Shapes::ShapeRef.new(shape: StackPolicyURL, location_name: "StackPolicyURL"))
    CreateStackInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    CreateStackInput.add_member(:enable_termination_protection, Shapes::ShapeRef.new(shape: EnableTerminationProtection, location_name: "EnableTerminationProtection"))
    CreateStackInput.add_member(:retain_except_on_create, Shapes::ShapeRef.new(shape: RetainExceptOnCreate, location_name: "RetainExceptOnCreate"))
    CreateStackInput.struct_class = Types::CreateStackInput

    CreateStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    CreateStackInstancesInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    CreateStackInstancesInput.add_member(:deployment_targets, Shapes::ShapeRef.new(shape: DeploymentTargets, location_name: "DeploymentTargets"))
    CreateStackInstancesInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "Regions"))
    CreateStackInstancesInput.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: Parameters, location_name: "ParameterOverrides"))
    CreateStackInstancesInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    CreateStackInstancesInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken" => true}))
    CreateStackInstancesInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    CreateStackInstancesInput.struct_class = Types::CreateStackInstancesInput

    CreateStackInstancesOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    CreateStackInstancesOutput.struct_class = Types::CreateStackInstancesOutput

    CreateStackOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    CreateStackOutput.struct_class = Types::CreateStackOutput

    CreateStackRefactorInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStackRefactorInput.add_member(:enable_stack_creation, Shapes::ShapeRef.new(shape: EnableStackCreation, location_name: "EnableStackCreation"))
    CreateStackRefactorInput.add_member(:resource_mappings, Shapes::ShapeRef.new(shape: ResourceMappings, location_name: "ResourceMappings"))
    CreateStackRefactorInput.add_member(:stack_definitions, Shapes::ShapeRef.new(shape: StackDefinitions, required: true, location_name: "StackDefinitions"))
    CreateStackRefactorInput.struct_class = Types::CreateStackRefactorInput

    CreateStackRefactorOutput.add_member(:stack_refactor_id, Shapes::ShapeRef.new(shape: StackRefactorId, required: true, location_name: "StackRefactorId"))
    CreateStackRefactorOutput.struct_class = Types::CreateStackRefactorOutput

    CreateStackSetInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    CreateStackSetInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStackSetInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    CreateStackSetInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    CreateStackSetInput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    CreateStackSetInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateStackSetInput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    CreateStackSetInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateStackSetInput.add_member(:administration_role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "AdministrationRoleARN"))
    CreateStackSetInput.add_member(:execution_role_name, Shapes::ShapeRef.new(shape: ExecutionRoleName, location_name: "ExecutionRoleName"))
    CreateStackSetInput.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModels, location_name: "PermissionModel"))
    CreateStackSetInput.add_member(:auto_deployment, Shapes::ShapeRef.new(shape: AutoDeployment, location_name: "AutoDeployment"))
    CreateStackSetInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    CreateStackSetInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateStackSetInput.add_member(:managed_execution, Shapes::ShapeRef.new(shape: ManagedExecution, location_name: "ManagedExecution"))
    CreateStackSetInput.struct_class = Types::CreateStackSetInput

    CreateStackSetOutput.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    CreateStackSetOutput.struct_class = Types::CreateStackSetOutput

    CreatedButModifiedException.struct_class = Types::CreatedButModifiedException

    DeactivateOrganizationsAccessInput.struct_class = Types::DeactivateOrganizationsAccessInput

    DeactivateOrganizationsAccessOutput.struct_class = Types::DeactivateOrganizationsAccessOutput

    DeactivateTypeInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    DeactivateTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: ThirdPartyType, location_name: "Type"))
    DeactivateTypeInput.add_member(:arn, Shapes::ShapeRef.new(shape: PrivateTypeArn, location_name: "Arn"))
    DeactivateTypeInput.struct_class = Types::DeactivateTypeInput

    DeactivateTypeOutput.struct_class = Types::DeactivateTypeOutput

    DeleteChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
    DeleteChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    DeleteChangeSetInput.struct_class = Types::DeleteChangeSetInput

    DeleteChangeSetOutput.struct_class = Types::DeleteChangeSetOutput

    DeleteGeneratedTemplateInput.add_member(:generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, required: true, location_name: "GeneratedTemplateName"))
    DeleteGeneratedTemplateInput.struct_class = Types::DeleteGeneratedTemplateInput

    DeleteStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    DeleteStackInput.add_member(:retain_resources, Shapes::ShapeRef.new(shape: RetainResources, location_name: "RetainResources"))
    DeleteStackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    DeleteStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    DeleteStackInput.add_member(:deletion_mode, Shapes::ShapeRef.new(shape: DeletionMode, location_name: "DeletionMode"))
    DeleteStackInput.struct_class = Types::DeleteStackInput

    DeleteStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DeleteStackInstancesInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    DeleteStackInstancesInput.add_member(:deployment_targets, Shapes::ShapeRef.new(shape: DeploymentTargets, location_name: "DeploymentTargets"))
    DeleteStackInstancesInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "Regions"))
    DeleteStackInstancesInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    DeleteStackInstancesInput.add_member(:retain_stacks, Shapes::ShapeRef.new(shape: RetainStacks, required: true, location_name: "RetainStacks"))
    DeleteStackInstancesInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken" => true}))
    DeleteStackInstancesInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    DeleteStackInstancesInput.struct_class = Types::DeleteStackInstancesInput

    DeleteStackInstancesOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    DeleteStackInstancesOutput.struct_class = Types::DeleteStackInstancesOutput

    DeleteStackSetInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DeleteStackSetInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    DeleteStackSetInput.struct_class = Types::DeleteStackSetInput

    DeleteStackSetOutput.struct_class = Types::DeleteStackSetOutput

    DeploymentTargets.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    DeploymentTargets.add_member(:accounts_url, Shapes::ShapeRef.new(shape: AccountsUrl, location_name: "AccountsUrl"))
    DeploymentTargets.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "OrganizationalUnitIds"))
    DeploymentTargets.add_member(:account_filter_type, Shapes::ShapeRef.new(shape: AccountFilterType, location_name: "AccountFilterType"))
    DeploymentTargets.struct_class = Types::DeploymentTargets

    DeregisterTypeInput.add_member(:arn, Shapes::ShapeRef.new(shape: PrivateTypeArn, location_name: "Arn"))
    DeregisterTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    DeregisterTypeInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    DeregisterTypeInput.add_member(:version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "VersionId"))
    DeregisterTypeInput.struct_class = Types::DeregisterTypeInput

    DeregisterTypeOutput.struct_class = Types::DeregisterTypeOutput

    DescribeAccountLimitsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountLimitsInput.struct_class = Types::DescribeAccountLimitsInput

    DescribeAccountLimitsOutput.add_member(:account_limits, Shapes::ShapeRef.new(shape: AccountLimitList, location_name: "AccountLimits"))
    DescribeAccountLimitsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountLimitsOutput.struct_class = Types::DescribeAccountLimitsOutput

    DescribeChangeSetHooksInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
    DescribeChangeSetHooksInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    DescribeChangeSetHooksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeChangeSetHooksInput.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    DescribeChangeSetHooksInput.struct_class = Types::DescribeChangeSetHooksInput

    DescribeChangeSetHooksOutput.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "ChangeSetId"))
    DescribeChangeSetHooksOutput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    DescribeChangeSetHooksOutput.add_member(:hooks, Shapes::ShapeRef.new(shape: ChangeSetHooks, location_name: "Hooks"))
    DescribeChangeSetHooksOutput.add_member(:status, Shapes::ShapeRef.new(shape: ChangeSetHooksStatus, location_name: "Status"))
    DescribeChangeSetHooksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeChangeSetHooksOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    DescribeChangeSetHooksOutput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    DescribeChangeSetHooksOutput.struct_class = Types::DescribeChangeSetHooksOutput

    DescribeChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
    DescribeChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    DescribeChangeSetInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeChangeSetInput.add_member(:include_property_values, Shapes::ShapeRef.new(shape: IncludePropertyValues, location_name: "IncludePropertyValues"))
    DescribeChangeSetInput.struct_class = Types::DescribeChangeSetInput

    DescribeChangeSetOutput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    DescribeChangeSetOutput.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "ChangeSetId"))
    DescribeChangeSetOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    DescribeChangeSetOutput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    DescribeChangeSetOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeChangeSetOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    DescribeChangeSetOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeChangeSetOutput.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "ExecutionStatus"))
    DescribeChangeSetOutput.add_member(:status, Shapes::ShapeRef.new(shape: ChangeSetStatus, location_name: "Status"))
    DescribeChangeSetOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: ChangeSetStatusReason, location_name: "StatusReason"))
    DescribeChangeSetOutput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
    DescribeChangeSetOutput.add_member(:rollback_configuration, Shapes::ShapeRef.new(shape: RollbackConfiguration, location_name: "RollbackConfiguration"))
    DescribeChangeSetOutput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    DescribeChangeSetOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribeChangeSetOutput.add_member(:changes, Shapes::ShapeRef.new(shape: Changes, location_name: "Changes"))
    DescribeChangeSetOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeChangeSetOutput.add_member(:include_nested_stacks, Shapes::ShapeRef.new(shape: IncludeNestedStacks, location_name: "IncludeNestedStacks"))
    DescribeChangeSetOutput.add_member(:parent_change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "ParentChangeSetId"))
    DescribeChangeSetOutput.add_member(:root_change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "RootChangeSetId"))
    DescribeChangeSetOutput.add_member(:on_stack_failure, Shapes::ShapeRef.new(shape: OnStackFailure, location_name: "OnStackFailure"))
    DescribeChangeSetOutput.add_member(:import_existing_resources, Shapes::ShapeRef.new(shape: ImportExistingResources, location_name: "ImportExistingResources"))
    DescribeChangeSetOutput.struct_class = Types::DescribeChangeSetOutput

    DescribeGeneratedTemplateInput.add_member(:generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, required: true, location_name: "GeneratedTemplateName"))
    DescribeGeneratedTemplateInput.struct_class = Types::DescribeGeneratedTemplateInput

    DescribeGeneratedTemplateOutput.add_member(:generated_template_id, Shapes::ShapeRef.new(shape: GeneratedTemplateId, location_name: "GeneratedTemplateId"))
    DescribeGeneratedTemplateOutput.add_member(:generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, location_name: "GeneratedTemplateName"))
    DescribeGeneratedTemplateOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "Resources"))
    DescribeGeneratedTemplateOutput.add_member(:status, Shapes::ShapeRef.new(shape: GeneratedTemplateStatus, location_name: "Status"))
    DescribeGeneratedTemplateOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: TemplateStatusReason, location_name: "StatusReason"))
    DescribeGeneratedTemplateOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeGeneratedTemplateOutput.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    DescribeGeneratedTemplateOutput.add_member(:progress, Shapes::ShapeRef.new(shape: TemplateProgress, location_name: "Progress"))
    DescribeGeneratedTemplateOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    DescribeGeneratedTemplateOutput.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    DescribeGeneratedTemplateOutput.add_member(:total_warnings, Shapes::ShapeRef.new(shape: TotalWarnings, location_name: "TotalWarnings"))
    DescribeGeneratedTemplateOutput.struct_class = Types::DescribeGeneratedTemplateOutput

    DescribeOrganizationsAccessInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    DescribeOrganizationsAccessInput.struct_class = Types::DescribeOrganizationsAccessInput

    DescribeOrganizationsAccessOutput.add_member(:status, Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: "Status"))
    DescribeOrganizationsAccessOutput.struct_class = Types::DescribeOrganizationsAccessOutput

    DescribePublisherInput.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    DescribePublisherInput.struct_class = Types::DescribePublisherInput

    DescribePublisherOutput.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    DescribePublisherOutput.add_member(:publisher_status, Shapes::ShapeRef.new(shape: PublisherStatus, location_name: "PublisherStatus"))
    DescribePublisherOutput.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, location_name: "IdentityProvider"))
    DescribePublisherOutput.add_member(:publisher_profile, Shapes::ShapeRef.new(shape: PublisherProfile, location_name: "PublisherProfile"))
    DescribePublisherOutput.struct_class = Types::DescribePublisherOutput

    DescribeResourceScanInput.add_member(:resource_scan_id, Shapes::ShapeRef.new(shape: ResourceScanId, required: true, location_name: "ResourceScanId"))
    DescribeResourceScanInput.struct_class = Types::DescribeResourceScanInput

    DescribeResourceScanOutput.add_member(:resource_scan_id, Shapes::ShapeRef.new(shape: ResourceScanId, location_name: "ResourceScanId"))
    DescribeResourceScanOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceScanStatus, location_name: "Status"))
    DescribeResourceScanOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: ResourceScanStatusReason, location_name: "StatusReason"))
    DescribeResourceScanOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    DescribeResourceScanOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DescribeResourceScanOutput.add_member(:percentage_completed, Shapes::ShapeRef.new(shape: PercentageCompleted, location_name: "PercentageCompleted"))
    DescribeResourceScanOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    DescribeResourceScanOutput.add_member(:resources_scanned, Shapes::ShapeRef.new(shape: ResourcesScanned, location_name: "ResourcesScanned"))
    DescribeResourceScanOutput.add_member(:resources_read, Shapes::ShapeRef.new(shape: ResourcesRead, location_name: "ResourcesRead"))
    DescribeResourceScanOutput.add_member(:scan_filters, Shapes::ShapeRef.new(shape: ScanFilters, location_name: "ScanFilters"))
    DescribeResourceScanOutput.struct_class = Types::DescribeResourceScanOutput

    DescribeStackDriftDetectionStatusInput.add_member(:stack_drift_detection_id, Shapes::ShapeRef.new(shape: StackDriftDetectionId, required: true, location_name: "StackDriftDetectionId"))
    DescribeStackDriftDetectionStatusInput.struct_class = Types::DescribeStackDriftDetectionStatusInput

    DescribeStackDriftDetectionStatusOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, required: true, location_name: "StackId"))
    DescribeStackDriftDetectionStatusOutput.add_member(:stack_drift_detection_id, Shapes::ShapeRef.new(shape: StackDriftDetectionId, required: true, location_name: "StackDriftDetectionId"))
    DescribeStackDriftDetectionStatusOutput.add_member(:stack_drift_status, Shapes::ShapeRef.new(shape: StackDriftStatus, location_name: "StackDriftStatus"))
    DescribeStackDriftDetectionStatusOutput.add_member(:detection_status, Shapes::ShapeRef.new(shape: StackDriftDetectionStatus, required: true, location_name: "DetectionStatus"))
    DescribeStackDriftDetectionStatusOutput.add_member(:detection_status_reason, Shapes::ShapeRef.new(shape: StackDriftDetectionStatusReason, location_name: "DetectionStatusReason"))
    DescribeStackDriftDetectionStatusOutput.add_member(:drifted_stack_resource_count, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "DriftedStackResourceCount"))
    DescribeStackDriftDetectionStatusOutput.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    DescribeStackDriftDetectionStatusOutput.struct_class = Types::DescribeStackDriftDetectionStatusOutput

    DescribeStackEventsInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    DescribeStackEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStackEventsInput.struct_class = Types::DescribeStackEventsInput

    DescribeStackEventsOutput.add_member(:stack_events, Shapes::ShapeRef.new(shape: StackEvents, location_name: "StackEvents"))
    DescribeStackEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStackEventsOutput.struct_class = Types::DescribeStackEventsOutput

    DescribeStackInstanceInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DescribeStackInstanceInput.add_member(:stack_instance_account, Shapes::ShapeRef.new(shape: Account, required: true, location_name: "StackInstanceAccount"))
    DescribeStackInstanceInput.add_member(:stack_instance_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "StackInstanceRegion"))
    DescribeStackInstanceInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    DescribeStackInstanceInput.struct_class = Types::DescribeStackInstanceInput

    DescribeStackInstanceOutput.add_member(:stack_instance, Shapes::ShapeRef.new(shape: StackInstance, location_name: "StackInstance"))
    DescribeStackInstanceOutput.struct_class = Types::DescribeStackInstanceOutput

    DescribeStackRefactorInput.add_member(:stack_refactor_id, Shapes::ShapeRef.new(shape: StackRefactorId, required: true, location_name: "StackRefactorId"))
    DescribeStackRefactorInput.struct_class = Types::DescribeStackRefactorInput

    DescribeStackRefactorOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeStackRefactorOutput.add_member(:stack_refactor_id, Shapes::ShapeRef.new(shape: StackRefactorId, location_name: "StackRefactorId"))
    DescribeStackRefactorOutput.add_member(:stack_ids, Shapes::ShapeRef.new(shape: StackIds, location_name: "StackIds"))
    DescribeStackRefactorOutput.add_member(:execution_status, Shapes::ShapeRef.new(shape: StackRefactorExecutionStatus, location_name: "ExecutionStatus"))
    DescribeStackRefactorOutput.add_member(:execution_status_reason, Shapes::ShapeRef.new(shape: ExecutionStatusReason, location_name: "ExecutionStatusReason"))
    DescribeStackRefactorOutput.add_member(:status, Shapes::ShapeRef.new(shape: StackRefactorStatus, location_name: "Status"))
    DescribeStackRefactorOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StackRefactorStatusReason, location_name: "StatusReason"))
    DescribeStackRefactorOutput.struct_class = Types::DescribeStackRefactorOutput

    DescribeStackResourceDriftsInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    DescribeStackResourceDriftsInput.add_member(:stack_resource_drift_status_filters, Shapes::ShapeRef.new(shape: StackResourceDriftStatusFilters, location_name: "StackResourceDriftStatusFilters"))
    DescribeStackResourceDriftsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStackResourceDriftsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedMaxResults, location_name: "MaxResults"))
    DescribeStackResourceDriftsInput.struct_class = Types::DescribeStackResourceDriftsInput

    DescribeStackResourceDriftsOutput.add_member(:stack_resource_drifts, Shapes::ShapeRef.new(shape: StackResourceDrifts, required: true, location_name: "StackResourceDrifts"))
    DescribeStackResourceDriftsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStackResourceDriftsOutput.struct_class = Types::DescribeStackResourceDriftsOutput

    DescribeStackResourceInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    DescribeStackResourceInput.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    DescribeStackResourceInput.struct_class = Types::DescribeStackResourceInput

    DescribeStackResourceOutput.add_member(:stack_resource_detail, Shapes::ShapeRef.new(shape: StackResourceDetail, location_name: "StackResourceDetail"))
    DescribeStackResourceOutput.struct_class = Types::DescribeStackResourceOutput

    DescribeStackResourcesInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    DescribeStackResourcesInput.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    DescribeStackResourcesInput.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    DescribeStackResourcesInput.struct_class = Types::DescribeStackResourcesInput

    DescribeStackResourcesOutput.add_member(:stack_resources, Shapes::ShapeRef.new(shape: StackResources, location_name: "StackResources"))
    DescribeStackResourcesOutput.struct_class = Types::DescribeStackResourcesOutput

    DescribeStackSetInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DescribeStackSetInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    DescribeStackSetInput.struct_class = Types::DescribeStackSetInput

    DescribeStackSetOperationInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DescribeStackSetOperationInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "OperationId"))
    DescribeStackSetOperationInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    DescribeStackSetOperationInput.struct_class = Types::DescribeStackSetOperationInput

    DescribeStackSetOperationOutput.add_member(:stack_set_operation, Shapes::ShapeRef.new(shape: StackSetOperation, location_name: "StackSetOperation"))
    DescribeStackSetOperationOutput.struct_class = Types::DescribeStackSetOperationOutput

    DescribeStackSetOutput.add_member(:stack_set, Shapes::ShapeRef.new(shape: StackSet, location_name: "StackSet"))
    DescribeStackSetOutput.struct_class = Types::DescribeStackSetOutput

    DescribeStacksInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    DescribeStacksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStacksInput.struct_class = Types::DescribeStacksInput

    DescribeStacksOutput.add_member(:stacks, Shapes::ShapeRef.new(shape: Stacks, location_name: "Stacks"))
    DescribeStacksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStacksOutput.struct_class = Types::DescribeStacksOutput

    DescribeTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    DescribeTypeInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    DescribeTypeInput.add_member(:arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "Arn"))
    DescribeTypeInput.add_member(:version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "VersionId"))
    DescribeTypeInput.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    DescribeTypeInput.add_member(:public_version_number, Shapes::ShapeRef.new(shape: PublicVersionNumber, location_name: "PublicVersionNumber"))
    DescribeTypeInput.struct_class = Types::DescribeTypeInput

    DescribeTypeOutput.add_member(:arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "Arn"))
    DescribeTypeOutput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    DescribeTypeOutput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    DescribeTypeOutput.add_member(:default_version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "DefaultVersionId"))
    DescribeTypeOutput.add_member(:is_default_version, Shapes::ShapeRef.new(shape: IsDefaultVersion, location_name: "IsDefaultVersion"))
    DescribeTypeOutput.add_member(:type_tests_status, Shapes::ShapeRef.new(shape: TypeTestsStatus, location_name: "TypeTestsStatus"))
    DescribeTypeOutput.add_member(:type_tests_status_description, Shapes::ShapeRef.new(shape: TypeTestsStatusDescription, location_name: "TypeTestsStatusDescription"))
    DescribeTypeOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeTypeOutput.add_member(:schema, Shapes::ShapeRef.new(shape: TypeSchema, location_name: "Schema"))
    DescribeTypeOutput.add_member(:provisioning_type, Shapes::ShapeRef.new(shape: ProvisioningType, location_name: "ProvisioningType"))
    DescribeTypeOutput.add_member(:deprecated_status, Shapes::ShapeRef.new(shape: DeprecatedStatus, location_name: "DeprecatedStatus"))
    DescribeTypeOutput.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "LoggingConfig"))
    DescribeTypeOutput.add_member(:required_activated_types, Shapes::ShapeRef.new(shape: RequiredActivatedTypes, location_name: "RequiredActivatedTypes"))
    DescribeTypeOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRoleArn"))
    DescribeTypeOutput.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    DescribeTypeOutput.add_member(:source_url, Shapes::ShapeRef.new(shape: OptionalSecureUrl, location_name: "SourceUrl"))
    DescribeTypeOutput.add_member(:documentation_url, Shapes::ShapeRef.new(shape: OptionalSecureUrl, location_name: "DocumentationUrl"))
    DescribeTypeOutput.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    DescribeTypeOutput.add_member(:time_created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TimeCreated"))
    DescribeTypeOutput.add_member(:configuration_schema, Shapes::ShapeRef.new(shape: ConfigurationSchema, location_name: "ConfigurationSchema"))
    DescribeTypeOutput.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    DescribeTypeOutput.add_member(:original_type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "OriginalTypeName"))
    DescribeTypeOutput.add_member(:original_type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "OriginalTypeArn"))
    DescribeTypeOutput.add_member(:public_version_number, Shapes::ShapeRef.new(shape: PublicVersionNumber, location_name: "PublicVersionNumber"))
    DescribeTypeOutput.add_member(:latest_public_version, Shapes::ShapeRef.new(shape: PublicVersionNumber, location_name: "LatestPublicVersion"))
    DescribeTypeOutput.add_member(:is_activated, Shapes::ShapeRef.new(shape: IsActivated, location_name: "IsActivated"))
    DescribeTypeOutput.add_member(:auto_update, Shapes::ShapeRef.new(shape: AutoUpdate, location_name: "AutoUpdate"))
    DescribeTypeOutput.struct_class = Types::DescribeTypeOutput

    DescribeTypeRegistrationInput.add_member(:registration_token, Shapes::ShapeRef.new(shape: RegistrationToken, required: true, location_name: "RegistrationToken"))
    DescribeTypeRegistrationInput.struct_class = Types::DescribeTypeRegistrationInput

    DescribeTypeRegistrationOutput.add_member(:progress_status, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "ProgressStatus"))
    DescribeTypeRegistrationOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeTypeRegistrationOutput.add_member(:type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeArn"))
    DescribeTypeRegistrationOutput.add_member(:type_version_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeVersionArn"))
    DescribeTypeRegistrationOutput.struct_class = Types::DescribeTypeRegistrationOutput

    DetectStackDriftInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    DetectStackDriftInput.add_member(:logical_resource_ids, Shapes::ShapeRef.new(shape: LogicalResourceIds, location_name: "LogicalResourceIds"))
    DetectStackDriftInput.struct_class = Types::DetectStackDriftInput

    DetectStackDriftOutput.add_member(:stack_drift_detection_id, Shapes::ShapeRef.new(shape: StackDriftDetectionId, required: true, location_name: "StackDriftDetectionId"))
    DetectStackDriftOutput.struct_class = Types::DetectStackDriftOutput

    DetectStackResourceDriftInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    DetectStackResourceDriftInput.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    DetectStackResourceDriftInput.struct_class = Types::DetectStackResourceDriftInput

    DetectStackResourceDriftOutput.add_member(:stack_resource_drift, Shapes::ShapeRef.new(shape: StackResourceDrift, required: true, location_name: "StackResourceDrift"))
    DetectStackResourceDriftOutput.struct_class = Types::DetectStackResourceDriftOutput

    DetectStackSetDriftInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetNameOrId, required: true, location_name: "StackSetName"))
    DetectStackSetDriftInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    DetectStackSetDriftInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken" => true}))
    DetectStackSetDriftInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    DetectStackSetDriftInput.struct_class = Types::DetectStackSetDriftInput

    DetectStackSetDriftOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    DetectStackSetDriftOutput.struct_class = Types::DetectStackSetDriftOutput

    EstimateTemplateCostInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    EstimateTemplateCostInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    EstimateTemplateCostInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    EstimateTemplateCostInput.struct_class = Types::EstimateTemplateCostInput

    EstimateTemplateCostOutput.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "Url"))
    EstimateTemplateCostOutput.struct_class = Types::EstimateTemplateCostOutput

    ExecuteChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
    ExecuteChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    ExecuteChangeSetInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    ExecuteChangeSetInput.add_member(:disable_rollback, Shapes::ShapeRef.new(shape: DisableRollback, location_name: "DisableRollback"))
    ExecuteChangeSetInput.add_member(:retain_except_on_create, Shapes::ShapeRef.new(shape: RetainExceptOnCreate, location_name: "RetainExceptOnCreate"))
    ExecuteChangeSetInput.struct_class = Types::ExecuteChangeSetInput

    ExecuteChangeSetOutput.struct_class = Types::ExecuteChangeSetOutput

    ExecuteStackRefactorInput.add_member(:stack_refactor_id, Shapes::ShapeRef.new(shape: StackRefactorId, required: true, location_name: "StackRefactorId"))
    ExecuteStackRefactorInput.struct_class = Types::ExecuteStackRefactorInput

    Export.add_member(:exporting_stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "ExportingStackId"))
    Export.add_member(:name, Shapes::ShapeRef.new(shape: ExportName, location_name: "Name"))
    Export.add_member(:value, Shapes::ShapeRef.new(shape: ExportValue, location_name: "Value"))
    Export.struct_class = Types::Export

    Exports.member = Shapes::ShapeRef.new(shape: Export)

    GeneratedTemplateNotFoundException.struct_class = Types::GeneratedTemplateNotFoundException

    GetGeneratedTemplateInput.add_member(:format, Shapes::ShapeRef.new(shape: TemplateFormat, location_name: "Format"))
    GetGeneratedTemplateInput.add_member(:generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, required: true, location_name: "GeneratedTemplateName"))
    GetGeneratedTemplateInput.struct_class = Types::GetGeneratedTemplateInput

    GetGeneratedTemplateOutput.add_member(:status, Shapes::ShapeRef.new(shape: GeneratedTemplateStatus, location_name: "Status"))
    GetGeneratedTemplateOutput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    GetGeneratedTemplateOutput.struct_class = Types::GetGeneratedTemplateOutput

    GetStackPolicyInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    GetStackPolicyInput.struct_class = Types::GetStackPolicyInput

    GetStackPolicyOutput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
    GetStackPolicyOutput.struct_class = Types::GetStackPolicyOutput

    GetTemplateInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    GetTemplateInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, location_name: "ChangeSetName"))
    GetTemplateInput.add_member(:template_stage, Shapes::ShapeRef.new(shape: TemplateStage, location_name: "TemplateStage"))
    GetTemplateInput.struct_class = Types::GetTemplateInput

    GetTemplateOutput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    GetTemplateOutput.add_member(:stages_available, Shapes::ShapeRef.new(shape: StageList, location_name: "StagesAvailable"))
    GetTemplateOutput.struct_class = Types::GetTemplateOutput

    GetTemplateSummaryInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    GetTemplateSummaryInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    GetTemplateSummaryInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    GetTemplateSummaryInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetNameOrId, location_name: "StackSetName"))
    GetTemplateSummaryInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    GetTemplateSummaryInput.add_member(:template_summary_config, Shapes::ShapeRef.new(shape: TemplateSummaryConfig, location_name: "TemplateSummaryConfig"))
    GetTemplateSummaryInput.struct_class = Types::GetTemplateSummaryInput

    GetTemplateSummaryOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterDeclarations, location_name: "Parameters"))
    GetTemplateSummaryOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetTemplateSummaryOutput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    GetTemplateSummaryOutput.add_member(:capabilities_reason, Shapes::ShapeRef.new(shape: CapabilitiesReason, location_name: "CapabilitiesReason"))
    GetTemplateSummaryOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    GetTemplateSummaryOutput.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
    GetTemplateSummaryOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    GetTemplateSummaryOutput.add_member(:declared_transforms, Shapes::ShapeRef.new(shape: TransformsList, location_name: "DeclaredTransforms"))
    GetTemplateSummaryOutput.add_member(:resource_identifier_summaries, Shapes::ShapeRef.new(shape: ResourceIdentifierSummaries, location_name: "ResourceIdentifierSummaries"))
    GetTemplateSummaryOutput.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    GetTemplateSummaryOutput.struct_class = Types::GetTemplateSummaryOutput

    HookResultNotFoundException.struct_class = Types::HookResultNotFoundException

    HookResultSummaries.member = Shapes::ShapeRef.new(shape: HookResultSummary)

    HookResultSummary.add_member(:invocation_point, Shapes::ShapeRef.new(shape: HookInvocationPoint, location_name: "InvocationPoint"))
    HookResultSummary.add_member(:failure_mode, Shapes::ShapeRef.new(shape: HookFailureMode, location_name: "FailureMode"))
    HookResultSummary.add_member(:type_name, Shapes::ShapeRef.new(shape: HookTypeName, location_name: "TypeName"))
    HookResultSummary.add_member(:type_version_id, Shapes::ShapeRef.new(shape: HookTypeVersionId, location_name: "TypeVersionId"))
    HookResultSummary.add_member(:type_configuration_version_id, Shapes::ShapeRef.new(shape: HookTypeConfigurationVersionId, location_name: "TypeConfigurationVersionId"))
    HookResultSummary.add_member(:status, Shapes::ShapeRef.new(shape: HookStatus, location_name: "Status"))
    HookResultSummary.add_member(:hook_status_reason, Shapes::ShapeRef.new(shape: HookStatusReason, location_name: "HookStatusReason"))
    HookResultSummary.struct_class = Types::HookResultSummary

    ImportStacksToStackSetInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetNameOrId, required: true, location_name: "StackSetName"))
    ImportStacksToStackSetInput.add_member(:stack_ids, Shapes::ShapeRef.new(shape: StackIdList, location_name: "StackIds"))
    ImportStacksToStackSetInput.add_member(:stack_ids_url, Shapes::ShapeRef.new(shape: StackIdsUrl, location_name: "StackIdsUrl"))
    ImportStacksToStackSetInput.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "OrganizationalUnitIds"))
    ImportStacksToStackSetInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    ImportStacksToStackSetInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken" => true}))
    ImportStacksToStackSetInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    ImportStacksToStackSetInput.struct_class = Types::ImportStacksToStackSetInput

    ImportStacksToStackSetOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    ImportStacksToStackSetOutput.struct_class = Types::ImportStacksToStackSetOutput

    Imports.member = Shapes::ShapeRef.new(shape: StackName)

    InsufficientCapabilitiesException.struct_class = Types::InsufficientCapabilitiesException

    InvalidChangeSetStatusException.struct_class = Types::InvalidChangeSetStatusException

    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidStateTransitionException.struct_class = Types::InvalidStateTransitionException

    JazzLogicalResourceIds.member = Shapes::ShapeRef.new(shape: LogicalResourceId)

    JazzResourceIdentifierProperties.key = Shapes::ShapeRef.new(shape: JazzResourceIdentifierPropertyKey)
    JazzResourceIdentifierProperties.value = Shapes::ShapeRef.new(shape: JazzResourceIdentifierPropertyValue)

    LimitExceededException.struct_class = Types::LimitExceededException

    ListChangeSetsInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    ListChangeSetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChangeSetsInput.struct_class = Types::ListChangeSetsInput

    ListChangeSetsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: ChangeSetSummaries, location_name: "Summaries"))
    ListChangeSetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChangeSetsOutput.struct_class = Types::ListChangeSetsOutput

    ListExportsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExportsInput.struct_class = Types::ListExportsInput

    ListExportsOutput.add_member(:exports, Shapes::ShapeRef.new(shape: Exports, location_name: "Exports"))
    ListExportsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExportsOutput.struct_class = Types::ListExportsOutput

    ListGeneratedTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGeneratedTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGeneratedTemplatesInput.struct_class = Types::ListGeneratedTemplatesInput

    ListGeneratedTemplatesOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: TemplateSummaries, location_name: "Summaries"))
    ListGeneratedTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGeneratedTemplatesOutput.struct_class = Types::ListGeneratedTemplatesOutput

    ListHookResultsInput.add_member(:target_type, Shapes::ShapeRef.new(shape: ListHookResultsTargetType, required: true, location_name: "TargetType"))
    ListHookResultsInput.add_member(:target_id, Shapes::ShapeRef.new(shape: HookResultId, required: true, location_name: "TargetId"))
    ListHookResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHookResultsInput.struct_class = Types::ListHookResultsInput

    ListHookResultsOutput.add_member(:target_type, Shapes::ShapeRef.new(shape: ListHookResultsTargetType, location_name: "TargetType"))
    ListHookResultsOutput.add_member(:target_id, Shapes::ShapeRef.new(shape: HookResultId, location_name: "TargetId"))
    ListHookResultsOutput.add_member(:hook_results, Shapes::ShapeRef.new(shape: HookResultSummaries, location_name: "HookResults"))
    ListHookResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHookResultsOutput.struct_class = Types::ListHookResultsOutput

    ListImportsInput.add_member(:export_name, Shapes::ShapeRef.new(shape: ExportName, required: true, location_name: "ExportName"))
    ListImportsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImportsInput.struct_class = Types::ListImportsInput

    ListImportsOutput.add_member(:imports, Shapes::ShapeRef.new(shape: Imports, location_name: "Imports"))
    ListImportsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImportsOutput.struct_class = Types::ListImportsOutput

    ListResourceScanRelatedResourcesInput.add_member(:resource_scan_id, Shapes::ShapeRef.new(shape: ResourceScanId, required: true, location_name: "ResourceScanId"))
    ListResourceScanRelatedResourcesInput.add_member(:resources, Shapes::ShapeRef.new(shape: ScannedResourceIdentifiers, required: true, location_name: "Resources"))
    ListResourceScanRelatedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceScanRelatedResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedMaxResults, location_name: "MaxResults"))
    ListResourceScanRelatedResourcesInput.struct_class = Types::ListResourceScanRelatedResourcesInput

    ListResourceScanRelatedResourcesOutput.add_member(:related_resources, Shapes::ShapeRef.new(shape: RelatedResources, location_name: "RelatedResources"))
    ListResourceScanRelatedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceScanRelatedResourcesOutput.struct_class = Types::ListResourceScanRelatedResourcesOutput

    ListResourceScanResourcesInput.add_member(:resource_scan_id, Shapes::ShapeRef.new(shape: ResourceScanId, required: true, location_name: "ResourceScanId"))
    ListResourceScanResourcesInput.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    ListResourceScanResourcesInput.add_member(:resource_type_prefix, Shapes::ShapeRef.new(shape: ResourceTypePrefix, location_name: "ResourceTypePrefix"))
    ListResourceScanResourcesInput.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    ListResourceScanResourcesInput.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, location_name: "TagValue"))
    ListResourceScanResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceScanResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ResourceScannerMaxResults, location_name: "MaxResults"))
    ListResourceScanResourcesInput.struct_class = Types::ListResourceScanResourcesInput

    ListResourceScanResourcesOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ScannedResources, location_name: "Resources"))
    ListResourceScanResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceScanResourcesOutput.struct_class = Types::ListResourceScanResourcesOutput

    ListResourceScansInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceScansInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ResourceScannerMaxResults, location_name: "MaxResults"))
    ListResourceScansInput.add_member(:scan_type_filter, Shapes::ShapeRef.new(shape: ScanType, location_name: "ScanTypeFilter"))
    ListResourceScansInput.struct_class = Types::ListResourceScansInput

    ListResourceScansOutput.add_member(:resource_scan_summaries, Shapes::ShapeRef.new(shape: ResourceScanSummaries, location_name: "ResourceScanSummaries"))
    ListResourceScansOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceScansOutput.struct_class = Types::ListResourceScansOutput

    ListStackInstanceResourceDriftsInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetNameOrId, required: true, location_name: "StackSetName"))
    ListStackInstanceResourceDriftsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackInstanceResourceDriftsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackInstanceResourceDriftsInput.add_member(:stack_instance_resource_drift_statuses, Shapes::ShapeRef.new(shape: StackResourceDriftStatusFilters, location_name: "StackInstanceResourceDriftStatuses"))
    ListStackInstanceResourceDriftsInput.add_member(:stack_instance_account, Shapes::ShapeRef.new(shape: Account, required: true, location_name: "StackInstanceAccount"))
    ListStackInstanceResourceDriftsInput.add_member(:stack_instance_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "StackInstanceRegion"))
    ListStackInstanceResourceDriftsInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "OperationId"))
    ListStackInstanceResourceDriftsInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    ListStackInstanceResourceDriftsInput.struct_class = Types::ListStackInstanceResourceDriftsInput

    ListStackInstanceResourceDriftsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackInstanceResourceDriftsSummaries, location_name: "Summaries"))
    ListStackInstanceResourceDriftsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackInstanceResourceDriftsOutput.struct_class = Types::ListStackInstanceResourceDriftsOutput

    ListStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    ListStackInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackInstancesInput.add_member(:filters, Shapes::ShapeRef.new(shape: StackInstanceFilters, location_name: "Filters"))
    ListStackInstancesInput.add_member(:stack_instance_account, Shapes::ShapeRef.new(shape: Account, location_name: "StackInstanceAccount"))
    ListStackInstancesInput.add_member(:stack_instance_region, Shapes::ShapeRef.new(shape: Region, location_name: "StackInstanceRegion"))
    ListStackInstancesInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    ListStackInstancesInput.struct_class = Types::ListStackInstancesInput

    ListStackInstancesOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackInstanceSummaries, location_name: "Summaries"))
    ListStackInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackInstancesOutput.struct_class = Types::ListStackInstancesOutput

    ListStackRefactorActionsInput.add_member(:stack_refactor_id, Shapes::ShapeRef.new(shape: StackRefactorId, required: true, location_name: "StackRefactorId"))
    ListStackRefactorActionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackRefactorActionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackRefactorActionsInput.struct_class = Types::ListStackRefactorActionsInput

    ListStackRefactorActionsOutput.add_member(:stack_refactor_actions, Shapes::ShapeRef.new(shape: StackRefactorActions, required: true, location_name: "StackRefactorActions"))
    ListStackRefactorActionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackRefactorActionsOutput.struct_class = Types::ListStackRefactorActionsOutput

    ListStackRefactorsInput.add_member(:execution_status_filter, Shapes::ShapeRef.new(shape: StackRefactorExecutionStatusFilter, location_name: "ExecutionStatusFilter"))
    ListStackRefactorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackRefactorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackRefactorsInput.struct_class = Types::ListStackRefactorsInput

    ListStackRefactorsOutput.add_member(:stack_refactor_summaries, Shapes::ShapeRef.new(shape: StackRefactorSummaries, required: true, location_name: "StackRefactorSummaries"))
    ListStackRefactorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackRefactorsOutput.struct_class = Types::ListStackRefactorsOutput

    ListStackResourcesInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    ListStackResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackResourcesInput.struct_class = Types::ListStackResourcesInput

    ListStackResourcesOutput.add_member(:stack_resource_summaries, Shapes::ShapeRef.new(shape: StackResourceSummaries, location_name: "StackResourceSummaries"))
    ListStackResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackResourcesOutput.struct_class = Types::ListStackResourcesOutput

    ListStackSetAutoDeploymentTargetsInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetNameOrId, required: true, location_name: "StackSetName"))
    ListStackSetAutoDeploymentTargetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetAutoDeploymentTargetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackSetAutoDeploymentTargetsInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    ListStackSetAutoDeploymentTargetsInput.struct_class = Types::ListStackSetAutoDeploymentTargetsInput

    ListStackSetAutoDeploymentTargetsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackSetAutoDeploymentTargetSummaries, location_name: "Summaries"))
    ListStackSetAutoDeploymentTargetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetAutoDeploymentTargetsOutput.struct_class = Types::ListStackSetAutoDeploymentTargetsOutput

    ListStackSetOperationResultsInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    ListStackSetOperationResultsInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "OperationId"))
    ListStackSetOperationResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackSetOperationResultsInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    ListStackSetOperationResultsInput.add_member(:filters, Shapes::ShapeRef.new(shape: OperationResultFilters, location_name: "Filters"))
    ListStackSetOperationResultsInput.struct_class = Types::ListStackSetOperationResultsInput

    ListStackSetOperationResultsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackSetOperationResultSummaries, location_name: "Summaries"))
    ListStackSetOperationResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationResultsOutput.struct_class = Types::ListStackSetOperationResultsOutput

    ListStackSetOperationsInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    ListStackSetOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackSetOperationsInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    ListStackSetOperationsInput.struct_class = Types::ListStackSetOperationsInput

    ListStackSetOperationsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackSetOperationSummaries, location_name: "Summaries"))
    ListStackSetOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationsOutput.struct_class = Types::ListStackSetOperationsOutput

    ListStackSetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackSetsInput.add_member(:status, Shapes::ShapeRef.new(shape: StackSetStatus, location_name: "Status"))
    ListStackSetsInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    ListStackSetsInput.struct_class = Types::ListStackSetsInput

    ListStackSetsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackSetSummaries, location_name: "Summaries"))
    ListStackSetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetsOutput.struct_class = Types::ListStackSetsOutput

    ListStacksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStacksInput.add_member(:stack_status_filter, Shapes::ShapeRef.new(shape: StackStatusFilter, location_name: "StackStatusFilter"))
    ListStacksInput.struct_class = Types::ListStacksInput

    ListStacksOutput.add_member(:stack_summaries, Shapes::ShapeRef.new(shape: StackSummaries, location_name: "StackSummaries"))
    ListStacksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStacksOutput.struct_class = Types::ListStacksOutput

    ListTypeRegistrationsInput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    ListTypeRegistrationsInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    ListTypeRegistrationsInput.add_member(:type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeArn"))
    ListTypeRegistrationsInput.add_member(:registration_status_filter, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "RegistrationStatusFilter"))
    ListTypeRegistrationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTypeRegistrationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypeRegistrationsInput.struct_class = Types::ListTypeRegistrationsInput

    ListTypeRegistrationsOutput.add_member(:registration_token_list, Shapes::ShapeRef.new(shape: RegistrationTokenList, location_name: "RegistrationTokenList"))
    ListTypeRegistrationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypeRegistrationsOutput.struct_class = Types::ListTypeRegistrationsOutput

    ListTypeVersionsInput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    ListTypeVersionsInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    ListTypeVersionsInput.add_member(:arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "Arn"))
    ListTypeVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTypeVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypeVersionsInput.add_member(:deprecated_status, Shapes::ShapeRef.new(shape: DeprecatedStatus, location_name: "DeprecatedStatus"))
    ListTypeVersionsInput.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    ListTypeVersionsInput.struct_class = Types::ListTypeVersionsInput

    ListTypeVersionsOutput.add_member(:type_version_summaries, Shapes::ShapeRef.new(shape: TypeVersionSummaries, location_name: "TypeVersionSummaries"))
    ListTypeVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypeVersionsOutput.struct_class = Types::ListTypeVersionsOutput

    ListTypesInput.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ListTypesInput.add_member(:provisioning_type, Shapes::ShapeRef.new(shape: ProvisioningType, location_name: "ProvisioningType"))
    ListTypesInput.add_member(:deprecated_status, Shapes::ShapeRef.new(shape: DeprecatedStatus, location_name: "DeprecatedStatus"))
    ListTypesInput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    ListTypesInput.add_member(:filters, Shapes::ShapeRef.new(shape: TypeFilters, location_name: "Filters"))
    ListTypesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypesInput.struct_class = Types::ListTypesInput

    ListTypesOutput.add_member(:type_summaries, Shapes::ShapeRef.new(shape: TypeSummaries, location_name: "TypeSummaries"))
    ListTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypesOutput.struct_class = Types::ListTypesOutput

    LoggingConfig.add_member(:log_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "LogRoleArn"))
    LoggingConfig.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "LogGroupName"))
    LoggingConfig.struct_class = Types::LoggingConfig

    LogicalResourceIds.member = Shapes::ShapeRef.new(shape: LogicalResourceId)

    ManagedExecution.add_member(:active, Shapes::ShapeRef.new(shape: ManagedExecutionNullable, location_name: "Active"))
    ManagedExecution.struct_class = Types::ManagedExecution

    ModuleInfo.add_member(:type_hierarchy, Shapes::ShapeRef.new(shape: TypeHierarchy, location_name: "TypeHierarchy"))
    ModuleInfo.add_member(:logical_id_hierarchy, Shapes::ShapeRef.new(shape: LogicalIdHierarchy, location_name: "LogicalIdHierarchy"))
    ModuleInfo.struct_class = Types::ModuleInfo

    NameAlreadyExistsException.struct_class = Types::NameAlreadyExistsException

    NotificationARNs.member = Shapes::ShapeRef.new(shape: NotificationARN)

    OperationIdAlreadyExistsException.struct_class = Types::OperationIdAlreadyExistsException

    OperationInProgressException.struct_class = Types::OperationInProgressException

    OperationNotFoundException.struct_class = Types::OperationNotFoundException

    OperationResultFilter.add_member(:name, Shapes::ShapeRef.new(shape: OperationResultFilterName, location_name: "Name"))
    OperationResultFilter.add_member(:values, Shapes::ShapeRef.new(shape: OperationResultFilterValues, location_name: "Values"))
    OperationResultFilter.struct_class = Types::OperationResultFilter

    OperationResultFilters.member = Shapes::ShapeRef.new(shape: OperationResultFilter)

    OperationStatusCheckFailedException.struct_class = Types::OperationStatusCheckFailedException

    OrganizationalUnitIdList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    Output.add_member(:output_key, Shapes::ShapeRef.new(shape: OutputKey, location_name: "OutputKey"))
    Output.add_member(:output_value, Shapes::ShapeRef.new(shape: OutputValue, location_name: "OutputValue"))
    Output.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Output.add_member(:export_name, Shapes::ShapeRef.new(shape: ExportName, location_name: "ExportName"))
    Output.struct_class = Types::Output

    Outputs.member = Shapes::ShapeRef.new(shape: Output)

    Parameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "ParameterValue"))
    Parameter.add_member(:use_previous_value, Shapes::ShapeRef.new(shape: UsePreviousValue, location_name: "UsePreviousValue"))
    Parameter.add_member(:resolved_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "ResolvedValue"))
    Parameter.struct_class = Types::Parameter

    ParameterConstraints.add_member(:allowed_values, Shapes::ShapeRef.new(shape: AllowedValues, location_name: "AllowedValues"))
    ParameterConstraints.struct_class = Types::ParameterConstraints

    ParameterDeclaration.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
    ParameterDeclaration.add_member(:default_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "DefaultValue"))
    ParameterDeclaration.add_member(:parameter_type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "ParameterType"))
    ParameterDeclaration.add_member(:no_echo, Shapes::ShapeRef.new(shape: NoEcho, location_name: "NoEcho"))
    ParameterDeclaration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ParameterDeclaration.add_member(:parameter_constraints, Shapes::ShapeRef.new(shape: ParameterConstraints, location_name: "ParameterConstraints"))
    ParameterDeclaration.struct_class = Types::ParameterDeclaration

    ParameterDeclarations.member = Shapes::ShapeRef.new(shape: ParameterDeclaration)

    Parameters.member = Shapes::ShapeRef.new(shape: Parameter)

    PhysicalResourceIdContext.member = Shapes::ShapeRef.new(shape: PhysicalResourceIdContextKeyValuePair)

    PhysicalResourceIdContextKeyValuePair.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    PhysicalResourceIdContextKeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "Value"))
    PhysicalResourceIdContextKeyValuePair.struct_class = Types::PhysicalResourceIdContextKeyValuePair

    PropertyDifference.add_member(:property_path, Shapes::ShapeRef.new(shape: PropertyPath, required: true, location_name: "PropertyPath"))
    PropertyDifference.add_member(:expected_value, Shapes::ShapeRef.new(shape: PropertyValue, required: true, location_name: "ExpectedValue"))
    PropertyDifference.add_member(:actual_value, Shapes::ShapeRef.new(shape: PropertyValue, required: true, location_name: "ActualValue"))
    PropertyDifference.add_member(:difference_type, Shapes::ShapeRef.new(shape: DifferenceType, required: true, location_name: "DifferenceType"))
    PropertyDifference.struct_class = Types::PropertyDifference

    PropertyDifferences.member = Shapes::ShapeRef.new(shape: PropertyDifference)

    PublishTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: ThirdPartyType, location_name: "Type"))
    PublishTypeInput.add_member(:arn, Shapes::ShapeRef.new(shape: PrivateTypeArn, location_name: "Arn"))
    PublishTypeInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    PublishTypeInput.add_member(:public_version_number, Shapes::ShapeRef.new(shape: PublicVersionNumber, location_name: "PublicVersionNumber"))
    PublishTypeInput.struct_class = Types::PublishTypeInput

    PublishTypeOutput.add_member(:public_type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "PublicTypeArn"))
    PublishTypeOutput.struct_class = Types::PublishTypeOutput

    RecordHandlerProgressInput.add_member(:bearer_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "BearerToken"))
    RecordHandlerProgressInput.add_member(:operation_status, Shapes::ShapeRef.new(shape: OperationStatus, required: true, location_name: "OperationStatus"))
    RecordHandlerProgressInput.add_member(:current_operation_status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "CurrentOperationStatus"))
    RecordHandlerProgressInput.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    RecordHandlerProgressInput.add_member(:error_code, Shapes::ShapeRef.new(shape: HandlerErrorCode, location_name: "ErrorCode"))
    RecordHandlerProgressInput.add_member(:resource_model, Shapes::ShapeRef.new(shape: ResourceModel, location_name: "ResourceModel"))
    RecordHandlerProgressInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    RecordHandlerProgressInput.struct_class = Types::RecordHandlerProgressInput

    RecordHandlerProgressOutput.struct_class = Types::RecordHandlerProgressOutput

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    RegisterPublisherInput.add_member(:accept_terms_and_conditions, Shapes::ShapeRef.new(shape: AcceptTermsAndConditions, location_name: "AcceptTermsAndConditions"))
    RegisterPublisherInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    RegisterPublisherInput.struct_class = Types::RegisterPublisherInput

    RegisterPublisherOutput.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    RegisterPublisherOutput.struct_class = Types::RegisterPublisherOutput

    RegisterTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    RegisterTypeInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "TypeName"))
    RegisterTypeInput.add_member(:schema_handler_package, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "SchemaHandlerPackage"))
    RegisterTypeInput.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "LoggingConfig"))
    RegisterTypeInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRoleArn"))
    RegisterTypeInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: RequestToken, location_name: "ClientRequestToken"))
    RegisterTypeInput.struct_class = Types::RegisterTypeInput

    RegisterTypeOutput.add_member(:registration_token, Shapes::ShapeRef.new(shape: RegistrationToken, location_name: "RegistrationToken"))
    RegisterTypeOutput.struct_class = Types::RegisterTypeOutput

    RegistrationTokenList.member = Shapes::ShapeRef.new(shape: RegistrationToken)

    RelatedResources.member = Shapes::ShapeRef.new(shape: ScannedResource)

    RequiredActivatedType.add_member(:type_name_alias, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeNameAlias"))
    RequiredActivatedType.add_member(:original_type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "OriginalTypeName"))
    RequiredActivatedType.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    RequiredActivatedType.add_member(:supported_major_versions, Shapes::ShapeRef.new(shape: SupportedMajorVersions, location_name: "SupportedMajorVersions"))
    RequiredActivatedType.struct_class = Types::RequiredActivatedType

    RequiredActivatedTypes.member = Shapes::ShapeRef.new(shape: RequiredActivatedType)

    ResourceChange.add_member(:policy_action, Shapes::ShapeRef.new(shape: PolicyAction, location_name: "PolicyAction"))
    ResourceChange.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action"))
    ResourceChange.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    ResourceChange.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    ResourceChange.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceChange.add_member(:replacement, Shapes::ShapeRef.new(shape: Replacement, location_name: "Replacement"))
    ResourceChange.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    ResourceChange.add_member(:details, Shapes::ShapeRef.new(shape: ResourceChangeDetails, location_name: "Details"))
    ResourceChange.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "ChangeSetId"))
    ResourceChange.add_member(:module_info, Shapes::ShapeRef.new(shape: ModuleInfo, location_name: "ModuleInfo"))
    ResourceChange.add_member(:before_context, Shapes::ShapeRef.new(shape: BeforeContext, location_name: "BeforeContext"))
    ResourceChange.add_member(:after_context, Shapes::ShapeRef.new(shape: AfterContext, location_name: "AfterContext"))
    ResourceChange.struct_class = Types::ResourceChange

    ResourceChangeDetail.add_member(:target, Shapes::ShapeRef.new(shape: ResourceTargetDefinition, location_name: "Target"))
    ResourceChangeDetail.add_member(:evaluation, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "Evaluation"))
    ResourceChangeDetail.add_member(:change_source, Shapes::ShapeRef.new(shape: ChangeSource, location_name: "ChangeSource"))
    ResourceChangeDetail.add_member(:causing_entity, Shapes::ShapeRef.new(shape: CausingEntity, location_name: "CausingEntity"))
    ResourceChangeDetail.struct_class = Types::ResourceChangeDetail

    ResourceChangeDetails.member = Shapes::ShapeRef.new(shape: ResourceChangeDetail)

    ResourceDefinition.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceDefinition.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    ResourceDefinition.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifierProperties, required: true, location_name: "ResourceIdentifier"))
    ResourceDefinition.struct_class = Types::ResourceDefinition

    ResourceDefinitions.member = Shapes::ShapeRef.new(shape: ResourceDefinition)

    ResourceDetail.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceDetail.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    ResourceDetail.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifierProperties, location_name: "ResourceIdentifier"))
    ResourceDetail.add_member(:resource_status, Shapes::ShapeRef.new(shape: GeneratedTemplateResourceStatus, location_name: "ResourceStatus"))
    ResourceDetail.add_member(:resource_status_reason, Shapes::ShapeRef.new(shape: ResourceStatusReason, location_name: "ResourceStatusReason"))
    ResourceDetail.add_member(:warnings, Shapes::ShapeRef.new(shape: WarningDetails, location_name: "Warnings"))
    ResourceDetail.struct_class = Types::ResourceDetail

    ResourceDetails.member = Shapes::ShapeRef.new(shape: ResourceDetail)

    ResourceIdentifierProperties.key = Shapes::ShapeRef.new(shape: ResourceIdentifierPropertyKey)
    ResourceIdentifierProperties.value = Shapes::ShapeRef.new(shape: ResourceIdentifierPropertyValue)

    ResourceIdentifierSummaries.member = Shapes::ShapeRef.new(shape: ResourceIdentifierSummary)

    ResourceIdentifierSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceIdentifierSummary.add_member(:logical_resource_ids, Shapes::ShapeRef.new(shape: LogicalResourceIds, location_name: "LogicalResourceIds"))
    ResourceIdentifierSummary.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifiers, location_name: "ResourceIdentifiers"))
    ResourceIdentifierSummary.struct_class = Types::ResourceIdentifierSummary

    ResourceIdentifiers.member = Shapes::ShapeRef.new(shape: ResourceIdentifierPropertyKey)

    ResourceLocation.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    ResourceLocation.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    ResourceLocation.struct_class = Types::ResourceLocation

    ResourceMapping.add_member(:source, Shapes::ShapeRef.new(shape: ResourceLocation, required: true, location_name: "Source"))
    ResourceMapping.add_member(:destination, Shapes::ShapeRef.new(shape: ResourceLocation, required: true, location_name: "Destination"))
    ResourceMapping.struct_class = Types::ResourceMapping

    ResourceMappings.member = Shapes::ShapeRef.new(shape: ResourceMapping)

    ResourceScanInProgressException.struct_class = Types::ResourceScanInProgressException

    ResourceScanLimitExceededException.struct_class = Types::ResourceScanLimitExceededException

    ResourceScanNotFoundException.struct_class = Types::ResourceScanNotFoundException

    ResourceScanSummaries.member = Shapes::ShapeRef.new(shape: ResourceScanSummary)

    ResourceScanSummary.add_member(:resource_scan_id, Shapes::ShapeRef.new(shape: ResourceScanId, location_name: "ResourceScanId"))
    ResourceScanSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceScanStatus, location_name: "Status"))
    ResourceScanSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: ResourceScanStatusReason, location_name: "StatusReason"))
    ResourceScanSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    ResourceScanSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ResourceScanSummary.add_member(:percentage_completed, Shapes::ShapeRef.new(shape: PercentageCompleted, location_name: "PercentageCompleted"))
    ResourceScanSummary.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, location_name: "ScanType"))
    ResourceScanSummary.struct_class = Types::ResourceScanSummary

    ResourceTargetDefinition.add_member(:attribute, Shapes::ShapeRef.new(shape: ResourceAttribute, location_name: "Attribute"))
    ResourceTargetDefinition.add_member(:name, Shapes::ShapeRef.new(shape: PropertyName, location_name: "Name"))
    ResourceTargetDefinition.add_member(:requires_recreation, Shapes::ShapeRef.new(shape: RequiresRecreation, location_name: "RequiresRecreation"))
    ResourceTargetDefinition.add_member(:path, Shapes::ShapeRef.new(shape: ResourcePropertyPath, location_name: "Path"))
    ResourceTargetDefinition.add_member(:before_value, Shapes::ShapeRef.new(shape: BeforeValue, location_name: "BeforeValue"))
    ResourceTargetDefinition.add_member(:after_value, Shapes::ShapeRef.new(shape: AfterValue, location_name: "AfterValue"))
    ResourceTargetDefinition.add_member(:attribute_change_type, Shapes::ShapeRef.new(shape: AttributeChangeType, location_name: "AttributeChangeType"))
    ResourceTargetDefinition.struct_class = Types::ResourceTargetDefinition

    ResourceToImport.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceToImport.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    ResourceToImport.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifierProperties, required: true, location_name: "ResourceIdentifier"))
    ResourceToImport.struct_class = Types::ResourceToImport

    ResourceTypeFilters.member = Shapes::ShapeRef.new(shape: ResourceTypeFilter)

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourcesToImport.member = Shapes::ShapeRef.new(shape: ResourceToImport)

    ResourcesToSkip.member = Shapes::ShapeRef.new(shape: ResourceToSkip)

    RetainResources.member = Shapes::ShapeRef.new(shape: LogicalResourceId)

    RollbackConfiguration.add_member(:rollback_triggers, Shapes::ShapeRef.new(shape: RollbackTriggers, location_name: "RollbackTriggers"))
    RollbackConfiguration.add_member(:monitoring_time_in_minutes, Shapes::ShapeRef.new(shape: MonitoringTimeInMinutes, location_name: "MonitoringTimeInMinutes"))
    RollbackConfiguration.struct_class = Types::RollbackConfiguration

    RollbackStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    RollbackStackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    RollbackStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    RollbackStackInput.add_member(:retain_except_on_create, Shapes::ShapeRef.new(shape: RetainExceptOnCreate, location_name: "RetainExceptOnCreate"))
    RollbackStackInput.struct_class = Types::RollbackStackInput

    RollbackStackOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    RollbackStackOutput.struct_class = Types::RollbackStackOutput

    RollbackTrigger.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    RollbackTrigger.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    RollbackTrigger.struct_class = Types::RollbackTrigger

    RollbackTriggers.member = Shapes::ShapeRef.new(shape: RollbackTrigger)

    ScanFilter.add_member(:types, Shapes::ShapeRef.new(shape: ResourceTypeFilters, location_name: "Types"))
    ScanFilter.struct_class = Types::ScanFilter

    ScanFilters.member = Shapes::ShapeRef.new(shape: ScanFilter)

    ScannedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ScannedResource.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: JazzResourceIdentifierProperties, location_name: "ResourceIdentifier"))
    ScannedResource.add_member(:managed_by_stack, Shapes::ShapeRef.new(shape: ManagedByStack, location_name: "ManagedByStack"))
    ScannedResource.struct_class = Types::ScannedResource

    ScannedResourceIdentifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ScannedResourceIdentifier.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: JazzResourceIdentifierProperties, required: true, location_name: "ResourceIdentifier"))
    ScannedResourceIdentifier.struct_class = Types::ScannedResourceIdentifier

    ScannedResourceIdentifiers.member = Shapes::ShapeRef.new(shape: ScannedResourceIdentifier)

    ScannedResources.member = Shapes::ShapeRef.new(shape: ScannedResource)

    Scope.member = Shapes::ShapeRef.new(shape: ResourceAttribute)

    SetStackPolicyInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    SetStackPolicyInput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
    SetStackPolicyInput.add_member(:stack_policy_url, Shapes::ShapeRef.new(shape: StackPolicyURL, location_name: "StackPolicyURL"))
    SetStackPolicyInput.struct_class = Types::SetStackPolicyInput

    SetTypeConfigurationInput.add_member(:type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeArn"))
    SetTypeConfigurationInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TypeConfiguration, required: true, location_name: "Configuration"))
    SetTypeConfigurationInput.add_member(:configuration_alias, Shapes::ShapeRef.new(shape: TypeConfigurationAlias, location_name: "ConfigurationAlias"))
    SetTypeConfigurationInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    SetTypeConfigurationInput.add_member(:type, Shapes::ShapeRef.new(shape: ThirdPartyType, location_name: "Type"))
    SetTypeConfigurationInput.struct_class = Types::SetTypeConfigurationInput

    SetTypeConfigurationOutput.add_member(:configuration_arn, Shapes::ShapeRef.new(shape: TypeConfigurationArn, location_name: "ConfigurationArn"))
    SetTypeConfigurationOutput.struct_class = Types::SetTypeConfigurationOutput

    SetTypeDefaultVersionInput.add_member(:arn, Shapes::ShapeRef.new(shape: PrivateTypeArn, location_name: "Arn"))
    SetTypeDefaultVersionInput.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    SetTypeDefaultVersionInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    SetTypeDefaultVersionInput.add_member(:version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "VersionId"))
    SetTypeDefaultVersionInput.struct_class = Types::SetTypeDefaultVersionInput

    SetTypeDefaultVersionOutput.struct_class = Types::SetTypeDefaultVersionOutput

    SignalResourceInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    SignalResourceInput.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    SignalResourceInput.add_member(:unique_id, Shapes::ShapeRef.new(shape: ResourceSignalUniqueId, required: true, location_name: "UniqueId"))
    SignalResourceInput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceSignalStatus, required: true, location_name: "Status"))
    SignalResourceInput.struct_class = Types::SignalResourceInput

    Stack.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    Stack.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    Stack.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "ChangeSetId"))
    Stack.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Stack.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    Stack.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    Stack.add_member(:deletion_time, Shapes::ShapeRef.new(shape: DeletionTime, location_name: "DeletionTime"))
    Stack.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    Stack.add_member(:rollback_configuration, Shapes::ShapeRef.new(shape: RollbackConfiguration, location_name: "RollbackConfiguration"))
    Stack.add_member(:stack_status, Shapes::ShapeRef.new(shape: StackStatus, required: true, location_name: "StackStatus"))
    Stack.add_member(:stack_status_reason, Shapes::ShapeRef.new(shape: StackStatusReason, location_name: "StackStatusReason"))
    Stack.add_member(:disable_rollback, Shapes::ShapeRef.new(shape: DisableRollback, location_name: "DisableRollback"))
    Stack.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
    Stack.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: TimeoutMinutes, location_name: "TimeoutInMinutes"))
    Stack.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    Stack.add_member(:outputs, Shapes::ShapeRef.new(shape: Outputs, location_name: "Outputs"))
    Stack.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    Stack.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    Stack.add_member(:enable_termination_protection, Shapes::ShapeRef.new(shape: EnableTerminationProtection, location_name: "EnableTerminationProtection"))
    Stack.add_member(:parent_id, Shapes::ShapeRef.new(shape: StackId, location_name: "ParentId"))
    Stack.add_member(:root_id, Shapes::ShapeRef.new(shape: StackId, location_name: "RootId"))
    Stack.add_member(:drift_information, Shapes::ShapeRef.new(shape: StackDriftInformation, location_name: "DriftInformation"))
    Stack.add_member(:retain_except_on_create, Shapes::ShapeRef.new(shape: RetainExceptOnCreate, location_name: "RetainExceptOnCreate"))
    Stack.add_member(:deletion_mode, Shapes::ShapeRef.new(shape: DeletionMode, location_name: "DeletionMode"))
    Stack.add_member(:detailed_status, Shapes::ShapeRef.new(shape: DetailedStatus, location_name: "DetailedStatus"))
    Stack.struct_class = Types::Stack

    StackDefinition.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    StackDefinition.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    StackDefinition.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    StackDefinition.struct_class = Types::StackDefinition

    StackDefinitions.member = Shapes::ShapeRef.new(shape: StackDefinition)

    StackDriftInformation.add_member(:stack_drift_status, Shapes::ShapeRef.new(shape: StackDriftStatus, required: true, location_name: "StackDriftStatus"))
    StackDriftInformation.add_member(:last_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastCheckTimestamp"))
    StackDriftInformation.struct_class = Types::StackDriftInformation

    StackDriftInformationSummary.add_member(:stack_drift_status, Shapes::ShapeRef.new(shape: StackDriftStatus, required: true, location_name: "StackDriftStatus"))
    StackDriftInformationSummary.add_member(:last_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastCheckTimestamp"))
    StackDriftInformationSummary.struct_class = Types::StackDriftInformationSummary

    StackEvent.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, required: true, location_name: "StackId"))
    StackEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "EventId"))
    StackEvent.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    StackEvent.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    StackEvent.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackEvent.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    StackEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    StackEvent.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "ResourceStatus"))
    StackEvent.add_member(:resource_status_reason, Shapes::ShapeRef.new(shape: ResourceStatusReason, location_name: "ResourceStatusReason"))
    StackEvent.add_member(:resource_properties, Shapes::ShapeRef.new(shape: ResourceProperties, location_name: "ResourceProperties"))
    StackEvent.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StackEvent.add_member(:hook_type, Shapes::ShapeRef.new(shape: HookType, location_name: "HookType"))
    StackEvent.add_member(:hook_status, Shapes::ShapeRef.new(shape: HookStatus, location_name: "HookStatus"))
    StackEvent.add_member(:hook_status_reason, Shapes::ShapeRef.new(shape: HookStatusReason, location_name: "HookStatusReason"))
    StackEvent.add_member(:hook_invocation_point, Shapes::ShapeRef.new(shape: HookInvocationPoint, location_name: "HookInvocationPoint"))
    StackEvent.add_member(:hook_failure_mode, Shapes::ShapeRef.new(shape: HookFailureMode, location_name: "HookFailureMode"))
    StackEvent.add_member(:detailed_status, Shapes::ShapeRef.new(shape: DetailedStatus, location_name: "DetailedStatus"))
    StackEvent.struct_class = Types::StackEvent

    StackEvents.member = Shapes::ShapeRef.new(shape: StackEvent)

    StackIdList.member = Shapes::ShapeRef.new(shape: StackId)

    StackIds.member = Shapes::ShapeRef.new(shape: StackId)

    StackInstance.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackInstance.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    StackInstance.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    StackInstance.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackInstance.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: Parameters, location_name: "ParameterOverrides"))
    StackInstance.add_member(:status, Shapes::ShapeRef.new(shape: StackInstanceStatus, location_name: "Status"))
    StackInstance.add_member(:stack_instance_status, Shapes::ShapeRef.new(shape: StackInstanceComprehensiveStatus, location_name: "StackInstanceStatus"))
    StackInstance.add_member(:status_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "StatusReason"))
    StackInstance.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "OrganizationalUnitId"))
    StackInstance.add_member(:drift_status, Shapes::ShapeRef.new(shape: StackDriftStatus, location_name: "DriftStatus"))
    StackInstance.add_member(:last_drift_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastDriftCheckTimestamp"))
    StackInstance.add_member(:last_operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "LastOperationId"))
    StackInstance.struct_class = Types::StackInstance

    StackInstanceComprehensiveStatus.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StackInstanceDetailedStatus, location_name: "DetailedStatus"))
    StackInstanceComprehensiveStatus.struct_class = Types::StackInstanceComprehensiveStatus

    StackInstanceFilter.add_member(:name, Shapes::ShapeRef.new(shape: StackInstanceFilterName, location_name: "Name"))
    StackInstanceFilter.add_member(:values, Shapes::ShapeRef.new(shape: StackInstanceFilterValues, location_name: "Values"))
    StackInstanceFilter.struct_class = Types::StackInstanceFilter

    StackInstanceFilters.member = Shapes::ShapeRef.new(shape: StackInstanceFilter)

    StackInstanceNotFoundException.struct_class = Types::StackInstanceNotFoundException

    StackInstanceResourceDriftsSummaries.member = Shapes::ShapeRef.new(shape: StackInstanceResourceDriftsSummary)

    StackInstanceResourceDriftsSummary.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, required: true, location_name: "StackId"))
    StackInstanceResourceDriftsSummary.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    StackInstanceResourceDriftsSummary.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackInstanceResourceDriftsSummary.add_member(:physical_resource_id_context, Shapes::ShapeRef.new(shape: PhysicalResourceIdContext, location_name: "PhysicalResourceIdContext"))
    StackInstanceResourceDriftsSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    StackInstanceResourceDriftsSummary.add_member(:property_differences, Shapes::ShapeRef.new(shape: PropertyDifferences, location_name: "PropertyDifferences"))
    StackInstanceResourceDriftsSummary.add_member(:stack_resource_drift_status, Shapes::ShapeRef.new(shape: StackResourceDriftStatus, required: true, location_name: "StackResourceDriftStatus"))
    StackInstanceResourceDriftsSummary.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    StackInstanceResourceDriftsSummary.struct_class = Types::StackInstanceResourceDriftsSummary

    StackInstanceSummaries.member = Shapes::ShapeRef.new(shape: StackInstanceSummary)

    StackInstanceSummary.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackInstanceSummary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    StackInstanceSummary.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    StackInstanceSummary.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackInstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackInstanceStatus, location_name: "Status"))
    StackInstanceSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "StatusReason"))
    StackInstanceSummary.add_member(:stack_instance_status, Shapes::ShapeRef.new(shape: StackInstanceComprehensiveStatus, location_name: "StackInstanceStatus"))
    StackInstanceSummary.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "OrganizationalUnitId"))
    StackInstanceSummary.add_member(:drift_status, Shapes::ShapeRef.new(shape: StackDriftStatus, location_name: "DriftStatus"))
    StackInstanceSummary.add_member(:last_drift_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastDriftCheckTimestamp"))
    StackInstanceSummary.add_member(:last_operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "LastOperationId"))
    StackInstanceSummary.struct_class = Types::StackInstanceSummary

    StackNotFoundException.struct_class = Types::StackNotFoundException

    StackRefactorAction.add_member(:action, Shapes::ShapeRef.new(shape: StackRefactorActionType, location_name: "Action"))
    StackRefactorAction.add_member(:entity, Shapes::ShapeRef.new(shape: StackRefactorActionEntity, location_name: "Entity"))
    StackRefactorAction.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackRefactorAction.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: StackRefactorResourceIdentifier, location_name: "ResourceIdentifier"))
    StackRefactorAction.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StackRefactorAction.add_member(:detection, Shapes::ShapeRef.new(shape: StackRefactorDetection, location_name: "Detection"))
    StackRefactorAction.add_member(:detection_reason, Shapes::ShapeRef.new(shape: DetectionReason, location_name: "DetectionReason"))
    StackRefactorAction.add_member(:tag_resources, Shapes::ShapeRef.new(shape: StackRefactorTagResources, location_name: "TagResources"))
    StackRefactorAction.add_member(:untag_resources, Shapes::ShapeRef.new(shape: StackRefactorUntagResources, location_name: "UntagResources"))
    StackRefactorAction.add_member(:resource_mapping, Shapes::ShapeRef.new(shape: ResourceMapping, location_name: "ResourceMapping"))
    StackRefactorAction.struct_class = Types::StackRefactorAction

    StackRefactorActions.member = Shapes::ShapeRef.new(shape: StackRefactorAction)

    StackRefactorExecutionStatusFilter.member = Shapes::ShapeRef.new(shape: StackRefactorExecutionStatus)

    StackRefactorNotFoundException.struct_class = Types::StackRefactorNotFoundException

    StackRefactorSummaries.member = Shapes::ShapeRef.new(shape: StackRefactorSummary)

    StackRefactorSummary.add_member(:stack_refactor_id, Shapes::ShapeRef.new(shape: StackRefactorId, location_name: "StackRefactorId"))
    StackRefactorSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StackRefactorSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: StackRefactorExecutionStatus, location_name: "ExecutionStatus"))
    StackRefactorSummary.add_member(:execution_status_reason, Shapes::ShapeRef.new(shape: ExecutionStatusReason, location_name: "ExecutionStatusReason"))
    StackRefactorSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackRefactorStatus, location_name: "Status"))
    StackRefactorSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: StackRefactorStatusReason, location_name: "StatusReason"))
    StackRefactorSummary.struct_class = Types::StackRefactorSummary

    StackRefactorTagResources.member = Shapes::ShapeRef.new(shape: Tag)

    StackRefactorUntagResources.member = Shapes::ShapeRef.new(shape: TagKey)

    StackResource.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    StackResource.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackResource.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    StackResource.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    StackResource.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    StackResource.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "ResourceStatus"))
    StackResource.add_member(:resource_status_reason, Shapes::ShapeRef.new(shape: ResourceStatusReason, location_name: "ResourceStatusReason"))
    StackResource.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StackResource.add_member(:drift_information, Shapes::ShapeRef.new(shape: StackResourceDriftInformation, location_name: "DriftInformation"))
    StackResource.add_member(:module_info, Shapes::ShapeRef.new(shape: ModuleInfo, location_name: "ModuleInfo"))
    StackResource.struct_class = Types::StackResource

    StackResourceDetail.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    StackResourceDetail.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackResourceDetail.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    StackResourceDetail.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackResourceDetail.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    StackResourceDetail.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTimestamp"))
    StackResourceDetail.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "ResourceStatus"))
    StackResourceDetail.add_member(:resource_status_reason, Shapes::ShapeRef.new(shape: ResourceStatusReason, location_name: "ResourceStatusReason"))
    StackResourceDetail.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StackResourceDetail.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    StackResourceDetail.add_member(:drift_information, Shapes::ShapeRef.new(shape: StackResourceDriftInformation, location_name: "DriftInformation"))
    StackResourceDetail.add_member(:module_info, Shapes::ShapeRef.new(shape: ModuleInfo, location_name: "ModuleInfo"))
    StackResourceDetail.struct_class = Types::StackResourceDetail

    StackResourceDrift.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, required: true, location_name: "StackId"))
    StackResourceDrift.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    StackResourceDrift.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackResourceDrift.add_member(:physical_resource_id_context, Shapes::ShapeRef.new(shape: PhysicalResourceIdContext, location_name: "PhysicalResourceIdContext"))
    StackResourceDrift.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    StackResourceDrift.add_member(:expected_properties, Shapes::ShapeRef.new(shape: Properties, location_name: "ExpectedProperties"))
    StackResourceDrift.add_member(:actual_properties, Shapes::ShapeRef.new(shape: Properties, location_name: "ActualProperties"))
    StackResourceDrift.add_member(:property_differences, Shapes::ShapeRef.new(shape: PropertyDifferences, location_name: "PropertyDifferences"))
    StackResourceDrift.add_member(:stack_resource_drift_status, Shapes::ShapeRef.new(shape: StackResourceDriftStatus, required: true, location_name: "StackResourceDriftStatus"))
    StackResourceDrift.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    StackResourceDrift.add_member(:module_info, Shapes::ShapeRef.new(shape: ModuleInfo, location_name: "ModuleInfo"))
    StackResourceDrift.add_member(:drift_status_reason, Shapes::ShapeRef.new(shape: StackResourceDriftStatusReason, location_name: "DriftStatusReason"))
    StackResourceDrift.struct_class = Types::StackResourceDrift

    StackResourceDriftInformation.add_member(:stack_resource_drift_status, Shapes::ShapeRef.new(shape: StackResourceDriftStatus, required: true, location_name: "StackResourceDriftStatus"))
    StackResourceDriftInformation.add_member(:last_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastCheckTimestamp"))
    StackResourceDriftInformation.struct_class = Types::StackResourceDriftInformation

    StackResourceDriftInformationSummary.add_member(:stack_resource_drift_status, Shapes::ShapeRef.new(shape: StackResourceDriftStatus, required: true, location_name: "StackResourceDriftStatus"))
    StackResourceDriftInformationSummary.add_member(:last_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastCheckTimestamp"))
    StackResourceDriftInformationSummary.struct_class = Types::StackResourceDriftInformationSummary

    StackResourceDriftStatusFilters.member = Shapes::ShapeRef.new(shape: StackResourceDriftStatus)

    StackResourceDrifts.member = Shapes::ShapeRef.new(shape: StackResourceDrift)

    StackResourceSummaries.member = Shapes::ShapeRef.new(shape: StackResourceSummary)

    StackResourceSummary.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    StackResourceSummary.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    StackResourceSummary.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTimestamp"))
    StackResourceSummary.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "ResourceStatus"))
    StackResourceSummary.add_member(:resource_status_reason, Shapes::ShapeRef.new(shape: ResourceStatusReason, location_name: "ResourceStatusReason"))
    StackResourceSummary.add_member(:drift_information, Shapes::ShapeRef.new(shape: StackResourceDriftInformationSummary, location_name: "DriftInformation"))
    StackResourceSummary.add_member(:module_info, Shapes::ShapeRef.new(shape: ModuleInfo, location_name: "ModuleInfo"))
    StackResourceSummary.struct_class = Types::StackResourceSummary

    StackResources.member = Shapes::ShapeRef.new(shape: StackResource)

    StackSet.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, location_name: "StackSetName"))
    StackSet.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackSet.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StackSet.add_member(:status, Shapes::ShapeRef.new(shape: StackSetStatus, location_name: "Status"))
    StackSet.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    StackSet.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    StackSet.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    StackSet.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StackSet.add_member(:stack_set_arn, Shapes::ShapeRef.new(shape: StackSetARN, location_name: "StackSetARN"))
    StackSet.add_member(:administration_role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "AdministrationRoleARN"))
    StackSet.add_member(:execution_role_name, Shapes::ShapeRef.new(shape: ExecutionRoleName, location_name: "ExecutionRoleName"))
    StackSet.add_member(:stack_set_drift_detection_details, Shapes::ShapeRef.new(shape: StackSetDriftDetectionDetails, location_name: "StackSetDriftDetectionDetails"))
    StackSet.add_member(:auto_deployment, Shapes::ShapeRef.new(shape: AutoDeployment, location_name: "AutoDeployment"))
    StackSet.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModels, location_name: "PermissionModel"))
    StackSet.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "OrganizationalUnitIds"))
    StackSet.add_member(:managed_execution, Shapes::ShapeRef.new(shape: ManagedExecution, location_name: "ManagedExecution"))
    StackSet.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "Regions"))
    StackSet.struct_class = Types::StackSet

    StackSetAutoDeploymentTargetSummaries.member = Shapes::ShapeRef.new(shape: StackSetAutoDeploymentTargetSummary)

    StackSetAutoDeploymentTargetSummary.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "OrganizationalUnitId"))
    StackSetAutoDeploymentTargetSummary.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "Regions"))
    StackSetAutoDeploymentTargetSummary.struct_class = Types::StackSetAutoDeploymentTargetSummary

    StackSetDriftDetectionDetails.add_member(:drift_status, Shapes::ShapeRef.new(shape: StackSetDriftStatus, location_name: "DriftStatus"))
    StackSetDriftDetectionDetails.add_member(:drift_detection_status, Shapes::ShapeRef.new(shape: StackSetDriftDetectionStatus, location_name: "DriftDetectionStatus"))
    StackSetDriftDetectionDetails.add_member(:last_drift_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastDriftCheckTimestamp"))
    StackSetDriftDetectionDetails.add_member(:total_stack_instances_count, Shapes::ShapeRef.new(shape: TotalStackInstancesCount, location_name: "TotalStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:drifted_stack_instances_count, Shapes::ShapeRef.new(shape: DriftedStackInstancesCount, location_name: "DriftedStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:in_sync_stack_instances_count, Shapes::ShapeRef.new(shape: InSyncStackInstancesCount, location_name: "InSyncStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:in_progress_stack_instances_count, Shapes::ShapeRef.new(shape: InProgressStackInstancesCount, location_name: "InProgressStackInstancesCount"))
    StackSetDriftDetectionDetails.add_member(:failed_stack_instances_count, Shapes::ShapeRef.new(shape: FailedStackInstancesCount, location_name: "FailedStackInstancesCount"))
    StackSetDriftDetectionDetails.struct_class = Types::StackSetDriftDetectionDetails

    StackSetNotEmptyException.struct_class = Types::StackSetNotEmptyException

    StackSetNotFoundException.struct_class = Types::StackSetNotFoundException

    StackSetOperation.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    StackSetOperation.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackSetOperation.add_member(:action, Shapes::ShapeRef.new(shape: StackSetOperationAction, location_name: "Action"))
    StackSetOperation.add_member(:status, Shapes::ShapeRef.new(shape: StackSetOperationStatus, location_name: "Status"))
    StackSetOperation.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    StackSetOperation.add_member(:retain_stacks, Shapes::ShapeRef.new(shape: RetainStacksNullable, location_name: "RetainStacks"))
    StackSetOperation.add_member(:administration_role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "AdministrationRoleARN"))
    StackSetOperation.add_member(:execution_role_name, Shapes::ShapeRef.new(shape: ExecutionRoleName, location_name: "ExecutionRoleName"))
    StackSetOperation.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimestamp"))
    StackSetOperation.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTimestamp"))
    StackSetOperation.add_member(:deployment_targets, Shapes::ShapeRef.new(shape: DeploymentTargets, location_name: "DeploymentTargets"))
    StackSetOperation.add_member(:stack_set_drift_detection_details, Shapes::ShapeRef.new(shape: StackSetDriftDetectionDetails, location_name: "StackSetDriftDetectionDetails"))
    StackSetOperation.add_member(:status_reason, Shapes::ShapeRef.new(shape: StackSetOperationStatusReason, location_name: "StatusReason"))
    StackSetOperation.add_member(:status_details, Shapes::ShapeRef.new(shape: StackSetOperationStatusDetails, location_name: "StatusDetails"))
    StackSetOperation.struct_class = Types::StackSetOperation

    StackSetOperationPreferences.add_member(:region_concurrency_type, Shapes::ShapeRef.new(shape: RegionConcurrencyType, location_name: "RegionConcurrencyType"))
    StackSetOperationPreferences.add_member(:region_order, Shapes::ShapeRef.new(shape: RegionList, location_name: "RegionOrder"))
    StackSetOperationPreferences.add_member(:failure_tolerance_count, Shapes::ShapeRef.new(shape: FailureToleranceCount, location_name: "FailureToleranceCount"))
    StackSetOperationPreferences.add_member(:failure_tolerance_percentage, Shapes::ShapeRef.new(shape: FailureTolerancePercentage, location_name: "FailureTolerancePercentage"))
    StackSetOperationPreferences.add_member(:max_concurrent_count, Shapes::ShapeRef.new(shape: MaxConcurrentCount, location_name: "MaxConcurrentCount"))
    StackSetOperationPreferences.add_member(:max_concurrent_percentage, Shapes::ShapeRef.new(shape: MaxConcurrentPercentage, location_name: "MaxConcurrentPercentage"))
    StackSetOperationPreferences.add_member(:concurrency_mode, Shapes::ShapeRef.new(shape: ConcurrencyMode, location_name: "ConcurrencyMode"))
    StackSetOperationPreferences.struct_class = Types::StackSetOperationPreferences

    StackSetOperationResultSummaries.member = Shapes::ShapeRef.new(shape: StackSetOperationResultSummary)

    StackSetOperationResultSummary.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    StackSetOperationResultSummary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    StackSetOperationResultSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackSetOperationResultStatus, location_name: "Status"))
    StackSetOperationResultSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "StatusReason"))
    StackSetOperationResultSummary.add_member(:account_gate_result, Shapes::ShapeRef.new(shape: AccountGateResult, location_name: "AccountGateResult"))
    StackSetOperationResultSummary.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "OrganizationalUnitId"))
    StackSetOperationResultSummary.struct_class = Types::StackSetOperationResultSummary

    StackSetOperationStatusDetails.add_member(:failed_stack_instances_count, Shapes::ShapeRef.new(shape: FailedStackInstancesCount, location_name: "FailedStackInstancesCount"))
    StackSetOperationStatusDetails.struct_class = Types::StackSetOperationStatusDetails

    StackSetOperationSummaries.member = Shapes::ShapeRef.new(shape: StackSetOperationSummary)

    StackSetOperationSummary.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    StackSetOperationSummary.add_member(:action, Shapes::ShapeRef.new(shape: StackSetOperationAction, location_name: "Action"))
    StackSetOperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackSetOperationStatus, location_name: "Status"))
    StackSetOperationSummary.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimestamp"))
    StackSetOperationSummary.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTimestamp"))
    StackSetOperationSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: StackSetOperationStatusReason, location_name: "StatusReason"))
    StackSetOperationSummary.add_member(:status_details, Shapes::ShapeRef.new(shape: StackSetOperationStatusDetails, location_name: "StatusDetails"))
    StackSetOperationSummary.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    StackSetOperationSummary.struct_class = Types::StackSetOperationSummary

    StackSetSummaries.member = Shapes::ShapeRef.new(shape: StackSetSummary)

    StackSetSummary.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, location_name: "StackSetName"))
    StackSetSummary.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StackSetSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackSetStatus, location_name: "Status"))
    StackSetSummary.add_member(:auto_deployment, Shapes::ShapeRef.new(shape: AutoDeployment, location_name: "AutoDeployment"))
    StackSetSummary.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModels, location_name: "PermissionModel"))
    StackSetSummary.add_member(:drift_status, Shapes::ShapeRef.new(shape: StackDriftStatus, location_name: "DriftStatus"))
    StackSetSummary.add_member(:last_drift_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastDriftCheckTimestamp"))
    StackSetSummary.add_member(:managed_execution, Shapes::ShapeRef.new(shape: ManagedExecution, location_name: "ManagedExecution"))
    StackSetSummary.struct_class = Types::StackSetSummary

    StackStatusFilter.member = Shapes::ShapeRef.new(shape: StackStatus)

    StackSummaries.member = Shapes::ShapeRef.new(shape: StackSummary)

    StackSummary.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackSummary.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    StackSummary.add_member(:template_description, Shapes::ShapeRef.new(shape: TemplateDescription, location_name: "TemplateDescription"))
    StackSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    StackSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    StackSummary.add_member(:deletion_time, Shapes::ShapeRef.new(shape: DeletionTime, location_name: "DeletionTime"))
    StackSummary.add_member(:stack_status, Shapes::ShapeRef.new(shape: StackStatus, required: true, location_name: "StackStatus"))
    StackSummary.add_member(:stack_status_reason, Shapes::ShapeRef.new(shape: StackStatusReason, location_name: "StackStatusReason"))
    StackSummary.add_member(:parent_id, Shapes::ShapeRef.new(shape: StackId, location_name: "ParentId"))
    StackSummary.add_member(:root_id, Shapes::ShapeRef.new(shape: StackId, location_name: "RootId"))
    StackSummary.add_member(:drift_information, Shapes::ShapeRef.new(shape: StackDriftInformationSummary, location_name: "DriftInformation"))
    StackSummary.struct_class = Types::StackSummary

    Stacks.member = Shapes::ShapeRef.new(shape: Stack)

    StageList.member = Shapes::ShapeRef.new(shape: TemplateStage)

    StaleRequestException.struct_class = Types::StaleRequestException

    StartResourceScanInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartResourceScanInput.add_member(:scan_filters, Shapes::ShapeRef.new(shape: ScanFilters, location_name: "ScanFilters"))
    StartResourceScanInput.struct_class = Types::StartResourceScanInput

    StartResourceScanOutput.add_member(:resource_scan_id, Shapes::ShapeRef.new(shape: ResourceScanId, location_name: "ResourceScanId"))
    StartResourceScanOutput.struct_class = Types::StartResourceScanOutput

    StopStackSetOperationInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    StopStackSetOperationInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "OperationId"))
    StopStackSetOperationInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    StopStackSetOperationInput.struct_class = Types::StopStackSetOperationInput

    StopStackSetOperationOutput.struct_class = Types::StopStackSetOperationOutput

    SupportedMajorVersions.member = Shapes::ShapeRef.new(shape: SupportedMajorVersion)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TemplateConfiguration.add_member(:deletion_policy, Shapes::ShapeRef.new(shape: GeneratedTemplateDeletionPolicy, location_name: "DeletionPolicy"))
    TemplateConfiguration.add_member(:update_replace_policy, Shapes::ShapeRef.new(shape: GeneratedTemplateUpdateReplacePolicy, location_name: "UpdateReplacePolicy"))
    TemplateConfiguration.struct_class = Types::TemplateConfiguration

    TemplateParameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
    TemplateParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "DefaultValue"))
    TemplateParameter.add_member(:no_echo, Shapes::ShapeRef.new(shape: NoEcho, location_name: "NoEcho"))
    TemplateParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TemplateParameter.struct_class = Types::TemplateParameter

    TemplateParameters.member = Shapes::ShapeRef.new(shape: TemplateParameter)

    TemplateProgress.add_member(:resources_succeeded, Shapes::ShapeRef.new(shape: ResourcesSucceeded, location_name: "ResourcesSucceeded"))
    TemplateProgress.add_member(:resources_failed, Shapes::ShapeRef.new(shape: ResourcesFailed, location_name: "ResourcesFailed"))
    TemplateProgress.add_member(:resources_processing, Shapes::ShapeRef.new(shape: ResourcesProcessing, location_name: "ResourcesProcessing"))
    TemplateProgress.add_member(:resources_pending, Shapes::ShapeRef.new(shape: ResourcesPending, location_name: "ResourcesPending"))
    TemplateProgress.struct_class = Types::TemplateProgress

    TemplateSummaries.member = Shapes::ShapeRef.new(shape: TemplateSummary)

    TemplateSummary.add_member(:generated_template_id, Shapes::ShapeRef.new(shape: GeneratedTemplateId, location_name: "GeneratedTemplateId"))
    TemplateSummary.add_member(:generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, location_name: "GeneratedTemplateName"))
    TemplateSummary.add_member(:status, Shapes::ShapeRef.new(shape: GeneratedTemplateStatus, location_name: "Status"))
    TemplateSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: TemplateStatusReason, location_name: "StatusReason"))
    TemplateSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    TemplateSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    TemplateSummary.add_member(:number_of_resources, Shapes::ShapeRef.new(shape: NumberOfResources, location_name: "NumberOfResources"))
    TemplateSummary.struct_class = Types::TemplateSummary

    TemplateSummaryConfig.add_member(:treat_unrecognized_resource_types_as_warnings, Shapes::ShapeRef.new(shape: TreatUnrecognizedResourceTypesAsWarnings, location_name: "TreatUnrecognizedResourceTypesAsWarnings"))
    TemplateSummaryConfig.struct_class = Types::TemplateSummaryConfig

    TestTypeInput.add_member(:arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "Arn"))
    TestTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: ThirdPartyType, location_name: "Type"))
    TestTypeInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    TestTypeInput.add_member(:version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "VersionId"))
    TestTypeInput.add_member(:log_delivery_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "LogDeliveryBucket"))
    TestTypeInput.struct_class = Types::TestTypeInput

    TestTypeOutput.add_member(:type_version_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeVersionArn"))
    TestTypeOutput.struct_class = Types::TestTypeOutput

    TokenAlreadyExistsException.struct_class = Types::TokenAlreadyExistsException

    TransformsList.member = Shapes::ShapeRef.new(shape: TransformName)

    TypeConfigurationDetails.add_member(:arn, Shapes::ShapeRef.new(shape: TypeConfigurationArn, location_name: "Arn"))
    TypeConfigurationDetails.add_member(:alias, Shapes::ShapeRef.new(shape: TypeConfigurationAlias, location_name: "Alias"))
    TypeConfigurationDetails.add_member(:configuration, Shapes::ShapeRef.new(shape: TypeConfiguration, location_name: "Configuration"))
    TypeConfigurationDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    TypeConfigurationDetails.add_member(:type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeArn"))
    TypeConfigurationDetails.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    TypeConfigurationDetails.add_member(:is_default_configuration, Shapes::ShapeRef.new(shape: IsDefaultConfiguration, location_name: "IsDefaultConfiguration"))
    TypeConfigurationDetails.struct_class = Types::TypeConfigurationDetails

    TypeConfigurationDetailsList.member = Shapes::ShapeRef.new(shape: TypeConfigurationDetails)

    TypeConfigurationIdentifier.add_member(:type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeArn"))
    TypeConfigurationIdentifier.add_member(:type_configuration_alias, Shapes::ShapeRef.new(shape: TypeConfigurationAlias, location_name: "TypeConfigurationAlias"))
    TypeConfigurationIdentifier.add_member(:type_configuration_arn, Shapes::ShapeRef.new(shape: TypeConfigurationArn, location_name: "TypeConfigurationArn"))
    TypeConfigurationIdentifier.add_member(:type, Shapes::ShapeRef.new(shape: ThirdPartyType, location_name: "Type"))
    TypeConfigurationIdentifier.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    TypeConfigurationIdentifier.struct_class = Types::TypeConfigurationIdentifier

    TypeConfigurationIdentifiers.member = Shapes::ShapeRef.new(shape: TypeConfigurationIdentifier)

    TypeConfigurationNotFoundException.struct_class = Types::TypeConfigurationNotFoundException

    TypeFilters.add_member(:category, Shapes::ShapeRef.new(shape: Category, location_name: "Category"))
    TypeFilters.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    TypeFilters.add_member(:type_name_prefix, Shapes::ShapeRef.new(shape: TypeNamePrefix, location_name: "TypeNamePrefix"))
    TypeFilters.struct_class = Types::TypeFilters

    TypeNotFoundException.struct_class = Types::TypeNotFoundException

    TypeSummaries.member = Shapes::ShapeRef.new(shape: TypeSummary)

    TypeSummary.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    TypeSummary.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    TypeSummary.add_member(:default_version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "DefaultVersionId"))
    TypeSummary.add_member(:type_arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "TypeArn"))
    TypeSummary.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    TypeSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TypeSummary.add_member(:publisher_id, Shapes::ShapeRef.new(shape: PublisherId, location_name: "PublisherId"))
    TypeSummary.add_member(:original_type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "OriginalTypeName"))
    TypeSummary.add_member(:public_version_number, Shapes::ShapeRef.new(shape: PublicVersionNumber, location_name: "PublicVersionNumber"))
    TypeSummary.add_member(:latest_public_version, Shapes::ShapeRef.new(shape: PublicVersionNumber, location_name: "LatestPublicVersion"))
    TypeSummary.add_member(:publisher_identity, Shapes::ShapeRef.new(shape: IdentityProvider, location_name: "PublisherIdentity"))
    TypeSummary.add_member(:publisher_name, Shapes::ShapeRef.new(shape: PublisherName, location_name: "PublisherName"))
    TypeSummary.add_member(:is_activated, Shapes::ShapeRef.new(shape: IsActivated, location_name: "IsActivated"))
    TypeSummary.struct_class = Types::TypeSummary

    TypeVersionSummaries.member = Shapes::ShapeRef.new(shape: TypeVersionSummary)

    TypeVersionSummary.add_member(:type, Shapes::ShapeRef.new(shape: RegistryType, location_name: "Type"))
    TypeVersionSummary.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    TypeVersionSummary.add_member(:version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "VersionId"))
    TypeVersionSummary.add_member(:is_default_version, Shapes::ShapeRef.new(shape: IsDefaultVersion, location_name: "IsDefaultVersion"))
    TypeVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TypeArn, location_name: "Arn"))
    TypeVersionSummary.add_member(:time_created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TimeCreated"))
    TypeVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TypeVersionSummary.add_member(:public_version_number, Shapes::ShapeRef.new(shape: PublicVersionNumber, location_name: "PublicVersionNumber"))
    TypeVersionSummary.struct_class = Types::TypeVersionSummary

    UnprocessedTypeConfigurations.member = Shapes::ShapeRef.new(shape: TypeConfigurationIdentifier)

    UpdateGeneratedTemplateInput.add_member(:generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, required: true, location_name: "GeneratedTemplateName"))
    UpdateGeneratedTemplateInput.add_member(:new_generated_template_name, Shapes::ShapeRef.new(shape: GeneratedTemplateName, location_name: "NewGeneratedTemplateName"))
    UpdateGeneratedTemplateInput.add_member(:add_resources, Shapes::ShapeRef.new(shape: ResourceDefinitions, location_name: "AddResources"))
    UpdateGeneratedTemplateInput.add_member(:remove_resources, Shapes::ShapeRef.new(shape: JazzLogicalResourceIds, location_name: "RemoveResources"))
    UpdateGeneratedTemplateInput.add_member(:refresh_all_resources, Shapes::ShapeRef.new(shape: RefreshAllResources, location_name: "RefreshAllResources"))
    UpdateGeneratedTemplateInput.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    UpdateGeneratedTemplateInput.struct_class = Types::UpdateGeneratedTemplateInput

    UpdateGeneratedTemplateOutput.add_member(:generated_template_id, Shapes::ShapeRef.new(shape: GeneratedTemplateId, location_name: "GeneratedTemplateId"))
    UpdateGeneratedTemplateOutput.struct_class = Types::UpdateGeneratedTemplateOutput

    UpdateStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    UpdateStackInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    UpdateStackInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    UpdateStackInput.add_member(:use_previous_template, Shapes::ShapeRef.new(shape: UsePreviousTemplate, location_name: "UsePreviousTemplate"))
    UpdateStackInput.add_member(:stack_policy_during_update_body, Shapes::ShapeRef.new(shape: StackPolicyDuringUpdateBody, location_name: "StackPolicyDuringUpdateBody"))
    UpdateStackInput.add_member(:stack_policy_during_update_url, Shapes::ShapeRef.new(shape: StackPolicyDuringUpdateURL, location_name: "StackPolicyDuringUpdateURL"))
    UpdateStackInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateStackInput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    UpdateStackInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    UpdateStackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    UpdateStackInput.add_member(:rollback_configuration, Shapes::ShapeRef.new(shape: RollbackConfiguration, location_name: "RollbackConfiguration"))
    UpdateStackInput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
    UpdateStackInput.add_member(:stack_policy_url, Shapes::ShapeRef.new(shape: StackPolicyURL, location_name: "StackPolicyURL"))
    UpdateStackInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
    UpdateStackInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    UpdateStackInput.add_member(:disable_rollback, Shapes::ShapeRef.new(shape: DisableRollback, location_name: "DisableRollback"))
    UpdateStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    UpdateStackInput.add_member(:retain_except_on_create, Shapes::ShapeRef.new(shape: RetainExceptOnCreate, location_name: "RetainExceptOnCreate"))
    UpdateStackInput.struct_class = Types::UpdateStackInput

    UpdateStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetNameOrId, required: true, location_name: "StackSetName"))
    UpdateStackInstancesInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    UpdateStackInstancesInput.add_member(:deployment_targets, Shapes::ShapeRef.new(shape: DeploymentTargets, location_name: "DeploymentTargets"))
    UpdateStackInstancesInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "Regions"))
    UpdateStackInstancesInput.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: Parameters, location_name: "ParameterOverrides"))
    UpdateStackInstancesInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    UpdateStackInstancesInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken" => true}))
    UpdateStackInstancesInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    UpdateStackInstancesInput.struct_class = Types::UpdateStackInstancesInput

    UpdateStackInstancesOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    UpdateStackInstancesOutput.struct_class = Types::UpdateStackInstancesOutput

    UpdateStackOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    UpdateStackOutput.struct_class = Types::UpdateStackOutput

    UpdateStackSetInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    UpdateStackSetInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateStackSetInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    UpdateStackSetInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    UpdateStackSetInput.add_member(:use_previous_template, Shapes::ShapeRef.new(shape: UsePreviousTemplate, location_name: "UsePreviousTemplate"))
    UpdateStackSetInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateStackSetInput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    UpdateStackSetInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    UpdateStackSetInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    UpdateStackSetInput.add_member(:administration_role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "AdministrationRoleARN"))
    UpdateStackSetInput.add_member(:execution_role_name, Shapes::ShapeRef.new(shape: ExecutionRoleName, location_name: "ExecutionRoleName"))
    UpdateStackSetInput.add_member(:deployment_targets, Shapes::ShapeRef.new(shape: DeploymentTargets, location_name: "DeploymentTargets"))
    UpdateStackSetInput.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModels, location_name: "PermissionModel"))
    UpdateStackSetInput.add_member(:auto_deployment, Shapes::ShapeRef.new(shape: AutoDeployment, location_name: "AutoDeployment"))
    UpdateStackSetInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken" => true}))
    UpdateStackSetInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    UpdateStackSetInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "Regions"))
    UpdateStackSetInput.add_member(:call_as, Shapes::ShapeRef.new(shape: CallAs, location_name: "CallAs"))
    UpdateStackSetInput.add_member(:managed_execution, Shapes::ShapeRef.new(shape: ManagedExecution, location_name: "ManagedExecution"))
    UpdateStackSetInput.struct_class = Types::UpdateStackSetInput

    UpdateStackSetOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    UpdateStackSetOutput.struct_class = Types::UpdateStackSetOutput

    UpdateTerminationProtectionInput.add_member(:enable_termination_protection, Shapes::ShapeRef.new(shape: EnableTerminationProtection, required: true, location_name: "EnableTerminationProtection"))
    UpdateTerminationProtectionInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
    UpdateTerminationProtectionInput.struct_class = Types::UpdateTerminationProtectionInput

    UpdateTerminationProtectionOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    UpdateTerminationProtectionOutput.struct_class = Types::UpdateTerminationProtectionOutput

    ValidateTemplateInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    ValidateTemplateInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    ValidateTemplateInput.struct_class = Types::ValidateTemplateInput

    ValidateTemplateOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: TemplateParameters, location_name: "Parameters"))
    ValidateTemplateOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ValidateTemplateOutput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    ValidateTemplateOutput.add_member(:capabilities_reason, Shapes::ShapeRef.new(shape: CapabilitiesReason, location_name: "CapabilitiesReason"))
    ValidateTemplateOutput.add_member(:declared_transforms, Shapes::ShapeRef.new(shape: TransformsList, location_name: "DeclaredTransforms"))
    ValidateTemplateOutput.struct_class = Types::ValidateTemplateOutput

    WarningDetail.add_member(:type, Shapes::ShapeRef.new(shape: WarningType, location_name: "Type"))
    WarningDetail.add_member(:properties, Shapes::ShapeRef.new(shape: WarningProperties, location_name: "Properties"))
    WarningDetail.struct_class = Types::WarningDetail

    WarningDetails.member = Shapes::ShapeRef.new(shape: WarningDetail)

    WarningProperties.member = Shapes::ShapeRef.new(shape: WarningProperty)

    WarningProperty.add_member(:property_path, Shapes::ShapeRef.new(shape: PropertyPath, location_name: "PropertyPath"))
    WarningProperty.add_member(:required, Shapes::ShapeRef.new(shape: RequiredProperty, location_name: "Required"))
    WarningProperty.add_member(:description, Shapes::ShapeRef.new(shape: PropertyDescription, location_name: "Description"))
    WarningProperty.struct_class = Types::WarningProperty

    Warnings.add_member(:unrecognized_resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "UnrecognizedResourceTypes"))
    Warnings.struct_class = Types::Warnings


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2010-05-15"

      api.metadata = {
        "apiVersion" => "2010-05-15",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cloudformation",
        "protocol" => "query",
        "protocols" => ["query"],
        "serviceFullName" => "AWS CloudFormation",
        "serviceId" => "CloudFormation",
        "signatureVersion" => "v4",
        "uid" => "cloudformation-2010-05-15",
        "xmlNamespace" => "http://cloudformation.amazonaws.com/doc/2010-05-15/",
      }

      api.add_operation(:activate_organizations_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateOrganizationsAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ActivateOrganizationsAccessInput)
        o.output = Shapes::ShapeRef.new(shape: ActivateOrganizationsAccessOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
      end)

      api.add_operation(:activate_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ActivateTypeInput)
        o.output = Shapes::ShapeRef.new(shape: ActivateTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:batch_describe_type_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDescribeTypeConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDescribeTypeConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDescribeTypeConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TypeConfigurationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
      end)

      api.add_operation(:cancel_update_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelUpdateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelUpdateStackInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TokenAlreadyExistsException)
      end)

      api.add_operation(:continue_update_rollback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ContinueUpdateRollback"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ContinueUpdateRollbackInput)
        o.output = Shapes::ShapeRef.new(shape: ContinueUpdateRollbackOutput)
        o.errors << Shapes::ShapeRef.new(shape: TokenAlreadyExistsException)
      end)

      api.add_operation(:create_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateChangeSetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateChangeSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapabilitiesException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_generated_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGeneratedTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGeneratedTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGeneratedTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentResourcesLimitExceededException)
      end)

      api.add_operation(:create_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStackOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TokenAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapabilitiesException)
      end)

      api.add_operation(:create_stack_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStackInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStackInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: OperationIdAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: StaleRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_stack_refactor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStackRefactor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackRefactorInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStackRefactorOutput)
      end)

      api.add_operation(:create_stack_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStackSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackSetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStackSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: NameAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: CreatedButModifiedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:deactivate_organizations_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateOrganizationsAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeactivateOrganizationsAccessInput)
        o.output = Shapes::ShapeRef.new(shape: DeactivateOrganizationsAccessOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
      end)

      api.add_operation(:deactivate_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeactivateTypeInput)
        o.output = Shapes::ShapeRef.new(shape: DeactivateTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:delete_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteChangeSetInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteChangeSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidChangeSetStatusException)
      end)

      api.add_operation(:delete_generated_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGeneratedTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGeneratedTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: GeneratedTemplateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentResourcesLimitExceededException)
      end)

      api.add_operation(:delete_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStackInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TokenAlreadyExistsException)
      end)

      api.add_operation(:delete_stack_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStackInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStackInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteStackInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: OperationIdAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: StaleRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:delete_stack_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStackSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStackSetInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteStackSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotEmptyException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
      end)

      api.add_operation(:deregister_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTypeInput)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeChangeSetInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeChangeSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: ChangeSetNotFoundException)
      end)

      api.add_operation(:describe_change_set_hooks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChangeSetHooks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeChangeSetHooksInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeChangeSetHooksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ChangeSetNotFoundException)
      end)

      api.add_operation(:describe_generated_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGeneratedTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGeneratedTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGeneratedTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: GeneratedTemplateNotFoundException)
      end)

      api.add_operation(:describe_organizations_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationsAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationsAccessInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationsAccessOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
      end)

      api.add_operation(:describe_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePublisher"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePublisherInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePublisherOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
      end)

      api.add_operation(:describe_resource_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourceScan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceScanInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceScanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceScanNotFoundException)
      end)

      api.add_operation(:describe_stack_drift_detection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackDriftDetectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackDriftDetectionStatusInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackDriftDetectionStatusOutput)
      end)

      api.add_operation(:describe_stack_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackEventsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackEventsOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_stack_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StackInstanceNotFoundException)
      end)

      api.add_operation(:describe_stack_refactor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackRefactor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackRefactorInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackRefactorOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackRefactorNotFoundException)
      end)

      api.add_operation(:describe_stack_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackResourceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackResourceOutput)
      end)

      api.add_operation(:describe_stack_resource_drifts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackResourceDrifts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackResourceDriftsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackResourceDriftsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_stack_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackResourcesOutput)
      end)

      api.add_operation(:describe_stack_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackSetInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
      end)

      api.add_operation(:describe_stack_set_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackSetOperation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackSetOperationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackSetOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
      end)

      api.add_operation(:describe_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStacksInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStacksOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTypeInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:describe_type_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTypeRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTypeRegistrationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTypeRegistrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
      end)

      api.add_operation(:detect_stack_drift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectStackDrift"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectStackDriftInput)
        o.output = Shapes::ShapeRef.new(shape: DetectStackDriftOutput)
      end)

      api.add_operation(:detect_stack_resource_drift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectStackResourceDrift"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectStackResourceDriftInput)
        o.output = Shapes::ShapeRef.new(shape: DetectStackResourceDriftOutput)
      end)

      api.add_operation(:detect_stack_set_drift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectStackSetDrift"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectStackSetDriftInput)
        o.output = Shapes::ShapeRef.new(shape: DetectStackSetDriftOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
      end)

      api.add_operation(:estimate_template_cost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EstimateTemplateCost"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EstimateTemplateCostInput)
        o.output = Shapes::ShapeRef.new(shape: EstimateTemplateCostOutput)
      end)

      api.add_operation(:execute_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecuteChangeSetInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteChangeSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidChangeSetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ChangeSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapabilitiesException)
        o.errors << Shapes::ShapeRef.new(shape: TokenAlreadyExistsException)
      end)

      api.add_operation(:execute_stack_refactor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteStackRefactor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecuteStackRefactorInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:get_generated_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGeneratedTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGeneratedTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetGeneratedTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: GeneratedTemplateNotFoundException)
      end)

      api.add_operation(:get_stack_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStackPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStackPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetStackPolicyOutput)
      end)

      api.add_operation(:get_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ChangeSetNotFoundException)
      end)

      api.add_operation(:get_template_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplateSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
      end)

      api.add_operation(:import_stacks_to_stack_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportStacksToStackSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportStacksToStackSetInput)
        o.output = Shapes::ShapeRef.new(shape: ImportStacksToStackSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: OperationIdAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: StackNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StaleRequestException)
      end)

      api.add_operation(:list_change_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangeSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListChangeSetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListChangeSetsOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExportsInput)
        o.output = Shapes::ShapeRef.new(shape: ListExportsOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_generated_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGeneratedTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGeneratedTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGeneratedTemplatesOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hook_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHookResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHookResultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListHookResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: HookResultNotFoundException)
      end)

      api.add_operation(:list_imports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListImportsInput)
        o.output = Shapes::ShapeRef.new(shape: ListImportsOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_scan_related_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceScanRelatedResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceScanRelatedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceScanRelatedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceScanNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceScanInProgressException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_scan_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceScanResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceScanResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceScanResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceScanNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceScanInProgressException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_scans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceScans"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceScansInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceScansOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stack_instance_resource_drifts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackInstanceResourceDrifts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackInstanceResourceDriftsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackInstanceResourceDriftsOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StackInstanceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
      end)

      api.add_operation(:list_stack_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stack_refactor_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackRefactorActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackRefactorActionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackRefactorActionsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stack_refactors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackRefactors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackRefactorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackRefactorsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stack_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackResourcesOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stack_set_auto_deployment_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackSetAutoDeploymentTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackSetAutoDeploymentTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackSetAutoDeploymentTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
      end)

      api.add_operation(:list_stack_set_operation_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackSetOperationResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackSetOperationResultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackSetOperationResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stack_set_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackSetOperations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackSetOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackSetOperationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stack_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackSetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackSetsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStacksInput)
        o.output = Shapes::ShapeRef.new(shape: ListStacksOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_type_registrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTypeRegistrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTypeRegistrationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTypeRegistrationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_type_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTypeVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTypeVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTypeVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTypesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:publish_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PublishTypeInput)
        o.output = Shapes::ShapeRef.new(shape: PublishTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:record_handler_progress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecordHandlerProgress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RecordHandlerProgressInput)
        o.output = Shapes::ShapeRef.new(shape: RecordHandlerProgressOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: OperationStatusCheckFailedException)
      end)

      api.add_operation(:register_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterPublisher"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterPublisherInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterPublisherOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
      end)

      api.add_operation(:register_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTypeInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
      end)

      api.add_operation(:rollback_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RollbackStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RollbackStackInput)
        o.output = Shapes::ShapeRef.new(shape: RollbackStackOutput)
        o.errors << Shapes::ShapeRef.new(shape: TokenAlreadyExistsException)
      end)

      api.add_operation(:set_stack_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetStackPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetStackPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:set_type_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTypeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetTypeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: SetTypeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:set_type_default_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTypeDefaultVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetTypeDefaultVersionInput)
        o.output = Shapes::ShapeRef.new(shape: SetTypeDefaultVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:signal_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SignalResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SignalResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:start_resource_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartResourceScan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartResourceScanInput)
        o.output = Shapes::ShapeRef.new(shape: StartResourceScanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceScanInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceScanLimitExceededException)
      end)

      api.add_operation(:stop_stack_set_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopStackSetOperation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopStackSetOperationInput)
        o.output = Shapes::ShapeRef.new(shape: StopStackSetOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:test_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestTypeInput)
        o.output = Shapes::ShapeRef.new(shape: TestTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: CFNRegistryException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
      end)

      api.add_operation(:update_generated_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGeneratedTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGeneratedTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGeneratedTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: GeneratedTemplateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStackInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStackOutput)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapabilitiesException)
        o.errors << Shapes::ShapeRef.new(shape: TokenAlreadyExistsException)
      end)

      api.add_operation(:update_stack_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStackInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStackInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStackInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StackInstanceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: OperationIdAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: StaleRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:update_stack_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStackSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStackSetInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStackSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: OperationIdAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: StaleRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: StackInstanceNotFoundException)
      end)

      api.add_operation(:update_termination_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTerminationProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTerminationProtectionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTerminationProtectionOutput)
      end)

      api.add_operation(:validate_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ValidateTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateTemplateOutput)
      end)
    end

  end
end
