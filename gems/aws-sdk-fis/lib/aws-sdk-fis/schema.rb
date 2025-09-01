# frozen_string_literal: true

# This is generated code!

module Aws::Fis
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountTargeting = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#AccountTargeting', name: 'AccountTargeting')
    Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#Action', name: 'Action')
    ActionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ActionDescription', name: 'ActionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ActionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ActionId', name: 'ActionId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ActionParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ActionParameter', name: 'ActionParameter')
    ActionParameterDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ActionParameterDescription', name: 'ActionParameterDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ActionParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ActionParameterMap', name: 'ActionParameterMap')
    ActionParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ActionParameterName', name: 'ActionParameterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ActionParameterRequired = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.fis#ActionParameterRequired', name: 'ActionParameterRequired', traits: {"smithy.api#default" => false})
    ActionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ActionSummary', name: 'ActionSummary')
    ActionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ActionSummaryList', name: 'ActionSummaryList')
    ActionTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ActionTarget', name: 'ActionTarget')
    ActionTargetMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ActionTargetMap', name: 'ActionTargetMap')
    ActionTargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ActionTargetName', name: 'ActionTargetName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ActionsMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#ActionsMode', name: 'ActionsMode')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    CloudWatchLogGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#CloudWatchLogGroupArn', name: 'CloudWatchLogGroupArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ConflictException', name: 'ConflictException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateExperimentTemplateActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateActionInput', name: 'CreateExperimentTemplateActionInput')
    CreateExperimentTemplateActionInputMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateActionInputMap', name: 'CreateExperimentTemplateActionInputMap')
    CreateExperimentTemplateExperimentOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateExperimentOptionsInput', name: 'CreateExperimentTemplateExperimentOptionsInput')
    CreateExperimentTemplateLogConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateLogConfigurationInput', name: 'CreateExperimentTemplateLogConfigurationInput')
    CreateExperimentTemplateReportConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateReportConfigurationInput', name: 'CreateExperimentTemplateReportConfigurationInput')
    CreateExperimentTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateRequest', name: 'CreateExperimentTemplateRequest')
    CreateExperimentTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateResponse', name: 'CreateExperimentTemplateResponse')
    CreateExperimentTemplateStopConditionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateStopConditionInput', name: 'CreateExperimentTemplateStopConditionInput')
    CreateExperimentTemplateStopConditionInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateStopConditionInputList', name: 'CreateExperimentTemplateStopConditionInputList')
    CreateExperimentTemplateTargetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateTargetInput', name: 'CreateExperimentTemplateTargetInput')
    CreateExperimentTemplateTargetInputMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#CreateExperimentTemplateTargetInputMap', name: 'CreateExperimentTemplateTargetInputMap')
    CreateTargetAccountConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateTargetAccountConfigurationRequest', name: 'CreateTargetAccountConfigurationRequest')
    CreateTargetAccountConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#CreateTargetAccountConfigurationResponse', name: 'CreateTargetAccountConfigurationResponse')
    CreationTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.fis#CreationTime', name: 'CreationTime')
    DeleteExperimentTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#DeleteExperimentTemplateRequest', name: 'DeleteExperimentTemplateRequest')
    DeleteExperimentTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#DeleteExperimentTemplateResponse', name: 'DeleteExperimentTemplateResponse')
    DeleteTargetAccountConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#DeleteTargetAccountConfigurationRequest', name: 'DeleteTargetAccountConfigurationRequest')
    DeleteTargetAccountConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#DeleteTargetAccountConfigurationResponse', name: 'DeleteTargetAccountConfigurationResponse')
    EmptyTargetResolutionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#EmptyTargetResolutionMode', name: 'EmptyTargetResolutionMode')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExceptionMessage', name: 'ExceptionMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    Experiment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#Experiment', name: 'Experiment')
    ExperimentAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentAction', name: 'ExperimentAction')
    ExperimentActionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentActionDescription', name: 'ExperimentActionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentActionEndTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.fis#ExperimentActionEndTime', name: 'ExperimentActionEndTime')
    ExperimentActionMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentActionMap', name: 'ExperimentActionMap')
    ExperimentActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentActionName', name: 'ExperimentActionName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentActionParameter', name: 'ExperimentActionParameter', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentActionParameterMap', name: 'ExperimentActionParameterMap')
    ExperimentActionParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentActionParameterName', name: 'ExperimentActionParameterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionStartAfter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentActionStartAfter', name: 'ExperimentActionStartAfter', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionStartAfterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentActionStartAfterList', name: 'ExperimentActionStartAfterList')
    ExperimentActionStartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.fis#ExperimentActionStartTime', name: 'ExperimentActionStartTime')
    ExperimentActionState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentActionState', name: 'ExperimentActionState')
    ExperimentActionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#ExperimentActionStatus', name: 'ExperimentActionStatus')
    ExperimentActionStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentActionStatusReason', name: 'ExperimentActionStatusReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentActionTargetMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentActionTargetMap', name: 'ExperimentActionTargetMap')
    ExperimentActionTargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentActionTargetName', name: 'ExperimentActionTargetName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentCloudWatchLogsLogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentCloudWatchLogsLogConfiguration', name: 'ExperimentCloudWatchLogsLogConfiguration')
    ExperimentEndTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.fis#ExperimentEndTime', name: 'ExperimentEndTime')
    ExperimentError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentError', name: 'ExperimentError')
    ExperimentErrorAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentErrorAccountId', name: 'ExperimentErrorAccountId')
    ExperimentErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentErrorCode', name: 'ExperimentErrorCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentErrorLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentErrorLocation', name: 'ExperimentErrorLocation')
    ExperimentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentId', name: 'ExperimentId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentLogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentLogConfiguration', name: 'ExperimentLogConfiguration')
    ExperimentOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentOptions', name: 'ExperimentOptions')
    ExperimentReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReport', name: 'ExperimentReport')
    ExperimentReportConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportConfiguration', name: 'ExperimentReportConfiguration')
    ExperimentReportConfigurationCloudWatchDashboard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportConfigurationCloudWatchDashboard', name: 'ExperimentReportConfigurationCloudWatchDashboard')
    ExperimentReportConfigurationCloudWatchDashboardList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentReportConfigurationCloudWatchDashboardList', name: 'ExperimentReportConfigurationCloudWatchDashboardList')
    ExperimentReportConfigurationDataSources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportConfigurationDataSources', name: 'ExperimentReportConfigurationDataSources')
    ExperimentReportConfigurationOutputs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportConfigurationOutputs', name: 'ExperimentReportConfigurationOutputs')
    ExperimentReportConfigurationOutputsS3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportConfigurationOutputsS3Configuration', name: 'ExperimentReportConfigurationOutputsS3Configuration')
    ExperimentReportError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportError', name: 'ExperimentReportError')
    ExperimentReportErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentReportErrorCode', name: 'ExperimentReportErrorCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentReportReason', name: 'ExperimentReportReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportS3Report = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportS3Report', name: 'ExperimentReportS3Report')
    ExperimentReportS3ReportArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentReportS3ReportArn', name: 'ExperimentReportS3ReportArn', traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportS3ReportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentReportS3ReportList', name: 'ExperimentReportS3ReportList')
    ExperimentReportS3ReportType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentReportS3ReportType', name: 'ExperimentReportS3ReportType', traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentReportState', name: 'ExperimentReportState')
    ExperimentReportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#ExperimentReportStatus', name: 'ExperimentReportStatus')
    ExperimentS3LogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentS3LogConfiguration', name: 'ExperimentS3LogConfiguration')
    ExperimentStartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.fis#ExperimentStartTime', name: 'ExperimentStartTime')
    ExperimentState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentState', name: 'ExperimentState')
    ExperimentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#ExperimentStatus', name: 'ExperimentStatus')
    ExperimentStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentStatusReason', name: 'ExperimentStatusReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentStopCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentStopCondition', name: 'ExperimentStopCondition')
    ExperimentStopConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentStopConditionList', name: 'ExperimentStopConditionList')
    ExperimentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentSummary', name: 'ExperimentSummary')
    ExperimentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentSummaryList', name: 'ExperimentSummaryList')
    ExperimentTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTarget', name: 'ExperimentTarget')
    ExperimentTargetAccountConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTargetAccountConfiguration', name: 'ExperimentTargetAccountConfiguration')
    ExperimentTargetAccountConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTargetAccountConfigurationList', name: 'ExperimentTargetAccountConfigurationList')
    ExperimentTargetAccountConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTargetAccountConfigurationSummary', name: 'ExperimentTargetAccountConfigurationSummary')
    ExperimentTargetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTargetFilter', name: 'ExperimentTargetFilter')
    ExperimentTargetFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTargetFilterList', name: 'ExperimentTargetFilterList')
    ExperimentTargetFilterPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTargetFilterPath', name: 'ExperimentTargetFilterPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTargetFilterValue', name: 'ExperimentTargetFilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTargetFilterValues', name: 'ExperimentTargetFilterValues')
    ExperimentTargetMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentTargetMap', name: 'ExperimentTargetMap')
    ExperimentTargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTargetName', name: 'ExperimentTargetName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentTargetParameterMap', name: 'ExperimentTargetParameterMap')
    ExperimentTargetParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTargetParameterName', name: 'ExperimentTargetParameterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTargetParameterValue', name: 'ExperimentTargetParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExperimentTargetSelectionMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTargetSelectionMode', name: 'ExperimentTargetSelectionMode', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplate', name: 'ExperimentTemplate')
    ExperimentTemplateAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateAction', name: 'ExperimentTemplateAction')
    ExperimentTemplateActionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionDescription', name: 'ExperimentTemplateActionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentTemplateActionMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionMap', name: 'ExperimentTemplateActionMap')
    ExperimentTemplateActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionName', name: 'ExperimentTemplateActionName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionParameter', name: 'ExperimentTemplateActionParameter', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionParameterMap', name: 'ExperimentTemplateActionParameterMap')
    ExperimentTemplateActionParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionParameterName', name: 'ExperimentTemplateActionParameterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionStartAfter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionStartAfter', name: 'ExperimentTemplateActionStartAfter', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionStartAfterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionStartAfterList', name: 'ExperimentTemplateActionStartAfterList')
    ExperimentTemplateActionTargetMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionTargetMap', name: 'ExperimentTemplateActionTargetMap')
    ExperimentTemplateActionTargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateActionTargetName', name: 'ExperimentTemplateActionTargetName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateCloudWatchLogsLogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateCloudWatchLogsLogConfiguration', name: 'ExperimentTemplateCloudWatchLogsLogConfiguration')
    ExperimentTemplateCloudWatchLogsLogConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateCloudWatchLogsLogConfigurationInput', name: 'ExperimentTemplateCloudWatchLogsLogConfigurationInput')
    ExperimentTemplateDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateDescription', name: 'ExperimentTemplateDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentTemplateExperimentOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateExperimentOptions', name: 'ExperimentTemplateExperimentOptions')
    ExperimentTemplateId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateId', name: 'ExperimentTemplateId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateLogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateLogConfiguration', name: 'ExperimentTemplateLogConfiguration')
    ExperimentTemplateReportConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateReportConfiguration', name: 'ExperimentTemplateReportConfiguration')
    ExperimentTemplateReportConfigurationCloudWatchDashboard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateReportConfigurationCloudWatchDashboard', name: 'ExperimentTemplateReportConfigurationCloudWatchDashboard')
    ExperimentTemplateReportConfigurationCloudWatchDashboardList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTemplateReportConfigurationCloudWatchDashboardList', name: 'ExperimentTemplateReportConfigurationCloudWatchDashboardList')
    ExperimentTemplateReportConfigurationDataSources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateReportConfigurationDataSources', name: 'ExperimentTemplateReportConfigurationDataSources')
    ExperimentTemplateReportConfigurationDataSourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateReportConfigurationDataSourcesInput', name: 'ExperimentTemplateReportConfigurationDataSourcesInput')
    ExperimentTemplateReportConfigurationOutputs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateReportConfigurationOutputs', name: 'ExperimentTemplateReportConfigurationOutputs')
    ExperimentTemplateReportConfigurationOutputsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateReportConfigurationOutputsInput', name: 'ExperimentTemplateReportConfigurationOutputsInput')
    ExperimentTemplateS3LogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateS3LogConfiguration', name: 'ExperimentTemplateS3LogConfiguration')
    ExperimentTemplateS3LogConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateS3LogConfigurationInput', name: 'ExperimentTemplateS3LogConfigurationInput')
    ExperimentTemplateStopCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateStopCondition', name: 'ExperimentTemplateStopCondition')
    ExperimentTemplateStopConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTemplateStopConditionList', name: 'ExperimentTemplateStopConditionList')
    ExperimentTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateSummary', name: 'ExperimentTemplateSummary')
    ExperimentTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTemplateSummaryList', name: 'ExperimentTemplateSummaryList')
    ExperimentTemplateTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTarget', name: 'ExperimentTemplateTarget')
    ExperimentTemplateTargetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetFilter', name: 'ExperimentTemplateTargetFilter')
    ExperimentTemplateTargetFilterInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetFilterInputList', name: 'ExperimentTemplateTargetFilterInputList')
    ExperimentTemplateTargetFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetFilterList', name: 'ExperimentTemplateTargetFilterList')
    ExperimentTemplateTargetFilterPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetFilterPath', name: 'ExperimentTemplateTargetFilterPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetFilterValue', name: 'ExperimentTemplateTargetFilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetFilterValues', name: 'ExperimentTemplateTargetFilterValues')
    ExperimentTemplateTargetInputFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetInputFilter', name: 'ExperimentTemplateTargetInputFilter')
    ExperimentTemplateTargetMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetMap', name: 'ExperimentTemplateTargetMap')
    ExperimentTemplateTargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetName', name: 'ExperimentTemplateTargetName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetParameterMap', name: 'ExperimentTemplateTargetParameterMap')
    ExperimentTemplateTargetParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetParameterName', name: 'ExperimentTemplateTargetParameterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetParameterValue', name: 'ExperimentTemplateTargetParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+$"})
    ExperimentTemplateTargetSelectionMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ExperimentTemplateTargetSelectionMode', name: 'ExperimentTemplateTargetSelectionMode', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    GetActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetActionRequest', name: 'GetActionRequest')
    GetActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetActionResponse', name: 'GetActionResponse')
    GetExperimentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetExperimentRequest', name: 'GetExperimentRequest')
    GetExperimentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetExperimentResponse', name: 'GetExperimentResponse')
    GetExperimentTargetAccountConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetExperimentTargetAccountConfigurationRequest', name: 'GetExperimentTargetAccountConfigurationRequest')
    GetExperimentTargetAccountConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetExperimentTargetAccountConfigurationResponse', name: 'GetExperimentTargetAccountConfigurationResponse')
    GetExperimentTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetExperimentTemplateRequest', name: 'GetExperimentTemplateRequest')
    GetExperimentTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetExperimentTemplateResponse', name: 'GetExperimentTemplateResponse')
    GetSafetyLeverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetSafetyLeverRequest', name: 'GetSafetyLeverRequest')
    GetSafetyLeverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetSafetyLeverResponse', name: 'GetSafetyLeverResponse')
    GetTargetAccountConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetTargetAccountConfigurationRequest', name: 'GetTargetAccountConfigurationRequest')
    GetTargetAccountConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetTargetAccountConfigurationResponse', name: 'GetTargetAccountConfigurationResponse')
    GetTargetResourceTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetTargetResourceTypeRequest', name: 'GetTargetResourceTypeRequest')
    GetTargetResourceTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#GetTargetResourceTypeResponse', name: 'GetTargetResourceTypeResponse')
    LastUpdateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.fis#LastUpdateTime', name: 'LastUpdateTime')
    ListActionsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#ListActionsMaxResults', name: 'ListActionsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListActionsRequest', name: 'ListActionsRequest')
    ListActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListActionsResponse', name: 'ListActionsResponse')
    ListExperimentResolvedTargetsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#ListExperimentResolvedTargetsMaxResults', name: 'ListExperimentResolvedTargetsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListExperimentResolvedTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentResolvedTargetsRequest', name: 'ListExperimentResolvedTargetsRequest')
    ListExperimentResolvedTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentResolvedTargetsResponse', name: 'ListExperimentResolvedTargetsResponse')
    ListExperimentTargetAccountConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentTargetAccountConfigurationsRequest', name: 'ListExperimentTargetAccountConfigurationsRequest')
    ListExperimentTargetAccountConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentTargetAccountConfigurationsResponse', name: 'ListExperimentTargetAccountConfigurationsResponse')
    ListExperimentTemplatesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#ListExperimentTemplatesMaxResults', name: 'ListExperimentTemplatesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListExperimentTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentTemplatesRequest', name: 'ListExperimentTemplatesRequest')
    ListExperimentTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentTemplatesResponse', name: 'ListExperimentTemplatesResponse')
    ListExperimentsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#ListExperimentsMaxResults', name: 'ListExperimentsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListExperimentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentsRequest', name: 'ListExperimentsRequest')
    ListExperimentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListExperimentsResponse', name: 'ListExperimentsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTargetAccountConfigurationsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#ListTargetAccountConfigurationsMaxResults', name: 'ListTargetAccountConfigurationsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTargetAccountConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListTargetAccountConfigurationsRequest', name: 'ListTargetAccountConfigurationsRequest')
    ListTargetAccountConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListTargetAccountConfigurationsResponse', name: 'ListTargetAccountConfigurationsResponse')
    ListTargetResourceTypesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#ListTargetResourceTypesMaxResults', name: 'ListTargetResourceTypesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTargetResourceTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListTargetResourceTypesRequest', name: 'ListTargetResourceTypesRequest')
    ListTargetResourceTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ListTargetResourceTypesResponse', name: 'ListTargetResourceTypesResponse')
    LogSchemaVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#LogSchemaVersion', name: 'LogSchemaVersion')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    ReportConfigurationCloudWatchDashboardIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ReportConfigurationCloudWatchDashboardIdentifier', name: 'ReportConfigurationCloudWatchDashboardIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\S]+$"})
    ReportConfigurationCloudWatchDashboardInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ReportConfigurationCloudWatchDashboardInput', name: 'ReportConfigurationCloudWatchDashboardInput')
    ReportConfigurationCloudWatchDashboardInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ReportConfigurationCloudWatchDashboardInputList', name: 'ReportConfigurationCloudWatchDashboardInputList')
    ReportConfigurationDuration = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ReportConfigurationDuration', name: 'ReportConfigurationDuration', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[\\S]+$"})
    ReportConfigurationS3Output = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ReportConfigurationS3Output', name: 'ReportConfigurationS3Output')
    ReportConfigurationS3OutputInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ReportConfigurationS3OutputInput', name: 'ReportConfigurationS3OutputInput')
    ReportConfigurationS3OutputPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ReportConfigurationS3OutputPrefix', name: 'ReportConfigurationS3OutputPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    ResolvedTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ResolvedTarget', name: 'ResolvedTarget')
    ResolvedTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ResolvedTargetList', name: 'ResolvedTargetList')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    ResourceArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#ResourceArnList', name: 'ResourceArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[\\S]+$"})
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#S3ObjectKey', name: 'S3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 700}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    SafetyLever = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#SafetyLever', name: 'SafetyLever')
    SafetyLeverId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#SafetyLeverId', name: 'SafetyLeverId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    SafetyLeverState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#SafetyLeverState', name: 'SafetyLeverState')
    SafetyLeverStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#SafetyLeverStatus', name: 'SafetyLeverStatus')
    SafetyLeverStatusInput = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fis#SafetyLeverStatusInput', name: 'SafetyLeverStatusInput')
    SafetyLeverStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#SafetyLeverStatusReason', name: 'SafetyLeverStatusReason')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceededException", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartExperimentExperimentOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#StartExperimentExperimentOptionsInput', name: 'StartExperimentExperimentOptionsInput')
    StartExperimentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#StartExperimentRequest', name: 'StartExperimentRequest')
    StartExperimentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#StartExperimentResponse', name: 'StartExperimentResponse')
    StopConditionSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#StopConditionSource', name: 'StopConditionSource', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    StopConditionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#StopConditionValue', name: 'StopConditionValue', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    StopExperimentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#StopExperimentRequest', name: 'StopExperimentRequest')
    StopExperimentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#StopExperimentResponse', name: 'StopExperimentResponse')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#TagKeyList', name: 'TagKeyList')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TargetAccountConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#TargetAccountConfiguration', name: 'TargetAccountConfiguration')
    TargetAccountConfigurationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetAccountConfigurationDescription', name: 'TargetAccountConfigurationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TargetAccountConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#TargetAccountConfigurationList', name: 'TargetAccountConfigurationList')
    TargetAccountConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#TargetAccountConfigurationSummary', name: 'TargetAccountConfigurationSummary')
    TargetAccountConfigurationsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fis#TargetAccountConfigurationsCount', name: 'TargetAccountConfigurationsCount', traits: {"smithy.api#range" => {"min" => 0}})
    TargetAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetAccountId', name: 'TargetAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 48}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetInformationKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetInformationKey', name: 'TargetInformationKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetInformationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#TargetInformationMap', name: 'TargetInformationMap')
    TargetInformationValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetInformationValue', name: 'TargetInformationValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetName', name: 'TargetName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetResourceType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#TargetResourceType', name: 'TargetResourceType')
    TargetResourceTypeDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetResourceTypeDescription', name: 'TargetResourceTypeDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TargetResourceTypeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetResourceTypeId', name: 'TargetResourceTypeId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetResourceTypeParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#TargetResourceTypeParameter', name: 'TargetResourceTypeParameter')
    TargetResourceTypeParameterDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetResourceTypeParameterDescription', name: 'TargetResourceTypeParameterDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TargetResourceTypeParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#TargetResourceTypeParameterMap', name: 'TargetResourceTypeParameterMap')
    TargetResourceTypeParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fis#TargetResourceTypeParameterName', name: 'TargetResourceTypeParameterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetResourceTypeParameterRequired = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.fis#TargetResourceTypeParameterRequired', name: 'TargetResourceTypeParameterRequired', traits: {"smithy.api#default" => false})
    TargetResourceTypeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#TargetResourceTypeSummary', name: 'TargetResourceTypeSummary')
    TargetResourceTypeSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#TargetResourceTypeSummaryList', name: 'TargetResourceTypeSummaryList')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateExperimentTemplateActionInputItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateActionInputItem', name: 'UpdateExperimentTemplateActionInputItem')
    UpdateExperimentTemplateActionInputMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateActionInputMap', name: 'UpdateExperimentTemplateActionInputMap')
    UpdateExperimentTemplateExperimentOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateExperimentOptionsInput', name: 'UpdateExperimentTemplateExperimentOptionsInput')
    UpdateExperimentTemplateLogConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateLogConfigurationInput', name: 'UpdateExperimentTemplateLogConfigurationInput')
    UpdateExperimentTemplateReportConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateReportConfigurationInput', name: 'UpdateExperimentTemplateReportConfigurationInput')
    UpdateExperimentTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateRequest', name: 'UpdateExperimentTemplateRequest')
    UpdateExperimentTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateResponse', name: 'UpdateExperimentTemplateResponse')
    UpdateExperimentTemplateStopConditionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateStopConditionInput', name: 'UpdateExperimentTemplateStopConditionInput')
    UpdateExperimentTemplateStopConditionInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateStopConditionInputList', name: 'UpdateExperimentTemplateStopConditionInputList')
    UpdateExperimentTemplateTargetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateTargetInput', name: 'UpdateExperimentTemplateTargetInput')
    UpdateExperimentTemplateTargetInputMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fis#UpdateExperimentTemplateTargetInputMap', name: 'UpdateExperimentTemplateTargetInputMap')
    UpdateSafetyLeverStateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateSafetyLeverStateInput', name: 'UpdateSafetyLeverStateInput')
    UpdateSafetyLeverStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateSafetyLeverStateRequest', name: 'UpdateSafetyLeverStateRequest')
    UpdateSafetyLeverStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateSafetyLeverStateResponse', name: 'UpdateSafetyLeverStateResponse')
    UpdateTargetAccountConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateTargetAccountConfigurationRequest', name: 'UpdateTargetAccountConfigurationRequest')
    UpdateTargetAccountConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#UpdateTargetAccountConfigurationResponse', name: 'UpdateTargetAccountConfigurationResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fis#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccountTargeting.add_member(:single_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_ACCOUNT', traits: {"smithy.api#enumValue" => "single-account"}))
    AccountTargeting.add_member(:multi_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI_ACCOUNT', traits: {"smithy.api#enumValue" => "multi-account"}))
    Action.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>"}))
    Action.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the action.</p>"}))
    Action.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the action.</p>"}))
    Action.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The action parameters, if applicable.</p>"}))
    Action.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The supported targets for the action.</p>"}))
    Action.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the action.</p>"}))
    Action.type = Types::Action
    ActionParameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionParameterDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The parameter description.</p>"}))
    ActionParameter.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionParameterRequired, location_name: 'required', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates whether the parameter is required.</p>"}))
    ActionParameter.type = Types::ActionParameter
    ActionParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionParameterName)
    ActionParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionParameter)
    ActionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>"}))
    ActionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the action.</p>"}))
    ActionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the action.</p>"}))
    ActionSummary.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the action.</p>"}))
    ActionSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the action.</p>"}))
    ActionSummary.type = Types::ActionSummary
    ActionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSummary)
    ActionTarget.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the target.</p>"}))
    ActionTarget.type = Types::ActionTarget
    ActionTargetMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTargetName)
    ActionTargetMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget)
    ActionsMode.add_member(:skip_all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP_ALL', traits: {"smithy.api#enumValue" => "skip-all"}))
    ActionsMode.add_member(:run_all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUN_ALL', traits: {"smithy.api#enumValue" => "run-all"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateExperimentTemplateActionInput.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action. The format of the action ID is: aws:<i>service-name</i>:<i>action-type</i>.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateActionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the action.</p>"}))
    CreateExperimentTemplateActionInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the action, if applicable.</p>"}))
    CreateExperimentTemplateActionInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the action.</p>"}))
    CreateExperimentTemplateActionInput.add_member(:start_after, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfterList, location_name: 'startAfter', traits: {"smithy.api#documentation" => "<p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>"}))
    CreateExperimentTemplateActionInput.type = Types::CreateExperimentTemplateActionInput
    CreateExperimentTemplateActionInputMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionName)
    CreateExperimentTemplateActionInputMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateActionInput)
    CreateExperimentTemplateExperimentOptionsInput.add_member(:account_targeting, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTargeting, location_name: 'accountTargeting', traits: {"smithy.api#documentation" => "<p>Specifies the account targeting setting for experiment options.</p>"}))
    CreateExperimentTemplateExperimentOptionsInput.add_member(:empty_target_resolution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: 'emptyTargetResolutionMode', traits: {"smithy.api#documentation" => "<p>Specifies the empty target resolution mode for experiment options.</p>"}))
    CreateExperimentTemplateExperimentOptionsInput.type = Types::CreateExperimentTemplateExperimentOptionsInput
    CreateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfigurationInput, location_name: 'cloudWatchLogsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>"}))
    CreateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfigurationInput, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon S3.</p>"}))
    CreateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: 'logSchemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateLogConfigurationInput.type = Types::CreateExperimentTemplateLogConfigurationInput
    CreateExperimentTemplateReportConfigurationInput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationOutputsInput, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>The output destinations of the experiment report. </p>"}))
    CreateExperimentTemplateReportConfigurationInput.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationDataSourcesInput, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources for the experiment report.</p>"}))
    CreateExperimentTemplateReportConfigurationInput.add_member(:pre_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'preExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration before the experiment start time for the data sources to include in the report. </p>"}))
    CreateExperimentTemplateReportConfigurationInput.add_member(:post_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'postExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration after the experiment end time for the data sources to include in the report. </p>"}))
    CreateExperimentTemplateReportConfigurationInput.type = Types::CreateExperimentTemplateReportConfigurationInput
    CreateExperimentTemplateRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the experiment template.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:stop_conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateStopConditionInputList, location_name: 'stopConditions', traits: {"smithy.api#documentation" => "<p>The stop conditions.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateTargetInputMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the experiment.</p>"}))
    CreateExperimentTemplateRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateActionInputMap, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions for the experiment.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the experiment template.</p>"}))
    CreateExperimentTemplateRequest.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateLogConfigurationInput, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging.</p>"}))
    CreateExperimentTemplateRequest.add_member(:experiment_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateExperimentOptionsInput, location_name: 'experimentOptions', traits: {"smithy.api#documentation" => "<p>The experiment options for the experiment template.</p>"}))
    CreateExperimentTemplateRequest.add_member(:experiment_report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateReportConfigurationInput, location_name: 'experimentReportConfiguration', traits: {"smithy.api#documentation" => "<p>The experiment report configuration for the experiment template.</p>"}))
    CreateExperimentTemplateRequest.type = Types::CreateExperimentTemplateRequest
    CreateExperimentTemplateResponse.add_member(:experiment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: 'experimentTemplate', traits: {"smithy.api#documentation" => "<p>Information about the experiment template.</p>"}))
    CreateExperimentTemplateResponse.type = Types::CreateExperimentTemplateResponse
    CreateExperimentTemplateStopConditionInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop\n         condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop\n         condition.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateStopConditionInput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch alarm. This is required if the source is\n         a CloudWatch alarm.</p>"}))
    CreateExperimentTemplateStopConditionInput.type = Types::CreateExperimentTemplateStopConditionInput
    CreateExperimentTemplateStopConditionInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateStopConditionInput)
    CreateExperimentTemplateTargetInput.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type. The resource type must be supported for the specified action.</p>", "smithy.api#required" => {}}))
    CreateExperimentTemplateTargetInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the resources.</p>"}))
    CreateExperimentTemplateTargetInput.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>The tags for the target resources.</p>"}))
    CreateExperimentTemplateTargetInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterInputList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filters to apply to identify target resources using specific attributes.</p>"}))
    CreateExperimentTemplateTargetInput.add_member(:selection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetSelectionMode, location_name: 'selectionMode', traits: {"smithy.api#documentation" => "<p>Scopes the identified resources to a specific count of the resources at random, or a percentage of the resources. All identified resources are included in the target.</p>\n         <ul>\n            <li>\n               <p>ALL - Run the action on all identified targets. This is the default.</p>\n            </li>\n            <li>\n               <p>COUNT(n) - Run the action on the specified number of targets, chosen from the identified targets at random.\n                For example, COUNT(1) selects one of the targets.</p>\n            </li>\n            <li>\n               <p>PERCENT(n) - Run the action on the specified percentage of targets, chosen from the identified targets \n               at random. For example, PERCENT(25) selects 25% of the targets.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateExperimentTemplateTargetInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The resource type parameters.</p>"}))
    CreateExperimentTemplateTargetInput.type = Types::CreateExperimentTemplateTargetInput
    CreateExperimentTemplateTargetInputMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)
    CreateExperimentTemplateTargetInputMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateTargetInput)
    CreateTargetAccountConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The experiment template ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>", "smithy.api#required" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the target account.</p>"}))
    CreateTargetAccountConfigurationRequest.type = Types::CreateTargetAccountConfigurationRequest
    CreateTargetAccountConfigurationResponse.add_member(:target_account_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: 'targetAccountConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the target account configuration.</p>"}))
    CreateTargetAccountConfigurationResponse.type = Types::CreateTargetAccountConfigurationResponse
    DeleteExperimentTemplateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentTemplateRequest.type = Types::DeleteExperimentTemplateRequest
    DeleteExperimentTemplateResponse.add_member(:experiment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: 'experimentTemplate', traits: {"smithy.api#documentation" => "<p>Information about the experiment template.</p>"}))
    DeleteExperimentTemplateResponse.type = Types::DeleteExperimentTemplateResponse
    DeleteTargetAccountConfigurationRequest.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTargetAccountConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTargetAccountConfigurationRequest.type = Types::DeleteTargetAccountConfigurationRequest
    DeleteTargetAccountConfigurationResponse.add_member(:target_account_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: 'targetAccountConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the target account configuration.</p>"}))
    DeleteTargetAccountConfigurationResponse.type = Types::DeleteTargetAccountConfigurationResponse
    EmptyTargetResolutionMode.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "fail"}))
    EmptyTargetResolutionMode.add_member(:skip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP', traits: {"smithy.api#enumValue" => "skip"}))
    Experiment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment.</p>"}))
    Experiment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the experiment.</p>"}))
    Experiment.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>"}))
    Experiment.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>"}))
    Experiment.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the experiment.</p>"}))
    Experiment.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the experiment.</p>"}))
    Experiment.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionMap, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions for the experiment.</p>"}))
    Experiment.add_member(:stop_conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStopConditionList, location_name: 'stopConditions', traits: {"smithy.api#documentation" => "<p>The stop conditions for the experiment.</p>"}))
    Experiment.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the experiment was created.</p>"}))
    Experiment.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The time that the experiment started.</p>"}))
    Experiment.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentEndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The time that the experiment ended.</p>"}))
    Experiment.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the experiment.</p>"}))
    Experiment.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentLogConfiguration, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging.</p>"}))
    Experiment.add_member(:experiment_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentOptions, location_name: 'experimentOptions', traits: {"smithy.api#documentation" => "<p>The experiment options for the experiment.</p>"}))
    Experiment.add_member(:target_account_configurations_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationsCount, location_name: 'targetAccountConfigurationsCount', traits: {"smithy.api#documentation" => "<p>The count of target account configurations for the experiment.</p>"}))
    Experiment.add_member(:experiment_report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportConfiguration, location_name: 'experimentReportConfiguration', traits: {"smithy.api#documentation" => "<p>The experiment report configuration for the experiment.</p>"}))
    Experiment.add_member(:experiment_report, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReport, location_name: 'experimentReport', traits: {"smithy.api#documentation" => "<p>The experiment report for the experiment.</p>"}))
    Experiment.type = Types::Experiment
    ExperimentAction.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>"}))
    ExperimentAction.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the action.</p>"}))
    ExperimentAction.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the action.</p>"}))
    ExperimentAction.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the action.</p>"}))
    ExperimentAction.add_member(:start_after, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionStartAfterList, location_name: 'startAfter', traits: {"smithy.api#documentation" => "<p>The name of the action that must be completed before this action starts.</p>"}))
    ExperimentAction.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the action.</p>"}))
    ExperimentAction.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionStartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The time that the action started.</p>"}))
    ExperimentAction.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionEndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The time that the action ended.</p>"}))
    ExperimentAction.type = Types::ExperimentAction
    ExperimentActionMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionName)
    ExperimentActionMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentAction)
    ExperimentActionParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionParameterName)
    ExperimentActionParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionParameter)
    ExperimentActionStartAfterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionStartAfter)
    ExperimentActionState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of the action.</p>"}))
    ExperimentActionState.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionStatusReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the state.</p>"}))
    ExperimentActionState.type = Types::ExperimentActionState
    ExperimentActionStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    ExperimentActionStatus.add_member(:initiating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'initiating', traits: {"smithy.api#enumValue" => "initiating"}))
    ExperimentActionStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'running', traits: {"smithy.api#enumValue" => "running"}))
    ExperimentActionStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'completed', traits: {"smithy.api#enumValue" => "completed"}))
    ExperimentActionStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cancelled', traits: {"smithy.api#enumValue" => "cancelled"}))
    ExperimentActionStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stopping', traits: {"smithy.api#enumValue" => "stopping"}))
    ExperimentActionStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stopped', traits: {"smithy.api#enumValue" => "stopped"}))
    ExperimentActionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'failed', traits: {"smithy.api#enumValue" => "failed"}))
    ExperimentActionStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'skipped', traits: {"smithy.api#enumValue" => "skipped"}))
    ExperimentActionTargetMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentActionTargetName)
    ExperimentActionTargetMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetName)
    ExperimentCloudWatchLogsLogConfiguration.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>"}))
    ExperimentCloudWatchLogsLogConfiguration.type = Types::ExperimentCloudWatchLogsLogConfiguration
    ExperimentError.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentErrorAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Account ID where the experiment failure occurred.</p>"}))
    ExperimentError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code for the failed experiment.</p>"}))
    ExperimentError.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentErrorLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Context for the section of the experiment template that failed.</p>"}))
    ExperimentError.type = Types::ExperimentError
    ExperimentLogConfiguration.add_member(:cloud_watch_logs_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentCloudWatchLogsLogConfiguration, location_name: 'cloudWatchLogsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>"}))
    ExperimentLogConfiguration.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentS3LogConfiguration, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon S3.</p>"}))
    ExperimentLogConfiguration.add_member(:log_schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: 'logSchemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version.</p>"}))
    ExperimentLogConfiguration.type = Types::ExperimentLogConfiguration
    ExperimentOptions.add_member(:account_targeting, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTargeting, location_name: 'accountTargeting', traits: {"smithy.api#documentation" => "<p>The account targeting setting for an experiment.</p>"}))
    ExperimentOptions.add_member(:empty_target_resolution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: 'emptyTargetResolutionMode', traits: {"smithy.api#documentation" => "<p>The empty target resolution mode for an experiment.</p>"}))
    ExperimentOptions.add_member(:actions_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsMode, location_name: 'actionsMode', traits: {"smithy.api#documentation" => "<p>The actions mode of the experiment that is set from the StartExperiment API command.</p>"}))
    ExperimentOptions.type = Types::ExperimentOptions
    ExperimentReport.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the experiment report.</p>"}))
    ExperimentReport.add_member(:s3_reports, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportS3ReportList, location_name: 's3Reports', traits: {"smithy.api#documentation" => "<p>The S3 destination of the experiment report.</p>"}))
    ExperimentReport.type = Types::ExperimentReport
    ExperimentReportConfiguration.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportConfigurationOutputs, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>The output destinations of the experiment report.</p>"}))
    ExperimentReportConfiguration.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportConfigurationDataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources for the experiment report.</p>"}))
    ExperimentReportConfiguration.add_member(:pre_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'preExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration before the experiment start time for the data sources to include in the report.</p>"}))
    ExperimentReportConfiguration.add_member(:post_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'postExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration after the experiment end time for the data sources to include in the report.</p>"}))
    ExperimentReportConfiguration.type = Types::ExperimentReportConfiguration
    ExperimentReportConfigurationCloudWatchDashboard.add_member(:dashboard_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardIdentifier, location_name: 'dashboardIdentifier', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch dashboard to include in the experiment report.</p>"}))
    ExperimentReportConfigurationCloudWatchDashboard.type = Types::ExperimentReportConfigurationCloudWatchDashboard
    ExperimentReportConfigurationCloudWatchDashboardList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportConfigurationCloudWatchDashboard)
    ExperimentReportConfigurationDataSources.add_member(:cloud_watch_dashboards, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportConfigurationCloudWatchDashboardList, location_name: 'cloudWatchDashboards', traits: {"smithy.api#documentation" => "<p>The CloudWatch dashboards to include as data sources in the experiment report.</p>"}))
    ExperimentReportConfigurationDataSources.type = Types::ExperimentReportConfigurationDataSources
    ExperimentReportConfigurationOutputs.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportConfigurationOutputsS3Configuration, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The S3 destination for the experiment report.</p>"}))
    ExperimentReportConfigurationOutputs.type = Types::ExperimentReportConfigurationOutputs
    ExperimentReportConfigurationOutputsS3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket where the experiment report will be stored.</p>"}))
    ExperimentReportConfigurationOutputsS3Configuration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationS3OutputPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The prefix of the S3 bucket where the experiment report will be stored.</p>"}))
    ExperimentReportConfigurationOutputsS3Configuration.type = Types::ExperimentReportConfigurationOutputsS3Configuration
    ExperimentReportError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code for the failed experiment report generation.</p>"}))
    ExperimentReportError.type = Types::ExperimentReportError
    ExperimentReportS3Report.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportS3ReportArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the generated report.</p>"}))
    ExperimentReportS3Report.add_member(:report_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportS3ReportType, location_name: 'reportType', traits: {"smithy.api#documentation" => "<p>The report type for the experiment report.</p>"}))
    ExperimentReportS3Report.type = Types::ExperimentReportS3Report
    ExperimentReportS3ReportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportS3Report)
    ExperimentReportState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of the experiment report generation.</p>"}))
    ExperimentReportState.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the state of the experiment report generation.</p>"}))
    ExperimentReportState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentReportError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error information of the experiment when the experiment report generation has failed.</p>"}))
    ExperimentReportState.type = Types::ExperimentReportState
    ExperimentReportStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    ExperimentReportStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'running', traits: {"smithy.api#enumValue" => "running"}))
    ExperimentReportStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'completed', traits: {"smithy.api#enumValue" => "completed"}))
    ExperimentReportStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cancelled', traits: {"smithy.api#enumValue" => "cancelled"}))
    ExperimentReportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'failed', traits: {"smithy.api#enumValue" => "failed"}))
    ExperimentS3LogConfiguration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the destination bucket.</p>"}))
    ExperimentS3LogConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The bucket prefix.</p>"}))
    ExperimentS3LogConfiguration.type = Types::ExperimentS3LogConfiguration
    ExperimentState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of the experiment.</p>"}))
    ExperimentState.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStatusReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the state.</p>"}))
    ExperimentState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error information of the experiment when the action has <code>failed</code>.</p>"}))
    ExperimentState.type = Types::ExperimentState
    ExperimentStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    ExperimentStatus.add_member(:initiating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'initiating', traits: {"smithy.api#enumValue" => "initiating"}))
    ExperimentStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'running', traits: {"smithy.api#enumValue" => "running"}))
    ExperimentStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'completed', traits: {"smithy.api#enumValue" => "completed"}))
    ExperimentStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stopping', traits: {"smithy.api#enumValue" => "stopping"}))
    ExperimentStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stopped', traits: {"smithy.api#enumValue" => "stopped"}))
    ExperimentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'failed', traits: {"smithy.api#enumValue" => "failed"}))
    ExperimentStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cancelled', traits: {"smithy.api#enumValue" => "cancelled"}))
    ExperimentStopCondition.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source for the stop condition.</p>"}))
    ExperimentStopCondition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>"}))
    ExperimentStopCondition.type = Types::ExperimentStopCondition
    ExperimentStopConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentStopCondition)
    ExperimentSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment.</p>"}))
    ExperimentSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the experiment.</p>"}))
    ExperimentSummary.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>"}))
    ExperimentSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the experiment.</p>"}))
    ExperimentSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the experiment was created.</p>"}))
    ExperimentSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the experiment.</p>"}))
    ExperimentSummary.add_member(:experiment_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentOptions, location_name: 'experimentOptions', traits: {"smithy.api#documentation" => "<p>The experiment options for the experiment.</p>"}))
    ExperimentSummary.type = Types::ExperimentSummary
    ExperimentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentSummary)
    ExperimentTarget.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    ExperimentTarget.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the resources.</p>"}))
    ExperimentTarget.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>The tags for the target resources.</p>"}))
    ExperimentTarget.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetFilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filters to apply to identify target resources using specific attributes.</p>"}))
    ExperimentTarget.add_member(:selection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetSelectionMode, location_name: 'selectionMode', traits: {"smithy.api#documentation" => "<p>Scopes the identified resources to a specific count or percentage.</p>"}))
    ExperimentTarget.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The resource type parameters.</p>"}))
    ExperimentTarget.type = Types::ExperimentTarget
    ExperimentTargetAccountConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>"}))
    ExperimentTargetAccountConfiguration.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>"}))
    ExperimentTargetAccountConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the target account.</p>"}))
    ExperimentTargetAccountConfiguration.type = Types::ExperimentTargetAccountConfiguration
    ExperimentTargetAccountConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetAccountConfigurationSummary)
    ExperimentTargetAccountConfigurationSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>"}))
    ExperimentTargetAccountConfigurationSummary.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>"}))
    ExperimentTargetAccountConfigurationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the target account.</p>"}))
    ExperimentTargetAccountConfigurationSummary.type = Types::ExperimentTargetAccountConfigurationSummary
    ExperimentTargetFilter.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetFilterPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The attribute path for the filter.</p>"}))
    ExperimentTargetFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetFilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The attribute values for the filter.</p>"}))
    ExperimentTargetFilter.type = Types::ExperimentTargetFilter
    ExperimentTargetFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetFilter)
    ExperimentTargetFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetFilterValue)
    ExperimentTargetMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetName)
    ExperimentTargetMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTarget)
    ExperimentTargetParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetParameterName)
    ExperimentTargetParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetParameterValue)
    ExperimentTemplate.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>"}))
    ExperimentTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the experiment template.</p>"}))
    ExperimentTemplate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the experiment template.</p>"}))
    ExperimentTemplate.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the experiment.</p>"}))
    ExperimentTemplate.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionMap, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions for the experiment.</p>"}))
    ExperimentTemplate.add_member(:stop_conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateStopConditionList, location_name: 'stopConditions', traits: {"smithy.api#documentation" => "<p>The stop conditions for the experiment.</p>"}))
    ExperimentTemplate.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the experiment template was created.</p>"}))
    ExperimentTemplate.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the experiment template was last updated.</p>"}))
    ExperimentTemplate.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role.</p>"}))
    ExperimentTemplate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the experiment template.</p>"}))
    ExperimentTemplate.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateLogConfiguration, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging.</p>"}))
    ExperimentTemplate.add_member(:experiment_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateExperimentOptions, location_name: 'experimentOptions', traits: {"smithy.api#documentation" => "<p>The experiment options for an experiment template.</p>"}))
    ExperimentTemplate.add_member(:target_account_configurations_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationsCount, location_name: 'targetAccountConfigurationsCount', traits: {"smithy.api#documentation" => "<p>The count of target account configurations for the experiment template.</p>"}))
    ExperimentTemplate.add_member(:experiment_report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfiguration, location_name: 'experimentReportConfiguration', traits: {"smithy.api#documentation" => "<p>Describes the report configuration for the experiment template.</p>"}))
    ExperimentTemplate.type = Types::ExperimentTemplate
    ExperimentTemplateAction.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>"}))
    ExperimentTemplateAction.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the action.</p>"}))
    ExperimentTemplateAction.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the action.</p>"}))
    ExperimentTemplateAction.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the action.</p>"}))
    ExperimentTemplateAction.add_member(:start_after, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfterList, location_name: 'startAfter', traits: {"smithy.api#documentation" => "<p>The name of the action that must be completed before the current action starts.</p>"}))
    ExperimentTemplateAction.type = Types::ExperimentTemplateAction
    ExperimentTemplateActionMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionName)
    ExperimentTemplateActionMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateAction)
    ExperimentTemplateActionParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterName)
    ExperimentTemplateActionParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameter)
    ExperimentTemplateActionStartAfterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfter)
    ExperimentTemplateActionTargetMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetName)
    ExperimentTemplateActionTargetMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)
    ExperimentTemplateCloudWatchLogsLogConfiguration.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>"}))
    ExperimentTemplateCloudWatchLogsLogConfiguration.type = Types::ExperimentTemplateCloudWatchLogsLogConfiguration
    ExperimentTemplateCloudWatchLogsLogConfigurationInput.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>", "smithy.api#required" => {}}))
    ExperimentTemplateCloudWatchLogsLogConfigurationInput.type = Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput
    ExperimentTemplateExperimentOptions.add_member(:account_targeting, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTargeting, location_name: 'accountTargeting', traits: {"smithy.api#documentation" => "<p>The account targeting setting for an experiment template. </p>"}))
    ExperimentTemplateExperimentOptions.add_member(:empty_target_resolution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: 'emptyTargetResolutionMode', traits: {"smithy.api#documentation" => "<p>The empty target resolution mode for an experiment template.</p>"}))
    ExperimentTemplateExperimentOptions.type = Types::ExperimentTemplateExperimentOptions
    ExperimentTemplateLogConfiguration.add_member(:cloud_watch_logs_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfiguration, location_name: 'cloudWatchLogsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>"}))
    ExperimentTemplateLogConfiguration.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfiguration, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon S3.</p>"}))
    ExperimentTemplateLogConfiguration.add_member(:log_schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: 'logSchemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version.</p>"}))
    ExperimentTemplateLogConfiguration.type = Types::ExperimentTemplateLogConfiguration
    ExperimentTemplateReportConfiguration.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationOutputs, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>Describes the output destinations of the experiment report.</p>"}))
    ExperimentTemplateReportConfiguration.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationDataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources for the experiment report.</p>"}))
    ExperimentTemplateReportConfiguration.add_member(:pre_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'preExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration before the experiment start time for the data sources to include in the report.</p>"}))
    ExperimentTemplateReportConfiguration.add_member(:post_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'postExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration after the experiment end time for the data sources to include in the report.</p>"}))
    ExperimentTemplateReportConfiguration.type = Types::ExperimentTemplateReportConfiguration
    ExperimentTemplateReportConfigurationCloudWatchDashboard.add_member(:dashboard_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardIdentifier, location_name: 'dashboardIdentifier', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch dashboard to include in the experiment report.</p>"}))
    ExperimentTemplateReportConfigurationCloudWatchDashboard.type = Types::ExperimentTemplateReportConfigurationCloudWatchDashboard
    ExperimentTemplateReportConfigurationCloudWatchDashboardList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationCloudWatchDashboard)
    ExperimentTemplateReportConfigurationDataSources.add_member(:cloud_watch_dashboards, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationCloudWatchDashboardList, location_name: 'cloudWatchDashboards', traits: {"smithy.api#documentation" => "<p>The CloudWatch dashboards to include as data sources in the experiment report.</p>"}))
    ExperimentTemplateReportConfigurationDataSources.type = Types::ExperimentTemplateReportConfigurationDataSources
    ExperimentTemplateReportConfigurationDataSourcesInput.add_member(:cloud_watch_dashboards, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardInputList, location_name: 'cloudWatchDashboards', traits: {"smithy.api#documentation" => "<p>The CloudWatch dashboards to include as data sources in the experiment report.</p>"}))
    ExperimentTemplateReportConfigurationDataSourcesInput.type = Types::ExperimentTemplateReportConfigurationDataSourcesInput
    ExperimentTemplateReportConfigurationOutputs.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationS3Output, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The S3 destination for the experiment report.</p>"}))
    ExperimentTemplateReportConfigurationOutputs.type = Types::ExperimentTemplateReportConfigurationOutputs
    ExperimentTemplateReportConfigurationOutputsInput.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationS3OutputInput, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The S3 destination for the experiment report.</p>"}))
    ExperimentTemplateReportConfigurationOutputsInput.type = Types::ExperimentTemplateReportConfigurationOutputsInput
    ExperimentTemplateS3LogConfiguration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the destination bucket.</p>"}))
    ExperimentTemplateS3LogConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The bucket prefix.</p>"}))
    ExperimentTemplateS3LogConfiguration.type = Types::ExperimentTemplateS3LogConfiguration
    ExperimentTemplateS3LogConfigurationInput.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the destination bucket.</p>", "smithy.api#required" => {}}))
    ExperimentTemplateS3LogConfigurationInput.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The bucket prefix.</p>"}))
    ExperimentTemplateS3LogConfigurationInput.type = Types::ExperimentTemplateS3LogConfigurationInput
    ExperimentTemplateStopCondition.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source for the stop condition.</p>"}))
    ExperimentTemplateStopCondition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>"}))
    ExperimentTemplateStopCondition.type = Types::ExperimentTemplateStopCondition
    ExperimentTemplateStopConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateStopCondition)
    ExperimentTemplateSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>"}))
    ExperimentTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the experiment template.</p>"}))
    ExperimentTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the experiment template.</p>"}))
    ExperimentTemplateSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the experiment template was created.</p>"}))
    ExperimentTemplateSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time that the experiment template was last updated.</p>"}))
    ExperimentTemplateSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the experiment template.</p>"}))
    ExperimentTemplateSummary.type = Types::ExperimentTemplateSummary
    ExperimentTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateSummary)
    ExperimentTemplateTarget.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    ExperimentTemplateTarget.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the targets.</p>"}))
    ExperimentTemplateTarget.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>The tags for the target resources.</p>"}))
    ExperimentTemplateTarget.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filters to apply to identify target resources using specific attributes.</p>"}))
    ExperimentTemplateTarget.add_member(:selection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetSelectionMode, location_name: 'selectionMode', traits: {"smithy.api#documentation" => "<p>Scopes the identified resources to a specific count or percentage.</p>"}))
    ExperimentTemplateTarget.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The resource type parameters.</p>"}))
    ExperimentTemplateTarget.type = Types::ExperimentTemplateTarget
    ExperimentTemplateTargetFilter.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The attribute path for the filter.</p>"}))
    ExperimentTemplateTargetFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The attribute values for the filter.</p>"}))
    ExperimentTemplateTargetFilter.type = Types::ExperimentTemplateTargetFilter
    ExperimentTemplateTargetFilterInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetInputFilter)
    ExperimentTemplateTargetFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilter)
    ExperimentTemplateTargetFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterValue)
    ExperimentTemplateTargetInputFilter.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The attribute path for the filter.</p>", "smithy.api#required" => {}}))
    ExperimentTemplateTargetInputFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The attribute values for the filter.</p>", "smithy.api#required" => {}}))
    ExperimentTemplateTargetInputFilter.type = Types::ExperimentTemplateTargetInputFilter
    ExperimentTemplateTargetMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)
    ExperimentTemplateTargetMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTarget)
    ExperimentTemplateTargetParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterName)
    ExperimentTemplateTargetParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterValue)
    GetActionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetActionRequest.type = Types::GetActionRequest
    GetActionResponse.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Information about the action.</p>"}))
    GetActionResponse.type = Types::GetActionResponse
    GetExperimentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentRequest.type = Types::GetExperimentRequest
    GetExperimentResponse.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>Information about the experiment.</p>"}))
    GetExperimentResponse.type = Types::GetExperimentResponse
    GetExperimentTargetAccountConfigurationRequest.add_member(:experiment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentId, location_name: 'experimentId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentTargetAccountConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentTargetAccountConfigurationRequest.type = Types::GetExperimentTargetAccountConfigurationRequest
    GetExperimentTargetAccountConfigurationResponse.add_member(:target_account_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetAccountConfiguration, location_name: 'targetAccountConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the target account configuration.</p>"}))
    GetExperimentTargetAccountConfigurationResponse.type = Types::GetExperimentTargetAccountConfigurationResponse
    GetExperimentTemplateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentTemplateRequest.type = Types::GetExperimentTemplateRequest
    GetExperimentTemplateResponse.add_member(:experiment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: 'experimentTemplate', traits: {"smithy.api#documentation" => "<p>Information about the experiment template.</p>"}))
    GetExperimentTemplateResponse.type = Types::GetExperimentTemplateResponse
    GetSafetyLeverRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>\n        The ID of the safety lever.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSafetyLeverRequest.type = Types::GetSafetyLeverRequest
    GetSafetyLeverResponse.add_member(:safety_lever, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLever, location_name: 'safetyLever', traits: {"smithy.api#documentation" => "<p>\n      Information about the safety lever.\n      </p>"}))
    GetSafetyLeverResponse.type = Types::GetSafetyLeverResponse
    GetTargetAccountConfigurationRequest.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetAccountConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetAccountConfigurationRequest.type = Types::GetTargetAccountConfigurationRequest
    GetTargetAccountConfigurationResponse.add_member(:target_account_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: 'targetAccountConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the target account configuration.</p>"}))
    GetTargetAccountConfigurationResponse.type = Types::GetTargetAccountConfigurationResponse
    GetTargetResourceTypeRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetResourceTypeRequest.type = Types::GetTargetResourceTypeRequest
    GetTargetResourceTypeResponse.add_member(:target_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceType, location_name: 'targetResourceType', traits: {"smithy.api#documentation" => "<p>Information about the resource type.</p>"}))
    GetTargetResourceTypeResponse.type = Types::GetTargetResourceTypeResponse
    ListActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListActionsRequest.type = Types::ListActionsRequest
    ListActionsResponse.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSummaryList, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions.</p>"}))
    ListActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"}))
    ListActionsResponse.type = Types::ListActionsResponse
    ListExperimentResolvedTargetsRequest.add_member(:experiment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentId, location_name: 'experimentId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentResolvedTargetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentResolvedTargetsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining results, \n      make another call with the returned nextToken value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListExperimentResolvedTargetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExperimentResolvedTargetsRequest.add_member(:target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'targetName', traits: {"smithy.api#documentation" => "<p>The name of the target.</p>", "smithy.api#httpQuery" => "targetName"}))
    ListExperimentResolvedTargetsRequest.type = Types::ListExperimentResolvedTargetsRequest
    ListExperimentResolvedTargetsResponse.add_member(:resolved_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedTargetList, location_name: 'resolvedTargets', traits: {"smithy.api#documentation" => "<p>The resolved targets.</p>"}))
    ListExperimentResolvedTargetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. \n      This value is null when there are no more results to return.</p>"}))
    ListExperimentResolvedTargetsResponse.type = Types::ListExperimentResolvedTargetsResponse
    ListExperimentTargetAccountConfigurationsRequest.add_member(:experiment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentId, location_name: 'experimentId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentTargetAccountConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExperimentTargetAccountConfigurationsRequest.type = Types::ListExperimentTargetAccountConfigurationsRequest
    ListExperimentTargetAccountConfigurationsResponse.add_member(:target_account_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTargetAccountConfigurationList, location_name: 'targetAccountConfigurations', traits: {"smithy.api#documentation" => "<p>The target account configurations.</p>"}))
    ListExperimentTargetAccountConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. \n      This value is null when there are no more results to return.</p>"}))
    ListExperimentTargetAccountConfigurationsResponse.type = Types::ListExperimentTargetAccountConfigurationsResponse
    ListExperimentTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentTemplatesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListExperimentTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExperimentTemplatesRequest.type = Types::ListExperimentTemplatesRequest
    ListExperimentTemplatesResponse.add_member(:experiment_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateSummaryList, location_name: 'experimentTemplates', traits: {"smithy.api#documentation" => "<p>The experiment templates.</p>"}))
    ListExperimentTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"}))
    ListExperimentTemplatesResponse.type = Types::ListExperimentTemplatesResponse
    ListExperimentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListExperimentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExperimentsRequest.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpQuery" => "experimentTemplateId"}))
    ListExperimentsRequest.type = Types::ListExperimentsRequest
    ListExperimentsResponse.add_member(:experiments, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentSummaryList, location_name: 'experiments', traits: {"smithy.api#documentation" => "<p>The experiments.</p>"}))
    ListExperimentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"}))
    ListExperimentsResponse.type = Types::ListExperimentsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetAccountConfigurationsRequest.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTargetAccountConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetAccountConfigurationsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining results, \n      make another call with the returned nextToken value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTargetAccountConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTargetAccountConfigurationsRequest.type = Types::ListTargetAccountConfigurationsRequest
    ListTargetAccountConfigurationsResponse.add_member(:target_account_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationList, location_name: 'targetAccountConfigurations', traits: {"smithy.api#documentation" => "<p>The target account configurations.</p>"}))
    ListTargetAccountConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. \n      This value is null when there are no more results to return.</p>"}))
    ListTargetAccountConfigurationsResponse.type = Types::ListTargetAccountConfigurationsResponse
    ListTargetResourceTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetResourceTypesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTargetResourceTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTargetResourceTypesRequest.type = Types::ListTargetResourceTypesRequest
    ListTargetResourceTypesResponse.add_member(:target_resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeSummaryList, location_name: 'targetResourceTypes', traits: {"smithy.api#documentation" => "<p>The target resource types.</p>"}))
    ListTargetResourceTypesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"}))
    ListTargetResourceTypesResponse.type = Types::ListTargetResourceTypesResponse
    ReportConfigurationCloudWatchDashboardInput.add_member(:dashboard_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardIdentifier, location_name: 'dashboardIdentifier', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch dashboard to include in the experiment report.</p>"}))
    ReportConfigurationCloudWatchDashboardInput.type = Types::ReportConfigurationCloudWatchDashboardInput
    ReportConfigurationCloudWatchDashboardInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationCloudWatchDashboardInput)
    ReportConfigurationS3Output.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket where the experiment report will be stored.</p>"}))
    ReportConfigurationS3Output.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationS3OutputPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The prefix of the S3 bucket where the experiment report will be stored.</p>"}))
    ReportConfigurationS3Output.type = Types::ReportConfigurationS3Output
    ReportConfigurationS3OutputInput.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket where the experiment report will be stored.</p>"}))
    ReportConfigurationS3OutputInput.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationS3OutputPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The prefix of the S3 bucket where the experiment report will be stored.</p>"}))
    ReportConfigurationS3OutputInput.type = Types::ReportConfigurationS3OutputInput
    ResolvedTarget.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the target.</p>"}))
    ResolvedTarget.add_member(:target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'targetName', traits: {"smithy.api#documentation" => "<p>The name of the target.</p>"}))
    ResolvedTarget.add_member(:target_information, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInformationMap, location_name: 'targetInformation', traits: {"smithy.api#documentation" => "<p>Information about the target.</p>"}))
    ResolvedTarget.type = Types::ResolvedTarget
    ResolvedTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedTarget)
    ResourceArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SafetyLever.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>\n      The ID of the safety lever.\n      </p>"}))
    SafetyLever.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>\n     The Amazon Resource Name (ARN) of the safety lever.\n      </p>"}))
    SafetyLever.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>\n        The state of the safety lever.\n      </p>"}))
    SafetyLever.type = Types::SafetyLever
    SafetyLeverState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n         The state of the safety lever.\n      </p>"}))
    SafetyLeverState.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverStatusReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>\n       The reason for the state of the safety lever.\n      </p>"}))
    SafetyLeverState.type = Types::SafetyLeverState
    SafetyLeverStatus.add_member(:disengaged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISENGAGED', traits: {"smithy.api#enumValue" => "disengaged"}))
    SafetyLeverStatus.add_member(:engaged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENGAGED', traits: {"smithy.api#enumValue" => "engaged"}))
    SafetyLeverStatus.add_member(:engaging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENGAGING', traits: {"smithy.api#enumValue" => "engaging"}))
    SafetyLeverStatusInput.add_member(:disengaged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISENGAGED', traits: {"smithy.api#enumValue" => "disengaged"}))
    SafetyLeverStatusInput.add_member(:engaged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENGAGED', traits: {"smithy.api#enumValue" => "engaged"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartExperimentExperimentOptionsInput.add_member(:actions_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsMode, location_name: 'actionsMode', traits: {"smithy.api#documentation" => "<p>Specifies the actions mode for experiment options.</p>"}))
    StartExperimentExperimentOptionsInput.type = Types::StartExperimentExperimentOptionsInput
    StartExperimentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartExperimentRequest.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#required" => {}}))
    StartExperimentRequest.add_member(:experiment_options, Smithy::Schema::Shapes::ShapeRef.new(shape: StartExperimentExperimentOptionsInput, location_name: 'experimentOptions', traits: {"smithy.api#documentation" => "<p>The experiment options for running the experiment.</p>"}))
    StartExperimentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the experiment.</p>"}))
    StartExperimentRequest.type = Types::StartExperimentRequest
    StartExperimentResponse.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>Information about the experiment.</p>"}))
    StartExperimentResponse.type = Types::StartExperimentResponse
    StopExperimentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentRequest.type = Types::StopExperimentRequest
    StopExperimentResponse.add_member(:experiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Experiment, location_name: 'experiment', traits: {"smithy.api#documentation" => "<p>Information about the experiment.</p>"}))
    StopExperimentResponse.type = Types::StopExperimentResponse
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetAccountConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>"}))
    TargetAccountConfiguration.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>"}))
    TargetAccountConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the target account.</p>"}))
    TargetAccountConfiguration.type = Types::TargetAccountConfiguration
    TargetAccountConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationSummary)
    TargetAccountConfigurationSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>"}))
    TargetAccountConfigurationSummary.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>"}))
    TargetAccountConfigurationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the target account.</p>"}))
    TargetAccountConfigurationSummary.type = Types::TargetAccountConfigurationSummary
    TargetInformationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInformationKey)
    TargetInformationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInformationValue)
    TargetResourceType.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    TargetResourceType.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the resource type.</p>"}))
    TargetResourceType.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the resource type.</p>"}))
    TargetResourceType.type = Types::TargetResourceType
    TargetResourceTypeParameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeParameterDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the parameter.</p>"}))
    TargetResourceTypeParameter.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeParameterRequired, location_name: 'required', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Indicates whether the parameter is required.</p>"}))
    TargetResourceTypeParameter.type = Types::TargetResourceTypeParameter
    TargetResourceTypeParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeParameterName)
    TargetResourceTypeParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeParameter)
    TargetResourceTypeSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    TargetResourceTypeSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the resource type.</p>"}))
    TargetResourceTypeSummary.type = Types::TargetResourceTypeSummary
    TargetResourceTypeSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeSummary)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to remove.</p>", "smithy.api#httpQuery" => "tagKeys"}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateExperimentTemplateActionInputItem.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>"}))
    UpdateExperimentTemplateActionInputItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the action.</p>"}))
    UpdateExperimentTemplateActionInputItem.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the action, if applicable.</p>"}))
    UpdateExperimentTemplateActionInputItem.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionTargetMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the action.</p>"}))
    UpdateExperimentTemplateActionInputItem.add_member(:start_after, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionStartAfterList, location_name: 'startAfter', traits: {"smithy.api#documentation" => "<p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>"}))
    UpdateExperimentTemplateActionInputItem.type = Types::UpdateExperimentTemplateActionInputItem
    UpdateExperimentTemplateActionInputMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateActionName)
    UpdateExperimentTemplateActionInputMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateActionInputItem)
    UpdateExperimentTemplateExperimentOptionsInput.add_member(:empty_target_resolution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyTargetResolutionMode, location_name: 'emptyTargetResolutionMode', traits: {"smithy.api#documentation" => "<p>The empty target resolution mode of the experiment template.</p>"}))
    UpdateExperimentTemplateExperimentOptionsInput.type = Types::UpdateExperimentTemplateExperimentOptionsInput
    UpdateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateCloudWatchLogsLogConfigurationInput, location_name: 'cloudWatchLogsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>"}))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateS3LogConfigurationInput, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging to Amazon S3.</p>"}))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSchemaVersion, location_name: 'logSchemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version.</p>"}))
    UpdateExperimentTemplateLogConfigurationInput.type = Types::UpdateExperimentTemplateLogConfigurationInput
    UpdateExperimentTemplateReportConfigurationInput.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationOutputsInput, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>Describes the output destinations of the experiment report. </p>"}))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateReportConfigurationDataSourcesInput, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources for the experiment report.</p>"}))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:pre_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'preExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration before the experiment start time for the data sources to include in the report. </p>"}))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:post_experiment_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportConfigurationDuration, location_name: 'postExperimentDuration', traits: {"smithy.api#documentation" => "<p>The duration after the experiment end time for the data sources to include in the report. </p>"}))
    UpdateExperimentTemplateReportConfigurationInput.type = Types::UpdateExperimentTemplateReportConfigurationInput
    UpdateExperimentTemplateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the template.</p>"}))
    UpdateExperimentTemplateRequest.add_member(:stop_conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateStopConditionInputList, location_name: 'stopConditions', traits: {"smithy.api#documentation" => "<p>The stop conditions for the experiment.</p>"}))
    UpdateExperimentTemplateRequest.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateTargetInputMap, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the experiment.</p>"}))
    UpdateExperimentTemplateRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateActionInputMap, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions for the experiment.</p>"}))
    UpdateExperimentTemplateRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>"}))
    UpdateExperimentTemplateRequest.add_member(:log_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateLogConfigurationInput, location_name: 'logConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for experiment logging.</p>"}))
    UpdateExperimentTemplateRequest.add_member(:experiment_options, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateExperimentOptionsInput, location_name: 'experimentOptions', traits: {"smithy.api#documentation" => "<p>The experiment options for the experiment template.</p>"}))
    UpdateExperimentTemplateRequest.add_member(:experiment_report_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateReportConfigurationInput, location_name: 'experimentReportConfiguration', traits: {"smithy.api#documentation" => "<p>The experiment report configuration for the experiment template.</p>"}))
    UpdateExperimentTemplateRequest.type = Types::UpdateExperimentTemplateRequest
    UpdateExperimentTemplateResponse.add_member(:experiment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplate, location_name: 'experimentTemplate', traits: {"smithy.api#documentation" => "<p>Information about the experiment template.</p>"}))
    UpdateExperimentTemplateResponse.type = Types::UpdateExperimentTemplateResponse
    UpdateExperimentTemplateStopConditionInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop\n         condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop\n         condition.</p>", "smithy.api#required" => {}}))
    UpdateExperimentTemplateStopConditionInput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StopConditionValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch alarm.</p>"}))
    UpdateExperimentTemplateStopConditionInput.type = Types::UpdateExperimentTemplateStopConditionInput
    UpdateExperimentTemplateStopConditionInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateStopConditionInput)
    UpdateExperimentTemplateTargetInput.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceTypeId, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type. The resource type must be supported for the specified action.</p>", "smithy.api#required" => {}}))
    UpdateExperimentTemplateTargetInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the targets.</p>"}))
    UpdateExperimentTemplateTargetInput.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>The tags for the target resources.</p>"}))
    UpdateExperimentTemplateTargetInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetFilterInputList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filters to apply to identify target resources using specific attributes.</p>"}))
    UpdateExperimentTemplateTargetInput.add_member(:selection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetSelectionMode, location_name: 'selectionMode', traits: {"smithy.api#documentation" => "<p>Scopes the identified resources to a specific count or percentage.</p>", "smithy.api#required" => {}}))
    UpdateExperimentTemplateTargetInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The resource type parameters.</p>"}))
    UpdateExperimentTemplateTargetInput.type = Types::UpdateExperimentTemplateTargetInput
    UpdateExperimentTemplateTargetInputMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateTargetName)
    UpdateExperimentTemplateTargetInputMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateTargetInput)
    UpdateSafetyLeverStateInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverStatusInput, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n       The updated state of the safety lever.\n      </p>", "smithy.api#required" => {}}))
    UpdateSafetyLeverStateInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverStatusReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>\n       The reason for updating the state of the safety lever.\n      </p>", "smithy.api#required" => {}}))
    UpdateSafetyLeverStateInput.type = Types::UpdateSafetyLeverStateInput
    UpdateSafetyLeverStateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLeverId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>\n         The ID of the safety lever.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSafetyLeverStateRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSafetyLeverStateInput, location_name: 'state', traits: {"smithy.api#documentation" => "<p>\n       The state of the safety lever.\n      </p>", "smithy.api#required" => {}}))
    UpdateSafetyLeverStateRequest.type = Types::UpdateSafetyLeverStateRequest
    UpdateSafetyLeverStateResponse.add_member(:safety_lever, Smithy::Schema::Shapes::ShapeRef.new(shape: SafetyLever, location_name: 'safetyLever', traits: {"smithy.api#documentation" => "<p>\n         Information about the safety lever.\n      </p>"}))
    UpdateSafetyLeverStateResponse.type = Types::UpdateSafetyLeverStateResponse
    UpdateTargetAccountConfigurationRequest.add_member(:experiment_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentTemplateId, location_name: 'experimentTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the experiment template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTargetAccountConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the target account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTargetAccountConfigurationRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>"}))
    UpdateTargetAccountConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfigurationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the target account.</p>"}))
    UpdateTargetAccountConfigurationRequest.type = Types::UpdateTargetAccountConfigurationRequest
    UpdateTargetAccountConfigurationResponse.add_member(:target_account_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAccountConfiguration, location_name: 'targetAccountConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the target account configuration.</p>"}))
    UpdateTargetAccountConfigurationResponse.type = Types::UpdateTargetAccountConfigurationResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    FaultInjectionSimulator = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.fis#FaultInjectionSimulator"
      service.name = "FaultInjectionSimulator"
      service.version = "2020-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "fis", "arnNamespace" => "fis", "cloudFormationName" => "Fis", "cloudTrailEventSource" => "fis.amazonaws.com", "endpointPrefix" => "fis"}, "aws.auth#sigv4" => {"name" => "fis"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Fault Injection Simulator"}
      service.add_operation(:create_experiment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#CreateExperimentTemplate"
        operation.name = "CreateExperimentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExperimentTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/experimentTemplates", "code" => 200}}
      end)
      service.add_operation(:create_target_account_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#CreateTargetAccountConfiguration"
        operation.name = "CreateTargetAccountConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTargetAccountConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTargetAccountConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:delete_experiment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#DeleteExperimentTemplate"
        operation.name = "DeleteExperimentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExperimentTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExperimentTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/experimentTemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_target_account_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#DeleteTargetAccountConfiguration"
        operation.name = "DeleteTargetAccountConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetAccountConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetAccountConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:get_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetAction"
        operation.name = "GetAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/actions/{id}", "code" => 200}}
      end)
      service.add_operation(:get_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetExperiment"
        operation.name = "GetExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{id}", "code" => 200}}
      end)
      service.add_operation(:get_experiment_target_account_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetExperimentTargetAccountConfiguration"
        operation.name = "GetExperimentTargetAccountConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentTargetAccountConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentTargetAccountConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{experimentId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:get_experiment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetExperimentTemplate"
        operation.name = "GetExperimentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExperimentTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:get_safety_lever, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetSafetyLever"
        operation.name = "GetSafetyLever"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSafetyLeverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSafetyLeverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/safetyLevers/{id}", "code" => 200}}
      end)
      service.add_operation(:get_target_account_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetTargetAccountConfiguration"
        operation.name = "GetTargetAccountConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTargetAccountConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTargetAccountConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:get_target_resource_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetTargetResourceType"
        operation.name = "GetTargetResourceType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTargetResourceTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTargetResourceTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/targetResourceTypes/{resourceType}", "code" => 200}}
      end)
      service.add_operation(:list_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListActions"
        operation.name = "ListActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/actions", "code" => 200}}
        operation[:paginator] = Paginators::ListActions.new
      end)
      service.add_operation(:list_experiment_resolved_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperimentResolvedTargets"
        operation.name = "ListExperimentResolvedTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentResolvedTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentResolvedTargetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{experimentId}/resolvedTargets", "code" => 200}}
        operation[:paginator] = Paginators::ListExperimentResolvedTargets.new
      end)
      service.add_operation(:list_experiment_target_account_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperimentTargetAccountConfigurations"
        operation.name = "ListExperimentTargetAccountConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentTargetAccountConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentTargetAccountConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{experimentId}/targetAccountConfigurations", "code" => 200}}
      end)
      service.add_operation(:list_experiment_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperimentTemplates"
        operation.name = "ListExperimentTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListExperimentTemplates.new
      end)
      service.add_operation(:list_experiments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperiments"
        operation.name = "ListExperiments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExperimentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments", "code" => 200}}
        operation[:paginator] = Paginators::ListExperiments.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_target_account_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListTargetAccountConfigurations"
        operation.name = "ListTargetAccountConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetAccountConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetAccountConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListTargetAccountConfigurations.new
      end)
      service.add_operation(:list_target_resource_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListTargetResourceTypes"
        operation.name = "ListTargetResourceTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetResourceTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetResourceTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/targetResourceTypes", "code" => 200}}
        operation[:paginator] = Paginators::ListTargetResourceTypes.new
      end)
      service.add_operation(:start_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#StartExperiment"
        operation.name = "StartExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExperimentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExperimentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/experiments", "code" => 200}}
      end)
      service.add_operation(:stop_experiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#StopExperiment"
        operation.name = "StopExperiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopExperimentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopExperimentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/experiments/{id}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_experiment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UpdateExperimentTemplate"
        operation.name = "UpdateExperimentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExperimentTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/experimentTemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:update_safety_lever_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UpdateSafetyLeverState"
        operation.name = "UpdateSafetyLeverState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSafetyLeverStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSafetyLeverStateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/safetyLevers/{id}/state", "code" => 200}}
      end)
      service.add_operation(:update_target_account_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UpdateTargetAccountConfiguration"
        operation.name = "UpdateTargetAccountConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargetAccountConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargetAccountConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
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
