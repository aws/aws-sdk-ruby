# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation
  # @api private
  module ClientApi

    include Seahorse::Model

    Account = Shapes::StringShape.new(name: 'Account')
    AccountGateResult = Shapes::StructureShape.new(name: 'AccountGateResult')
    AccountGateStatus = Shapes::StringShape.new(name: 'AccountGateStatus')
    AccountGateStatusReason = Shapes::StringShape.new(name: 'AccountGateStatusReason')
    AccountLimit = Shapes::StructureShape.new(name: 'AccountLimit')
    AccountLimitList = Shapes::ListShape.new(name: 'AccountLimitList')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AllowedValue = Shapes::StringShape.new(name: 'AllowedValue')
    AllowedValues = Shapes::ListShape.new(name: 'AllowedValues')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    CancelUpdateStackInput = Shapes::StructureShape.new(name: 'CancelUpdateStackInput')
    Capabilities = Shapes::ListShape.new(name: 'Capabilities')
    CapabilitiesReason = Shapes::StringShape.new(name: 'CapabilitiesReason')
    Capability = Shapes::StringShape.new(name: 'Capability')
    CausingEntity = Shapes::StringShape.new(name: 'CausingEntity')
    Change = Shapes::StructureShape.new(name: 'Change')
    ChangeAction = Shapes::StringShape.new(name: 'ChangeAction')
    ChangeSetId = Shapes::StringShape.new(name: 'ChangeSetId')
    ChangeSetName = Shapes::StringShape.new(name: 'ChangeSetName')
    ChangeSetNameOrId = Shapes::StringShape.new(name: 'ChangeSetNameOrId')
    ChangeSetNotFoundException = Shapes::StructureShape.new(name: 'ChangeSetNotFoundException')
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
    ContinueUpdateRollbackInput = Shapes::StructureShape.new(name: 'ContinueUpdateRollbackInput')
    ContinueUpdateRollbackOutput = Shapes::StructureShape.new(name: 'ContinueUpdateRollbackOutput')
    CreateChangeSetInput = Shapes::StructureShape.new(name: 'CreateChangeSetInput')
    CreateChangeSetOutput = Shapes::StructureShape.new(name: 'CreateChangeSetOutput')
    CreateStackInput = Shapes::StructureShape.new(name: 'CreateStackInput')
    CreateStackInstancesInput = Shapes::StructureShape.new(name: 'CreateStackInstancesInput')
    CreateStackInstancesOutput = Shapes::StructureShape.new(name: 'CreateStackInstancesOutput')
    CreateStackOutput = Shapes::StructureShape.new(name: 'CreateStackOutput')
    CreateStackSetInput = Shapes::StructureShape.new(name: 'CreateStackSetInput')
    CreateStackSetOutput = Shapes::StructureShape.new(name: 'CreateStackSetOutput')
    CreatedButModifiedException = Shapes::StructureShape.new(name: 'CreatedButModifiedException')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DeleteChangeSetInput = Shapes::StructureShape.new(name: 'DeleteChangeSetInput')
    DeleteChangeSetOutput = Shapes::StructureShape.new(name: 'DeleteChangeSetOutput')
    DeleteStackInput = Shapes::StructureShape.new(name: 'DeleteStackInput')
    DeleteStackInstancesInput = Shapes::StructureShape.new(name: 'DeleteStackInstancesInput')
    DeleteStackInstancesOutput = Shapes::StructureShape.new(name: 'DeleteStackInstancesOutput')
    DeleteStackSetInput = Shapes::StructureShape.new(name: 'DeleteStackSetInput')
    DeleteStackSetOutput = Shapes::StructureShape.new(name: 'DeleteStackSetOutput')
    DeletionTime = Shapes::TimestampShape.new(name: 'DeletionTime')
    DescribeAccountLimitsInput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsInput')
    DescribeAccountLimitsOutput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsOutput')
    DescribeChangeSetInput = Shapes::StructureShape.new(name: 'DescribeChangeSetInput')
    DescribeChangeSetOutput = Shapes::StructureShape.new(name: 'DescribeChangeSetOutput')
    DescribeStackEventsInput = Shapes::StructureShape.new(name: 'DescribeStackEventsInput')
    DescribeStackEventsOutput = Shapes::StructureShape.new(name: 'DescribeStackEventsOutput')
    DescribeStackInstanceInput = Shapes::StructureShape.new(name: 'DescribeStackInstanceInput')
    DescribeStackInstanceOutput = Shapes::StructureShape.new(name: 'DescribeStackInstanceOutput')
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
    Description = Shapes::StringShape.new(name: 'Description')
    DisableRollback = Shapes::BooleanShape.new(name: 'DisableRollback')
    EnableTerminationProtection = Shapes::BooleanShape.new(name: 'EnableTerminationProtection')
    EstimateTemplateCostInput = Shapes::StructureShape.new(name: 'EstimateTemplateCostInput')
    EstimateTemplateCostOutput = Shapes::StructureShape.new(name: 'EstimateTemplateCostOutput')
    EvaluationType = Shapes::StringShape.new(name: 'EvaluationType')
    EventId = Shapes::StringShape.new(name: 'EventId')
    ExecuteChangeSetInput = Shapes::StructureShape.new(name: 'ExecuteChangeSetInput')
    ExecuteChangeSetOutput = Shapes::StructureShape.new(name: 'ExecuteChangeSetOutput')
    ExecutionRoleName = Shapes::StringShape.new(name: 'ExecutionRoleName')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    Export = Shapes::StructureShape.new(name: 'Export')
    ExportName = Shapes::StringShape.new(name: 'ExportName')
    ExportValue = Shapes::StringShape.new(name: 'ExportValue')
    Exports = Shapes::ListShape.new(name: 'Exports')
    FailureToleranceCount = Shapes::IntegerShape.new(name: 'FailureToleranceCount')
    FailureTolerancePercentage = Shapes::IntegerShape.new(name: 'FailureTolerancePercentage')
    GetStackPolicyInput = Shapes::StructureShape.new(name: 'GetStackPolicyInput')
    GetStackPolicyOutput = Shapes::StructureShape.new(name: 'GetStackPolicyOutput')
    GetTemplateInput = Shapes::StructureShape.new(name: 'GetTemplateInput')
    GetTemplateOutput = Shapes::StructureShape.new(name: 'GetTemplateOutput')
    GetTemplateSummaryInput = Shapes::StructureShape.new(name: 'GetTemplateSummaryInput')
    GetTemplateSummaryOutput = Shapes::StructureShape.new(name: 'GetTemplateSummaryOutput')
    Imports = Shapes::ListShape.new(name: 'Imports')
    InsufficientCapabilitiesException = Shapes::StructureShape.new(name: 'InsufficientCapabilitiesException')
    InvalidChangeSetStatusException = Shapes::StructureShape.new(name: 'InvalidChangeSetStatusException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    LastUpdatedTime = Shapes::TimestampShape.new(name: 'LastUpdatedTime')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitName = Shapes::StringShape.new(name: 'LimitName')
    LimitValue = Shapes::IntegerShape.new(name: 'LimitValue')
    ListChangeSetsInput = Shapes::StructureShape.new(name: 'ListChangeSetsInput')
    ListChangeSetsOutput = Shapes::StructureShape.new(name: 'ListChangeSetsOutput')
    ListExportsInput = Shapes::StructureShape.new(name: 'ListExportsInput')
    ListExportsOutput = Shapes::StructureShape.new(name: 'ListExportsOutput')
    ListImportsInput = Shapes::StructureShape.new(name: 'ListImportsInput')
    ListImportsOutput = Shapes::StructureShape.new(name: 'ListImportsOutput')
    ListStackInstancesInput = Shapes::StructureShape.new(name: 'ListStackInstancesInput')
    ListStackInstancesOutput = Shapes::StructureShape.new(name: 'ListStackInstancesOutput')
    ListStackResourcesInput = Shapes::StructureShape.new(name: 'ListStackResourcesInput')
    ListStackResourcesOutput = Shapes::StructureShape.new(name: 'ListStackResourcesOutput')
    ListStackSetOperationResultsInput = Shapes::StructureShape.new(name: 'ListStackSetOperationResultsInput')
    ListStackSetOperationResultsOutput = Shapes::StructureShape.new(name: 'ListStackSetOperationResultsOutput')
    ListStackSetOperationsInput = Shapes::StructureShape.new(name: 'ListStackSetOperationsInput')
    ListStackSetOperationsOutput = Shapes::StructureShape.new(name: 'ListStackSetOperationsOutput')
    ListStackSetsInput = Shapes::StructureShape.new(name: 'ListStackSetsInput')
    ListStackSetsOutput = Shapes::StructureShape.new(name: 'ListStackSetsOutput')
    ListStacksInput = Shapes::StructureShape.new(name: 'ListStacksInput')
    ListStacksOutput = Shapes::StructureShape.new(name: 'ListStacksOutput')
    LogicalResourceId = Shapes::StringShape.new(name: 'LogicalResourceId')
    MaxConcurrentCount = Shapes::IntegerShape.new(name: 'MaxConcurrentCount')
    MaxConcurrentPercentage = Shapes::IntegerShape.new(name: 'MaxConcurrentPercentage')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metadata = Shapes::StringShape.new(name: 'Metadata')
    MonitoringTimeInMinutes = Shapes::IntegerShape.new(name: 'MonitoringTimeInMinutes')
    NameAlreadyExistsException = Shapes::StructureShape.new(name: 'NameAlreadyExistsException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoEcho = Shapes::BooleanShape.new(name: 'NoEcho')
    NotificationARN = Shapes::StringShape.new(name: 'NotificationARN')
    NotificationARNs = Shapes::ListShape.new(name: 'NotificationARNs')
    OnFailure = Shapes::StringShape.new(name: 'OnFailure')
    OperationIdAlreadyExistsException = Shapes::StructureShape.new(name: 'OperationIdAlreadyExistsException')
    OperationInProgressException = Shapes::StructureShape.new(name: 'OperationInProgressException')
    OperationNotFoundException = Shapes::StructureShape.new(name: 'OperationNotFoundException')
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
    PhysicalResourceId = Shapes::StringShape.new(name: 'PhysicalResourceId')
    PropertyName = Shapes::StringShape.new(name: 'PropertyName')
    Reason = Shapes::StringShape.new(name: 'Reason')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    Replacement = Shapes::StringShape.new(name: 'Replacement')
    RequiresRecreation = Shapes::StringShape.new(name: 'RequiresRecreation')
    ResourceAttribute = Shapes::StringShape.new(name: 'ResourceAttribute')
    ResourceChange = Shapes::StructureShape.new(name: 'ResourceChange')
    ResourceChangeDetail = Shapes::StructureShape.new(name: 'ResourceChangeDetail')
    ResourceChangeDetails = Shapes::ListShape.new(name: 'ResourceChangeDetails')
    ResourceProperties = Shapes::StringShape.new(name: 'ResourceProperties')
    ResourceSignalStatus = Shapes::StringShape.new(name: 'ResourceSignalStatus')
    ResourceSignalUniqueId = Shapes::StringShape.new(name: 'ResourceSignalUniqueId')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    ResourceStatusReason = Shapes::StringShape.new(name: 'ResourceStatusReason')
    ResourceTargetDefinition = Shapes::StructureShape.new(name: 'ResourceTargetDefinition')
    ResourceToSkip = Shapes::StringShape.new(name: 'ResourceToSkip')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    ResourcesToSkip = Shapes::ListShape.new(name: 'ResourcesToSkip')
    RetainResources = Shapes::ListShape.new(name: 'RetainResources')
    RetainStacks = Shapes::BooleanShape.new(name: 'RetainStacks')
    RetainStacksNullable = Shapes::BooleanShape.new(name: 'RetainStacksNullable')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    RollbackConfiguration = Shapes::StructureShape.new(name: 'RollbackConfiguration')
    RollbackTrigger = Shapes::StructureShape.new(name: 'RollbackTrigger')
    RollbackTriggers = Shapes::ListShape.new(name: 'RollbackTriggers')
    Scope = Shapes::ListShape.new(name: 'Scope')
    SetStackPolicyInput = Shapes::StructureShape.new(name: 'SetStackPolicyInput')
    SignalResourceInput = Shapes::StructureShape.new(name: 'SignalResourceInput')
    Stack = Shapes::StructureShape.new(name: 'Stack')
    StackEvent = Shapes::StructureShape.new(name: 'StackEvent')
    StackEvents = Shapes::ListShape.new(name: 'StackEvents')
    StackId = Shapes::StringShape.new(name: 'StackId')
    StackInstance = Shapes::StructureShape.new(name: 'StackInstance')
    StackInstanceNotFoundException = Shapes::StructureShape.new(name: 'StackInstanceNotFoundException')
    StackInstanceStatus = Shapes::StringShape.new(name: 'StackInstanceStatus')
    StackInstanceSummaries = Shapes::ListShape.new(name: 'StackInstanceSummaries')
    StackInstanceSummary = Shapes::StructureShape.new(name: 'StackInstanceSummary')
    StackName = Shapes::StringShape.new(name: 'StackName')
    StackNameOrId = Shapes::StringShape.new(name: 'StackNameOrId')
    StackPolicyBody = Shapes::StringShape.new(name: 'StackPolicyBody')
    StackPolicyDuringUpdateBody = Shapes::StringShape.new(name: 'StackPolicyDuringUpdateBody')
    StackPolicyDuringUpdateURL = Shapes::StringShape.new(name: 'StackPolicyDuringUpdateURL')
    StackPolicyURL = Shapes::StringShape.new(name: 'StackPolicyURL')
    StackResource = Shapes::StructureShape.new(name: 'StackResource')
    StackResourceDetail = Shapes::StructureShape.new(name: 'StackResourceDetail')
    StackResourceSummaries = Shapes::ListShape.new(name: 'StackResourceSummaries')
    StackResourceSummary = Shapes::StructureShape.new(name: 'StackResourceSummary')
    StackResources = Shapes::ListShape.new(name: 'StackResources')
    StackSet = Shapes::StructureShape.new(name: 'StackSet')
    StackSetARN = Shapes::StringShape.new(name: 'StackSetARN')
    StackSetId = Shapes::StringShape.new(name: 'StackSetId')
    StackSetName = Shapes::StringShape.new(name: 'StackSetName')
    StackSetNameOrId = Shapes::StringShape.new(name: 'StackSetNameOrId')
    StackSetNotEmptyException = Shapes::StructureShape.new(name: 'StackSetNotEmptyException')
    StackSetNotFoundException = Shapes::StructureShape.new(name: 'StackSetNotFoundException')
    StackSetOperation = Shapes::StructureShape.new(name: 'StackSetOperation')
    StackSetOperationAction = Shapes::StringShape.new(name: 'StackSetOperationAction')
    StackSetOperationPreferences = Shapes::StructureShape.new(name: 'StackSetOperationPreferences')
    StackSetOperationResultStatus = Shapes::StringShape.new(name: 'StackSetOperationResultStatus')
    StackSetOperationResultSummaries = Shapes::ListShape.new(name: 'StackSetOperationResultSummaries')
    StackSetOperationResultSummary = Shapes::StructureShape.new(name: 'StackSetOperationResultSummary')
    StackSetOperationStatus = Shapes::StringShape.new(name: 'StackSetOperationStatus')
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
    StaleRequestException = Shapes::StructureShape.new(name: 'StaleRequestException')
    StopStackSetOperationInput = Shapes::StructureShape.new(name: 'StopStackSetOperationInput')
    StopStackSetOperationOutput = Shapes::StructureShape.new(name: 'StopStackSetOperationOutput')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TemplateBody = Shapes::StringShape.new(name: 'TemplateBody')
    TemplateDescription = Shapes::StringShape.new(name: 'TemplateDescription')
    TemplateParameter = Shapes::StructureShape.new(name: 'TemplateParameter')
    TemplateParameters = Shapes::ListShape.new(name: 'TemplateParameters')
    TemplateStage = Shapes::StringShape.new(name: 'TemplateStage')
    TemplateURL = Shapes::StringShape.new(name: 'TemplateURL')
    TimeoutMinutes = Shapes::IntegerShape.new(name: 'TimeoutMinutes')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenAlreadyExistsException = Shapes::StructureShape.new(name: 'TokenAlreadyExistsException')
    TransformName = Shapes::StringShape.new(name: 'TransformName')
    TransformsList = Shapes::ListShape.new(name: 'TransformsList')
    Type = Shapes::StringShape.new(name: 'Type')
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
    Version = Shapes::StringShape.new(name: 'Version')

    AccountGateResult.add_member(:status, Shapes::ShapeRef.new(shape: AccountGateStatus, location_name: "Status"))
    AccountGateResult.add_member(:status_reason, Shapes::ShapeRef.new(shape: AccountGateStatusReason, location_name: "StatusReason"))
    AccountGateResult.struct_class = Types::AccountGateResult

    AccountLimit.add_member(:name, Shapes::ShapeRef.new(shape: LimitName, location_name: "Name"))
    AccountLimit.add_member(:value, Shapes::ShapeRef.new(shape: LimitValue, location_name: "Value"))
    AccountLimit.struct_class = Types::AccountLimit

    AccountLimitList.member = Shapes::ShapeRef.new(shape: AccountLimit)

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    AllowedValues.member = Shapes::ShapeRef.new(shape: AllowedValue)

    CancelUpdateStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    CancelUpdateStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    CancelUpdateStackInput.struct_class = Types::CancelUpdateStackInput

    Capabilities.member = Shapes::ShapeRef.new(shape: Capability)

    Change.add_member(:type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "Type"))
    Change.add_member(:resource_change, Shapes::ShapeRef.new(shape: ResourceChange, location_name: "ResourceChange"))
    Change.struct_class = Types::Change

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
    ChangeSetSummary.struct_class = Types::ChangeSetSummary

    Changes.member = Shapes::ShapeRef.new(shape: Change)

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
    CreateChangeSetInput.struct_class = Types::CreateChangeSetInput

    CreateChangeSetOutput.add_member(:id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "Id"))
    CreateChangeSetOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    CreateChangeSetOutput.struct_class = Types::CreateChangeSetOutput

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
    CreateStackInput.struct_class = Types::CreateStackInput

    CreateStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    CreateStackInstancesInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, required: true, location_name: "Accounts"))
    CreateStackInstancesInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "Regions"))
    CreateStackInstancesInput.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: Parameters, location_name: "ParameterOverrides"))
    CreateStackInstancesInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    CreateStackInstancesInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken"=>true}))
    CreateStackInstancesInput.struct_class = Types::CreateStackInstancesInput

    CreateStackInstancesOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    CreateStackInstancesOutput.struct_class = Types::CreateStackInstancesOutput

    CreateStackOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    CreateStackOutput.struct_class = Types::CreateStackOutput

    CreateStackSetInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    CreateStackSetInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStackSetInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    CreateStackSetInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    CreateStackSetInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateStackSetInput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    CreateStackSetInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateStackSetInput.add_member(:administration_role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "AdministrationRoleARN"))
    CreateStackSetInput.add_member(:execution_role_name, Shapes::ShapeRef.new(shape: ExecutionRoleName, location_name: "ExecutionRoleName"))
    CreateStackSetInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateStackSetInput.struct_class = Types::CreateStackSetInput

    CreateStackSetOutput.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    CreateStackSetOutput.struct_class = Types::CreateStackSetOutput

    DeleteChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
    DeleteChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    DeleteChangeSetInput.struct_class = Types::DeleteChangeSetInput

    DeleteChangeSetOutput.struct_class = Types::DeleteChangeSetOutput

    DeleteStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    DeleteStackInput.add_member(:retain_resources, Shapes::ShapeRef.new(shape: RetainResources, location_name: "RetainResources"))
    DeleteStackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    DeleteStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    DeleteStackInput.struct_class = Types::DeleteStackInput

    DeleteStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DeleteStackInstancesInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, required: true, location_name: "Accounts"))
    DeleteStackInstancesInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "Regions"))
    DeleteStackInstancesInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    DeleteStackInstancesInput.add_member(:retain_stacks, Shapes::ShapeRef.new(shape: RetainStacks, required: true, location_name: "RetainStacks"))
    DeleteStackInstancesInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken"=>true}))
    DeleteStackInstancesInput.struct_class = Types::DeleteStackInstancesInput

    DeleteStackInstancesOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    DeleteStackInstancesOutput.struct_class = Types::DeleteStackInstancesOutput

    DeleteStackSetInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DeleteStackSetInput.struct_class = Types::DeleteStackSetInput

    DeleteStackSetOutput.struct_class = Types::DeleteStackSetOutput

    DescribeAccountLimitsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountLimitsInput.struct_class = Types::DescribeAccountLimitsInput

    DescribeAccountLimitsOutput.add_member(:account_limits, Shapes::ShapeRef.new(shape: AccountLimitList, location_name: "AccountLimits"))
    DescribeAccountLimitsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountLimitsOutput.struct_class = Types::DescribeAccountLimitsOutput

    DescribeChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
    DescribeChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    DescribeChangeSetInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
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
    DescribeChangeSetOutput.struct_class = Types::DescribeChangeSetOutput

    DescribeStackEventsInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    DescribeStackEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStackEventsInput.struct_class = Types::DescribeStackEventsInput

    DescribeStackEventsOutput.add_member(:stack_events, Shapes::ShapeRef.new(shape: StackEvents, location_name: "StackEvents"))
    DescribeStackEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStackEventsOutput.struct_class = Types::DescribeStackEventsOutput

    DescribeStackInstanceInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DescribeStackInstanceInput.add_member(:stack_instance_account, Shapes::ShapeRef.new(shape: Account, required: true, location_name: "StackInstanceAccount"))
    DescribeStackInstanceInput.add_member(:stack_instance_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "StackInstanceRegion"))
    DescribeStackInstanceInput.struct_class = Types::DescribeStackInstanceInput

    DescribeStackInstanceOutput.add_member(:stack_instance, Shapes::ShapeRef.new(shape: StackInstance, location_name: "StackInstance"))
    DescribeStackInstanceOutput.struct_class = Types::DescribeStackInstanceOutput

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
    DescribeStackSetInput.struct_class = Types::DescribeStackSetInput

    DescribeStackSetOperationInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    DescribeStackSetOperationInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "OperationId"))
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

    EstimateTemplateCostInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    EstimateTemplateCostInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
    EstimateTemplateCostInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    EstimateTemplateCostInput.struct_class = Types::EstimateTemplateCostInput

    EstimateTemplateCostOutput.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "Url"))
    EstimateTemplateCostOutput.struct_class = Types::EstimateTemplateCostOutput

    ExecuteChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
    ExecuteChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
    ExecuteChangeSetInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    ExecuteChangeSetInput.struct_class = Types::ExecuteChangeSetInput

    ExecuteChangeSetOutput.struct_class = Types::ExecuteChangeSetOutput

    Export.add_member(:exporting_stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "ExportingStackId"))
    Export.add_member(:name, Shapes::ShapeRef.new(shape: ExportName, location_name: "Name"))
    Export.add_member(:value, Shapes::ShapeRef.new(shape: ExportValue, location_name: "Value"))
    Export.struct_class = Types::Export

    Exports.member = Shapes::ShapeRef.new(shape: Export)

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
    GetTemplateSummaryInput.struct_class = Types::GetTemplateSummaryInput

    GetTemplateSummaryOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterDeclarations, location_name: "Parameters"))
    GetTemplateSummaryOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetTemplateSummaryOutput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    GetTemplateSummaryOutput.add_member(:capabilities_reason, Shapes::ShapeRef.new(shape: CapabilitiesReason, location_name: "CapabilitiesReason"))
    GetTemplateSummaryOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    GetTemplateSummaryOutput.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
    GetTemplateSummaryOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    GetTemplateSummaryOutput.add_member(:declared_transforms, Shapes::ShapeRef.new(shape: TransformsList, location_name: "DeclaredTransforms"))
    GetTemplateSummaryOutput.struct_class = Types::GetTemplateSummaryOutput

    Imports.member = Shapes::ShapeRef.new(shape: StackName)

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

    ListImportsInput.add_member(:export_name, Shapes::ShapeRef.new(shape: ExportName, required: true, location_name: "ExportName"))
    ListImportsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImportsInput.struct_class = Types::ListImportsInput

    ListImportsOutput.add_member(:imports, Shapes::ShapeRef.new(shape: Imports, location_name: "Imports"))
    ListImportsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImportsOutput.struct_class = Types::ListImportsOutput

    ListStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    ListStackInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackInstancesInput.add_member(:stack_instance_account, Shapes::ShapeRef.new(shape: Account, location_name: "StackInstanceAccount"))
    ListStackInstancesInput.add_member(:stack_instance_region, Shapes::ShapeRef.new(shape: Region, location_name: "StackInstanceRegion"))
    ListStackInstancesInput.struct_class = Types::ListStackInstancesInput

    ListStackInstancesOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackInstanceSummaries, location_name: "Summaries"))
    ListStackInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackInstancesOutput.struct_class = Types::ListStackInstancesOutput

    ListStackResourcesInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    ListStackResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackResourcesInput.struct_class = Types::ListStackResourcesInput

    ListStackResourcesOutput.add_member(:stack_resource_summaries, Shapes::ShapeRef.new(shape: StackResourceSummaries, location_name: "StackResourceSummaries"))
    ListStackResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackResourcesOutput.struct_class = Types::ListStackResourcesOutput

    ListStackSetOperationResultsInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    ListStackSetOperationResultsInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "OperationId"))
    ListStackSetOperationResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackSetOperationResultsInput.struct_class = Types::ListStackSetOperationResultsInput

    ListStackSetOperationResultsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackSetOperationResultSummaries, location_name: "Summaries"))
    ListStackSetOperationResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationResultsOutput.struct_class = Types::ListStackSetOperationResultsOutput

    ListStackSetOperationsInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    ListStackSetOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackSetOperationsInput.struct_class = Types::ListStackSetOperationsInput

    ListStackSetOperationsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: StackSetOperationSummaries, location_name: "Summaries"))
    ListStackSetOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetOperationsOutput.struct_class = Types::ListStackSetOperationsOutput

    ListStackSetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStackSetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStackSetsInput.add_member(:status, Shapes::ShapeRef.new(shape: StackSetStatus, location_name: "Status"))
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

    NotificationARNs.member = Shapes::ShapeRef.new(shape: NotificationARN)

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

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    ResourceChange.add_member(:action, Shapes::ShapeRef.new(shape: ChangeAction, location_name: "Action"))
    ResourceChange.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "LogicalResourceId"))
    ResourceChange.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    ResourceChange.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceChange.add_member(:replacement, Shapes::ShapeRef.new(shape: Replacement, location_name: "Replacement"))
    ResourceChange.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    ResourceChange.add_member(:details, Shapes::ShapeRef.new(shape: ResourceChangeDetails, location_name: "Details"))
    ResourceChange.struct_class = Types::ResourceChange

    ResourceChangeDetail.add_member(:target, Shapes::ShapeRef.new(shape: ResourceTargetDefinition, location_name: "Target"))
    ResourceChangeDetail.add_member(:evaluation, Shapes::ShapeRef.new(shape: EvaluationType, location_name: "Evaluation"))
    ResourceChangeDetail.add_member(:change_source, Shapes::ShapeRef.new(shape: ChangeSource, location_name: "ChangeSource"))
    ResourceChangeDetail.add_member(:causing_entity, Shapes::ShapeRef.new(shape: CausingEntity, location_name: "CausingEntity"))
    ResourceChangeDetail.struct_class = Types::ResourceChangeDetail

    ResourceChangeDetails.member = Shapes::ShapeRef.new(shape: ResourceChangeDetail)

    ResourceTargetDefinition.add_member(:attribute, Shapes::ShapeRef.new(shape: ResourceAttribute, location_name: "Attribute"))
    ResourceTargetDefinition.add_member(:name, Shapes::ShapeRef.new(shape: PropertyName, location_name: "Name"))
    ResourceTargetDefinition.add_member(:requires_recreation, Shapes::ShapeRef.new(shape: RequiresRecreation, location_name: "RequiresRecreation"))
    ResourceTargetDefinition.struct_class = Types::ResourceTargetDefinition

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourcesToSkip.member = Shapes::ShapeRef.new(shape: ResourceToSkip)

    RetainResources.member = Shapes::ShapeRef.new(shape: LogicalResourceId)

    RollbackConfiguration.add_member(:rollback_triggers, Shapes::ShapeRef.new(shape: RollbackTriggers, location_name: "RollbackTriggers"))
    RollbackConfiguration.add_member(:monitoring_time_in_minutes, Shapes::ShapeRef.new(shape: MonitoringTimeInMinutes, location_name: "MonitoringTimeInMinutes"))
    RollbackConfiguration.struct_class = Types::RollbackConfiguration

    RollbackTrigger.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    RollbackTrigger.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    RollbackTrigger.struct_class = Types::RollbackTrigger

    RollbackTriggers.member = Shapes::ShapeRef.new(shape: RollbackTrigger)

    Scope.member = Shapes::ShapeRef.new(shape: ResourceAttribute)

    SetStackPolicyInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
    SetStackPolicyInput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
    SetStackPolicyInput.add_member(:stack_policy_url, Shapes::ShapeRef.new(shape: StackPolicyURL, location_name: "StackPolicyURL"))
    SetStackPolicyInput.struct_class = Types::SetStackPolicyInput

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
    Stack.struct_class = Types::Stack

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
    StackEvent.struct_class = Types::StackEvent

    StackEvents.member = Shapes::ShapeRef.new(shape: StackEvent)

    StackInstance.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackInstance.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    StackInstance.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    StackInstance.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackInstance.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: Parameters, location_name: "ParameterOverrides"))
    StackInstance.add_member(:status, Shapes::ShapeRef.new(shape: StackInstanceStatus, location_name: "Status"))
    StackInstance.add_member(:status_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "StatusReason"))
    StackInstance.struct_class = Types::StackInstance

    StackInstanceSummaries.member = Shapes::ShapeRef.new(shape: StackInstanceSummary)

    StackInstanceSummary.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackInstanceSummary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    StackInstanceSummary.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    StackInstanceSummary.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackInstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackInstanceStatus, location_name: "Status"))
    StackInstanceSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "StatusReason"))
    StackInstanceSummary.struct_class = Types::StackInstanceSummary

    StackResource.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "StackName"))
    StackResource.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
    StackResource.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    StackResource.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    StackResource.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    StackResource.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "ResourceStatus"))
    StackResource.add_member(:resource_status_reason, Shapes::ShapeRef.new(shape: ResourceStatusReason, location_name: "ResourceStatusReason"))
    StackResource.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
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
    StackResourceDetail.struct_class = Types::StackResourceDetail

    StackResourceSummaries.member = Shapes::ShapeRef.new(shape: StackResourceSummary)

    StackResourceSummary.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "LogicalResourceId"))
    StackResourceSummary.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, location_name: "PhysicalResourceId"))
    StackResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    StackResourceSummary.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTimestamp"))
    StackResourceSummary.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "ResourceStatus"))
    StackResourceSummary.add_member(:resource_status_reason, Shapes::ShapeRef.new(shape: ResourceStatusReason, location_name: "ResourceStatusReason"))
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
    StackSet.struct_class = Types::StackSet

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
    StackSetOperation.struct_class = Types::StackSetOperation

    StackSetOperationPreferences.add_member(:region_order, Shapes::ShapeRef.new(shape: RegionList, location_name: "RegionOrder"))
    StackSetOperationPreferences.add_member(:failure_tolerance_count, Shapes::ShapeRef.new(shape: FailureToleranceCount, location_name: "FailureToleranceCount"))
    StackSetOperationPreferences.add_member(:failure_tolerance_percentage, Shapes::ShapeRef.new(shape: FailureTolerancePercentage, location_name: "FailureTolerancePercentage"))
    StackSetOperationPreferences.add_member(:max_concurrent_count, Shapes::ShapeRef.new(shape: MaxConcurrentCount, location_name: "MaxConcurrentCount"))
    StackSetOperationPreferences.add_member(:max_concurrent_percentage, Shapes::ShapeRef.new(shape: MaxConcurrentPercentage, location_name: "MaxConcurrentPercentage"))
    StackSetOperationPreferences.struct_class = Types::StackSetOperationPreferences

    StackSetOperationResultSummaries.member = Shapes::ShapeRef.new(shape: StackSetOperationResultSummary)

    StackSetOperationResultSummary.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    StackSetOperationResultSummary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    StackSetOperationResultSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackSetOperationResultStatus, location_name: "Status"))
    StackSetOperationResultSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "StatusReason"))
    StackSetOperationResultSummary.add_member(:account_gate_result, Shapes::ShapeRef.new(shape: AccountGateResult, location_name: "AccountGateResult"))
    StackSetOperationResultSummary.struct_class = Types::StackSetOperationResultSummary

    StackSetOperationSummaries.member = Shapes::ShapeRef.new(shape: StackSetOperationSummary)

    StackSetOperationSummary.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId"))
    StackSetOperationSummary.add_member(:action, Shapes::ShapeRef.new(shape: StackSetOperationAction, location_name: "Action"))
    StackSetOperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackSetOperationStatus, location_name: "Status"))
    StackSetOperationSummary.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimestamp"))
    StackSetOperationSummary.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTimestamp"))
    StackSetOperationSummary.struct_class = Types::StackSetOperationSummary

    StackSetSummaries.member = Shapes::ShapeRef.new(shape: StackSetSummary)

    StackSetSummary.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, location_name: "StackSetName"))
    StackSetSummary.add_member(:stack_set_id, Shapes::ShapeRef.new(shape: StackSetId, location_name: "StackSetId"))
    StackSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StackSetSummary.add_member(:status, Shapes::ShapeRef.new(shape: StackSetStatus, location_name: "Status"))
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
    StackSummary.struct_class = Types::StackSummary

    Stacks.member = Shapes::ShapeRef.new(shape: Stack)

    StageList.member = Shapes::ShapeRef.new(shape: TemplateStage)

    StopStackSetOperationInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, required: true, location_name: "StackSetName"))
    StopStackSetOperationInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "OperationId"))
    StopStackSetOperationInput.struct_class = Types::StopStackSetOperationInput

    StopStackSetOperationOutput.struct_class = Types::StopStackSetOperationOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TemplateParameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
    TemplateParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "DefaultValue"))
    TemplateParameter.add_member(:no_echo, Shapes::ShapeRef.new(shape: NoEcho, location_name: "NoEcho"))
    TemplateParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TemplateParameter.struct_class = Types::TemplateParameter

    TemplateParameters.member = Shapes::ShapeRef.new(shape: TemplateParameter)

    TransformsList.member = Shapes::ShapeRef.new(shape: TransformName)

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
    UpdateStackInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    UpdateStackInput.struct_class = Types::UpdateStackInput

    UpdateStackInstancesInput.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetNameOrId, required: true, location_name: "StackSetName"))
    UpdateStackInstancesInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, required: true, location_name: "Accounts"))
    UpdateStackInstancesInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "Regions"))
    UpdateStackInstancesInput.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: Parameters, location_name: "ParameterOverrides"))
    UpdateStackInstancesInput.add_member(:operation_preferences, Shapes::ShapeRef.new(shape: StackSetOperationPreferences, location_name: "OperationPreferences"))
    UpdateStackInstancesInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken"=>true}))
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
    UpdateStackSetInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "OperationId", metadata: {"idempotencyToken"=>true}))
    UpdateStackSetInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    UpdateStackSetInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "Regions"))
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


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2010-05-15"

      api.metadata = {
        "apiVersion" => "2010-05-15",
        "endpointPrefix" => "cloudformation",
        "protocol" => "query",
        "serviceFullName" => "AWS CloudFormation",
        "serviceId" => "CloudFormation",
        "signatureVersion" => "v4",
        "uid" => "cloudformation-2010-05-15",
        "xmlNamespace" => "http://cloudformation.amazonaws.com/doc/2010-05-15/",
      }

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

      api.add_operation(:delete_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteChangeSetInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteChangeSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidChangeSetStatusException)
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

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsOutput)
      end)

      api.add_operation(:describe_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeChangeSetInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeChangeSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: ChangeSetNotFoundException)
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

      api.add_operation(:describe_stack_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackResourceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackResourceOutput)
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

      api.add_operation(:list_change_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangeSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListChangeSetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListChangeSetsOutput)
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

      api.add_operation(:list_stack_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
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

      api.add_operation(:list_stack_set_operation_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackSetOperationResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackSetOperationResultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackSetOperationResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFoundException)
      end)

      api.add_operation(:list_stack_set_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackSetOperations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackSetOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackSetOperationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: StackSetNotFoundException)
      end)

      api.add_operation(:list_stack_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStackSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStackSetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStackSetsOutput)
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

      api.add_operation(:set_stack_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetStackPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetStackPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:signal_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SignalResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SignalResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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
