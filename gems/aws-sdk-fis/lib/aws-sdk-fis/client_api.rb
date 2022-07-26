# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FIS
  # @api private
  module ClientApi

    include Seahorse::Model

    Action = Shapes::StructureShape.new(name: 'Action')
    ActionDescription = Shapes::StringShape.new(name: 'ActionDescription')
    ActionId = Shapes::StringShape.new(name: 'ActionId')
    ActionParameter = Shapes::StructureShape.new(name: 'ActionParameter')
    ActionParameterDescription = Shapes::StringShape.new(name: 'ActionParameterDescription')
    ActionParameterMap = Shapes::MapShape.new(name: 'ActionParameterMap')
    ActionParameterName = Shapes::StringShape.new(name: 'ActionParameterName')
    ActionParameterRequired = Shapes::BooleanShape.new(name: 'ActionParameterRequired')
    ActionSummary = Shapes::StructureShape.new(name: 'ActionSummary')
    ActionSummaryList = Shapes::ListShape.new(name: 'ActionSummaryList')
    ActionTarget = Shapes::StructureShape.new(name: 'ActionTarget')
    ActionTargetMap = Shapes::MapShape.new(name: 'ActionTargetMap')
    ActionTargetName = Shapes::StringShape.new(name: 'ActionTargetName')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogGroupArn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateExperimentTemplateActionInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateActionInput')
    CreateExperimentTemplateActionInputMap = Shapes::MapShape.new(name: 'CreateExperimentTemplateActionInputMap')
    CreateExperimentTemplateLogConfigurationInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateLogConfigurationInput')
    CreateExperimentTemplateRequest = Shapes::StructureShape.new(name: 'CreateExperimentTemplateRequest')
    CreateExperimentTemplateResponse = Shapes::StructureShape.new(name: 'CreateExperimentTemplateResponse')
    CreateExperimentTemplateStopConditionInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateStopConditionInput')
    CreateExperimentTemplateStopConditionInputList = Shapes::ListShape.new(name: 'CreateExperimentTemplateStopConditionInputList')
    CreateExperimentTemplateTargetInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateTargetInput')
    CreateExperimentTemplateTargetInputMap = Shapes::MapShape.new(name: 'CreateExperimentTemplateTargetInputMap')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DeleteExperimentTemplateRequest = Shapes::StructureShape.new(name: 'DeleteExperimentTemplateRequest')
    DeleteExperimentTemplateResponse = Shapes::StructureShape.new(name: 'DeleteExperimentTemplateResponse')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Experiment = Shapes::StructureShape.new(name: 'Experiment')
    ExperimentAction = Shapes::StructureShape.new(name: 'ExperimentAction')
    ExperimentActionDescription = Shapes::StringShape.new(name: 'ExperimentActionDescription')
    ExperimentActionEndTime = Shapes::TimestampShape.new(name: 'ExperimentActionEndTime')
    ExperimentActionMap = Shapes::MapShape.new(name: 'ExperimentActionMap')
    ExperimentActionName = Shapes::StringShape.new(name: 'ExperimentActionName')
    ExperimentActionParameter = Shapes::StringShape.new(name: 'ExperimentActionParameter')
    ExperimentActionParameterMap = Shapes::MapShape.new(name: 'ExperimentActionParameterMap')
    ExperimentActionParameterName = Shapes::StringShape.new(name: 'ExperimentActionParameterName')
    ExperimentActionStartAfter = Shapes::StringShape.new(name: 'ExperimentActionStartAfter')
    ExperimentActionStartAfterList = Shapes::ListShape.new(name: 'ExperimentActionStartAfterList')
    ExperimentActionStartTime = Shapes::TimestampShape.new(name: 'ExperimentActionStartTime')
    ExperimentActionState = Shapes::StructureShape.new(name: 'ExperimentActionState')
    ExperimentActionStatus = Shapes::StringShape.new(name: 'ExperimentActionStatus')
    ExperimentActionStatusReason = Shapes::StringShape.new(name: 'ExperimentActionStatusReason')
    ExperimentActionTargetMap = Shapes::MapShape.new(name: 'ExperimentActionTargetMap')
    ExperimentActionTargetName = Shapes::StringShape.new(name: 'ExperimentActionTargetName')
    ExperimentCloudWatchLogsLogConfiguration = Shapes::StructureShape.new(name: 'ExperimentCloudWatchLogsLogConfiguration')
    ExperimentEndTime = Shapes::TimestampShape.new(name: 'ExperimentEndTime')
    ExperimentId = Shapes::StringShape.new(name: 'ExperimentId')
    ExperimentLogConfiguration = Shapes::StructureShape.new(name: 'ExperimentLogConfiguration')
    ExperimentS3LogConfiguration = Shapes::StructureShape.new(name: 'ExperimentS3LogConfiguration')
    ExperimentStartTime = Shapes::TimestampShape.new(name: 'ExperimentStartTime')
    ExperimentState = Shapes::StructureShape.new(name: 'ExperimentState')
    ExperimentStatus = Shapes::StringShape.new(name: 'ExperimentStatus')
    ExperimentStatusReason = Shapes::StringShape.new(name: 'ExperimentStatusReason')
    ExperimentStopCondition = Shapes::StructureShape.new(name: 'ExperimentStopCondition')
    ExperimentStopConditionList = Shapes::ListShape.new(name: 'ExperimentStopConditionList')
    ExperimentSummary = Shapes::StructureShape.new(name: 'ExperimentSummary')
    ExperimentSummaryList = Shapes::ListShape.new(name: 'ExperimentSummaryList')
    ExperimentTarget = Shapes::StructureShape.new(name: 'ExperimentTarget')
    ExperimentTargetFilter = Shapes::StructureShape.new(name: 'ExperimentTargetFilter')
    ExperimentTargetFilterList = Shapes::ListShape.new(name: 'ExperimentTargetFilterList')
    ExperimentTargetFilterPath = Shapes::StringShape.new(name: 'ExperimentTargetFilterPath')
    ExperimentTargetFilterValue = Shapes::StringShape.new(name: 'ExperimentTargetFilterValue')
    ExperimentTargetFilterValues = Shapes::ListShape.new(name: 'ExperimentTargetFilterValues')
    ExperimentTargetMap = Shapes::MapShape.new(name: 'ExperimentTargetMap')
    ExperimentTargetName = Shapes::StringShape.new(name: 'ExperimentTargetName')
    ExperimentTargetParameterMap = Shapes::MapShape.new(name: 'ExperimentTargetParameterMap')
    ExperimentTargetParameterName = Shapes::StringShape.new(name: 'ExperimentTargetParameterName')
    ExperimentTargetParameterValue = Shapes::StringShape.new(name: 'ExperimentTargetParameterValue')
    ExperimentTargetSelectionMode = Shapes::StringShape.new(name: 'ExperimentTargetSelectionMode')
    ExperimentTemplate = Shapes::StructureShape.new(name: 'ExperimentTemplate')
    ExperimentTemplateAction = Shapes::StructureShape.new(name: 'ExperimentTemplateAction')
    ExperimentTemplateActionDescription = Shapes::StringShape.new(name: 'ExperimentTemplateActionDescription')
    ExperimentTemplateActionMap = Shapes::MapShape.new(name: 'ExperimentTemplateActionMap')
    ExperimentTemplateActionName = Shapes::StringShape.new(name: 'ExperimentTemplateActionName')
    ExperimentTemplateActionParameter = Shapes::StringShape.new(name: 'ExperimentTemplateActionParameter')
    ExperimentTemplateActionParameterMap = Shapes::MapShape.new(name: 'ExperimentTemplateActionParameterMap')
    ExperimentTemplateActionParameterName = Shapes::StringShape.new(name: 'ExperimentTemplateActionParameterName')
    ExperimentTemplateActionStartAfter = Shapes::StringShape.new(name: 'ExperimentTemplateActionStartAfter')
    ExperimentTemplateActionStartAfterList = Shapes::ListShape.new(name: 'ExperimentTemplateActionStartAfterList')
    ExperimentTemplateActionTargetMap = Shapes::MapShape.new(name: 'ExperimentTemplateActionTargetMap')
    ExperimentTemplateActionTargetName = Shapes::StringShape.new(name: 'ExperimentTemplateActionTargetName')
    ExperimentTemplateCloudWatchLogsLogConfiguration = Shapes::StructureShape.new(name: 'ExperimentTemplateCloudWatchLogsLogConfiguration')
    ExperimentTemplateCloudWatchLogsLogConfigurationInput = Shapes::StructureShape.new(name: 'ExperimentTemplateCloudWatchLogsLogConfigurationInput')
    ExperimentTemplateDescription = Shapes::StringShape.new(name: 'ExperimentTemplateDescription')
    ExperimentTemplateId = Shapes::StringShape.new(name: 'ExperimentTemplateId')
    ExperimentTemplateLogConfiguration = Shapes::StructureShape.new(name: 'ExperimentTemplateLogConfiguration')
    ExperimentTemplateS3LogConfiguration = Shapes::StructureShape.new(name: 'ExperimentTemplateS3LogConfiguration')
    ExperimentTemplateS3LogConfigurationInput = Shapes::StructureShape.new(name: 'ExperimentTemplateS3LogConfigurationInput')
    ExperimentTemplateStopCondition = Shapes::StructureShape.new(name: 'ExperimentTemplateStopCondition')
    ExperimentTemplateStopConditionList = Shapes::ListShape.new(name: 'ExperimentTemplateStopConditionList')
    ExperimentTemplateSummary = Shapes::StructureShape.new(name: 'ExperimentTemplateSummary')
    ExperimentTemplateSummaryList = Shapes::ListShape.new(name: 'ExperimentTemplateSummaryList')
    ExperimentTemplateTarget = Shapes::StructureShape.new(name: 'ExperimentTemplateTarget')
    ExperimentTemplateTargetFilter = Shapes::StructureShape.new(name: 'ExperimentTemplateTargetFilter')
    ExperimentTemplateTargetFilterInputList = Shapes::ListShape.new(name: 'ExperimentTemplateTargetFilterInputList')
    ExperimentTemplateTargetFilterList = Shapes::ListShape.new(name: 'ExperimentTemplateTargetFilterList')
    ExperimentTemplateTargetFilterPath = Shapes::StringShape.new(name: 'ExperimentTemplateTargetFilterPath')
    ExperimentTemplateTargetFilterValue = Shapes::StringShape.new(name: 'ExperimentTemplateTargetFilterValue')
    ExperimentTemplateTargetFilterValues = Shapes::ListShape.new(name: 'ExperimentTemplateTargetFilterValues')
    ExperimentTemplateTargetInputFilter = Shapes::StructureShape.new(name: 'ExperimentTemplateTargetInputFilter')
    ExperimentTemplateTargetMap = Shapes::MapShape.new(name: 'ExperimentTemplateTargetMap')
    ExperimentTemplateTargetName = Shapes::StringShape.new(name: 'ExperimentTemplateTargetName')
    ExperimentTemplateTargetParameterMap = Shapes::MapShape.new(name: 'ExperimentTemplateTargetParameterMap')
    ExperimentTemplateTargetParameterName = Shapes::StringShape.new(name: 'ExperimentTemplateTargetParameterName')
    ExperimentTemplateTargetParameterValue = Shapes::StringShape.new(name: 'ExperimentTemplateTargetParameterValue')
    ExperimentTemplateTargetSelectionMode = Shapes::StringShape.new(name: 'ExperimentTemplateTargetSelectionMode')
    GetActionRequest = Shapes::StructureShape.new(name: 'GetActionRequest')
    GetActionResponse = Shapes::StructureShape.new(name: 'GetActionResponse')
    GetExperimentRequest = Shapes::StructureShape.new(name: 'GetExperimentRequest')
    GetExperimentResponse = Shapes::StructureShape.new(name: 'GetExperimentResponse')
    GetExperimentTemplateRequest = Shapes::StructureShape.new(name: 'GetExperimentTemplateRequest')
    GetExperimentTemplateResponse = Shapes::StructureShape.new(name: 'GetExperimentTemplateResponse')
    GetTargetResourceTypeRequest = Shapes::StructureShape.new(name: 'GetTargetResourceTypeRequest')
    GetTargetResourceTypeResponse = Shapes::StructureShape.new(name: 'GetTargetResourceTypeResponse')
    LastUpdateTime = Shapes::TimestampShape.new(name: 'LastUpdateTime')
    ListActionsMaxResults = Shapes::IntegerShape.new(name: 'ListActionsMaxResults')
    ListActionsRequest = Shapes::StructureShape.new(name: 'ListActionsRequest')
    ListActionsResponse = Shapes::StructureShape.new(name: 'ListActionsResponse')
    ListExperimentTemplatesMaxResults = Shapes::IntegerShape.new(name: 'ListExperimentTemplatesMaxResults')
    ListExperimentTemplatesRequest = Shapes::StructureShape.new(name: 'ListExperimentTemplatesRequest')
    ListExperimentTemplatesResponse = Shapes::StructureShape.new(name: 'ListExperimentTemplatesResponse')
    ListExperimentsMaxResults = Shapes::IntegerShape.new(name: 'ListExperimentsMaxResults')
    ListExperimentsRequest = Shapes::StructureShape.new(name: 'ListExperimentsRequest')
    ListExperimentsResponse = Shapes::StructureShape.new(name: 'ListExperimentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTargetResourceTypesMaxResults = Shapes::IntegerShape.new(name: 'ListTargetResourceTypesMaxResults')
    ListTargetResourceTypesRequest = Shapes::StructureShape.new(name: 'ListTargetResourceTypesRequest')
    ListTargetResourceTypesResponse = Shapes::StructureShape.new(name: 'ListTargetResourceTypesResponse')
    LogSchemaVersion = Shapes::IntegerShape.new(name: 'LogSchemaVersion')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartExperimentRequest = Shapes::StructureShape.new(name: 'StartExperimentRequest')
    StartExperimentResponse = Shapes::StructureShape.new(name: 'StartExperimentResponse')
    StopConditionSource = Shapes::StringShape.new(name: 'StopConditionSource')
    StopConditionValue = Shapes::StringShape.new(name: 'StopConditionValue')
    StopExperimentRequest = Shapes::StructureShape.new(name: 'StopExperimentRequest')
    StopExperimentResponse = Shapes::StructureShape.new(name: 'StopExperimentResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetResourceType = Shapes::StructureShape.new(name: 'TargetResourceType')
    TargetResourceTypeDescription = Shapes::StringShape.new(name: 'TargetResourceTypeDescription')
    TargetResourceTypeId = Shapes::StringShape.new(name: 'TargetResourceTypeId')
    TargetResourceTypeParameter = Shapes::StructureShape.new(name: 'TargetResourceTypeParameter')
    TargetResourceTypeParameterDescription = Shapes::StringShape.new(name: 'TargetResourceTypeParameterDescription')
    TargetResourceTypeParameterMap = Shapes::MapShape.new(name: 'TargetResourceTypeParameterMap')
    TargetResourceTypeParameterName = Shapes::StringShape.new(name: 'TargetResourceTypeParameterName')
    TargetResourceTypeParameterRequired = Shapes::BooleanShape.new(name: 'TargetResourceTypeParameterRequired')
    TargetResourceTypeSummary = Shapes::StructureShape.new(name: 'TargetResourceTypeSummary')
    TargetResourceTypeSummaryList = Shapes::ListShape.new(name: 'TargetResourceTypeSummaryList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateExperimentTemplateActionInputItem = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateActionInputItem')
    UpdateExperimentTemplateActionInputMap = Shapes::MapShape.new(name: 'UpdateExperimentTemplateActionInputMap')
    UpdateExperimentTemplateLogConfigurationInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateLogConfigurationInput')
    UpdateExperimentTemplateRequest = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateRequest')
    UpdateExperimentTemplateResponse = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateResponse')
    UpdateExperimentTemplateStopConditionInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateStopConditionInput')
    UpdateExperimentTemplateStopConditionInputList = Shapes::ListShape.new(name: 'UpdateExperimentTemplateStopConditionInputList')
    UpdateExperimentTemplateTargetInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateTargetInput')
    UpdateExperimentTemplateTargetInputMap = Shapes::MapShape.new(name: 'UpdateExperimentTemplateTargetInputMap')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    Action.add_member(:id, Shapes::ShapeRef.new(shape: ActionId, location_name: "id"))
    Action.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    Action.add_member(:parameters, Shapes::ShapeRef.new(shape: ActionParameterMap, location_name: "parameters"))
    Action.add_member(:targets, Shapes::ShapeRef.new(shape: ActionTargetMap, location_name: "targets"))
    Action.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Action.struct_class = Types::Action

    ActionParameter.add_member(:description, Shapes::ShapeRef.new(shape: ActionParameterDescription, location_name: "description"))
    ActionParameter.add_member(:required, Shapes::ShapeRef.new(shape: ActionParameterRequired, location_name: "required", metadata: {"box"=>true}))
    ActionParameter.struct_class = Types::ActionParameter

    ActionParameterMap.key = Shapes::ShapeRef.new(shape: ActionParameterName)
    ActionParameterMap.value = Shapes::ShapeRef.new(shape: ActionParameter)

    ActionSummary.add_member(:id, Shapes::ShapeRef.new(shape: ActionId, location_name: "id"))
    ActionSummary.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    ActionSummary.add_member(:targets, Shapes::ShapeRef.new(shape: ActionTargetMap, location_name: "targets"))
    ActionSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ActionSummary.struct_class = Types::ActionSummary

    ActionSummaryList.member = Shapes::ShapeRef.new(shape: ActionSummary)

    ActionTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: "resourceType"))
    ActionTarget.struct_class = Types::ActionTarget

    ActionTargetMap.key = Shapes::ShapeRef.new(shape: ActionTargetName)
    ActionTargetMap.value = Shapes::ShapeRef.new(shape: ActionTarget)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateExperimentTemplateActionInput.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "actionId"))
    CreateExperimentTemplateActionInput.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateActionDescription, location_name: "description"))
    CreateExperimentTemplateActionInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterMap, location_name: "parameters"))
    CreateExperimentTemplateActionInput.add_member(:targets, Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetMap, location_name: "targets"))
    CreateExperimentTemplateActionInput.add_member(:start_after, Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfterList, location_name: "startAfter"))
    CreateExperimentTemplateActionInput.struct_class = Types::CreateExperimentTemplateActionInput

    CreateExperimentTemplateActionInputMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateActionName)
    CreateExperimentTemplateActionInputMap.value = Shapes::ShapeRef.new(shape: CreateExperimentTemplateActionInput)

    CreateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfigurationInput, location_name: "cloudWatchLogsConfiguration"))
    CreateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfigurationInput, location_name: "s3Configuration"))
    CreateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, required: true, location_name: "logSchemaVersion"))
    CreateExperimentTemplateLogConfigurationInput.struct_class = Types::CreateExperimentTemplateLogConfigurationInput

    CreateExperimentTemplateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateExperimentTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, required: true, location_name: "description"))
    CreateExperimentTemplateRequest.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: CreateExperimentTemplateStopConditionInputList, required: true, location_name: "stopConditions"))
    CreateExperimentTemplateRequest.add_member(:targets, Shapes::ShapeRef.new(shape: CreateExperimentTemplateTargetInputMap, location_name: "targets"))
    CreateExperimentTemplateRequest.add_member(:actions, Shapes::ShapeRef.new(shape: CreateExperimentTemplateActionInputMap, required: true, location_name: "actions"))
    CreateExperimentTemplateRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateExperimentTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateExperimentTemplateRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: CreateExperimentTemplateLogConfigurationInput, location_name: "logConfiguration"))
    CreateExperimentTemplateRequest.struct_class = Types::CreateExperimentTemplateRequest

    CreateExperimentTemplateResponse.add_member(:experiment_template, Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: "experimentTemplate"))
    CreateExperimentTemplateResponse.struct_class = Types::CreateExperimentTemplateResponse

    CreateExperimentTemplateStopConditionInput.add_member(:source, Shapes::ShapeRef.new(shape: StopConditionSource, required: true, location_name: "source"))
    CreateExperimentTemplateStopConditionInput.add_member(:value, Shapes::ShapeRef.new(shape: StopConditionValue, location_name: "value"))
    CreateExperimentTemplateStopConditionInput.struct_class = Types::CreateExperimentTemplateStopConditionInput

    CreateExperimentTemplateStopConditionInputList.member = Shapes::ShapeRef.new(shape: CreateExperimentTemplateStopConditionInput)

    CreateExperimentTemplateTargetInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, required: true, location_name: "resourceType"))
    CreateExperimentTemplateTargetInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    CreateExperimentTemplateTargetInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "resourceTags"))
    CreateExperimentTemplateTargetInput.add_member(:filters, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterInputList, location_name: "filters"))
    CreateExperimentTemplateTargetInput.add_member(:selection_mode, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetSelectionMode, required: true, location_name: "selectionMode"))
    CreateExperimentTemplateTargetInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterMap, location_name: "parameters"))
    CreateExperimentTemplateTargetInput.struct_class = Types::CreateExperimentTemplateTargetInput

    CreateExperimentTemplateTargetInputMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)
    CreateExperimentTemplateTargetInputMap.value = Shapes::ShapeRef.new(shape: CreateExperimentTemplateTargetInput)

    DeleteExperimentTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    DeleteExperimentTemplateRequest.struct_class = Types::DeleteExperimentTemplateRequest

    DeleteExperimentTemplateResponse.add_member(:experiment_template, Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: "experimentTemplate"))
    DeleteExperimentTemplateResponse.struct_class = Types::DeleteExperimentTemplateResponse

    Experiment.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentId, location_name: "id"))
    Experiment.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: "experimentTemplateId"))
    Experiment.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    Experiment.add_member(:state, Shapes::ShapeRef.new(shape: ExperimentState, location_name: "state"))
    Experiment.add_member(:targets, Shapes::ShapeRef.new(shape: ExperimentTargetMap, location_name: "targets"))
    Experiment.add_member(:actions, Shapes::ShapeRef.new(shape: ExperimentActionMap, location_name: "actions"))
    Experiment.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: ExperimentStopConditionList, location_name: "stopConditions"))
    Experiment.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "creationTime"))
    Experiment.add_member(:start_time, Shapes::ShapeRef.new(shape: ExperimentStartTime, location_name: "startTime"))
    Experiment.add_member(:end_time, Shapes::ShapeRef.new(shape: ExperimentEndTime, location_name: "endTime"))
    Experiment.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Experiment.add_member(:log_configuration, Shapes::ShapeRef.new(shape: ExperimentLogConfiguration, location_name: "logConfiguration"))
    Experiment.struct_class = Types::Experiment

    ExperimentAction.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, location_name: "actionId"))
    ExperimentAction.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentActionDescription, location_name: "description"))
    ExperimentAction.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentActionParameterMap, location_name: "parameters"))
    ExperimentAction.add_member(:targets, Shapes::ShapeRef.new(shape: ExperimentActionTargetMap, location_name: "targets"))
    ExperimentAction.add_member(:start_after, Shapes::ShapeRef.new(shape: ExperimentActionStartAfterList, location_name: "startAfter"))
    ExperimentAction.add_member(:state, Shapes::ShapeRef.new(shape: ExperimentActionState, location_name: "state"))
    ExperimentAction.add_member(:start_time, Shapes::ShapeRef.new(shape: ExperimentActionStartTime, location_name: "startTime"))
    ExperimentAction.add_member(:end_time, Shapes::ShapeRef.new(shape: ExperimentActionEndTime, location_name: "endTime"))
    ExperimentAction.struct_class = Types::ExperimentAction

    ExperimentActionMap.key = Shapes::ShapeRef.new(shape: ExperimentActionName)
    ExperimentActionMap.value = Shapes::ShapeRef.new(shape: ExperimentAction)

    ExperimentActionParameterMap.key = Shapes::ShapeRef.new(shape: ExperimentActionParameterName)
    ExperimentActionParameterMap.value = Shapes::ShapeRef.new(shape: ExperimentActionParameter)

    ExperimentActionStartAfterList.member = Shapes::ShapeRef.new(shape: ExperimentActionStartAfter)

    ExperimentActionState.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentActionStatus, location_name: "status"))
    ExperimentActionState.add_member(:reason, Shapes::ShapeRef.new(shape: ExperimentActionStatusReason, location_name: "reason"))
    ExperimentActionState.struct_class = Types::ExperimentActionState

    ExperimentActionTargetMap.key = Shapes::ShapeRef.new(shape: ExperimentActionTargetName)
    ExperimentActionTargetMap.value = Shapes::ShapeRef.new(shape: ExperimentTargetName)

    ExperimentCloudWatchLogsLogConfiguration.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: "logGroupArn"))
    ExperimentCloudWatchLogsLogConfiguration.struct_class = Types::ExperimentCloudWatchLogsLogConfiguration

    ExperimentLogConfiguration.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentCloudWatchLogsLogConfiguration, location_name: "cloudWatchLogsConfiguration"))
    ExperimentLogConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentS3LogConfiguration, location_name: "s3Configuration"))
    ExperimentLogConfiguration.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: "logSchemaVersion"))
    ExperimentLogConfiguration.struct_class = Types::ExperimentLogConfiguration

    ExperimentS3LogConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucketName"))
    ExperimentS3LogConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "prefix"))
    ExperimentS3LogConfiguration.struct_class = Types::ExperimentS3LogConfiguration

    ExperimentState.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentStatus, location_name: "status"))
    ExperimentState.add_member(:reason, Shapes::ShapeRef.new(shape: ExperimentStatusReason, location_name: "reason"))
    ExperimentState.struct_class = Types::ExperimentState

    ExperimentStopCondition.add_member(:source, Shapes::ShapeRef.new(shape: StopConditionSource, location_name: "source"))
    ExperimentStopCondition.add_member(:value, Shapes::ShapeRef.new(shape: StopConditionValue, location_name: "value"))
    ExperimentStopCondition.struct_class = Types::ExperimentStopCondition

    ExperimentStopConditionList.member = Shapes::ShapeRef.new(shape: ExperimentStopCondition)

    ExperimentSummary.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentId, location_name: "id"))
    ExperimentSummary.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: "experimentTemplateId"))
    ExperimentSummary.add_member(:state, Shapes::ShapeRef.new(shape: ExperimentState, location_name: "state"))
    ExperimentSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "creationTime"))
    ExperimentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ExperimentSummary.struct_class = Types::ExperimentSummary

    ExperimentSummaryList.member = Shapes::ShapeRef.new(shape: ExperimentSummary)

    ExperimentTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: "resourceType"))
    ExperimentTarget.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    ExperimentTarget.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "resourceTags"))
    ExperimentTarget.add_member(:filters, Shapes::ShapeRef.new(shape: ExperimentTargetFilterList, location_name: "filters"))
    ExperimentTarget.add_member(:selection_mode, Shapes::ShapeRef.new(shape: ExperimentTargetSelectionMode, location_name: "selectionMode"))
    ExperimentTarget.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTargetParameterMap, location_name: "parameters"))
    ExperimentTarget.struct_class = Types::ExperimentTarget

    ExperimentTargetFilter.add_member(:path, Shapes::ShapeRef.new(shape: ExperimentTargetFilterPath, location_name: "path"))
    ExperimentTargetFilter.add_member(:values, Shapes::ShapeRef.new(shape: ExperimentTargetFilterValues, location_name: "values"))
    ExperimentTargetFilter.struct_class = Types::ExperimentTargetFilter

    ExperimentTargetFilterList.member = Shapes::ShapeRef.new(shape: ExperimentTargetFilter)

    ExperimentTargetFilterValues.member = Shapes::ShapeRef.new(shape: ExperimentTargetFilterValue)

    ExperimentTargetMap.key = Shapes::ShapeRef.new(shape: ExperimentTargetName)
    ExperimentTargetMap.value = Shapes::ShapeRef.new(shape: ExperimentTarget)

    ExperimentTargetParameterMap.key = Shapes::ShapeRef.new(shape: ExperimentTargetParameterName)
    ExperimentTargetParameterMap.value = Shapes::ShapeRef.new(shape: ExperimentTargetParameterValue)

    ExperimentTemplate.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: "id"))
    ExperimentTemplate.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: "description"))
    ExperimentTemplate.add_member(:targets, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetMap, location_name: "targets"))
    ExperimentTemplate.add_member(:actions, Shapes::ShapeRef.new(shape: ExperimentTemplateActionMap, location_name: "actions"))
    ExperimentTemplate.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: ExperimentTemplateStopConditionList, location_name: "stopConditions"))
    ExperimentTemplate.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "creationTime"))
    ExperimentTemplate.add_member(:last_update_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "lastUpdateTime"))
    ExperimentTemplate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    ExperimentTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ExperimentTemplate.add_member(:log_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateLogConfiguration, location_name: "logConfiguration"))
    ExperimentTemplate.struct_class = Types::ExperimentTemplate

    ExperimentTemplateAction.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, location_name: "actionId"))
    ExperimentTemplateAction.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateActionDescription, location_name: "description"))
    ExperimentTemplateAction.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterMap, location_name: "parameters"))
    ExperimentTemplateAction.add_member(:targets, Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetMap, location_name: "targets"))
    ExperimentTemplateAction.add_member(:start_after, Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfterList, location_name: "startAfter"))
    ExperimentTemplateAction.struct_class = Types::ExperimentTemplateAction

    ExperimentTemplateActionMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateActionName)
    ExperimentTemplateActionMap.value = Shapes::ShapeRef.new(shape: ExperimentTemplateAction)

    ExperimentTemplateActionParameterMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterName)
    ExperimentTemplateActionParameterMap.value = Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameter)

    ExperimentTemplateActionStartAfterList.member = Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfter)

    ExperimentTemplateActionTargetMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetName)
    ExperimentTemplateActionTargetMap.value = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)

    ExperimentTemplateCloudWatchLogsLogConfiguration.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: "logGroupArn"))
    ExperimentTemplateCloudWatchLogsLogConfiguration.struct_class = Types::ExperimentTemplateCloudWatchLogsLogConfiguration

    ExperimentTemplateCloudWatchLogsLogConfigurationInput.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, required: true, location_name: "logGroupArn"))
    ExperimentTemplateCloudWatchLogsLogConfigurationInput.struct_class = Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput

    ExperimentTemplateLogConfiguration.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfiguration, location_name: "cloudWatchLogsConfiguration"))
    ExperimentTemplateLogConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfiguration, location_name: "s3Configuration"))
    ExperimentTemplateLogConfiguration.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: "logSchemaVersion"))
    ExperimentTemplateLogConfiguration.struct_class = Types::ExperimentTemplateLogConfiguration

    ExperimentTemplateS3LogConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucketName"))
    ExperimentTemplateS3LogConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "prefix"))
    ExperimentTemplateS3LogConfiguration.struct_class = Types::ExperimentTemplateS3LogConfiguration

    ExperimentTemplateS3LogConfigurationInput.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    ExperimentTemplateS3LogConfigurationInput.add_member(:prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "prefix"))
    ExperimentTemplateS3LogConfigurationInput.struct_class = Types::ExperimentTemplateS3LogConfigurationInput

    ExperimentTemplateStopCondition.add_member(:source, Shapes::ShapeRef.new(shape: StopConditionSource, location_name: "source"))
    ExperimentTemplateStopCondition.add_member(:value, Shapes::ShapeRef.new(shape: StopConditionValue, location_name: "value"))
    ExperimentTemplateStopCondition.struct_class = Types::ExperimentTemplateStopCondition

    ExperimentTemplateStopConditionList.member = Shapes::ShapeRef.new(shape: ExperimentTemplateStopCondition)

    ExperimentTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: "id"))
    ExperimentTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: "description"))
    ExperimentTemplateSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "creationTime"))
    ExperimentTemplateSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "lastUpdateTime"))
    ExperimentTemplateSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ExperimentTemplateSummary.struct_class = Types::ExperimentTemplateSummary

    ExperimentTemplateSummaryList.member = Shapes::ShapeRef.new(shape: ExperimentTemplateSummary)

    ExperimentTemplateTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: "resourceType"))
    ExperimentTemplateTarget.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    ExperimentTemplateTarget.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "resourceTags"))
    ExperimentTemplateTarget.add_member(:filters, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterList, location_name: "filters"))
    ExperimentTemplateTarget.add_member(:selection_mode, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetSelectionMode, location_name: "selectionMode"))
    ExperimentTemplateTarget.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterMap, location_name: "parameters"))
    ExperimentTemplateTarget.struct_class = Types::ExperimentTemplateTarget

    ExperimentTemplateTargetFilter.add_member(:path, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterPath, location_name: "path"))
    ExperimentTemplateTargetFilter.add_member(:values, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterValues, location_name: "values"))
    ExperimentTemplateTargetFilter.struct_class = Types::ExperimentTemplateTargetFilter

    ExperimentTemplateTargetFilterInputList.member = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetInputFilter)

    ExperimentTemplateTargetFilterList.member = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilter)

    ExperimentTemplateTargetFilterValues.member = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterValue)

    ExperimentTemplateTargetInputFilter.add_member(:path, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterPath, required: true, location_name: "path"))
    ExperimentTemplateTargetInputFilter.add_member(:values, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterValues, required: true, location_name: "values"))
    ExperimentTemplateTargetInputFilter.struct_class = Types::ExperimentTemplateTargetInputFilter

    ExperimentTemplateTargetMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)
    ExperimentTemplateTargetMap.value = Shapes::ShapeRef.new(shape: ExperimentTemplateTarget)

    ExperimentTemplateTargetParameterMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterName)
    ExperimentTemplateTargetParameterMap.value = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterValue)

    GetActionRequest.add_member(:id, Shapes::ShapeRef.new(shape: ActionId, required: true, location: "uri", location_name: "id"))
    GetActionRequest.struct_class = Types::GetActionRequest

    GetActionResponse.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "action"))
    GetActionResponse.struct_class = Types::GetActionResponse

    GetExperimentRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentId, required: true, location: "uri", location_name: "id"))
    GetExperimentRequest.struct_class = Types::GetExperimentRequest

    GetExperimentResponse.add_member(:experiment, Shapes::ShapeRef.new(shape: Experiment, location_name: "experiment"))
    GetExperimentResponse.struct_class = Types::GetExperimentResponse

    GetExperimentTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    GetExperimentTemplateRequest.struct_class = Types::GetExperimentTemplateRequest

    GetExperimentTemplateResponse.add_member(:experiment_template, Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: "experimentTemplate"))
    GetExperimentTemplateResponse.struct_class = Types::GetExperimentTemplateResponse

    GetTargetResourceTypeRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, required: true, location: "uri", location_name: "resourceType"))
    GetTargetResourceTypeRequest.struct_class = Types::GetTargetResourceTypeRequest

    GetTargetResourceTypeResponse.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: TargetResourceType, location_name: "targetResourceType"))
    GetTargetResourceTypeResponse.struct_class = Types::GetTargetResourceTypeResponse

    ListActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListActionsMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListActionsRequest.struct_class = Types::ListActionsRequest

    ListActionsResponse.add_member(:actions, Shapes::ShapeRef.new(shape: ActionSummaryList, location_name: "actions"))
    ListActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionsResponse.struct_class = Types::ListActionsResponse

    ListExperimentTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExperimentTemplatesMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListExperimentTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExperimentTemplatesRequest.struct_class = Types::ListExperimentTemplatesRequest

    ListExperimentTemplatesResponse.add_member(:experiment_templates, Shapes::ShapeRef.new(shape: ExperimentTemplateSummaryList, location_name: "experimentTemplates"))
    ListExperimentTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExperimentTemplatesResponse.struct_class = Types::ListExperimentTemplatesResponse

    ListExperimentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExperimentsMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListExperimentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExperimentsRequest.struct_class = Types::ListExperimentsRequest

    ListExperimentsResponse.add_member(:experiments, Shapes::ShapeRef.new(shape: ExperimentSummaryList, location_name: "experiments"))
    ListExperimentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExperimentsResponse.struct_class = Types::ListExperimentsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTargetResourceTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTargetResourceTypesMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListTargetResourceTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTargetResourceTypesRequest.struct_class = Types::ListTargetResourceTypesRequest

    ListTargetResourceTypesResponse.add_member(:target_resource_types, Shapes::ShapeRef.new(shape: TargetResourceTypeSummaryList, location_name: "targetResourceTypes"))
    ListTargetResourceTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetResourceTypesResponse.struct_class = Types::ListTargetResourceTypesResponse

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartExperimentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartExperimentRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location_name: "experimentTemplateId"))
    StartExperimentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartExperimentRequest.struct_class = Types::StartExperimentRequest

    StartExperimentResponse.add_member(:experiment, Shapes::ShapeRef.new(shape: Experiment, location_name: "experiment"))
    StartExperimentResponse.struct_class = Types::StartExperimentResponse

    StopExperimentRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentId, required: true, location: "uri", location_name: "id"))
    StopExperimentRequest.struct_class = Types::StopExperimentRequest

    StopExperimentResponse.add_member(:experiment, Shapes::ShapeRef.new(shape: Experiment, location_name: "experiment"))
    StopExperimentResponse.struct_class = Types::StopExperimentResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetResourceType.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: "resourceType"))
    TargetResourceType.add_member(:description, Shapes::ShapeRef.new(shape: TargetResourceTypeDescription, location_name: "description"))
    TargetResourceType.add_member(:parameters, Shapes::ShapeRef.new(shape: TargetResourceTypeParameterMap, location_name: "parameters"))
    TargetResourceType.struct_class = Types::TargetResourceType

    TargetResourceTypeParameter.add_member(:description, Shapes::ShapeRef.new(shape: TargetResourceTypeParameterDescription, location_name: "description"))
    TargetResourceTypeParameter.add_member(:required, Shapes::ShapeRef.new(shape: TargetResourceTypeParameterRequired, location_name: "required", metadata: {"box"=>true}))
    TargetResourceTypeParameter.struct_class = Types::TargetResourceTypeParameter

    TargetResourceTypeParameterMap.key = Shapes::ShapeRef.new(shape: TargetResourceTypeParameterName)
    TargetResourceTypeParameterMap.value = Shapes::ShapeRef.new(shape: TargetResourceTypeParameter)

    TargetResourceTypeSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: "resourceType"))
    TargetResourceTypeSummary.add_member(:description, Shapes::ShapeRef.new(shape: TargetResourceTypeDescription, location_name: "description"))
    TargetResourceTypeSummary.struct_class = Types::TargetResourceTypeSummary

    TargetResourceTypeSummaryList.member = Shapes::ShapeRef.new(shape: TargetResourceTypeSummary)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateExperimentTemplateActionInputItem.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, location_name: "actionId"))
    UpdateExperimentTemplateActionInputItem.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateActionDescription, location_name: "description"))
    UpdateExperimentTemplateActionInputItem.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterMap, location_name: "parameters"))
    UpdateExperimentTemplateActionInputItem.add_member(:targets, Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetMap, location_name: "targets"))
    UpdateExperimentTemplateActionInputItem.add_member(:start_after, Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfterList, location_name: "startAfter"))
    UpdateExperimentTemplateActionInputItem.struct_class = Types::UpdateExperimentTemplateActionInputItem

    UpdateExperimentTemplateActionInputMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateActionName)
    UpdateExperimentTemplateActionInputMap.value = Shapes::ShapeRef.new(shape: UpdateExperimentTemplateActionInputItem)

    UpdateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfigurationInput, location_name: "cloudWatchLogsConfiguration"))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfigurationInput, location_name: "s3Configuration"))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: "logSchemaVersion"))
    UpdateExperimentTemplateLogConfigurationInput.struct_class = Types::UpdateExperimentTemplateLogConfigurationInput

    UpdateExperimentTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    UpdateExperimentTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: "description"))
    UpdateExperimentTemplateRequest.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateStopConditionInputList, location_name: "stopConditions"))
    UpdateExperimentTemplateRequest.add_member(:targets, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateTargetInputMap, location_name: "targets"))
    UpdateExperimentTemplateRequest.add_member(:actions, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateActionInputMap, location_name: "actions"))
    UpdateExperimentTemplateRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateExperimentTemplateRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateLogConfigurationInput, location_name: "logConfiguration"))
    UpdateExperimentTemplateRequest.struct_class = Types::UpdateExperimentTemplateRequest

    UpdateExperimentTemplateResponse.add_member(:experiment_template, Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: "experimentTemplate"))
    UpdateExperimentTemplateResponse.struct_class = Types::UpdateExperimentTemplateResponse

    UpdateExperimentTemplateStopConditionInput.add_member(:source, Shapes::ShapeRef.new(shape: StopConditionSource, required: true, location_name: "source"))
    UpdateExperimentTemplateStopConditionInput.add_member(:value, Shapes::ShapeRef.new(shape: StopConditionValue, location_name: "value"))
    UpdateExperimentTemplateStopConditionInput.struct_class = Types::UpdateExperimentTemplateStopConditionInput

    UpdateExperimentTemplateStopConditionInputList.member = Shapes::ShapeRef.new(shape: UpdateExperimentTemplateStopConditionInput)

    UpdateExperimentTemplateTargetInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, required: true, location_name: "resourceType"))
    UpdateExperimentTemplateTargetInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    UpdateExperimentTemplateTargetInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "resourceTags"))
    UpdateExperimentTemplateTargetInput.add_member(:filters, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterInputList, location_name: "filters"))
    UpdateExperimentTemplateTargetInput.add_member(:selection_mode, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetSelectionMode, required: true, location_name: "selectionMode"))
    UpdateExperimentTemplateTargetInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterMap, location_name: "parameters"))
    UpdateExperimentTemplateTargetInput.struct_class = Types::UpdateExperimentTemplateTargetInput

    UpdateExperimentTemplateTargetInputMap.key = Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)
    UpdateExperimentTemplateTargetInputMap.value = Shapes::ShapeRef.new(shape: UpdateExperimentTemplateTargetInput)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-12-01"

      api.metadata = {
        "apiVersion" => "2020-12-01",
        "endpointPrefix" => "fis",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "FIS",
        "serviceFullName" => "AWS Fault Injection Simulator",
        "serviceId" => "fis",
        "signatureVersion" => "v4",
        "signingName" => "fis",
        "uid" => "fis-2020-12-01",
      }

      api.add_operation(:create_experiment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExperimentTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/experimentTemplates"
        o.input = Shapes::ShapeRef.new(shape: CreateExperimentTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExperimentTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_experiment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExperimentTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/experimentTemplates/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteExperimentTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExperimentTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAction"
        o.http_method = "GET"
        o.http_request_uri = "/actions/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetActionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExperiment"
        o.http_method = "GET"
        o.http_request_uri = "/experiments/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_experiment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExperimentTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/experimentTemplates/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetExperimentTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExperimentTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_target_resource_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTargetResourceType"
        o.http_method = "GET"
        o.http_request_uri = "/targetResourceTypes/{resourceType}"
        o.input = Shapes::ShapeRef.new(shape: GetTargetResourceTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTargetResourceTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActions"
        o.http_method = "GET"
        o.http_request_uri = "/actions"
        o.input = Shapes::ShapeRef.new(shape: ListActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiment_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperimentTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/experimentTemplates"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperimentTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperiments"
        o.http_method = "GET"
        o.http_request_uri = "/experiments"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperimentsResponse)
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
      end)

      api.add_operation(:list_target_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetResourceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/targetResourceTypes"
        o.input = Shapes::ShapeRef.new(shape: ListTargetResourceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetResourceTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExperiment"
        o.http_method = "POST"
        o.http_request_uri = "/experiments"
        o.input = Shapes::ShapeRef.new(shape: StartExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_experiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopExperiment"
        o.http_method = "DELETE"
        o.http_request_uri = "/experiments/{id}"
        o.input = Shapes::ShapeRef.new(shape: StopExperimentRequest)
        o.output = Shapes::ShapeRef.new(shape: StopExperimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
      end)

      api.add_operation(:update_experiment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExperimentTemplate"
        o.http_method = "PATCH"
        o.http_request_uri = "/experimentTemplates/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateExperimentTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateExperimentTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
