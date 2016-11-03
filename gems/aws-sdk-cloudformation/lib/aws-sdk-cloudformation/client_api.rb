# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudFormation
    # @api private
    module ClientApi

      include Seahorse::Model

      AccountLimit = Shapes::StructureShape.new(name: 'AccountLimit')
      AccountLimitList = Shapes::ListShape.new(name: 'AccountLimitList')
      AllowedValue = Shapes::StringShape.new(name: 'AllowedValue')
      AllowedValues = Shapes::ListShape.new(name: 'AllowedValues')
      AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
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
      ChangeSource = Shapes::StringShape.new(name: 'ChangeSource')
      ChangeType = Shapes::StringShape.new(name: 'ChangeType')
      Changes = Shapes::ListShape.new(name: 'Changes')
      ClientToken = Shapes::StringShape.new(name: 'ClientToken')
      ContinueUpdateRollbackInput = Shapes::StructureShape.new(name: 'ContinueUpdateRollbackInput')
      ContinueUpdateRollbackOutput = Shapes::StructureShape.new(name: 'ContinueUpdateRollbackOutput')
      CreateChangeSetInput = Shapes::StructureShape.new(name: 'CreateChangeSetInput')
      CreateChangeSetOutput = Shapes::StructureShape.new(name: 'CreateChangeSetOutput')
      CreateStackInput = Shapes::StructureShape.new(name: 'CreateStackInput')
      CreateStackOutput = Shapes::StructureShape.new(name: 'CreateStackOutput')
      CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
      DeleteChangeSetInput = Shapes::StructureShape.new(name: 'DeleteChangeSetInput')
      DeleteChangeSetOutput = Shapes::StructureShape.new(name: 'DeleteChangeSetOutput')
      DeleteStackInput = Shapes::StructureShape.new(name: 'DeleteStackInput')
      DeletionTime = Shapes::TimestampShape.new(name: 'DeletionTime')
      DescribeAccountLimitsInput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsInput')
      DescribeAccountLimitsOutput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsOutput')
      DescribeChangeSetInput = Shapes::StructureShape.new(name: 'DescribeChangeSetInput')
      DescribeChangeSetOutput = Shapes::StructureShape.new(name: 'DescribeChangeSetOutput')
      DescribeStackEventsInput = Shapes::StructureShape.new(name: 'DescribeStackEventsInput')
      DescribeStackEventsOutput = Shapes::StructureShape.new(name: 'DescribeStackEventsOutput')
      DescribeStackResourceInput = Shapes::StructureShape.new(name: 'DescribeStackResourceInput')
      DescribeStackResourceOutput = Shapes::StructureShape.new(name: 'DescribeStackResourceOutput')
      DescribeStackResourcesInput = Shapes::StructureShape.new(name: 'DescribeStackResourcesInput')
      DescribeStackResourcesOutput = Shapes::StructureShape.new(name: 'DescribeStackResourcesOutput')
      DescribeStacksInput = Shapes::StructureShape.new(name: 'DescribeStacksInput')
      DescribeStacksOutput = Shapes::StructureShape.new(name: 'DescribeStacksOutput')
      Description = Shapes::StringShape.new(name: 'Description')
      DisableRollback = Shapes::BooleanShape.new(name: 'DisableRollback')
      EstimateTemplateCostInput = Shapes::StructureShape.new(name: 'EstimateTemplateCostInput')
      EstimateTemplateCostOutput = Shapes::StructureShape.new(name: 'EstimateTemplateCostOutput')
      EvaluationType = Shapes::StringShape.new(name: 'EvaluationType')
      EventId = Shapes::StringShape.new(name: 'EventId')
      ExecuteChangeSetInput = Shapes::StructureShape.new(name: 'ExecuteChangeSetInput')
      ExecuteChangeSetOutput = Shapes::StructureShape.new(name: 'ExecuteChangeSetOutput')
      ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
      GetStackPolicyInput = Shapes::StructureShape.new(name: 'GetStackPolicyInput')
      GetStackPolicyOutput = Shapes::StructureShape.new(name: 'GetStackPolicyOutput')
      GetTemplateInput = Shapes::StructureShape.new(name: 'GetTemplateInput')
      GetTemplateOutput = Shapes::StructureShape.new(name: 'GetTemplateOutput')
      GetTemplateSummaryInput = Shapes::StructureShape.new(name: 'GetTemplateSummaryInput')
      GetTemplateSummaryOutput = Shapes::StructureShape.new(name: 'GetTemplateSummaryOutput')
      InsufficientCapabilitiesException = Shapes::StructureShape.new(name: 'InsufficientCapabilitiesException')
      InvalidChangeSetStatusException = Shapes::StructureShape.new(name: 'InvalidChangeSetStatusException')
      LastUpdatedTime = Shapes::TimestampShape.new(name: 'LastUpdatedTime')
      LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
      LimitName = Shapes::StringShape.new(name: 'LimitName')
      LimitValue = Shapes::IntegerShape.new(name: 'LimitValue')
      ListChangeSetsInput = Shapes::StructureShape.new(name: 'ListChangeSetsInput')
      ListChangeSetsOutput = Shapes::StructureShape.new(name: 'ListChangeSetsOutput')
      ListStackResourcesInput = Shapes::StructureShape.new(name: 'ListStackResourcesInput')
      ListStackResourcesOutput = Shapes::StructureShape.new(name: 'ListStackResourcesOutput')
      ListStacksInput = Shapes::StructureShape.new(name: 'ListStacksInput')
      ListStacksOutput = Shapes::StructureShape.new(name: 'ListStacksOutput')
      LogicalResourceId = Shapes::StringShape.new(name: 'LogicalResourceId')
      Metadata = Shapes::StringShape.new(name: 'Metadata')
      NextToken = Shapes::StringShape.new(name: 'NextToken')
      NoEcho = Shapes::BooleanShape.new(name: 'NoEcho')
      NotificationARN = Shapes::StringShape.new(name: 'NotificationARN')
      NotificationARNs = Shapes::ListShape.new(name: 'NotificationARNs')
      OnFailure = Shapes::StringShape.new(name: 'OnFailure')
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
      ResourceType = Shapes::StringShape.new(name: 'ResourceType')
      ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
      RetainResources = Shapes::ListShape.new(name: 'RetainResources')
      RoleARN = Shapes::StringShape.new(name: 'RoleARN')
      Scope = Shapes::ListShape.new(name: 'Scope')
      SetStackPolicyInput = Shapes::StructureShape.new(name: 'SetStackPolicyInput')
      SignalResourceInput = Shapes::StructureShape.new(name: 'SignalResourceInput')
      Stack = Shapes::StructureShape.new(name: 'Stack')
      StackEvent = Shapes::StructureShape.new(name: 'StackEvent')
      StackEvents = Shapes::ListShape.new(name: 'StackEvents')
      StackId = Shapes::StringShape.new(name: 'StackId')
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
      StackStatus = Shapes::StringShape.new(name: 'StackStatus')
      StackStatusFilter = Shapes::ListShape.new(name: 'StackStatusFilter')
      StackStatusReason = Shapes::StringShape.new(name: 'StackStatusReason')
      StackSummaries = Shapes::ListShape.new(name: 'StackSummaries')
      StackSummary = Shapes::StructureShape.new(name: 'StackSummary')
      Stacks = Shapes::ListShape.new(name: 'Stacks')
      Tag = Shapes::StructureShape.new(name: 'Tag')
      TagKey = Shapes::StringShape.new(name: 'TagKey')
      TagValue = Shapes::StringShape.new(name: 'TagValue')
      Tags = Shapes::ListShape.new(name: 'Tags')
      TemplateBody = Shapes::StringShape.new(name: 'TemplateBody')
      TemplateDescription = Shapes::StringShape.new(name: 'TemplateDescription')
      TemplateParameter = Shapes::StructureShape.new(name: 'TemplateParameter')
      TemplateParameters = Shapes::ListShape.new(name: 'TemplateParameters')
      TemplateURL = Shapes::StringShape.new(name: 'TemplateURL')
      TimeoutMinutes = Shapes::IntegerShape.new(name: 'TimeoutMinutes')
      Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
      UpdateStackInput = Shapes::StructureShape.new(name: 'UpdateStackInput')
      UpdateStackOutput = Shapes::StructureShape.new(name: 'UpdateStackOutput')
      Url = Shapes::StringShape.new(name: 'Url')
      UsePreviousTemplate = Shapes::BooleanShape.new(name: 'UsePreviousTemplate')
      UsePreviousValue = Shapes::BooleanShape.new(name: 'UsePreviousValue')
      ValidateTemplateInput = Shapes::StructureShape.new(name: 'ValidateTemplateInput')
      ValidateTemplateOutput = Shapes::StructureShape.new(name: 'ValidateTemplateOutput')
      Version = Shapes::StringShape.new(name: 'Version')

      AccountLimit.add_member(:name, Shapes::ShapeRef.new(shape: LimitName, location_name: "Name"))
      AccountLimit.add_member(:value, Shapes::ShapeRef.new(shape: LimitValue, location_name: "Value"))
      AccountLimit.struct_class = Types::AccountLimit

      AccountLimitList.member = Shapes::ShapeRef.new(shape: AccountLimit)

      AllowedValues.member = Shapes::ShapeRef.new(shape: AllowedValue)

      CancelUpdateStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
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
      CreateChangeSetInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
      CreateChangeSetInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
      CreateChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, required: true, location_name: "ChangeSetName"))
      CreateChangeSetInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
      CreateChangeSetInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
      CreateChangeSetInput.struct_class = Types::CreateChangeSetInput

      CreateChangeSetOutput.add_member(:id, Shapes::ShapeRef.new(shape: ChangeSetId, location_name: "Id"))
      CreateChangeSetOutput.struct_class = Types::CreateChangeSetOutput

      CreateStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
      CreateStackInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
      CreateStackInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
      CreateStackInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
      CreateStackInput.add_member(:disable_rollback, Shapes::ShapeRef.new(shape: DisableRollback, location_name: "DisableRollback"))
      CreateStackInput.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: TimeoutMinutes, location_name: "TimeoutInMinutes"))
      CreateStackInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
      CreateStackInput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
      CreateStackInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
      CreateStackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
      CreateStackInput.add_member(:on_failure, Shapes::ShapeRef.new(shape: OnFailure, location_name: "OnFailure"))
      CreateStackInput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
      CreateStackInput.add_member(:stack_policy_url, Shapes::ShapeRef.new(shape: StackPolicyURL, location_name: "StackPolicyURL"))
      CreateStackInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
      CreateStackInput.struct_class = Types::CreateStackInput

      CreateStackOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
      CreateStackOutput.struct_class = Types::CreateStackOutput

      DeleteChangeSetInput.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetNameOrId, required: true, location_name: "ChangeSetName"))
      DeleteChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
      DeleteChangeSetInput.struct_class = Types::DeleteChangeSetInput

      DeleteChangeSetOutput.struct_class = Types::DeleteChangeSetOutput

      DeleteStackInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
      DeleteStackInput.add_member(:retain_resources, Shapes::ShapeRef.new(shape: RetainResources, location_name: "RetainResources"))
      DeleteStackInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
      DeleteStackInput.struct_class = Types::DeleteStackInput

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
      ExecuteChangeSetInput.struct_class = Types::ExecuteChangeSetInput

      ExecuteChangeSetOutput.struct_class = Types::ExecuteChangeSetOutput

      GetStackPolicyInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
      GetStackPolicyInput.struct_class = Types::GetStackPolicyInput

      GetStackPolicyOutput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
      GetStackPolicyOutput.struct_class = Types::GetStackPolicyOutput

      GetTemplateInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
      GetTemplateInput.struct_class = Types::GetTemplateInput

      GetTemplateOutput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
      GetTemplateOutput.struct_class = Types::GetTemplateOutput

      GetTemplateSummaryInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
      GetTemplateSummaryInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
      GetTemplateSummaryInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, location_name: "StackName"))
      GetTemplateSummaryInput.struct_class = Types::GetTemplateSummaryInput

      GetTemplateSummaryOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterDeclarations, location_name: "Parameters"))
      GetTemplateSummaryOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
      GetTemplateSummaryOutput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
      GetTemplateSummaryOutput.add_member(:capabilities_reason, Shapes::ShapeRef.new(shape: CapabilitiesReason, location_name: "CapabilitiesReason"))
      GetTemplateSummaryOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
      GetTemplateSummaryOutput.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
      GetTemplateSummaryOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
      GetTemplateSummaryOutput.struct_class = Types::GetTemplateSummaryOutput

      ListChangeSetsInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackNameOrId, required: true, location_name: "StackName"))
      ListChangeSetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListChangeSetsInput.struct_class = Types::ListChangeSetsInput

      ListChangeSetsOutput.add_member(:summaries, Shapes::ShapeRef.new(shape: ChangeSetSummaries, location_name: "Summaries"))
      ListChangeSetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListChangeSetsOutput.struct_class = Types::ListChangeSetsOutput

      ListStackResourcesInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, required: true, location_name: "StackName"))
      ListStackResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListStackResourcesInput.struct_class = Types::ListStackResourcesInput

      ListStackResourcesOutput.add_member(:stack_resource_summaries, Shapes::ShapeRef.new(shape: StackResourceSummaries, location_name: "StackResourceSummaries"))
      ListStackResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListStackResourcesOutput.struct_class = Types::ListStackResourcesOutput

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
      Output.struct_class = Types::Output

      Outputs.member = Shapes::ShapeRef.new(shape: Output)

      Parameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
      Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "ParameterValue"))
      Parameter.add_member(:use_previous_value, Shapes::ShapeRef.new(shape: UsePreviousValue, location_name: "UsePreviousValue"))
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

      RetainResources.member = Shapes::ShapeRef.new(shape: LogicalResourceId)

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
      Stack.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
      Stack.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
      Stack.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
      Stack.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
      Stack.add_member(:stack_status, Shapes::ShapeRef.new(shape: StackStatus, required: true, location_name: "StackStatus"))
      Stack.add_member(:stack_status_reason, Shapes::ShapeRef.new(shape: StackStatusReason, location_name: "StackStatusReason"))
      Stack.add_member(:disable_rollback, Shapes::ShapeRef.new(shape: DisableRollback, location_name: "DisableRollback"))
      Stack.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
      Stack.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: TimeoutMinutes, location_name: "TimeoutInMinutes"))
      Stack.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
      Stack.add_member(:outputs, Shapes::ShapeRef.new(shape: Outputs, location_name: "Outputs"))
      Stack.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
      Stack.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
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
      StackEvent.struct_class = Types::StackEvent

      StackEvents.member = Shapes::ShapeRef.new(shape: StackEvent)

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
      StackSummary.struct_class = Types::StackSummary

      Stacks.member = Shapes::ShapeRef.new(shape: Stack)

      Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
      Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
      Tag.struct_class = Types::Tag

      Tags.member = Shapes::ShapeRef.new(shape: Tag)

      TemplateParameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
      TemplateParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "DefaultValue"))
      TemplateParameter.add_member(:no_echo, Shapes::ShapeRef.new(shape: NoEcho, location_name: "NoEcho"))
      TemplateParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
      TemplateParameter.struct_class = Types::TemplateParameter

      TemplateParameters.member = Shapes::ShapeRef.new(shape: TemplateParameter)

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
      UpdateStackInput.add_member(:stack_policy_body, Shapes::ShapeRef.new(shape: StackPolicyBody, location_name: "StackPolicyBody"))
      UpdateStackInput.add_member(:stack_policy_url, Shapes::ShapeRef.new(shape: StackPolicyURL, location_name: "StackPolicyURL"))
      UpdateStackInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationARNs, location_name: "NotificationARNs"))
      UpdateStackInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
      UpdateStackInput.struct_class = Types::UpdateStackInput

      UpdateStackOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "StackId"))
      UpdateStackOutput.struct_class = Types::UpdateStackOutput

      ValidateTemplateInput.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
      ValidateTemplateInput.add_member(:template_url, Shapes::ShapeRef.new(shape: TemplateURL, location_name: "TemplateURL"))
      ValidateTemplateInput.struct_class = Types::ValidateTemplateInput

      ValidateTemplateOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: TemplateParameters, location_name: "Parameters"))
      ValidateTemplateOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
      ValidateTemplateOutput.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
      ValidateTemplateOutput.add_member(:capabilities_reason, Shapes::ShapeRef.new(shape: CapabilitiesReason, location_name: "CapabilitiesReason"))
      ValidateTemplateOutput.struct_class = Types::ValidateTemplateOutput


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2010-05-15"

        api.metadata = {
          "endpointPrefix" => "cloudformation",
          "protocol" => "query",
          "serviceFullName" => "AWS CloudFormation",
          "signatureVersion" => "v4",
          "xmlNamespace" => "http://cloudformation.amazonaws.com/doc/2010-05-15/",
        }

        api.add_operation(:cancel_update_stack, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CancelUpdateStack"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CancelUpdateStackInput)
          o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        end)

        api.add_operation(:continue_update_rollback, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ContinueUpdateRollback"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ContinueUpdateRollbackInput)
          o.output = Shapes::ShapeRef.new(shape: ContinueUpdateRollbackOutput)
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
          o.errors << Shapes::ShapeRef.new(shape: InsufficientCapabilitiesException)
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
        end)

        api.add_operation(:get_template_summary, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetTemplateSummary"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetTemplateSummaryInput)
          o.output = Shapes::ShapeRef.new(shape: GetTemplateSummaryOutput)
        end)

        api.add_operation(:list_change_sets, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListChangeSets"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListChangeSetsInput)
          o.output = Shapes::ShapeRef.new(shape: ListChangeSetsOutput)
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

        api.add_operation(:update_stack, Seahorse::Model::Operation.new.tap do |o|
          o.name = "UpdateStack"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: UpdateStackInput)
          o.output = Shapes::ShapeRef.new(shape: UpdateStackOutput)
          o.errors << Shapes::ShapeRef.new(shape: InsufficientCapabilitiesException)
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
end
