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

    AccountTargeting = Shapes::StringShape.new(name: 'AccountTargeting')
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
    ActionsMode = Shapes::StringShape.new(name: 'ActionsMode')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogGroupArn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateExperimentTemplateActionInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateActionInput')
    CreateExperimentTemplateActionInputMap = Shapes::MapShape.new(name: 'CreateExperimentTemplateActionInputMap')
    CreateExperimentTemplateExperimentOptionsInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateExperimentOptionsInput')
    CreateExperimentTemplateLogConfigurationInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateLogConfigurationInput')
    CreateExperimentTemplateReportConfigurationInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateReportConfigurationInput')
    CreateExperimentTemplateRequest = Shapes::StructureShape.new(name: 'CreateExperimentTemplateRequest')
    CreateExperimentTemplateResponse = Shapes::StructureShape.new(name: 'CreateExperimentTemplateResponse')
    CreateExperimentTemplateStopConditionInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateStopConditionInput')
    CreateExperimentTemplateStopConditionInputList = Shapes::ListShape.new(name: 'CreateExperimentTemplateStopConditionInputList')
    CreateExperimentTemplateTargetInput = Shapes::StructureShape.new(name: 'CreateExperimentTemplateTargetInput')
    CreateExperimentTemplateTargetInputMap = Shapes::MapShape.new(name: 'CreateExperimentTemplateTargetInputMap')
    CreateTargetAccountConfigurationRequest = Shapes::StructureShape.new(name: 'CreateTargetAccountConfigurationRequest')
    CreateTargetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'CreateTargetAccountConfigurationResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DeleteExperimentTemplateRequest = Shapes::StructureShape.new(name: 'DeleteExperimentTemplateRequest')
    DeleteExperimentTemplateResponse = Shapes::StructureShape.new(name: 'DeleteExperimentTemplateResponse')
    DeleteTargetAccountConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteTargetAccountConfigurationRequest')
    DeleteTargetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteTargetAccountConfigurationResponse')
    EmptyTargetResolutionMode = Shapes::StringShape.new(name: 'EmptyTargetResolutionMode')
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
    ExperimentError = Shapes::StructureShape.new(name: 'ExperimentError')
    ExperimentErrorAccountId = Shapes::StringShape.new(name: 'ExperimentErrorAccountId')
    ExperimentErrorCode = Shapes::StringShape.new(name: 'ExperimentErrorCode')
    ExperimentErrorLocation = Shapes::StringShape.new(name: 'ExperimentErrorLocation')
    ExperimentId = Shapes::StringShape.new(name: 'ExperimentId')
    ExperimentLogConfiguration = Shapes::StructureShape.new(name: 'ExperimentLogConfiguration')
    ExperimentOptions = Shapes::StructureShape.new(name: 'ExperimentOptions')
    ExperimentReport = Shapes::StructureShape.new(name: 'ExperimentReport')
    ExperimentReportConfiguration = Shapes::StructureShape.new(name: 'ExperimentReportConfiguration')
    ExperimentReportConfigurationCloudWatchDashboard = Shapes::StructureShape.new(name: 'ExperimentReportConfigurationCloudWatchDashboard')
    ExperimentReportConfigurationCloudWatchDashboardList = Shapes::ListShape.new(name: 'ExperimentReportConfigurationCloudWatchDashboardList')
    ExperimentReportConfigurationDataSources = Shapes::StructureShape.new(name: 'ExperimentReportConfigurationDataSources')
    ExperimentReportConfigurationOutputs = Shapes::StructureShape.new(name: 'ExperimentReportConfigurationOutputs')
    ExperimentReportConfigurationOutputsS3Configuration = Shapes::StructureShape.new(name: 'ExperimentReportConfigurationOutputsS3Configuration')
    ExperimentReportError = Shapes::StructureShape.new(name: 'ExperimentReportError')
    ExperimentReportErrorCode = Shapes::StringShape.new(name: 'ExperimentReportErrorCode')
    ExperimentReportReason = Shapes::StringShape.new(name: 'ExperimentReportReason')
    ExperimentReportS3Report = Shapes::StructureShape.new(name: 'ExperimentReportS3Report')
    ExperimentReportS3ReportArn = Shapes::StringShape.new(name: 'ExperimentReportS3ReportArn')
    ExperimentReportS3ReportList = Shapes::ListShape.new(name: 'ExperimentReportS3ReportList')
    ExperimentReportS3ReportType = Shapes::StringShape.new(name: 'ExperimentReportS3ReportType')
    ExperimentReportState = Shapes::StructureShape.new(name: 'ExperimentReportState')
    ExperimentReportStatus = Shapes::StringShape.new(name: 'ExperimentReportStatus')
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
    ExperimentTargetAccountConfiguration = Shapes::StructureShape.new(name: 'ExperimentTargetAccountConfiguration')
    ExperimentTargetAccountConfigurationList = Shapes::ListShape.new(name: 'ExperimentTargetAccountConfigurationList')
    ExperimentTargetAccountConfigurationSummary = Shapes::StructureShape.new(name: 'ExperimentTargetAccountConfigurationSummary')
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
    ExperimentTemplateExperimentOptions = Shapes::StructureShape.new(name: 'ExperimentTemplateExperimentOptions')
    ExperimentTemplateId = Shapes::StringShape.new(name: 'ExperimentTemplateId')
    ExperimentTemplateLogConfiguration = Shapes::StructureShape.new(name: 'ExperimentTemplateLogConfiguration')
    ExperimentTemplateReportConfiguration = Shapes::StructureShape.new(name: 'ExperimentTemplateReportConfiguration')
    ExperimentTemplateReportConfigurationCloudWatchDashboard = Shapes::StructureShape.new(name: 'ExperimentTemplateReportConfigurationCloudWatchDashboard')
    ExperimentTemplateReportConfigurationCloudWatchDashboardList = Shapes::ListShape.new(name: 'ExperimentTemplateReportConfigurationCloudWatchDashboardList')
    ExperimentTemplateReportConfigurationDataSources = Shapes::StructureShape.new(name: 'ExperimentTemplateReportConfigurationDataSources')
    ExperimentTemplateReportConfigurationDataSourcesInput = Shapes::StructureShape.new(name: 'ExperimentTemplateReportConfigurationDataSourcesInput')
    ExperimentTemplateReportConfigurationOutputs = Shapes::StructureShape.new(name: 'ExperimentTemplateReportConfigurationOutputs')
    ExperimentTemplateReportConfigurationOutputsInput = Shapes::StructureShape.new(name: 'ExperimentTemplateReportConfigurationOutputsInput')
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
    GetExperimentTargetAccountConfigurationRequest = Shapes::StructureShape.new(name: 'GetExperimentTargetAccountConfigurationRequest')
    GetExperimentTargetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'GetExperimentTargetAccountConfigurationResponse')
    GetExperimentTemplateRequest = Shapes::StructureShape.new(name: 'GetExperimentTemplateRequest')
    GetExperimentTemplateResponse = Shapes::StructureShape.new(name: 'GetExperimentTemplateResponse')
    GetSafetyLeverRequest = Shapes::StructureShape.new(name: 'GetSafetyLeverRequest')
    GetSafetyLeverResponse = Shapes::StructureShape.new(name: 'GetSafetyLeverResponse')
    GetTargetAccountConfigurationRequest = Shapes::StructureShape.new(name: 'GetTargetAccountConfigurationRequest')
    GetTargetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'GetTargetAccountConfigurationResponse')
    GetTargetResourceTypeRequest = Shapes::StructureShape.new(name: 'GetTargetResourceTypeRequest')
    GetTargetResourceTypeResponse = Shapes::StructureShape.new(name: 'GetTargetResourceTypeResponse')
    LastUpdateTime = Shapes::TimestampShape.new(name: 'LastUpdateTime')
    ListActionsMaxResults = Shapes::IntegerShape.new(name: 'ListActionsMaxResults')
    ListActionsRequest = Shapes::StructureShape.new(name: 'ListActionsRequest')
    ListActionsResponse = Shapes::StructureShape.new(name: 'ListActionsResponse')
    ListExperimentResolvedTargetsMaxResults = Shapes::IntegerShape.new(name: 'ListExperimentResolvedTargetsMaxResults')
    ListExperimentResolvedTargetsRequest = Shapes::StructureShape.new(name: 'ListExperimentResolvedTargetsRequest')
    ListExperimentResolvedTargetsResponse = Shapes::StructureShape.new(name: 'ListExperimentResolvedTargetsResponse')
    ListExperimentTargetAccountConfigurationsRequest = Shapes::StructureShape.new(name: 'ListExperimentTargetAccountConfigurationsRequest')
    ListExperimentTargetAccountConfigurationsResponse = Shapes::StructureShape.new(name: 'ListExperimentTargetAccountConfigurationsResponse')
    ListExperimentTemplatesMaxResults = Shapes::IntegerShape.new(name: 'ListExperimentTemplatesMaxResults')
    ListExperimentTemplatesRequest = Shapes::StructureShape.new(name: 'ListExperimentTemplatesRequest')
    ListExperimentTemplatesResponse = Shapes::StructureShape.new(name: 'ListExperimentTemplatesResponse')
    ListExperimentsMaxResults = Shapes::IntegerShape.new(name: 'ListExperimentsMaxResults')
    ListExperimentsRequest = Shapes::StructureShape.new(name: 'ListExperimentsRequest')
    ListExperimentsResponse = Shapes::StructureShape.new(name: 'ListExperimentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTargetAccountConfigurationsMaxResults = Shapes::IntegerShape.new(name: 'ListTargetAccountConfigurationsMaxResults')
    ListTargetAccountConfigurationsRequest = Shapes::StructureShape.new(name: 'ListTargetAccountConfigurationsRequest')
    ListTargetAccountConfigurationsResponse = Shapes::StructureShape.new(name: 'ListTargetAccountConfigurationsResponse')
    ListTargetResourceTypesMaxResults = Shapes::IntegerShape.new(name: 'ListTargetResourceTypesMaxResults')
    ListTargetResourceTypesRequest = Shapes::StructureShape.new(name: 'ListTargetResourceTypesRequest')
    ListTargetResourceTypesResponse = Shapes::StructureShape.new(name: 'ListTargetResourceTypesResponse')
    LogSchemaVersion = Shapes::IntegerShape.new(name: 'LogSchemaVersion')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ReportConfigurationCloudWatchDashboardIdentifier = Shapes::StringShape.new(name: 'ReportConfigurationCloudWatchDashboardIdentifier')
    ReportConfigurationCloudWatchDashboardInput = Shapes::StructureShape.new(name: 'ReportConfigurationCloudWatchDashboardInput')
    ReportConfigurationCloudWatchDashboardInputList = Shapes::ListShape.new(name: 'ReportConfigurationCloudWatchDashboardInputList')
    ReportConfigurationDuration = Shapes::StringShape.new(name: 'ReportConfigurationDuration')
    ReportConfigurationS3Output = Shapes::StructureShape.new(name: 'ReportConfigurationS3Output')
    ReportConfigurationS3OutputInput = Shapes::StructureShape.new(name: 'ReportConfigurationS3OutputInput')
    ResolvedTarget = Shapes::StructureShape.new(name: 'ResolvedTarget')
    ResolvedTargetList = Shapes::ListShape.new(name: 'ResolvedTargetList')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    SafetyLever = Shapes::StructureShape.new(name: 'SafetyLever')
    SafetyLeverId = Shapes::StringShape.new(name: 'SafetyLeverId')
    SafetyLeverState = Shapes::StructureShape.new(name: 'SafetyLeverState')
    SafetyLeverStatus = Shapes::StringShape.new(name: 'SafetyLeverStatus')
    SafetyLeverStatusInput = Shapes::StringShape.new(name: 'SafetyLeverStatusInput')
    SafetyLeverStatusReason = Shapes::StringShape.new(name: 'SafetyLeverStatusReason')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartExperimentExperimentOptionsInput = Shapes::StructureShape.new(name: 'StartExperimentExperimentOptionsInput')
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
    TargetAccountConfiguration = Shapes::StructureShape.new(name: 'TargetAccountConfiguration')
    TargetAccountConfigurationDescription = Shapes::StringShape.new(name: 'TargetAccountConfigurationDescription')
    TargetAccountConfigurationList = Shapes::ListShape.new(name: 'TargetAccountConfigurationList')
    TargetAccountConfigurationSummary = Shapes::StructureShape.new(name: 'TargetAccountConfigurationSummary')
    TargetAccountConfigurationsCount = Shapes::IntegerShape.new(name: 'TargetAccountConfigurationsCount')
    TargetAccountId = Shapes::StringShape.new(name: 'TargetAccountId')
    TargetInformationKey = Shapes::StringShape.new(name: 'TargetInformationKey')
    TargetInformationMap = Shapes::MapShape.new(name: 'TargetInformationMap')
    TargetInformationValue = Shapes::StringShape.new(name: 'TargetInformationValue')
    TargetName = Shapes::StringShape.new(name: 'TargetName')
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
    UpdateExperimentTemplateExperimentOptionsInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateExperimentOptionsInput')
    UpdateExperimentTemplateLogConfigurationInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateLogConfigurationInput')
    UpdateExperimentTemplateReportConfigurationInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateReportConfigurationInput')
    UpdateExperimentTemplateRequest = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateRequest')
    UpdateExperimentTemplateResponse = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateResponse')
    UpdateExperimentTemplateStopConditionInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateStopConditionInput')
    UpdateExperimentTemplateStopConditionInputList = Shapes::ListShape.new(name: 'UpdateExperimentTemplateStopConditionInputList')
    UpdateExperimentTemplateTargetInput = Shapes::StructureShape.new(name: 'UpdateExperimentTemplateTargetInput')
    UpdateExperimentTemplateTargetInputMap = Shapes::MapShape.new(name: 'UpdateExperimentTemplateTargetInputMap')
    UpdateSafetyLeverStateInput = Shapes::StructureShape.new(name: 'UpdateSafetyLeverStateInput')
    UpdateSafetyLeverStateRequest = Shapes::StructureShape.new(name: 'UpdateSafetyLeverStateRequest')
    UpdateSafetyLeverStateResponse = Shapes::StructureShape.new(name: 'UpdateSafetyLeverStateResponse')
    UpdateTargetAccountConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateTargetAccountConfigurationRequest')
    UpdateTargetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateTargetAccountConfigurationResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    Action.add_member(:id, Shapes::ShapeRef.new(shape: ActionId, location_name: "id"))
    Action.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
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
    ActionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
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

    CreateExperimentTemplateExperimentOptionsInput.add_member(:account_targeting, Shapes::ShapeRef.new(shape: AccountTargeting, location_name: "accountTargeting"))
    CreateExperimentTemplateExperimentOptionsInput.add_member(:empty_target_resolution_mode, Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: "emptyTargetResolutionMode"))
    CreateExperimentTemplateExperimentOptionsInput.struct_class = Types::CreateExperimentTemplateExperimentOptionsInput

    CreateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfigurationInput, location_name: "cloudWatchLogsConfiguration"))
    CreateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfigurationInput, location_name: "s3Configuration"))
    CreateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, required: true, location_name: "logSchemaVersion"))
    CreateExperimentTemplateLogConfigurationInput.struct_class = Types::CreateExperimentTemplateLogConfigurationInput

    CreateExperimentTemplateReportConfigurationInput.add_member(:outputs, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationOutputsInput, location_name: "outputs"))
    CreateExperimentTemplateReportConfigurationInput.add_member(:data_sources, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationDataSourcesInput, location_name: "dataSources"))
    CreateExperimentTemplateReportConfigurationInput.add_member(:pre_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "preExperimentDuration"))
    CreateExperimentTemplateReportConfigurationInput.add_member(:post_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "postExperimentDuration"))
    CreateExperimentTemplateReportConfigurationInput.struct_class = Types::CreateExperimentTemplateReportConfigurationInput

    CreateExperimentTemplateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateExperimentTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, required: true, location_name: "description"))
    CreateExperimentTemplateRequest.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: CreateExperimentTemplateStopConditionInputList, required: true, location_name: "stopConditions"))
    CreateExperimentTemplateRequest.add_member(:targets, Shapes::ShapeRef.new(shape: CreateExperimentTemplateTargetInputMap, location_name: "targets"))
    CreateExperimentTemplateRequest.add_member(:actions, Shapes::ShapeRef.new(shape: CreateExperimentTemplateActionInputMap, required: true, location_name: "actions"))
    CreateExperimentTemplateRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateExperimentTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateExperimentTemplateRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: CreateExperimentTemplateLogConfigurationInput, location_name: "logConfiguration"))
    CreateExperimentTemplateRequest.add_member(:experiment_options, Shapes::ShapeRef.new(shape: CreateExperimentTemplateExperimentOptionsInput, location_name: "experimentOptions"))
    CreateExperimentTemplateRequest.add_member(:experiment_report_configuration, Shapes::ShapeRef.new(shape: CreateExperimentTemplateReportConfigurationInput, location_name: "experimentReportConfiguration"))
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

    CreateTargetAccountConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTargetAccountConfigurationRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    CreateTargetAccountConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, required: true, location: "uri", location_name: "accountId"))
    CreateTargetAccountConfigurationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateTargetAccountConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: "description"))
    CreateTargetAccountConfigurationRequest.struct_class = Types::CreateTargetAccountConfigurationRequest

    CreateTargetAccountConfigurationResponse.add_member(:target_account_configuration, Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: "targetAccountConfiguration"))
    CreateTargetAccountConfigurationResponse.struct_class = Types::CreateTargetAccountConfigurationResponse

    DeleteExperimentTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    DeleteExperimentTemplateRequest.struct_class = Types::DeleteExperimentTemplateRequest

    DeleteExperimentTemplateResponse.add_member(:experiment_template, Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: "experimentTemplate"))
    DeleteExperimentTemplateResponse.struct_class = Types::DeleteExperimentTemplateResponse

    DeleteTargetAccountConfigurationRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    DeleteTargetAccountConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, required: true, location: "uri", location_name: "accountId"))
    DeleteTargetAccountConfigurationRequest.struct_class = Types::DeleteTargetAccountConfigurationRequest

    DeleteTargetAccountConfigurationResponse.add_member(:target_account_configuration, Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: "targetAccountConfiguration"))
    DeleteTargetAccountConfigurationResponse.struct_class = Types::DeleteTargetAccountConfigurationResponse

    Experiment.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentId, location_name: "id"))
    Experiment.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
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
    Experiment.add_member(:experiment_options, Shapes::ShapeRef.new(shape: ExperimentOptions, location_name: "experimentOptions"))
    Experiment.add_member(:target_account_configurations_count, Shapes::ShapeRef.new(shape: TargetAccountConfigurationsCount, location_name: "targetAccountConfigurationsCount"))
    Experiment.add_member(:experiment_report_configuration, Shapes::ShapeRef.new(shape: ExperimentReportConfiguration, location_name: "experimentReportConfiguration"))
    Experiment.add_member(:experiment_report, Shapes::ShapeRef.new(shape: ExperimentReport, location_name: "experimentReport"))
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

    ExperimentError.add_member(:account_id, Shapes::ShapeRef.new(shape: ExperimentErrorAccountId, location_name: "accountId"))
    ExperimentError.add_member(:code, Shapes::ShapeRef.new(shape: ExperimentErrorCode, location_name: "code"))
    ExperimentError.add_member(:location, Shapes::ShapeRef.new(shape: ExperimentErrorLocation, location_name: "location"))
    ExperimentError.struct_class = Types::ExperimentError

    ExperimentLogConfiguration.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentCloudWatchLogsLogConfiguration, location_name: "cloudWatchLogsConfiguration"))
    ExperimentLogConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentS3LogConfiguration, location_name: "s3Configuration"))
    ExperimentLogConfiguration.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: "logSchemaVersion"))
    ExperimentLogConfiguration.struct_class = Types::ExperimentLogConfiguration

    ExperimentOptions.add_member(:account_targeting, Shapes::ShapeRef.new(shape: AccountTargeting, location_name: "accountTargeting"))
    ExperimentOptions.add_member(:empty_target_resolution_mode, Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: "emptyTargetResolutionMode"))
    ExperimentOptions.add_member(:actions_mode, Shapes::ShapeRef.new(shape: ActionsMode, location_name: "actionsMode"))
    ExperimentOptions.struct_class = Types::ExperimentOptions

    ExperimentReport.add_member(:state, Shapes::ShapeRef.new(shape: ExperimentReportState, location_name: "state"))
    ExperimentReport.add_member(:s3_reports, Shapes::ShapeRef.new(shape: ExperimentReportS3ReportList, location_name: "s3Reports"))
    ExperimentReport.struct_class = Types::ExperimentReport

    ExperimentReportConfiguration.add_member(:outputs, Shapes::ShapeRef.new(shape: ExperimentReportConfigurationOutputs, location_name: "outputs"))
    ExperimentReportConfiguration.add_member(:data_sources, Shapes::ShapeRef.new(shape: ExperimentReportConfigurationDataSources, location_name: "dataSources"))
    ExperimentReportConfiguration.add_member(:pre_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "preExperimentDuration"))
    ExperimentReportConfiguration.add_member(:post_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "postExperimentDuration"))
    ExperimentReportConfiguration.struct_class = Types::ExperimentReportConfiguration

    ExperimentReportConfigurationCloudWatchDashboard.add_member(:dashboard_identifier, Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardIdentifier, location_name: "dashboardIdentifier"))
    ExperimentReportConfigurationCloudWatchDashboard.struct_class = Types::ExperimentReportConfigurationCloudWatchDashboard

    ExperimentReportConfigurationCloudWatchDashboardList.member = Shapes::ShapeRef.new(shape: ExperimentReportConfigurationCloudWatchDashboard)

    ExperimentReportConfigurationDataSources.add_member(:cloud_watch_dashboards, Shapes::ShapeRef.new(shape: ExperimentReportConfigurationCloudWatchDashboardList, location_name: "cloudWatchDashboards"))
    ExperimentReportConfigurationDataSources.struct_class = Types::ExperimentReportConfigurationDataSources

    ExperimentReportConfigurationOutputs.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentReportConfigurationOutputsS3Configuration, location_name: "s3Configuration"))
    ExperimentReportConfigurationOutputs.struct_class = Types::ExperimentReportConfigurationOutputs

    ExperimentReportConfigurationOutputsS3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucketName"))
    ExperimentReportConfigurationOutputsS3Configuration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "prefix"))
    ExperimentReportConfigurationOutputsS3Configuration.struct_class = Types::ExperimentReportConfigurationOutputsS3Configuration

    ExperimentReportError.add_member(:code, Shapes::ShapeRef.new(shape: ExperimentReportErrorCode, location_name: "code"))
    ExperimentReportError.struct_class = Types::ExperimentReportError

    ExperimentReportS3Report.add_member(:arn, Shapes::ShapeRef.new(shape: ExperimentReportS3ReportArn, location_name: "arn"))
    ExperimentReportS3Report.add_member(:report_type, Shapes::ShapeRef.new(shape: ExperimentReportS3ReportType, location_name: "reportType"))
    ExperimentReportS3Report.struct_class = Types::ExperimentReportS3Report

    ExperimentReportS3ReportList.member = Shapes::ShapeRef.new(shape: ExperimentReportS3Report)

    ExperimentReportState.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentReportStatus, location_name: "status"))
    ExperimentReportState.add_member(:reason, Shapes::ShapeRef.new(shape: ExperimentReportReason, location_name: "reason"))
    ExperimentReportState.add_member(:error, Shapes::ShapeRef.new(shape: ExperimentReportError, location_name: "error"))
    ExperimentReportState.struct_class = Types::ExperimentReportState

    ExperimentS3LogConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucketName"))
    ExperimentS3LogConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "prefix"))
    ExperimentS3LogConfiguration.struct_class = Types::ExperimentS3LogConfiguration

    ExperimentState.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentStatus, location_name: "status"))
    ExperimentState.add_member(:reason, Shapes::ShapeRef.new(shape: ExperimentStatusReason, location_name: "reason"))
    ExperimentState.add_member(:error, Shapes::ShapeRef.new(shape: ExperimentError, location_name: "error"))
    ExperimentState.struct_class = Types::ExperimentState

    ExperimentStopCondition.add_member(:source, Shapes::ShapeRef.new(shape: StopConditionSource, location_name: "source"))
    ExperimentStopCondition.add_member(:value, Shapes::ShapeRef.new(shape: StopConditionValue, location_name: "value"))
    ExperimentStopCondition.struct_class = Types::ExperimentStopCondition

    ExperimentStopConditionList.member = Shapes::ShapeRef.new(shape: ExperimentStopCondition)

    ExperimentSummary.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentId, location_name: "id"))
    ExperimentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    ExperimentSummary.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: "experimentTemplateId"))
    ExperimentSummary.add_member(:state, Shapes::ShapeRef.new(shape: ExperimentState, location_name: "state"))
    ExperimentSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "creationTime"))
    ExperimentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ExperimentSummary.add_member(:experiment_options, Shapes::ShapeRef.new(shape: ExperimentOptions, location_name: "experimentOptions"))
    ExperimentSummary.struct_class = Types::ExperimentSummary

    ExperimentSummaryList.member = Shapes::ShapeRef.new(shape: ExperimentSummary)

    ExperimentTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: "resourceType"))
    ExperimentTarget.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    ExperimentTarget.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "resourceTags"))
    ExperimentTarget.add_member(:filters, Shapes::ShapeRef.new(shape: ExperimentTargetFilterList, location_name: "filters"))
    ExperimentTarget.add_member(:selection_mode, Shapes::ShapeRef.new(shape: ExperimentTargetSelectionMode, location_name: "selectionMode"))
    ExperimentTarget.add_member(:parameters, Shapes::ShapeRef.new(shape: ExperimentTargetParameterMap, location_name: "parameters"))
    ExperimentTarget.struct_class = Types::ExperimentTarget

    ExperimentTargetAccountConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    ExperimentTargetAccountConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, location_name: "accountId"))
    ExperimentTargetAccountConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: "description"))
    ExperimentTargetAccountConfiguration.struct_class = Types::ExperimentTargetAccountConfiguration

    ExperimentTargetAccountConfigurationList.member = Shapes::ShapeRef.new(shape: ExperimentTargetAccountConfigurationSummary)

    ExperimentTargetAccountConfigurationSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    ExperimentTargetAccountConfigurationSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, location_name: "accountId"))
    ExperimentTargetAccountConfigurationSummary.add_member(:description, Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: "description"))
    ExperimentTargetAccountConfigurationSummary.struct_class = Types::ExperimentTargetAccountConfigurationSummary

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
    ExperimentTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    ExperimentTemplate.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: "description"))
    ExperimentTemplate.add_member(:targets, Shapes::ShapeRef.new(shape: ExperimentTemplateTargetMap, location_name: "targets"))
    ExperimentTemplate.add_member(:actions, Shapes::ShapeRef.new(shape: ExperimentTemplateActionMap, location_name: "actions"))
    ExperimentTemplate.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: ExperimentTemplateStopConditionList, location_name: "stopConditions"))
    ExperimentTemplate.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "creationTime"))
    ExperimentTemplate.add_member(:last_update_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "lastUpdateTime"))
    ExperimentTemplate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    ExperimentTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ExperimentTemplate.add_member(:log_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateLogConfiguration, location_name: "logConfiguration"))
    ExperimentTemplate.add_member(:experiment_options, Shapes::ShapeRef.new(shape: ExperimentTemplateExperimentOptions, location_name: "experimentOptions"))
    ExperimentTemplate.add_member(:target_account_configurations_count, Shapes::ShapeRef.new(shape: TargetAccountConfigurationsCount, location_name: "targetAccountConfigurationsCount"))
    ExperimentTemplate.add_member(:experiment_report_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfiguration, location_name: "experimentReportConfiguration"))
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

    ExperimentTemplateExperimentOptions.add_member(:account_targeting, Shapes::ShapeRef.new(shape: AccountTargeting, location_name: "accountTargeting"))
    ExperimentTemplateExperimentOptions.add_member(:empty_target_resolution_mode, Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: "emptyTargetResolutionMode"))
    ExperimentTemplateExperimentOptions.struct_class = Types::ExperimentTemplateExperimentOptions

    ExperimentTemplateLogConfiguration.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfiguration, location_name: "cloudWatchLogsConfiguration"))
    ExperimentTemplateLogConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfiguration, location_name: "s3Configuration"))
    ExperimentTemplateLogConfiguration.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: "logSchemaVersion"))
    ExperimentTemplateLogConfiguration.struct_class = Types::ExperimentTemplateLogConfiguration

    ExperimentTemplateReportConfiguration.add_member(:outputs, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationOutputs, location_name: "outputs"))
    ExperimentTemplateReportConfiguration.add_member(:data_sources, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationDataSources, location_name: "dataSources"))
    ExperimentTemplateReportConfiguration.add_member(:pre_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "preExperimentDuration"))
    ExperimentTemplateReportConfiguration.add_member(:post_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "postExperimentDuration"))
    ExperimentTemplateReportConfiguration.struct_class = Types::ExperimentTemplateReportConfiguration

    ExperimentTemplateReportConfigurationCloudWatchDashboard.add_member(:dashboard_identifier, Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardIdentifier, location_name: "dashboardIdentifier"))
    ExperimentTemplateReportConfigurationCloudWatchDashboard.struct_class = Types::ExperimentTemplateReportConfigurationCloudWatchDashboard

    ExperimentTemplateReportConfigurationCloudWatchDashboardList.member = Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationCloudWatchDashboard)

    ExperimentTemplateReportConfigurationDataSources.add_member(:cloud_watch_dashboards, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationCloudWatchDashboardList, location_name: "cloudWatchDashboards"))
    ExperimentTemplateReportConfigurationDataSources.struct_class = Types::ExperimentTemplateReportConfigurationDataSources

    ExperimentTemplateReportConfigurationDataSourcesInput.add_member(:cloud_watch_dashboards, Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardInputList, location_name: "cloudWatchDashboards"))
    ExperimentTemplateReportConfigurationDataSourcesInput.struct_class = Types::ExperimentTemplateReportConfigurationDataSourcesInput

    ExperimentTemplateReportConfigurationOutputs.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ReportConfigurationS3Output, location_name: "s3Configuration"))
    ExperimentTemplateReportConfigurationOutputs.struct_class = Types::ExperimentTemplateReportConfigurationOutputs

    ExperimentTemplateReportConfigurationOutputsInput.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ReportConfigurationS3OutputInput, location_name: "s3Configuration"))
    ExperimentTemplateReportConfigurationOutputsInput.struct_class = Types::ExperimentTemplateReportConfigurationOutputsInput

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
    ExperimentTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
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

    GetExperimentTargetAccountConfigurationRequest.add_member(:experiment_id, Shapes::ShapeRef.new(shape: ExperimentId, required: true, location: "uri", location_name: "id"))
    GetExperimentTargetAccountConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, required: true, location: "uri", location_name: "accountId"))
    GetExperimentTargetAccountConfigurationRequest.struct_class = Types::GetExperimentTargetAccountConfigurationRequest

    GetExperimentTargetAccountConfigurationResponse.add_member(:target_account_configuration, Shapes::ShapeRef.new(shape: ExperimentTargetAccountConfiguration, location_name: "targetAccountConfiguration"))
    GetExperimentTargetAccountConfigurationResponse.struct_class = Types::GetExperimentTargetAccountConfigurationResponse

    GetExperimentTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    GetExperimentTemplateRequest.struct_class = Types::GetExperimentTemplateRequest

    GetExperimentTemplateResponse.add_member(:experiment_template, Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: "experimentTemplate"))
    GetExperimentTemplateResponse.struct_class = Types::GetExperimentTemplateResponse

    GetSafetyLeverRequest.add_member(:id, Shapes::ShapeRef.new(shape: SafetyLeverId, required: true, location: "uri", location_name: "id"))
    GetSafetyLeverRequest.struct_class = Types::GetSafetyLeverRequest

    GetSafetyLeverResponse.add_member(:safety_lever, Shapes::ShapeRef.new(shape: SafetyLever, location_name: "safetyLever"))
    GetSafetyLeverResponse.struct_class = Types::GetSafetyLeverResponse

    GetTargetAccountConfigurationRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    GetTargetAccountConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, required: true, location: "uri", location_name: "accountId"))
    GetTargetAccountConfigurationRequest.struct_class = Types::GetTargetAccountConfigurationRequest

    GetTargetAccountConfigurationResponse.add_member(:target_account_configuration, Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: "targetAccountConfiguration"))
    GetTargetAccountConfigurationResponse.struct_class = Types::GetTargetAccountConfigurationResponse

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

    ListExperimentResolvedTargetsRequest.add_member(:experiment_id, Shapes::ShapeRef.new(shape: ExperimentId, required: true, location: "uri", location_name: "id"))
    ListExperimentResolvedTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExperimentResolvedTargetsMaxResults, location: "querystring", location_name: "maxResults"))
    ListExperimentResolvedTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExperimentResolvedTargetsRequest.add_member(:target_name, Shapes::ShapeRef.new(shape: TargetName, location: "querystring", location_name: "targetName"))
    ListExperimentResolvedTargetsRequest.struct_class = Types::ListExperimentResolvedTargetsRequest

    ListExperimentResolvedTargetsResponse.add_member(:resolved_targets, Shapes::ShapeRef.new(shape: ResolvedTargetList, location_name: "resolvedTargets"))
    ListExperimentResolvedTargetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExperimentResolvedTargetsResponse.struct_class = Types::ListExperimentResolvedTargetsResponse

    ListExperimentTargetAccountConfigurationsRequest.add_member(:experiment_id, Shapes::ShapeRef.new(shape: ExperimentId, required: true, location: "uri", location_name: "id"))
    ListExperimentTargetAccountConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExperimentTargetAccountConfigurationsRequest.struct_class = Types::ListExperimentTargetAccountConfigurationsRequest

    ListExperimentTargetAccountConfigurationsResponse.add_member(:target_account_configurations, Shapes::ShapeRef.new(shape: ExperimentTargetAccountConfigurationList, location_name: "targetAccountConfigurations"))
    ListExperimentTargetAccountConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExperimentTargetAccountConfigurationsResponse.struct_class = Types::ListExperimentTargetAccountConfigurationsResponse

    ListExperimentTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExperimentTemplatesMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListExperimentTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExperimentTemplatesRequest.struct_class = Types::ListExperimentTemplatesRequest

    ListExperimentTemplatesResponse.add_member(:experiment_templates, Shapes::ShapeRef.new(shape: ExperimentTemplateSummaryList, location_name: "experimentTemplates"))
    ListExperimentTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExperimentTemplatesResponse.struct_class = Types::ListExperimentTemplatesResponse

    ListExperimentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExperimentsMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListExperimentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExperimentsRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, location: "querystring", location_name: "experimentTemplateId"))
    ListExperimentsRequest.struct_class = Types::ListExperimentsRequest

    ListExperimentsResponse.add_member(:experiments, Shapes::ShapeRef.new(shape: ExperimentSummaryList, location_name: "experiments"))
    ListExperimentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExperimentsResponse.struct_class = Types::ListExperimentsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTargetAccountConfigurationsRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    ListTargetAccountConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTargetAccountConfigurationsMaxResults, location: "querystring", location_name: "maxResults"))
    ListTargetAccountConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTargetAccountConfigurationsRequest.struct_class = Types::ListTargetAccountConfigurationsRequest

    ListTargetAccountConfigurationsResponse.add_member(:target_account_configurations, Shapes::ShapeRef.new(shape: TargetAccountConfigurationList, location_name: "targetAccountConfigurations"))
    ListTargetAccountConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetAccountConfigurationsResponse.struct_class = Types::ListTargetAccountConfigurationsResponse

    ListTargetResourceTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTargetResourceTypesMaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListTargetResourceTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTargetResourceTypesRequest.struct_class = Types::ListTargetResourceTypesRequest

    ListTargetResourceTypesResponse.add_member(:target_resource_types, Shapes::ShapeRef.new(shape: TargetResourceTypeSummaryList, location_name: "targetResourceTypes"))
    ListTargetResourceTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetResourceTypesResponse.struct_class = Types::ListTargetResourceTypesResponse

    ReportConfigurationCloudWatchDashboardInput.add_member(:dashboard_identifier, Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardIdentifier, location_name: "dashboardIdentifier"))
    ReportConfigurationCloudWatchDashboardInput.struct_class = Types::ReportConfigurationCloudWatchDashboardInput

    ReportConfigurationCloudWatchDashboardInputList.member = Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardInput)

    ReportConfigurationS3Output.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucketName"))
    ReportConfigurationS3Output.add_member(:prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "prefix"))
    ReportConfigurationS3Output.struct_class = Types::ReportConfigurationS3Output

    ReportConfigurationS3OutputInput.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucketName"))
    ReportConfigurationS3OutputInput.add_member(:prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "prefix"))
    ReportConfigurationS3OutputInput.struct_class = Types::ReportConfigurationS3OutputInput

    ResolvedTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: "resourceType"))
    ResolvedTarget.add_member(:target_name, Shapes::ShapeRef.new(shape: TargetName, location_name: "targetName"))
    ResolvedTarget.add_member(:target_information, Shapes::ShapeRef.new(shape: TargetInformationMap, location_name: "targetInformation"))
    ResolvedTarget.struct_class = Types::ResolvedTarget

    ResolvedTargetList.member = Shapes::ShapeRef.new(shape: ResolvedTarget)

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SafetyLever.add_member(:id, Shapes::ShapeRef.new(shape: SafetyLeverId, location_name: "id"))
    SafetyLever.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    SafetyLever.add_member(:state, Shapes::ShapeRef.new(shape: SafetyLeverState, location_name: "state"))
    SafetyLever.struct_class = Types::SafetyLever

    SafetyLeverState.add_member(:status, Shapes::ShapeRef.new(shape: SafetyLeverStatus, location_name: "status"))
    SafetyLeverState.add_member(:reason, Shapes::ShapeRef.new(shape: SafetyLeverStatusReason, location_name: "reason"))
    SafetyLeverState.struct_class = Types::SafetyLeverState

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartExperimentExperimentOptionsInput.add_member(:actions_mode, Shapes::ShapeRef.new(shape: ActionsMode, location_name: "actionsMode"))
    StartExperimentExperimentOptionsInput.struct_class = Types::StartExperimentExperimentOptionsInput

    StartExperimentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartExperimentRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location_name: "experimentTemplateId"))
    StartExperimentRequest.add_member(:experiment_options, Shapes::ShapeRef.new(shape: StartExperimentExperimentOptionsInput, location_name: "experimentOptions"))
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

    TargetAccountConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    TargetAccountConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, location_name: "accountId"))
    TargetAccountConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: "description"))
    TargetAccountConfiguration.struct_class = Types::TargetAccountConfiguration

    TargetAccountConfigurationList.member = Shapes::ShapeRef.new(shape: TargetAccountConfigurationSummary)

    TargetAccountConfigurationSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    TargetAccountConfigurationSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, location_name: "accountId"))
    TargetAccountConfigurationSummary.add_member(:description, Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: "description"))
    TargetAccountConfigurationSummary.struct_class = Types::TargetAccountConfigurationSummary

    TargetInformationMap.key = Shapes::ShapeRef.new(shape: TargetInformationKey)
    TargetInformationMap.value = Shapes::ShapeRef.new(shape: TargetInformationValue)

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

    UpdateExperimentTemplateExperimentOptionsInput.add_member(:empty_target_resolution_mode, Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: "emptyTargetResolutionMode"))
    UpdateExperimentTemplateExperimentOptionsInput.struct_class = Types::UpdateExperimentTemplateExperimentOptionsInput

    UpdateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfigurationInput, location_name: "cloudWatchLogsConfiguration"))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfigurationInput, location_name: "s3Configuration"))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: "logSchemaVersion"))
    UpdateExperimentTemplateLogConfigurationInput.struct_class = Types::UpdateExperimentTemplateLogConfigurationInput

    UpdateExperimentTemplateReportConfigurationInput.add_member(:outputs, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationOutputsInput, location_name: "outputs"))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:data_sources, Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationDataSourcesInput, location_name: "dataSources"))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:pre_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "preExperimentDuration"))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:post_experiment_duration, Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: "postExperimentDuration"))
    UpdateExperimentTemplateReportConfigurationInput.struct_class = Types::UpdateExperimentTemplateReportConfigurationInput

    UpdateExperimentTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    UpdateExperimentTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: "description"))
    UpdateExperimentTemplateRequest.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateStopConditionInputList, location_name: "stopConditions"))
    UpdateExperimentTemplateRequest.add_member(:targets, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateTargetInputMap, location_name: "targets"))
    UpdateExperimentTemplateRequest.add_member(:actions, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateActionInputMap, location_name: "actions"))
    UpdateExperimentTemplateRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateExperimentTemplateRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateLogConfigurationInput, location_name: "logConfiguration"))
    UpdateExperimentTemplateRequest.add_member(:experiment_options, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateExperimentOptionsInput, location_name: "experimentOptions"))
    UpdateExperimentTemplateRequest.add_member(:experiment_report_configuration, Shapes::ShapeRef.new(shape: UpdateExperimentTemplateReportConfigurationInput, location_name: "experimentReportConfiguration"))
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

    UpdateSafetyLeverStateInput.add_member(:status, Shapes::ShapeRef.new(shape: SafetyLeverStatusInput, required: true, location_name: "status"))
    UpdateSafetyLeverStateInput.add_member(:reason, Shapes::ShapeRef.new(shape: SafetyLeverStatusReason, required: true, location_name: "reason"))
    UpdateSafetyLeverStateInput.struct_class = Types::UpdateSafetyLeverStateInput

    UpdateSafetyLeverStateRequest.add_member(:id, Shapes::ShapeRef.new(shape: SafetyLeverId, required: true, location: "uri", location_name: "id"))
    UpdateSafetyLeverStateRequest.add_member(:state, Shapes::ShapeRef.new(shape: UpdateSafetyLeverStateInput, required: true, location_name: "state"))
    UpdateSafetyLeverStateRequest.struct_class = Types::UpdateSafetyLeverStateRequest

    UpdateSafetyLeverStateResponse.add_member(:safety_lever, Shapes::ShapeRef.new(shape: SafetyLever, location_name: "safetyLever"))
    UpdateSafetyLeverStateResponse.struct_class = Types::UpdateSafetyLeverStateResponse

    UpdateTargetAccountConfigurationRequest.add_member(:experiment_template_id, Shapes::ShapeRef.new(shape: ExperimentTemplateId, required: true, location: "uri", location_name: "id"))
    UpdateTargetAccountConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetAccountId, required: true, location: "uri", location_name: "accountId"))
    UpdateTargetAccountConfigurationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateTargetAccountConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: "description"))
    UpdateTargetAccountConfigurationRequest.struct_class = Types::UpdateTargetAccountConfigurationRequest

    UpdateTargetAccountConfigurationResponse.add_member(:target_account_configuration, Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: "targetAccountConfiguration"))
    UpdateTargetAccountConfigurationResponse.struct_class = Types::UpdateTargetAccountConfigurationResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-12-01"

      api.metadata = {
        "apiVersion" => "2020-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "fis",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
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

      api.add_operation(:create_target_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTargetAccountConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/experimentTemplates/{id}/targetAccountConfigurations/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: CreateTargetAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTargetAccountConfigurationResponse)
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

      api.add_operation(:delete_target_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTargetAccountConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/experimentTemplates/{id}/targetAccountConfigurations/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTargetAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTargetAccountConfigurationResponse)
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

      api.add_operation(:get_experiment_target_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExperimentTargetAccountConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/experiments/{id}/targetAccountConfigurations/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: GetExperimentTargetAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExperimentTargetAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:get_safety_lever, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSafetyLever"
        o.http_method = "GET"
        o.http_request_uri = "/safetyLevers/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetSafetyLeverRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSafetyLeverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_target_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTargetAccountConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/experimentTemplates/{id}/targetAccountConfigurations/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: GetTargetAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTargetAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_experiment_resolved_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperimentResolvedTargets"
        o.http_method = "GET"
        o.http_request_uri = "/experiments/{id}/resolvedTargets"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentResolvedTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperimentResolvedTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiment_target_account_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperimentTargetAccountConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/experiments/{id}/targetAccountConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentTargetAccountConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperimentTargetAccountConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_target_account_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetAccountConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/experimentTemplates/{id}/targetAccountConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListTargetAccountConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetAccountConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:update_safety_lever_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSafetyLeverState"
        o.http_method = "PATCH"
        o.http_request_uri = "/safetyLevers/{id}/state"
        o.input = Shapes::ShapeRef.new(shape: UpdateSafetyLeverStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSafetyLeverStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_target_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTargetAccountConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/experimentTemplates/{id}/targetAccountConfigurations/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTargetAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTargetAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
