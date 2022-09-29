# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubOrchestrator
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ApplicationConfigurationName = Shapes::StringShape.new(name: 'ApplicationConfigurationName')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CreateMigrationWorkflowRequest = Shapes::StructureShape.new(name: 'CreateMigrationWorkflowRequest')
    CreateMigrationWorkflowRequestApplicationConfigurationIdString = Shapes::StringShape.new(name: 'CreateMigrationWorkflowRequestApplicationConfigurationIdString')
    CreateMigrationWorkflowRequestDescriptionString = Shapes::StringShape.new(name: 'CreateMigrationWorkflowRequestDescriptionString')
    CreateMigrationWorkflowRequestNameString = Shapes::StringShape.new(name: 'CreateMigrationWorkflowRequestNameString')
    CreateMigrationWorkflowRequestTemplateIdString = Shapes::StringShape.new(name: 'CreateMigrationWorkflowRequestTemplateIdString')
    CreateMigrationWorkflowResponse = Shapes::StructureShape.new(name: 'CreateMigrationWorkflowResponse')
    CreateWorkflowStepGroupRequest = Shapes::StructureShape.new(name: 'CreateWorkflowStepGroupRequest')
    CreateWorkflowStepGroupResponse = Shapes::StructureShape.new(name: 'CreateWorkflowStepGroupResponse')
    CreateWorkflowStepRequest = Shapes::StructureShape.new(name: 'CreateWorkflowStepRequest')
    CreateWorkflowStepResponse = Shapes::StructureShape.new(name: 'CreateWorkflowStepResponse')
    DataType = Shapes::StringShape.new(name: 'DataType')
    DeleteMigrationWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteMigrationWorkflowRequest')
    DeleteMigrationWorkflowResponse = Shapes::StructureShape.new(name: 'DeleteMigrationWorkflowResponse')
    DeleteWorkflowStepGroupRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowStepGroupRequest')
    DeleteWorkflowStepGroupResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowStepGroupResponse')
    DeleteWorkflowStepRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowStepRequest')
    DeleteWorkflowStepResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowStepResponse')
    GetMigrationWorkflowRequest = Shapes::StructureShape.new(name: 'GetMigrationWorkflowRequest')
    GetMigrationWorkflowResponse = Shapes::StructureShape.new(name: 'GetMigrationWorkflowResponse')
    GetMigrationWorkflowTemplateRequest = Shapes::StructureShape.new(name: 'GetMigrationWorkflowTemplateRequest')
    GetMigrationWorkflowTemplateResponse = Shapes::StructureShape.new(name: 'GetMigrationWorkflowTemplateResponse')
    GetTemplateStepGroupRequest = Shapes::StructureShape.new(name: 'GetTemplateStepGroupRequest')
    GetTemplateStepGroupResponse = Shapes::StructureShape.new(name: 'GetTemplateStepGroupResponse')
    GetTemplateStepRequest = Shapes::StructureShape.new(name: 'GetTemplateStepRequest')
    GetTemplateStepResponse = Shapes::StructureShape.new(name: 'GetTemplateStepResponse')
    GetWorkflowStepGroupRequest = Shapes::StructureShape.new(name: 'GetWorkflowStepGroupRequest')
    GetWorkflowStepGroupResponse = Shapes::StructureShape.new(name: 'GetWorkflowStepGroupResponse')
    GetWorkflowStepRequest = Shapes::StructureShape.new(name: 'GetWorkflowStepRequest')
    GetWorkflowStepResponse = Shapes::StructureShape.new(name: 'GetWorkflowStepResponse')
    GetWorkflowStepResponseOutputsList = Shapes::ListShape.new(name: 'GetWorkflowStepResponseOutputsList')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListMigrationWorkflowTemplatesRequest = Shapes::StructureShape.new(name: 'ListMigrationWorkflowTemplatesRequest')
    ListMigrationWorkflowTemplatesResponse = Shapes::StructureShape.new(name: 'ListMigrationWorkflowTemplatesResponse')
    ListMigrationWorkflowsRequest = Shapes::StructureShape.new(name: 'ListMigrationWorkflowsRequest')
    ListMigrationWorkflowsResponse = Shapes::StructureShape.new(name: 'ListMigrationWorkflowsResponse')
    ListPluginsRequest = Shapes::StructureShape.new(name: 'ListPluginsRequest')
    ListPluginsResponse = Shapes::StructureShape.new(name: 'ListPluginsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTemplateStepGroupsRequest = Shapes::StructureShape.new(name: 'ListTemplateStepGroupsRequest')
    ListTemplateStepGroupsResponse = Shapes::StructureShape.new(name: 'ListTemplateStepGroupsResponse')
    ListTemplateStepsRequest = Shapes::StructureShape.new(name: 'ListTemplateStepsRequest')
    ListTemplateStepsResponse = Shapes::StructureShape.new(name: 'ListTemplateStepsResponse')
    ListWorkflowStepGroupsRequest = Shapes::StructureShape.new(name: 'ListWorkflowStepGroupsRequest')
    ListWorkflowStepGroupsResponse = Shapes::StructureShape.new(name: 'ListWorkflowStepGroupsResponse')
    ListWorkflowStepsRequest = Shapes::StructureShape.new(name: 'ListWorkflowStepsRequest')
    ListWorkflowStepsResponse = Shapes::StructureShape.new(name: 'ListWorkflowStepsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MigrationWorkflowDescription = Shapes::StringShape.new(name: 'MigrationWorkflowDescription')
    MigrationWorkflowId = Shapes::StringShape.new(name: 'MigrationWorkflowId')
    MigrationWorkflowName = Shapes::StringShape.new(name: 'MigrationWorkflowName')
    MigrationWorkflowStatusEnum = Shapes::StringShape.new(name: 'MigrationWorkflowStatusEnum')
    MigrationWorkflowSummary = Shapes::StructureShape.new(name: 'MigrationWorkflowSummary')
    MigrationWorkflowSummaryList = Shapes::ListShape.new(name: 'MigrationWorkflowSummaryList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Owner = Shapes::StringShape.new(name: 'Owner')
    PlatformCommand = Shapes::StructureShape.new(name: 'PlatformCommand')
    PlatformScriptKey = Shapes::StructureShape.new(name: 'PlatformScriptKey')
    PluginHealth = Shapes::StringShape.new(name: 'PluginHealth')
    PluginId = Shapes::StringShape.new(name: 'PluginId')
    PluginSummaries = Shapes::ListShape.new(name: 'PluginSummaries')
    PluginSummary = Shapes::StructureShape.new(name: 'PluginSummary')
    PluginVersion = Shapes::StringShape.new(name: 'PluginVersion')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryWorkflowStepRequest = Shapes::StructureShape.new(name: 'RetryWorkflowStepRequest')
    RetryWorkflowStepResponse = Shapes::StructureShape.new(name: 'RetryWorkflowStepResponse')
    RunEnvironment = Shapes::StringShape.new(name: 'RunEnvironment')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    StartMigrationWorkflowRequest = Shapes::StructureShape.new(name: 'StartMigrationWorkflowRequest')
    StartMigrationWorkflowResponse = Shapes::StructureShape.new(name: 'StartMigrationWorkflowResponse')
    StepActionType = Shapes::StringShape.new(name: 'StepActionType')
    StepAutomationConfiguration = Shapes::StructureShape.new(name: 'StepAutomationConfiguration')
    StepDescription = Shapes::StringShape.new(name: 'StepDescription')
    StepGroupDescription = Shapes::StringShape.new(name: 'StepGroupDescription')
    StepGroupId = Shapes::StringShape.new(name: 'StepGroupId')
    StepGroupName = Shapes::StringShape.new(name: 'StepGroupName')
    StepGroupStatus = Shapes::StringShape.new(name: 'StepGroupStatus')
    StepId = Shapes::StringShape.new(name: 'StepId')
    StepInput = Shapes::UnionShape.new(name: 'StepInput')
    StepInputParameters = Shapes::MapShape.new(name: 'StepInputParameters')
    StepInputParametersKey = Shapes::StringShape.new(name: 'StepInputParametersKey')
    StepName = Shapes::StringShape.new(name: 'StepName')
    StepOutput = Shapes::StructureShape.new(name: 'StepOutput')
    StepOutputList = Shapes::ListShape.new(name: 'StepOutputList')
    StepStatus = Shapes::StringShape.new(name: 'StepStatus')
    StopMigrationWorkflowRequest = Shapes::StructureShape.new(name: 'StopMigrationWorkflowRequest')
    StopMigrationWorkflowResponse = Shapes::StructureShape.new(name: 'StopMigrationWorkflowResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringListMember = Shapes::StringShape.new(name: 'StringListMember')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    StringMapKey = Shapes::StringShape.new(name: 'StringMapKey')
    StringMapValue = Shapes::StringShape.new(name: 'StringMapValue')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    TemplateId = Shapes::StringShape.new(name: 'TemplateId')
    TemplateInput = Shapes::StructureShape.new(name: 'TemplateInput')
    TemplateInputList = Shapes::ListShape.new(name: 'TemplateInputList')
    TemplateInputName = Shapes::StringShape.new(name: 'TemplateInputName')
    TemplateName = Shapes::StringShape.new(name: 'TemplateName')
    TemplateStatus = Shapes::StringShape.new(name: 'TemplateStatus')
    TemplateStepGroupSummary = Shapes::StructureShape.new(name: 'TemplateStepGroupSummary')
    TemplateStepGroupSummaryList = Shapes::ListShape.new(name: 'TemplateStepGroupSummaryList')
    TemplateStepSummary = Shapes::StructureShape.new(name: 'TemplateStepSummary')
    TemplateStepSummaryList = Shapes::ListShape.new(name: 'TemplateStepSummaryList')
    TemplateSummary = Shapes::StructureShape.new(name: 'TemplateSummary')
    TemplateSummaryList = Shapes::ListShape.new(name: 'TemplateSummaryList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Tool = Shapes::StructureShape.new(name: 'Tool')
    ToolsList = Shapes::ListShape.new(name: 'ToolsList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateMigrationWorkflowRequest = Shapes::StructureShape.new(name: 'UpdateMigrationWorkflowRequest')
    UpdateMigrationWorkflowRequestDescriptionString = Shapes::StringShape.new(name: 'UpdateMigrationWorkflowRequestDescriptionString')
    UpdateMigrationWorkflowRequestNameString = Shapes::StringShape.new(name: 'UpdateMigrationWorkflowRequestNameString')
    UpdateMigrationWorkflowResponse = Shapes::StructureShape.new(name: 'UpdateMigrationWorkflowResponse')
    UpdateWorkflowStepGroupRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowStepGroupRequest')
    UpdateWorkflowStepGroupResponse = Shapes::StructureShape.new(name: 'UpdateWorkflowStepGroupResponse')
    UpdateWorkflowStepRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowStepRequest')
    UpdateWorkflowStepResponse = Shapes::StructureShape.new(name: 'UpdateWorkflowStepResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WorkflowStepAutomationConfiguration = Shapes::StructureShape.new(name: 'WorkflowStepAutomationConfiguration')
    WorkflowStepGroupSummary = Shapes::StructureShape.new(name: 'WorkflowStepGroupSummary')
    WorkflowStepGroupsSummaryList = Shapes::ListShape.new(name: 'WorkflowStepGroupsSummaryList')
    WorkflowStepOutput = Shapes::StructureShape.new(name: 'WorkflowStepOutput')
    WorkflowStepOutputList = Shapes::ListShape.new(name: 'WorkflowStepOutputList')
    WorkflowStepOutputName = Shapes::StringShape.new(name: 'WorkflowStepOutputName')
    WorkflowStepOutputUnion = Shapes::UnionShape.new(name: 'WorkflowStepOutputUnion')
    WorkflowStepSummary = Shapes::StructureShape.new(name: 'WorkflowStepSummary')
    WorkflowStepsSummaryList = Shapes::ListShape.new(name: 'WorkflowStepsSummaryList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CreateMigrationWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: CreateMigrationWorkflowRequestNameString, required: true, location_name: "name"))
    CreateMigrationWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: CreateMigrationWorkflowRequestDescriptionString, location_name: "description"))
    CreateMigrationWorkflowRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: CreateMigrationWorkflowRequestTemplateIdString, required: true, location_name: "templateId"))
    CreateMigrationWorkflowRequest.add_member(:application_configuration_id, Shapes::ShapeRef.new(shape: CreateMigrationWorkflowRequestApplicationConfigurationIdString, required: true, location_name: "applicationConfigurationId"))
    CreateMigrationWorkflowRequest.add_member(:input_parameters, Shapes::ShapeRef.new(shape: StepInputParameters, required: true, location_name: "inputParameters"))
    CreateMigrationWorkflowRequest.add_member(:step_targets, Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    CreateMigrationWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    CreateMigrationWorkflowRequest.struct_class = Types::CreateMigrationWorkflowRequest

    CreateMigrationWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    CreateMigrationWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    CreateMigrationWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    CreateMigrationWorkflowResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateMigrationWorkflowResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: String, location_name: "templateId"))
    CreateMigrationWorkflowResponse.add_member(:ads_application_configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "adsApplicationConfigurationId"))
    CreateMigrationWorkflowResponse.add_member(:workflow_inputs, Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "workflowInputs"))
    CreateMigrationWorkflowResponse.add_member(:step_targets, Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    CreateMigrationWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    CreateMigrationWorkflowResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    CreateMigrationWorkflowResponse.add_member(:tags, Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    CreateMigrationWorkflowResponse.struct_class = Types::CreateMigrationWorkflowResponse

    CreateWorkflowStepGroupRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location_name: "workflowId"))
    CreateWorkflowStepGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: StepGroupName, required: true, location_name: "name"))
    CreateWorkflowStepGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: StepGroupDescription, location_name: "description"))
    CreateWorkflowStepGroupRequest.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    CreateWorkflowStepGroupRequest.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    CreateWorkflowStepGroupRequest.struct_class = Types::CreateWorkflowStepGroupRequest

    CreateWorkflowStepGroupResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: String, location_name: "workflowId"))
    CreateWorkflowStepGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    CreateWorkflowStepGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    CreateWorkflowStepGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateWorkflowStepGroupResponse.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    CreateWorkflowStepGroupResponse.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    CreateWorkflowStepGroupResponse.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    CreateWorkflowStepGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    CreateWorkflowStepGroupResponse.struct_class = Types::CreateWorkflowStepGroupResponse

    CreateWorkflowStepRequest.add_member(:name, Shapes::ShapeRef.new(shape: MigrationWorkflowName, required: true, location_name: "name"))
    CreateWorkflowStepRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location_name: "stepGroupId"))
    CreateWorkflowStepRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location_name: "workflowId"))
    CreateWorkflowStepRequest.add_member(:step_action_type, Shapes::ShapeRef.new(shape: StepActionType, required: true, location_name: "stepActionType"))
    CreateWorkflowStepRequest.add_member(:description, Shapes::ShapeRef.new(shape: MigrationWorkflowDescription, location_name: "description"))
    CreateWorkflowStepRequest.add_member(:workflow_step_automation_configuration, Shapes::ShapeRef.new(shape: WorkflowStepAutomationConfiguration, location_name: "workflowStepAutomationConfiguration"))
    CreateWorkflowStepRequest.add_member(:step_target, Shapes::ShapeRef.new(shape: StringList, location_name: "stepTarget"))
    CreateWorkflowStepRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: WorkflowStepOutputList, location_name: "outputs"))
    CreateWorkflowStepRequest.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    CreateWorkflowStepRequest.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    CreateWorkflowStepRequest.struct_class = Types::CreateWorkflowStepRequest

    CreateWorkflowStepResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    CreateWorkflowStepResponse.add_member(:step_group_id, Shapes::ShapeRef.new(shape: String, location_name: "stepGroupId"))
    CreateWorkflowStepResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: String, location_name: "workflowId"))
    CreateWorkflowStepResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    CreateWorkflowStepResponse.struct_class = Types::CreateWorkflowStepResponse

    DeleteMigrationWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "uri", location_name: "id"))
    DeleteMigrationWorkflowRequest.struct_class = Types::DeleteMigrationWorkflowRequest

    DeleteMigrationWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    DeleteMigrationWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    DeleteMigrationWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    DeleteMigrationWorkflowResponse.struct_class = Types::DeleteMigrationWorkflowResponse

    DeleteWorkflowStepGroupRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "querystring", location_name: "workflowId"))
    DeleteWorkflowStepGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "uri", location_name: "id"))
    DeleteWorkflowStepGroupRequest.struct_class = Types::DeleteWorkflowStepGroupRequest

    DeleteWorkflowStepGroupResponse.struct_class = Types::DeleteWorkflowStepGroupResponse

    DeleteWorkflowStepRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "id"))
    DeleteWorkflowStepRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "querystring", location_name: "stepGroupId"))
    DeleteWorkflowStepRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "querystring", location_name: "workflowId"))
    DeleteWorkflowStepRequest.struct_class = Types::DeleteWorkflowStepRequest

    DeleteWorkflowStepResponse.struct_class = Types::DeleteWorkflowStepResponse

    GetMigrationWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "uri", location_name: "id"))
    GetMigrationWorkflowRequest.struct_class = Types::GetMigrationWorkflowRequest

    GetMigrationWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    GetMigrationWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    GetMigrationWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetMigrationWorkflowResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetMigrationWorkflowResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: String, location_name: "templateId"))
    GetMigrationWorkflowResponse.add_member(:ads_application_configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "adsApplicationConfigurationId"))
    GetMigrationWorkflowResponse.add_member(:ads_application_name, Shapes::ShapeRef.new(shape: String, location_name: "adsApplicationName"))
    GetMigrationWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    GetMigrationWorkflowResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    GetMigrationWorkflowResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetMigrationWorkflowResponse.add_member(:last_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStartTime"))
    GetMigrationWorkflowResponse.add_member(:last_stop_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStopTime"))
    GetMigrationWorkflowResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetMigrationWorkflowResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetMigrationWorkflowResponse.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetMigrationWorkflowResponse.add_member(:total_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "totalSteps"))
    GetMigrationWorkflowResponse.add_member(:completed_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "completedSteps"))
    GetMigrationWorkflowResponse.add_member(:workflow_inputs, Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "workflowInputs"))
    GetMigrationWorkflowResponse.add_member(:tags, Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    GetMigrationWorkflowResponse.add_member(:workflow_bucket, Shapes::ShapeRef.new(shape: String, location_name: "workflowBucket"))
    GetMigrationWorkflowResponse.struct_class = Types::GetMigrationWorkflowResponse

    GetMigrationWorkflowTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location: "uri", location_name: "id"))
    GetMigrationWorkflowTemplateRequest.struct_class = Types::GetMigrationWorkflowTemplateRequest

    GetMigrationWorkflowTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetMigrationWorkflowTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetMigrationWorkflowTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetMigrationWorkflowTemplateResponse.add_member(:inputs, Shapes::ShapeRef.new(shape: TemplateInputList, location_name: "inputs"))
    GetMigrationWorkflowTemplateResponse.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetMigrationWorkflowTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatus, location_name: "status"))
    GetMigrationWorkflowTemplateResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetMigrationWorkflowTemplateResponse.struct_class = Types::GetMigrationWorkflowTemplateResponse

    GetTemplateStepGroupRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location: "uri", location_name: "templateId"))
    GetTemplateStepGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "uri", location_name: "id"))
    GetTemplateStepGroupRequest.struct_class = Types::GetTemplateStepGroupRequest

    GetTemplateStepGroupResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: String, location_name: "templateId"))
    GetTemplateStepGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetTemplateStepGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetTemplateStepGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetTemplateStepGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StepGroupStatus, location_name: "status"))
    GetTemplateStepGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetTemplateStepGroupResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetTemplateStepGroupResponse.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetTemplateStepGroupResponse.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetTemplateStepGroupResponse.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetTemplateStepGroupResponse.struct_class = Types::GetTemplateStepGroupResponse

    GetTemplateStepRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "id"))
    GetTemplateStepRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location: "querystring", location_name: "templateId"))
    GetTemplateStepRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "querystring", location_name: "stepGroupId"))
    GetTemplateStepRequest.struct_class = Types::GetTemplateStepRequest

    GetTemplateStepResponse.add_member(:id, Shapes::ShapeRef.new(shape: StepId, location_name: "id"))
    GetTemplateStepResponse.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, location_name: "stepGroupId"))
    GetTemplateStepResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, location_name: "templateId"))
    GetTemplateStepResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetTemplateStepResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetTemplateStepResponse.add_member(:step_action_type, Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    GetTemplateStepResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: String, location_name: "creationTime"))
    GetTemplateStepResponse.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetTemplateStepResponse.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetTemplateStepResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: StepOutputList, location_name: "outputs"))
    GetTemplateStepResponse.add_member(:step_automation_configuration, Shapes::ShapeRef.new(shape: StepAutomationConfiguration, location_name: "stepAutomationConfiguration"))
    GetTemplateStepResponse.struct_class = Types::GetTemplateStepResponse

    GetWorkflowStepGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "uri", location_name: "id"))
    GetWorkflowStepGroupRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "querystring", location_name: "workflowId"))
    GetWorkflowStepGroupRequest.struct_class = Types::GetWorkflowStepGroupRequest

    GetWorkflowStepGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: StepGroupId, location_name: "id"))
    GetWorkflowStepGroupResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: String, location_name: "workflowId"))
    GetWorkflowStepGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetWorkflowStepGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetWorkflowStepGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StepGroupStatus, location_name: "status"))
    GetWorkflowStepGroupResponse.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    GetWorkflowStepGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetWorkflowStepGroupResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetWorkflowStepGroupResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetWorkflowStepGroupResponse.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    GetWorkflowStepGroupResponse.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetWorkflowStepGroupResponse.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetWorkflowStepGroupResponse.struct_class = Types::GetWorkflowStepGroupResponse

    GetWorkflowStepRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "querystring", location_name: "workflowId"))
    GetWorkflowStepRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "querystring", location_name: "stepGroupId"))
    GetWorkflowStepRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "id"))
    GetWorkflowStepRequest.struct_class = Types::GetWorkflowStepRequest

    GetWorkflowStepResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetWorkflowStepResponse.add_member(:step_group_id, Shapes::ShapeRef.new(shape: String, location_name: "stepGroupId"))
    GetWorkflowStepResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: String, location_name: "workflowId"))
    GetWorkflowStepResponse.add_member(:step_id, Shapes::ShapeRef.new(shape: String, location_name: "stepId"))
    GetWorkflowStepResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetWorkflowStepResponse.add_member(:step_action_type, Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    GetWorkflowStepResponse.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    GetWorkflowStepResponse.add_member(:workflow_step_automation_configuration, Shapes::ShapeRef.new(shape: WorkflowStepAutomationConfiguration, location_name: "workflowStepAutomationConfiguration"))
    GetWorkflowStepResponse.add_member(:step_target, Shapes::ShapeRef.new(shape: StringList, location_name: "stepTarget"))
    GetWorkflowStepResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetWorkflowStepResponseOutputsList, location_name: "outputs"))
    GetWorkflowStepResponse.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    GetWorkflowStepResponse.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    GetWorkflowStepResponse.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    GetWorkflowStepResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    GetWorkflowStepResponse.add_member(:script_output_location, Shapes::ShapeRef.new(shape: String, location_name: "scriptOutputLocation"))
    GetWorkflowStepResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetWorkflowStepResponse.add_member(:last_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStartTime"))
    GetWorkflowStepResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetWorkflowStepResponse.add_member(:no_of_srv_completed, Shapes::ShapeRef.new(shape: Integer, location_name: "noOfSrvCompleted"))
    GetWorkflowStepResponse.add_member(:no_of_srv_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "noOfSrvFailed"))
    GetWorkflowStepResponse.add_member(:total_no_of_srv, Shapes::ShapeRef.new(shape: Integer, location_name: "totalNoOfSrv"))
    GetWorkflowStepResponse.struct_class = Types::GetWorkflowStepResponse

    GetWorkflowStepResponseOutputsList.member = Shapes::ShapeRef.new(shape: WorkflowStepOutput)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListMigrationWorkflowTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMigrationWorkflowTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMigrationWorkflowTemplatesRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location: "querystring", location_name: "name"))
    ListMigrationWorkflowTemplatesRequest.struct_class = Types::ListMigrationWorkflowTemplatesRequest

    ListMigrationWorkflowTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMigrationWorkflowTemplatesResponse.add_member(:template_summary, Shapes::ShapeRef.new(shape: TemplateSummaryList, required: true, location_name: "templateSummary"))
    ListMigrationWorkflowTemplatesResponse.struct_class = Types::ListMigrationWorkflowTemplatesResponse

    ListMigrationWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMigrationWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMigrationWorkflowsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, location: "querystring", location_name: "templateId"))
    ListMigrationWorkflowsRequest.add_member(:ads_application_configuration_name, Shapes::ShapeRef.new(shape: ApplicationConfigurationName, location: "querystring", location_name: "adsApplicationConfigurationName"))
    ListMigrationWorkflowsRequest.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location: "querystring", location_name: "status"))
    ListMigrationWorkflowsRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "name"))
    ListMigrationWorkflowsRequest.struct_class = Types::ListMigrationWorkflowsRequest

    ListMigrationWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMigrationWorkflowsResponse.add_member(:migration_workflow_summary, Shapes::ShapeRef.new(shape: MigrationWorkflowSummaryList, required: true, location_name: "migrationWorkflowSummary"))
    ListMigrationWorkflowsResponse.struct_class = Types::ListMigrationWorkflowsResponse

    ListPluginsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPluginsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPluginsRequest.struct_class = Types::ListPluginsRequest

    ListPluginsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPluginsResponse.add_member(:plugins, Shapes::ShapeRef.new(shape: PluginSummaries, location_name: "plugins"))
    ListPluginsResponse.struct_class = Types::ListPluginsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTemplateStepGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTemplateStepGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTemplateStepGroupsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location: "uri", location_name: "templateId"))
    ListTemplateStepGroupsRequest.struct_class = Types::ListTemplateStepGroupsRequest

    ListTemplateStepGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplateStepGroupsResponse.add_member(:template_step_group_summary, Shapes::ShapeRef.new(shape: TemplateStepGroupSummaryList, required: true, location_name: "templateStepGroupSummary"))
    ListTemplateStepGroupsResponse.struct_class = Types::ListTemplateStepGroupsResponse

    ListTemplateStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTemplateStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTemplateStepsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location: "querystring", location_name: "templateId"))
    ListTemplateStepsRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "querystring", location_name: "stepGroupId"))
    ListTemplateStepsRequest.struct_class = Types::ListTemplateStepsRequest

    ListTemplateStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplateStepsResponse.add_member(:template_step_summary_list, Shapes::ShapeRef.new(shape: TemplateStepSummaryList, location_name: "templateStepSummaryList"))
    ListTemplateStepsResponse.struct_class = Types::ListTemplateStepsResponse

    ListWorkflowStepGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWorkflowStepGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWorkflowStepGroupsRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "querystring", location_name: "workflowId"))
    ListWorkflowStepGroupsRequest.struct_class = Types::ListWorkflowStepGroupsRequest

    ListWorkflowStepGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkflowStepGroupsResponse.add_member(:workflow_step_groups_summary, Shapes::ShapeRef.new(shape: WorkflowStepGroupsSummaryList, required: true, location_name: "workflowStepGroupsSummary"))
    ListWorkflowStepGroupsResponse.struct_class = Types::ListWorkflowStepGroupsResponse

    ListWorkflowStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWorkflowStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWorkflowStepsRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "uri", location_name: "workflowId"))
    ListWorkflowStepsRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "uri", location_name: "stepGroupId"))
    ListWorkflowStepsRequest.struct_class = Types::ListWorkflowStepsRequest

    ListWorkflowStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkflowStepsResponse.add_member(:workflow_steps_summary, Shapes::ShapeRef.new(shape: WorkflowStepsSummaryList, required: true, location_name: "workflowStepsSummary"))
    ListWorkflowStepsResponse.struct_class = Types::ListWorkflowStepsResponse

    MigrationWorkflowSummary.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    MigrationWorkflowSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    MigrationWorkflowSummary.add_member(:template_id, Shapes::ShapeRef.new(shape: String, location_name: "templateId"))
    MigrationWorkflowSummary.add_member(:ads_application_configuration_name, Shapes::ShapeRef.new(shape: String, location_name: "adsApplicationConfigurationName"))
    MigrationWorkflowSummary.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    MigrationWorkflowSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    MigrationWorkflowSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    MigrationWorkflowSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    MigrationWorkflowSummary.add_member(:completed_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "completedSteps"))
    MigrationWorkflowSummary.add_member(:total_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "totalSteps"))
    MigrationWorkflowSummary.struct_class = Types::MigrationWorkflowSummary

    MigrationWorkflowSummaryList.member = Shapes::ShapeRef.new(shape: MigrationWorkflowSummary)

    PlatformCommand.add_member(:linux, Shapes::ShapeRef.new(shape: String, location_name: "linux"))
    PlatformCommand.add_member(:windows, Shapes::ShapeRef.new(shape: String, location_name: "windows"))
    PlatformCommand.struct_class = Types::PlatformCommand

    PlatformScriptKey.add_member(:linux, Shapes::ShapeRef.new(shape: S3Key, location_name: "linux"))
    PlatformScriptKey.add_member(:windows, Shapes::ShapeRef.new(shape: S3Key, location_name: "windows"))
    PlatformScriptKey.struct_class = Types::PlatformScriptKey

    PluginSummaries.member = Shapes::ShapeRef.new(shape: PluginSummary)

    PluginSummary.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    PluginSummary.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    PluginSummary.add_member(:status, Shapes::ShapeRef.new(shape: PluginHealth, location_name: "status"))
    PluginSummary.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "ipAddress"))
    PluginSummary.add_member(:version, Shapes::ShapeRef.new(shape: PluginVersion, location_name: "version"))
    PluginSummary.add_member(:registered_time, Shapes::ShapeRef.new(shape: String, location_name: "registeredTime"))
    PluginSummary.struct_class = Types::PluginSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryWorkflowStepRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "querystring", location_name: "workflowId"))
    RetryWorkflowStepRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "querystring", location_name: "stepGroupId"))
    RetryWorkflowStepRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "id"))
    RetryWorkflowStepRequest.struct_class = Types::RetryWorkflowStepRequest

    RetryWorkflowStepResponse.add_member(:step_group_id, Shapes::ShapeRef.new(shape: String, location_name: "stepGroupId"))
    RetryWorkflowStepResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: String, location_name: "workflowId"))
    RetryWorkflowStepResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    RetryWorkflowStepResponse.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    RetryWorkflowStepResponse.struct_class = Types::RetryWorkflowStepResponse

    StartMigrationWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "uri", location_name: "id"))
    StartMigrationWorkflowRequest.struct_class = Types::StartMigrationWorkflowRequest

    StartMigrationWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    StartMigrationWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StartMigrationWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    StartMigrationWorkflowResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    StartMigrationWorkflowResponse.add_member(:last_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStartTime"))
    StartMigrationWorkflowResponse.struct_class = Types::StartMigrationWorkflowResponse

    StepAutomationConfiguration.add_member(:script_location_s3_bucket, Shapes::ShapeRef.new(shape: String, location_name: "scriptLocationS3Bucket"))
    StepAutomationConfiguration.add_member(:script_location_s3_key, Shapes::ShapeRef.new(shape: PlatformScriptKey, location_name: "scriptLocationS3Key"))
    StepAutomationConfiguration.add_member(:command, Shapes::ShapeRef.new(shape: PlatformCommand, location_name: "command"))
    StepAutomationConfiguration.add_member(:run_environment, Shapes::ShapeRef.new(shape: RunEnvironment, location_name: "runEnvironment"))
    StepAutomationConfiguration.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    StepAutomationConfiguration.struct_class = Types::StepAutomationConfiguration

    StepInput.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "integerValue", metadata: {"box"=>true}))
    StepInput.add_member(:string_value, Shapes::ShapeRef.new(shape: StringValue, location_name: "stringValue"))
    StepInput.add_member(:list_of_strings_value, Shapes::ShapeRef.new(shape: StringList, location_name: "listOfStringsValue"))
    StepInput.add_member(:map_of_string_value, Shapes::ShapeRef.new(shape: StringMap, location_name: "mapOfStringValue"))
    StepInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StepInput.add_member_subclass(:integer_value, Types::StepInput::IntegerValue)
    StepInput.add_member_subclass(:string_value, Types::StepInput::StringValue)
    StepInput.add_member_subclass(:list_of_strings_value, Types::StepInput::ListOfStringsValue)
    StepInput.add_member_subclass(:map_of_string_value, Types::StepInput::MapOfStringValue)
    StepInput.add_member_subclass(:unknown, Types::StepInput::Unknown)
    StepInput.struct_class = Types::StepInput

    StepInputParameters.key = Shapes::ShapeRef.new(shape: StepInputParametersKey)
    StepInputParameters.value = Shapes::ShapeRef.new(shape: StepInput)

    StepOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    StepOutput.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    StepOutput.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    StepOutput.struct_class = Types::StepOutput

    StepOutputList.member = Shapes::ShapeRef.new(shape: StepOutput)

    StopMigrationWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "uri", location_name: "id"))
    StopMigrationWorkflowRequest.struct_class = Types::StopMigrationWorkflowRequest

    StopMigrationWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    StopMigrationWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StopMigrationWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    StopMigrationWorkflowResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    StopMigrationWorkflowResponse.add_member(:last_stop_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStopTime"))
    StopMigrationWorkflowResponse.struct_class = Types::StopMigrationWorkflowResponse

    StringList.member = Shapes::ShapeRef.new(shape: StringListMember)

    StringMap.key = Shapes::ShapeRef.new(shape: StringMapKey)
    StringMap.value = Shapes::ShapeRef.new(shape: StringMapValue)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TemplateInput.add_member(:input_name, Shapes::ShapeRef.new(shape: TemplateInputName, location_name: "inputName"))
    TemplateInput.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    TemplateInput.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    TemplateInput.struct_class = Types::TemplateInput

    TemplateInputList.member = Shapes::ShapeRef.new(shape: TemplateInput)

    TemplateStepGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    TemplateStepGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TemplateStepGroupSummary.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    TemplateStepGroupSummary.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    TemplateStepGroupSummary.struct_class = Types::TemplateStepGroupSummary

    TemplateStepGroupSummaryList.member = Shapes::ShapeRef.new(shape: TemplateStepGroupSummary)

    TemplateStepSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    TemplateStepSummary.add_member(:step_group_id, Shapes::ShapeRef.new(shape: String, location_name: "stepGroupId"))
    TemplateStepSummary.add_member(:template_id, Shapes::ShapeRef.new(shape: String, location_name: "templateId"))
    TemplateStepSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TemplateStepSummary.add_member(:step_action_type, Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    TemplateStepSummary.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    TemplateStepSummary.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    TemplateStepSummary.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    TemplateStepSummary.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    TemplateStepSummary.struct_class = Types::TemplateStepSummary

    TemplateStepSummaryList.member = Shapes::ShapeRef.new(shape: TemplateStepSummary)

    TemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    TemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    TemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    TemplateSummary.struct_class = Types::TemplateSummary

    TemplateSummaryList.member = Shapes::ShapeRef.new(shape: TemplateSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Tool.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Tool.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    Tool.struct_class = Types::Tool

    ToolsList.member = Shapes::ShapeRef.new(shape: Tool)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateMigrationWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "uri", location_name: "id"))
    UpdateMigrationWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: UpdateMigrationWorkflowRequestNameString, location_name: "name"))
    UpdateMigrationWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateMigrationWorkflowRequestDescriptionString, location_name: "description"))
    UpdateMigrationWorkflowRequest.add_member(:input_parameters, Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "inputParameters"))
    UpdateMigrationWorkflowRequest.add_member(:step_targets, Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    UpdateMigrationWorkflowRequest.struct_class = Types::UpdateMigrationWorkflowRequest

    UpdateMigrationWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, location_name: "id"))
    UpdateMigrationWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    UpdateMigrationWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateMigrationWorkflowResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateMigrationWorkflowResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: String, location_name: "templateId"))
    UpdateMigrationWorkflowResponse.add_member(:ads_application_configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "adsApplicationConfigurationId"))
    UpdateMigrationWorkflowResponse.add_member(:workflow_inputs, Shapes::ShapeRef.new(shape: StepInputParameters, location_name: "workflowInputs"))
    UpdateMigrationWorkflowResponse.add_member(:step_targets, Shapes::ShapeRef.new(shape: StringList, location_name: "stepTargets"))
    UpdateMigrationWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: MigrationWorkflowStatusEnum, location_name: "status"))
    UpdateMigrationWorkflowResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    UpdateMigrationWorkflowResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    UpdateMigrationWorkflowResponse.add_member(:tags, Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    UpdateMigrationWorkflowResponse.struct_class = Types::UpdateMigrationWorkflowResponse

    UpdateWorkflowStepGroupRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location: "querystring", location_name: "workflowId"))
    UpdateWorkflowStepGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location: "uri", location_name: "id"))
    UpdateWorkflowStepGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: StepGroupName, location_name: "name"))
    UpdateWorkflowStepGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: StepGroupDescription, location_name: "description"))
    UpdateWorkflowStepGroupRequest.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    UpdateWorkflowStepGroupRequest.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    UpdateWorkflowStepGroupRequest.struct_class = Types::UpdateWorkflowStepGroupRequest

    UpdateWorkflowStepGroupResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: String, location_name: "workflowId"))
    UpdateWorkflowStepGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateWorkflowStepGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    UpdateWorkflowStepGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateWorkflowStepGroupResponse.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsList, location_name: "tools"))
    UpdateWorkflowStepGroupResponse.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    UpdateWorkflowStepGroupResponse.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    UpdateWorkflowStepGroupResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    UpdateWorkflowStepGroupResponse.struct_class = Types::UpdateWorkflowStepGroupResponse

    UpdateWorkflowStepRequest.add_member(:id, Shapes::ShapeRef.new(shape: StepId, required: true, location: "uri", location_name: "id"))
    UpdateWorkflowStepRequest.add_member(:step_group_id, Shapes::ShapeRef.new(shape: StepGroupId, required: true, location_name: "stepGroupId"))
    UpdateWorkflowStepRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: MigrationWorkflowId, required: true, location_name: "workflowId"))
    UpdateWorkflowStepRequest.add_member(:name, Shapes::ShapeRef.new(shape: StepName, location_name: "name"))
    UpdateWorkflowStepRequest.add_member(:description, Shapes::ShapeRef.new(shape: StepDescription, location_name: "description"))
    UpdateWorkflowStepRequest.add_member(:step_action_type, Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    UpdateWorkflowStepRequest.add_member(:workflow_step_automation_configuration, Shapes::ShapeRef.new(shape: WorkflowStepAutomationConfiguration, location_name: "workflowStepAutomationConfiguration"))
    UpdateWorkflowStepRequest.add_member(:step_target, Shapes::ShapeRef.new(shape: StringList, location_name: "stepTarget"))
    UpdateWorkflowStepRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: WorkflowStepOutputList, location_name: "outputs"))
    UpdateWorkflowStepRequest.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    UpdateWorkflowStepRequest.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    UpdateWorkflowStepRequest.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    UpdateWorkflowStepRequest.struct_class = Types::UpdateWorkflowStepRequest

    UpdateWorkflowStepResponse.add_member(:id, Shapes::ShapeRef.new(shape: StepId, location_name: "id"))
    UpdateWorkflowStepResponse.add_member(:step_group_id, Shapes::ShapeRef.new(shape: String, location_name: "stepGroupId"))
    UpdateWorkflowStepResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: String, location_name: "workflowId"))
    UpdateWorkflowStepResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateWorkflowStepResponse.struct_class = Types::UpdateWorkflowStepResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WorkflowStepAutomationConfiguration.add_member(:script_location_s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "scriptLocationS3Bucket"))
    WorkflowStepAutomationConfiguration.add_member(:script_location_s3_key, Shapes::ShapeRef.new(shape: PlatformScriptKey, location_name: "scriptLocationS3Key"))
    WorkflowStepAutomationConfiguration.add_member(:command, Shapes::ShapeRef.new(shape: PlatformCommand, location_name: "command"))
    WorkflowStepAutomationConfiguration.add_member(:run_environment, Shapes::ShapeRef.new(shape: RunEnvironment, location_name: "runEnvironment"))
    WorkflowStepAutomationConfiguration.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    WorkflowStepAutomationConfiguration.struct_class = Types::WorkflowStepAutomationConfiguration

    WorkflowStepGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    WorkflowStepGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    WorkflowStepGroupSummary.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    WorkflowStepGroupSummary.add_member(:status, Shapes::ShapeRef.new(shape: StepGroupStatus, location_name: "status"))
    WorkflowStepGroupSummary.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    WorkflowStepGroupSummary.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    WorkflowStepGroupSummary.struct_class = Types::WorkflowStepGroupSummary

    WorkflowStepGroupsSummaryList.member = Shapes::ShapeRef.new(shape: WorkflowStepGroupSummary)

    WorkflowStepOutput.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepOutputName, location_name: "name"))
    WorkflowStepOutput.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    WorkflowStepOutput.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    WorkflowStepOutput.add_member(:value, Shapes::ShapeRef.new(shape: WorkflowStepOutputUnion, location_name: "value"))
    WorkflowStepOutput.struct_class = Types::WorkflowStepOutput

    WorkflowStepOutputList.member = Shapes::ShapeRef.new(shape: WorkflowStepOutput)

    WorkflowStepOutputUnion.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "integerValue", metadata: {"box"=>true}))
    WorkflowStepOutputUnion.add_member(:string_value, Shapes::ShapeRef.new(shape: StringValue, location_name: "stringValue"))
    WorkflowStepOutputUnion.add_member(:list_of_string_value, Shapes::ShapeRef.new(shape: StringList, location_name: "listOfStringValue"))
    WorkflowStepOutputUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    WorkflowStepOutputUnion.add_member_subclass(:integer_value, Types::WorkflowStepOutputUnion::IntegerValue)
    WorkflowStepOutputUnion.add_member_subclass(:string_value, Types::WorkflowStepOutputUnion::StringValue)
    WorkflowStepOutputUnion.add_member_subclass(:list_of_string_value, Types::WorkflowStepOutputUnion::ListOfStringValue)
    WorkflowStepOutputUnion.add_member_subclass(:unknown, Types::WorkflowStepOutputUnion::Unknown)
    WorkflowStepOutputUnion.struct_class = Types::WorkflowStepOutputUnion

    WorkflowStepSummary.add_member(:step_id, Shapes::ShapeRef.new(shape: String, location_name: "stepId"))
    WorkflowStepSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    WorkflowStepSummary.add_member(:step_action_type, Shapes::ShapeRef.new(shape: StepActionType, location_name: "stepActionType"))
    WorkflowStepSummary.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    WorkflowStepSummary.add_member(:previous, Shapes::ShapeRef.new(shape: StringList, location_name: "previous"))
    WorkflowStepSummary.add_member(:next, Shapes::ShapeRef.new(shape: StringList, location_name: "next"))
    WorkflowStepSummary.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    WorkflowStepSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    WorkflowStepSummary.add_member(:no_of_srv_completed, Shapes::ShapeRef.new(shape: Integer, location_name: "noOfSrvCompleted"))
    WorkflowStepSummary.add_member(:no_of_srv_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "noOfSrvFailed"))
    WorkflowStepSummary.add_member(:total_no_of_srv, Shapes::ShapeRef.new(shape: Integer, location_name: "totalNoOfSrv"))
    WorkflowStepSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    WorkflowStepSummary.add_member(:script_location, Shapes::ShapeRef.new(shape: String, location_name: "scriptLocation"))
    WorkflowStepSummary.struct_class = Types::WorkflowStepSummary

    WorkflowStepsSummaryList.member = Shapes::ShapeRef.new(shape: WorkflowStepSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-08-28"

      api.metadata = {
        "apiVersion" => "2021-08-28",
        "endpointPrefix" => "migrationhub-orchestrator",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Migration Hub Orchestrator",
        "serviceId" => "MigrationHubOrchestrator",
        "signatureVersion" => "v4",
        "signingName" => "migrationhub-orchestrator",
        "uid" => "migrationhuborchestrator-2021-08-28",
      }

      api.add_operation(:create_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/migrationworkflow/"
        o.input = Shapes::ShapeRef.new(shape: CreateMigrationWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMigrationWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_workflow_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflowStep"
        o.http_method = "POST"
        o.http_request_uri = "/workflowstep"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowStepRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_workflow_step_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflowStepGroup"
        o.http_method = "POST"
        o.http_request_uri = "/workflowstepgroups"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowStepGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowStepGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflow"
        o.http_method = "DELETE"
        o.http_request_uri = "/migrationworkflow/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMigrationWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMigrationWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_workflow_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflowStep"
        o.http_method = "DELETE"
        o.http_request_uri = "/workflowstep/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowStepRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_workflow_step_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflowStepGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/workflowstepgroup/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowStepGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowStepGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/migrationworkflowtemplate/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetMigrationWorkflowTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMigrationWorkflowTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_template_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplateStep"
        o.http_method = "GET"
        o.http_request_uri = "/templatestep/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateStepRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_template_step_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplateStepGroup"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{templateId}/stepgroups/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateStepGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateStepGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflow"
        o.http_method = "GET"
        o.http_request_uri = "/migrationworkflow/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetMigrationWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMigrationWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_workflow_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowStep"
        o.http_method = "GET"
        o.http_request_uri = "/workflowstep/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowStepRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_workflow_step_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowStepGroup"
        o.http_method = "GET"
        o.http_request_uri = "/workflowstepgroup/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowStepGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowStepGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_plugins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlugins"
        o.http_method = "GET"
        o.http_request_uri = "/plugins"
        o.input = Shapes::ShapeRef.new(shape: ListPluginsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPluginsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_template_step_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateStepGroups"
        o.http_method = "GET"
        o.http_request_uri = "/templatestepgroups/{templateId}"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateStepGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateStepGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_template_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateSteps"
        o.http_method = "GET"
        o.http_request_uri = "/templatesteps"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/migrationworkflowtemplates"
        o.input = Shapes::ShapeRef.new(shape: ListMigrationWorkflowTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMigrationWorkflowTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_step_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowStepGroups"
        o.http_method = "GET"
        o.http_request_uri = "/workflowstepgroups"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowStepGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowStepGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowSteps"
        o.http_method = "GET"
        o.http_request_uri = "/workflow/{workflowId}/workflowstepgroups/{stepGroupId}/workflowsteps"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflows"
        o.http_method = "GET"
        o.http_request_uri = "/migrationworkflows"
        o.input = Shapes::ShapeRef.new(shape: ListMigrationWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMigrationWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:retry_workflow_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetryWorkflowStep"
        o.http_method = "POST"
        o.http_request_uri = "/retryworkflowstep/{id}"
        o.input = Shapes::ShapeRef.new(shape: RetryWorkflowStepRequest)
        o.output = Shapes::ShapeRef.new(shape: RetryWorkflowStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/migrationworkflow/{id}/start"
        o.input = Shapes::ShapeRef.new(shape: StartMigrationWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMigrationWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/migrationworkflow/{id}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopMigrationWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: StopMigrationWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/migrationworkflow/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMigrationWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMigrationWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_workflow_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflowStep"
        o.http_method = "POST"
        o.http_request_uri = "/workflowstep/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkflowStepRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkflowStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_workflow_step_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflowStepGroup"
        o.http_method = "POST"
        o.http_request_uri = "/workflowstepgroup/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkflowStepGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkflowStepGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
