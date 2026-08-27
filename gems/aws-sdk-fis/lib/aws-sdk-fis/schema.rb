# frozen_string_literal: true

# This is generated code!

module Aws::Fis
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountTargeting = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#AccountTargeting", name: "AccountTargeting")
    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#Action", name: "Action")
    ActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ActionDescription", name: "ActionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ActionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ActionId", name: "ActionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ActionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ActionParameter", name: "ActionParameter")
    ActionParameterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ActionParameterDescription", name: "ActionParameterDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ActionParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ActionParameterMap", name: "ActionParameterMap")
    ActionParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ActionParameterName", name: "ActionParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ActionParameterRequired = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fis#ActionParameterRequired", name: "ActionParameterRequired", traits: {"smithy.api#default" => false})
    ActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ActionSummary", name: "ActionSummary")
    ActionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ActionSummaryList", name: "ActionSummaryList")
    ActionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ActionTarget", name: "ActionTarget")
    ActionTargetMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ActionTargetMap", name: "ActionTargetMap")
    ActionTargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ActionTargetName", name: "ActionTargetName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ActionsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#ActionsMode", name: "ActionsMode")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    CloudWatchLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#CloudWatchLogGroupArn", name: "CloudWatchLogGroupArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateExperimentTemplateActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateActionInput", name: "CreateExperimentTemplateActionInput")
    CreateExperimentTemplateActionInputMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateActionInputMap", name: "CreateExperimentTemplateActionInputMap")
    CreateExperimentTemplateExperimentOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateExperimentOptionsInput", name: "CreateExperimentTemplateExperimentOptionsInput")
    CreateExperimentTemplateLogConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateLogConfigurationInput", name: "CreateExperimentTemplateLogConfigurationInput")
    CreateExperimentTemplateReportConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateReportConfigurationInput", name: "CreateExperimentTemplateReportConfigurationInput")
    CreateExperimentTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateRequest", name: "CreateExperimentTemplateRequest")
    CreateExperimentTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateResponse", name: "CreateExperimentTemplateResponse")
    CreateExperimentTemplateStopConditionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateStopConditionInput", name: "CreateExperimentTemplateStopConditionInput")
    CreateExperimentTemplateStopConditionInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateStopConditionInputList", name: "CreateExperimentTemplateStopConditionInputList")
    CreateExperimentTemplateTargetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateTargetInput", name: "CreateExperimentTemplateTargetInput")
    CreateExperimentTemplateTargetInputMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#CreateExperimentTemplateTargetInputMap", name: "CreateExperimentTemplateTargetInputMap")
    CreateTargetAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateTargetAccountConfigurationRequest", name: "CreateTargetAccountConfigurationRequest")
    CreateTargetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#CreateTargetAccountConfigurationResponse", name: "CreateTargetAccountConfigurationResponse")
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fis#CreationTime", name: "CreationTime")
    DeleteExperimentTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#DeleteExperimentTemplateRequest", name: "DeleteExperimentTemplateRequest")
    DeleteExperimentTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#DeleteExperimentTemplateResponse", name: "DeleteExperimentTemplateResponse")
    DeleteTargetAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#DeleteTargetAccountConfigurationRequest", name: "DeleteTargetAccountConfigurationRequest")
    DeleteTargetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#DeleteTargetAccountConfigurationResponse", name: "DeleteTargetAccountConfigurationResponse")
    EmptyTargetResolutionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#EmptyTargetResolutionMode", name: "EmptyTargetResolutionMode")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExceptionMessage", name: "ExceptionMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    Experiment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#Experiment", name: "Experiment")
    ExperimentAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentAction", name: "ExperimentAction")
    ExperimentActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentActionDescription", name: "ExperimentActionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentActionEndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fis#ExperimentActionEndTime", name: "ExperimentActionEndTime")
    ExperimentActionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentActionMap", name: "ExperimentActionMap")
    ExperimentActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentActionName", name: "ExperimentActionName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentActionParameter", name: "ExperimentActionParameter", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentActionParameterMap", name: "ExperimentActionParameterMap")
    ExperimentActionParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentActionParameterName", name: "ExperimentActionParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionStartAfter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentActionStartAfter", name: "ExperimentActionStartAfter", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentActionStartAfterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentActionStartAfterList", name: "ExperimentActionStartAfterList")
    ExperimentActionStartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fis#ExperimentActionStartTime", name: "ExperimentActionStartTime")
    ExperimentActionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentActionState", name: "ExperimentActionState")
    ExperimentActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#ExperimentActionStatus", name: "ExperimentActionStatus")
    ExperimentActionStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentActionStatusReason", name: "ExperimentActionStatusReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentActionTargetMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentActionTargetMap", name: "ExperimentActionTargetMap")
    ExperimentActionTargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentActionTargetName", name: "ExperimentActionTargetName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentCloudWatchLogsLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentCloudWatchLogsLogConfiguration", name: "ExperimentCloudWatchLogsLogConfiguration")
    ExperimentEndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fis#ExperimentEndTime", name: "ExperimentEndTime")
    ExperimentError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentError", name: "ExperimentError")
    ExperimentErrorAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentErrorAccountId", name: "ExperimentErrorAccountId")
    ExperimentErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentErrorCode", name: "ExperimentErrorCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentErrorLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentErrorLocation", name: "ExperimentErrorLocation")
    ExperimentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentId", name: "ExperimentId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentLogConfiguration", name: "ExperimentLogConfiguration")
    ExperimentOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentOptions", name: "ExperimentOptions")
    ExperimentReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReport", name: "ExperimentReport")
    ExperimentReportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportConfiguration", name: "ExperimentReportConfiguration")
    ExperimentReportConfigurationCloudWatchDashboard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportConfigurationCloudWatchDashboard", name: "ExperimentReportConfigurationCloudWatchDashboard")
    ExperimentReportConfigurationCloudWatchDashboardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentReportConfigurationCloudWatchDashboardList", name: "ExperimentReportConfigurationCloudWatchDashboardList")
    ExperimentReportConfigurationDataSources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportConfigurationDataSources", name: "ExperimentReportConfigurationDataSources")
    ExperimentReportConfigurationOutputs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportConfigurationOutputs", name: "ExperimentReportConfigurationOutputs")
    ExperimentReportConfigurationOutputsS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportConfigurationOutputsS3Configuration", name: "ExperimentReportConfigurationOutputsS3Configuration")
    ExperimentReportError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportError", name: "ExperimentReportError")
    ExperimentReportErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentReportErrorCode", name: "ExperimentReportErrorCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentReportReason", name: "ExperimentReportReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportS3Report = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportS3Report", name: "ExperimentReportS3Report")
    ExperimentReportS3ReportArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentReportS3ReportArn", name: "ExperimentReportS3ReportArn", traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportS3ReportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentReportS3ReportList", name: "ExperimentReportS3ReportList")
    ExperimentReportS3ReportType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentReportS3ReportType", name: "ExperimentReportS3ReportType", traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentReportState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentReportState", name: "ExperimentReportState")
    ExperimentReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#ExperimentReportStatus", name: "ExperimentReportStatus")
    ExperimentS3LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentS3LogConfiguration", name: "ExperimentS3LogConfiguration")
    ExperimentStartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fis#ExperimentStartTime", name: "ExperimentStartTime")
    ExperimentState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentState", name: "ExperimentState")
    ExperimentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#ExperimentStatus", name: "ExperimentStatus")
    ExperimentStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentStatusReason", name: "ExperimentStatusReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentStopCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentStopCondition", name: "ExperimentStopCondition")
    ExperimentStopConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentStopConditionList", name: "ExperimentStopConditionList")
    ExperimentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentSummary", name: "ExperimentSummary")
    ExperimentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentSummaryList", name: "ExperimentSummaryList")
    ExperimentTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTarget", name: "ExperimentTarget")
    ExperimentTargetAccountConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTargetAccountConfiguration", name: "ExperimentTargetAccountConfiguration")
    ExperimentTargetAccountConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTargetAccountConfigurationList", name: "ExperimentTargetAccountConfigurationList")
    ExperimentTargetAccountConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTargetAccountConfigurationSummary", name: "ExperimentTargetAccountConfigurationSummary")
    ExperimentTargetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTargetFilter", name: "ExperimentTargetFilter")
    ExperimentTargetFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTargetFilterList", name: "ExperimentTargetFilterList")
    ExperimentTargetFilterPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTargetFilterPath", name: "ExperimentTargetFilterPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTargetFilterValue", name: "ExperimentTargetFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTargetFilterValues", name: "ExperimentTargetFilterValues")
    ExperimentTargetMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentTargetMap", name: "ExperimentTargetMap")
    ExperimentTargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTargetName", name: "ExperimentTargetName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentTargetParameterMap", name: "ExperimentTargetParameterMap")
    ExperimentTargetParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTargetParameterName", name: "ExperimentTargetParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTargetParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTargetParameterValue", name: "ExperimentTargetParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExperimentTargetSelectionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTargetSelectionMode", name: "ExperimentTargetSelectionMode", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplate", name: "ExperimentTemplate")
    ExperimentTemplateAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateAction", name: "ExperimentTemplateAction")
    ExperimentTemplateActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionDescription", name: "ExperimentTemplateActionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentTemplateActionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionMap", name: "ExperimentTemplateActionMap")
    ExperimentTemplateActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionName", name: "ExperimentTemplateActionName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionParameter", name: "ExperimentTemplateActionParameter", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionParameterMap", name: "ExperimentTemplateActionParameterMap")
    ExperimentTemplateActionParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionParameterName", name: "ExperimentTemplateActionParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionStartAfter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionStartAfter", name: "ExperimentTemplateActionStartAfter", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateActionStartAfterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionStartAfterList", name: "ExperimentTemplateActionStartAfterList")
    ExperimentTemplateActionTargetMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionTargetMap", name: "ExperimentTemplateActionTargetMap")
    ExperimentTemplateActionTargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateActionTargetName", name: "ExperimentTemplateActionTargetName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateCloudWatchLogsLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateCloudWatchLogsLogConfiguration", name: "ExperimentTemplateCloudWatchLogsLogConfiguration")
    ExperimentTemplateCloudWatchLogsLogConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateCloudWatchLogsLogConfigurationInput", name: "ExperimentTemplateCloudWatchLogsLogConfigurationInput")
    ExperimentTemplateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateDescription", name: "ExperimentTemplateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    ExperimentTemplateExperimentOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateExperimentOptions", name: "ExperimentTemplateExperimentOptions")
    ExperimentTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateId", name: "ExperimentTemplateId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateLogConfiguration", name: "ExperimentTemplateLogConfiguration")
    ExperimentTemplateReportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateReportConfiguration", name: "ExperimentTemplateReportConfiguration")
    ExperimentTemplateReportConfigurationCloudWatchDashboard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateReportConfigurationCloudWatchDashboard", name: "ExperimentTemplateReportConfigurationCloudWatchDashboard")
    ExperimentTemplateReportConfigurationCloudWatchDashboardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTemplateReportConfigurationCloudWatchDashboardList", name: "ExperimentTemplateReportConfigurationCloudWatchDashboardList")
    ExperimentTemplateReportConfigurationDataSources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateReportConfigurationDataSources", name: "ExperimentTemplateReportConfigurationDataSources")
    ExperimentTemplateReportConfigurationDataSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateReportConfigurationDataSourcesInput", name: "ExperimentTemplateReportConfigurationDataSourcesInput")
    ExperimentTemplateReportConfigurationOutputs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateReportConfigurationOutputs", name: "ExperimentTemplateReportConfigurationOutputs")
    ExperimentTemplateReportConfigurationOutputsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateReportConfigurationOutputsInput", name: "ExperimentTemplateReportConfigurationOutputsInput")
    ExperimentTemplateS3LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateS3LogConfiguration", name: "ExperimentTemplateS3LogConfiguration")
    ExperimentTemplateS3LogConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateS3LogConfigurationInput", name: "ExperimentTemplateS3LogConfigurationInput")
    ExperimentTemplateStopCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateStopCondition", name: "ExperimentTemplateStopCondition")
    ExperimentTemplateStopConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTemplateStopConditionList", name: "ExperimentTemplateStopConditionList")
    ExperimentTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateSummary", name: "ExperimentTemplateSummary")
    ExperimentTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTemplateSummaryList", name: "ExperimentTemplateSummaryList")
    ExperimentTemplateTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateTarget", name: "ExperimentTemplateTarget")
    ExperimentTemplateTargetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetFilter", name: "ExperimentTemplateTargetFilter")
    ExperimentTemplateTargetFilterInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetFilterInputList", name: "ExperimentTemplateTargetFilterInputList")
    ExperimentTemplateTargetFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetFilterList", name: "ExperimentTemplateTargetFilterList")
    ExperimentTemplateTargetFilterPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetFilterPath", name: "ExperimentTemplateTargetFilterPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetFilterValue", name: "ExperimentTemplateTargetFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetFilterValues", name: "ExperimentTemplateTargetFilterValues")
    ExperimentTemplateTargetInputFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetInputFilter", name: "ExperimentTemplateTargetInputFilter")
    ExperimentTemplateTargetMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetMap", name: "ExperimentTemplateTargetMap")
    ExperimentTemplateTargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetName", name: "ExperimentTemplateTargetName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetParameterMap", name: "ExperimentTemplateTargetParameterMap")
    ExperimentTemplateTargetParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetParameterName", name: "ExperimentTemplateTargetParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    ExperimentTemplateTargetParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetParameterValue", name: "ExperimentTemplateTargetParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+$"})
    ExperimentTemplateTargetSelectionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ExperimentTemplateTargetSelectionMode", name: "ExperimentTemplateTargetSelectionMode", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    GetActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetActionRequest", name: "GetActionRequest")
    GetActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetActionResponse", name: "GetActionResponse")
    GetExperimentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetExperimentRequest", name: "GetExperimentRequest")
    GetExperimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetExperimentResponse", name: "GetExperimentResponse")
    GetExperimentTargetAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetExperimentTargetAccountConfigurationRequest", name: "GetExperimentTargetAccountConfigurationRequest")
    GetExperimentTargetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetExperimentTargetAccountConfigurationResponse", name: "GetExperimentTargetAccountConfigurationResponse")
    GetExperimentTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetExperimentTemplateRequest", name: "GetExperimentTemplateRequest")
    GetExperimentTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetExperimentTemplateResponse", name: "GetExperimentTemplateResponse")
    GetSafetyLeverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetSafetyLeverRequest", name: "GetSafetyLeverRequest")
    GetSafetyLeverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetSafetyLeverResponse", name: "GetSafetyLeverResponse")
    GetTargetAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetTargetAccountConfigurationRequest", name: "GetTargetAccountConfigurationRequest")
    GetTargetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetTargetAccountConfigurationResponse", name: "GetTargetAccountConfigurationResponse")
    GetTargetResourceTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetTargetResourceTypeRequest", name: "GetTargetResourceTypeRequest")
    GetTargetResourceTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#GetTargetResourceTypeResponse", name: "GetTargetResourceTypeResponse")
    LastUpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fis#LastUpdateTime", name: "LastUpdateTime")
    ListActionsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#ListActionsMaxResults", name: "ListActionsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListActionsRequest", name: "ListActionsRequest")
    ListActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListActionsResponse", name: "ListActionsResponse")
    ListExperimentResolvedTargetsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#ListExperimentResolvedTargetsMaxResults", name: "ListExperimentResolvedTargetsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListExperimentResolvedTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentResolvedTargetsRequest", name: "ListExperimentResolvedTargetsRequest")
    ListExperimentResolvedTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentResolvedTargetsResponse", name: "ListExperimentResolvedTargetsResponse")
    ListExperimentTargetAccountConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentTargetAccountConfigurationsRequest", name: "ListExperimentTargetAccountConfigurationsRequest")
    ListExperimentTargetAccountConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentTargetAccountConfigurationsResponse", name: "ListExperimentTargetAccountConfigurationsResponse")
    ListExperimentTemplatesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#ListExperimentTemplatesMaxResults", name: "ListExperimentTemplatesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListExperimentTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentTemplatesRequest", name: "ListExperimentTemplatesRequest")
    ListExperimentTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentTemplatesResponse", name: "ListExperimentTemplatesResponse")
    ListExperimentsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#ListExperimentsMaxResults", name: "ListExperimentsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListExperimentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentsRequest", name: "ListExperimentsRequest")
    ListExperimentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListExperimentsResponse", name: "ListExperimentsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTargetAccountConfigurationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#ListTargetAccountConfigurationsMaxResults", name: "ListTargetAccountConfigurationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTargetAccountConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListTargetAccountConfigurationsRequest", name: "ListTargetAccountConfigurationsRequest")
    ListTargetAccountConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListTargetAccountConfigurationsResponse", name: "ListTargetAccountConfigurationsResponse")
    ListTargetResourceTypesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#ListTargetResourceTypesMaxResults", name: "ListTargetResourceTypesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTargetResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListTargetResourceTypesRequest", name: "ListTargetResourceTypesRequest")
    ListTargetResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ListTargetResourceTypesResponse", name: "ListTargetResourceTypesResponse")
    LogSchemaVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#LogSchemaVersion", name: "LogSchemaVersion")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    ReportConfigurationCloudWatchDashboardIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ReportConfigurationCloudWatchDashboardIdentifier", name: "ReportConfigurationCloudWatchDashboardIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\S]+$"})
    ReportConfigurationCloudWatchDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ReportConfigurationCloudWatchDashboardInput", name: "ReportConfigurationCloudWatchDashboardInput")
    ReportConfigurationCloudWatchDashboardInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ReportConfigurationCloudWatchDashboardInputList", name: "ReportConfigurationCloudWatchDashboardInputList")
    ReportConfigurationDuration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ReportConfigurationDuration", name: "ReportConfigurationDuration", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[\\S]+$"})
    ReportConfigurationS3Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ReportConfigurationS3Output", name: "ReportConfigurationS3Output")
    ReportConfigurationS3OutputInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ReportConfigurationS3OutputInput", name: "ReportConfigurationS3OutputInput")
    ReportConfigurationS3OutputPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ReportConfigurationS3OutputPrefix", name: "ReportConfigurationS3OutputPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    ResolvedTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ResolvedTarget", name: "ResolvedTarget")
    ResolvedTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ResolvedTargetList", name: "ResolvedTargetList")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#ResourceArnList", name: "ResourceArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[\\S]+$"})
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#S3ObjectKey", name: "S3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 700}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    SafetyLever = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#SafetyLever", name: "SafetyLever")
    SafetyLeverId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#SafetyLeverId", name: "SafetyLeverId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    SafetyLeverState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#SafetyLeverState", name: "SafetyLeverState")
    SafetyLeverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#SafetyLeverStatus", name: "SafetyLeverStatus")
    SafetyLeverStatusInput = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fis#SafetyLeverStatusInput", name: "SafetyLeverStatusInput")
    SafetyLeverStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#SafetyLeverStatusReason", name: "SafetyLeverStatusReason")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceededException", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartExperimentExperimentOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#StartExperimentExperimentOptionsInput", name: "StartExperimentExperimentOptionsInput")
    StartExperimentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#StartExperimentRequest", name: "StartExperimentRequest")
    StartExperimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#StartExperimentResponse", name: "StartExperimentResponse")
    StopConditionSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#StopConditionSource", name: "StopConditionSource", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    StopConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#StopConditionValue", name: "StopConditionValue", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    StopExperimentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#StopExperimentRequest", name: "StopExperimentRequest")
    StopExperimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#StopExperimentResponse", name: "StopExperimentResponse")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TargetAccountConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#TargetAccountConfiguration", name: "TargetAccountConfiguration")
    TargetAccountConfigurationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetAccountConfigurationDescription", name: "TargetAccountConfigurationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TargetAccountConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#TargetAccountConfigurationList", name: "TargetAccountConfigurationList")
    TargetAccountConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#TargetAccountConfigurationSummary", name: "TargetAccountConfigurationSummary")
    TargetAccountConfigurationsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fis#TargetAccountConfigurationsCount", name: "TargetAccountConfigurationsCount", traits: {"smithy.api#range" => {"min" => 0}})
    TargetAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetAccountId", name: "TargetAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 48}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetInformationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetInformationKey", name: "TargetInformationKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetInformationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#TargetInformationMap", name: "TargetInformationMap")
    TargetInformationValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetInformationValue", name: "TargetInformationValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetName", name: "TargetName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#TargetResourceType", name: "TargetResourceType")
    TargetResourceTypeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetResourceTypeDescription", name: "TargetResourceTypeDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TargetResourceTypeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetResourceTypeId", name: "TargetResourceTypeId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetResourceTypeParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#TargetResourceTypeParameter", name: "TargetResourceTypeParameter")
    TargetResourceTypeParameterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetResourceTypeParameterDescription", name: "TargetResourceTypeParameterDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    TargetResourceTypeParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#TargetResourceTypeParameterMap", name: "TargetResourceTypeParameterMap")
    TargetResourceTypeParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fis#TargetResourceTypeParameterName", name: "TargetResourceTypeParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S]+$"})
    TargetResourceTypeParameterRequired = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fis#TargetResourceTypeParameterRequired", name: "TargetResourceTypeParameterRequired", traits: {"smithy.api#default" => false})
    TargetResourceTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#TargetResourceTypeSummary", name: "TargetResourceTypeSummary")
    TargetResourceTypeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#TargetResourceTypeSummaryList", name: "TargetResourceTypeSummaryList")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateExperimentTemplateActionInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateActionInputItem", name: "UpdateExperimentTemplateActionInputItem")
    UpdateExperimentTemplateActionInputMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateActionInputMap", name: "UpdateExperimentTemplateActionInputMap")
    UpdateExperimentTemplateExperimentOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateExperimentOptionsInput", name: "UpdateExperimentTemplateExperimentOptionsInput")
    UpdateExperimentTemplateLogConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateLogConfigurationInput", name: "UpdateExperimentTemplateLogConfigurationInput")
    UpdateExperimentTemplateReportConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateReportConfigurationInput", name: "UpdateExperimentTemplateReportConfigurationInput")
    UpdateExperimentTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateRequest", name: "UpdateExperimentTemplateRequest")
    UpdateExperimentTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateResponse", name: "UpdateExperimentTemplateResponse")
    UpdateExperimentTemplateStopConditionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateStopConditionInput", name: "UpdateExperimentTemplateStopConditionInput")
    UpdateExperimentTemplateStopConditionInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateStopConditionInputList", name: "UpdateExperimentTemplateStopConditionInputList")
    UpdateExperimentTemplateTargetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateTargetInput", name: "UpdateExperimentTemplateTargetInput")
    UpdateExperimentTemplateTargetInputMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fis#UpdateExperimentTemplateTargetInputMap", name: "UpdateExperimentTemplateTargetInputMap")
    UpdateSafetyLeverStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateSafetyLeverStateInput", name: "UpdateSafetyLeverStateInput")
    UpdateSafetyLeverStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateSafetyLeverStateRequest", name: "UpdateSafetyLeverStateRequest")
    UpdateSafetyLeverStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateSafetyLeverStateResponse", name: "UpdateSafetyLeverStateResponse")
    UpdateTargetAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateTargetAccountConfigurationRequest", name: "UpdateTargetAccountConfigurationRequest")
    UpdateTargetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#UpdateTargetAccountConfigurationResponse", name: "UpdateTargetAccountConfigurationResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fis#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccountTargeting.add_member(:single_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_ACCOUNT", traits: {"smithy.api#enumValue" => "single-account"}))
    AccountTargeting.add_member(:multi_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_ACCOUNT", traits: {"smithy.api#enumValue" => "multi-account"}))
    Action.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "id"))
    Action.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    Action.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    Action.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionParameterMap, name: "parameters"))
    Action.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTargetMap, name: "targets"))
    Action.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Action.type = Types::Action
    ActionParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionParameterDescription, name: "description"))
    ActionParameter.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionParameterRequired, name: "required", traits: {"smithy.api#default" => nil}))
    ActionParameter.type = Types::ActionParameter
    ActionParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionParameterName, name: "key")
    ActionParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionParameter, name: "value")
    ActionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "id"))
    ActionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    ActionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    ActionSummary.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTargetMap, name: "targets"))
    ActionSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ActionSummary.type = Types::ActionSummary
    ActionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSummary, name: "member")
    ActionTarget.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType"))
    ActionTarget.type = Types::ActionTarget
    ActionTargetMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTargetName, name: "key")
    ActionTargetMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "value")
    ActionsMode.add_member(:skip_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP_ALL", traits: {"smithy.api#enumValue" => "skip-all"}))
    ActionsMode.add_member(:run_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUN_ALL", traits: {"smithy.api#enumValue" => "run-all"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateExperimentTemplateActionInput.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "actionId", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateActionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionDescription, name: "description"))
    CreateExperimentTemplateActionInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionParameterMap, name: "parameters"))
    CreateExperimentTemplateActionInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionTargetMap, name: "targets"))
    CreateExperimentTemplateActionInput.add_member(:start_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionStartAfterList, name: "startAfter"))
    CreateExperimentTemplateActionInput.type = Types::CreateExperimentTemplateActionInput
    CreateExperimentTemplateActionInputMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionName, name: "key")
    CreateExperimentTemplateActionInputMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateActionInput, name: "value")
    CreateExperimentTemplateExperimentOptionsInput.add_member(:account_targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTargeting, name: "accountTargeting"))
    CreateExperimentTemplateExperimentOptionsInput.add_member(:empty_target_resolution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptyTargetResolutionMode, name: "emptyTargetResolutionMode"))
    CreateExperimentTemplateExperimentOptionsInput.type = Types::CreateExperimentTemplateExperimentOptionsInput
    CreateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateCloudWatchLogsLogConfigurationInput, name: "cloudWatchLogsConfiguration"))
    CreateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateS3LogConfigurationInput, name: "s3Configuration"))
    CreateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSchemaVersion, name: "logSchemaVersion", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateLogConfigurationInput.type = Types::CreateExperimentTemplateLogConfigurationInput
    CreateExperimentTemplateReportConfigurationInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationOutputsInput, name: "outputs"))
    CreateExperimentTemplateReportConfigurationInput.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationDataSourcesInput, name: "dataSources"))
    CreateExperimentTemplateReportConfigurationInput.add_member(:pre_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "preExperimentDuration"))
    CreateExperimentTemplateReportConfigurationInput.add_member(:post_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "postExperimentDuration"))
    CreateExperimentTemplateReportConfigurationInput.type = Types::CreateExperimentTemplateReportConfigurationInput
    CreateExperimentTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateDescription, name: "description", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateStopConditionInputList, name: "stopConditions", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateTargetInputMap, name: "targets"))
    CreateExperimentTemplateRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateActionInputMap, name: "actions", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateExperimentTemplateRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateLogConfigurationInput, name: "logConfiguration"))
    CreateExperimentTemplateRequest.add_member(:experiment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateExperimentOptionsInput, name: "experimentOptions"))
    CreateExperimentTemplateRequest.add_member(:experiment_report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateReportConfigurationInput, name: "experimentReportConfiguration"))
    CreateExperimentTemplateRequest.type = Types::CreateExperimentTemplateRequest
    CreateExperimentTemplateResponse.add_member(:experiment_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplate, name: "experimentTemplate"))
    CreateExperimentTemplateResponse.type = Types::CreateExperimentTemplateResponse
    CreateExperimentTemplateStopConditionInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionSource, name: "source", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateStopConditionInput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionValue, name: "value"))
    CreateExperimentTemplateStopConditionInput.type = Types::CreateExperimentTemplateStopConditionInput
    CreateExperimentTemplateStopConditionInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateStopConditionInput, name: "member")
    CreateExperimentTemplateTargetInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateTargetInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "resourceArns"))
    CreateExperimentTemplateTargetInput.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "resourceTags"))
    CreateExperimentTemplateTargetInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterInputList, name: "filters"))
    CreateExperimentTemplateTargetInput.add_member(:selection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetSelectionMode, name: "selectionMode", traits: {"smithy.api#required" => {}}))
    CreateExperimentTemplateTargetInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetParameterMap, name: "parameters"))
    CreateExperimentTemplateTargetInput.type = Types::CreateExperimentTemplateTargetInput
    CreateExperimentTemplateTargetInputMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetName, name: "key")
    CreateExperimentTemplateTargetInputMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CreateExperimentTemplateTargetInput, name: "value")
    CreateTargetAccountConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateTargetAccountConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationDescription, name: "description"))
    CreateTargetAccountConfigurationRequest.type = Types::CreateTargetAccountConfigurationRequest
    CreateTargetAccountConfigurationResponse.add_member(:target_account_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfiguration, name: "targetAccountConfiguration"))
    CreateTargetAccountConfigurationResponse.type = Types::CreateTargetAccountConfigurationResponse
    DeleteExperimentTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentTemplateRequest.type = Types::DeleteExperimentTemplateRequest
    DeleteExperimentTemplateResponse.add_member(:experiment_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplate, name: "experimentTemplate"))
    DeleteExperimentTemplateResponse.type = Types::DeleteExperimentTemplateResponse
    DeleteTargetAccountConfigurationRequest.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTargetAccountConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTargetAccountConfigurationRequest.type = Types::DeleteTargetAccountConfigurationRequest
    DeleteTargetAccountConfigurationResponse.add_member(:target_account_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfiguration, name: "targetAccountConfiguration"))
    DeleteTargetAccountConfigurationResponse.type = Types::DeleteTargetAccountConfigurationResponse
    EmptyTargetResolutionMode.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "fail"}))
    EmptyTargetResolutionMode.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP", traits: {"smithy.api#enumValue" => "skip"}))
    Experiment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentId, name: "id"))
    Experiment.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    Experiment.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId"))
    Experiment.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    Experiment.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentState, name: "state"))
    Experiment.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetMap, name: "targets"))
    Experiment.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionMap, name: "actions"))
    Experiment.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentStopConditionList, name: "stopConditions"))
    Experiment.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "creationTime"))
    Experiment.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentStartTime, name: "startTime"))
    Experiment.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentEndTime, name: "endTime"))
    Experiment.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Experiment.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentLogConfiguration, name: "logConfiguration"))
    Experiment.add_member(:experiment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentOptions, name: "experimentOptions"))
    Experiment.add_member(:target_account_configurations_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationsCount, name: "targetAccountConfigurationsCount"))
    Experiment.add_member(:experiment_report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportConfiguration, name: "experimentReportConfiguration"))
    Experiment.add_member(:experiment_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReport, name: "experimentReport"))
    Experiment.type = Types::Experiment
    ExperimentAction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "actionId"))
    ExperimentAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionDescription, name: "description"))
    ExperimentAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionParameterMap, name: "parameters"))
    ExperimentAction.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionTargetMap, name: "targets"))
    ExperimentAction.add_member(:start_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionStartAfterList, name: "startAfter"))
    ExperimentAction.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionState, name: "state"))
    ExperimentAction.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionStartTime, name: "startTime"))
    ExperimentAction.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionEndTime, name: "endTime"))
    ExperimentAction.type = Types::ExperimentAction
    ExperimentActionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionName, name: "key")
    ExperimentActionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentAction, name: "value")
    ExperimentActionParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionParameterName, name: "key")
    ExperimentActionParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionParameter, name: "value")
    ExperimentActionStartAfterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionStartAfter, name: "member")
    ExperimentActionState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionStatus, name: "status"))
    ExperimentActionState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionStatusReason, name: "reason"))
    ExperimentActionState.type = Types::ExperimentActionState
    ExperimentActionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "pending"}))
    ExperimentActionStatus.add_member(:initiating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "initiating", traits: {"smithy.api#enumValue" => "initiating"}))
    ExperimentActionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "running", traits: {"smithy.api#enumValue" => "running"}))
    ExperimentActionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "completed", traits: {"smithy.api#enumValue" => "completed"}))
    ExperimentActionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cancelled", traits: {"smithy.api#enumValue" => "cancelled"}))
    ExperimentActionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "stopping", traits: {"smithy.api#enumValue" => "stopping"}))
    ExperimentActionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "stopped", traits: {"smithy.api#enumValue" => "stopped"}))
    ExperimentActionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "failed", traits: {"smithy.api#enumValue" => "failed"}))
    ExperimentActionStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "skipped", traits: {"smithy.api#enumValue" => "skipped"}))
    ExperimentActionTargetMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentActionTargetName, name: "key")
    ExperimentActionTargetMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetName, name: "value")
    ExperimentCloudWatchLogsLogConfiguration.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupArn, name: "logGroupArn"))
    ExperimentCloudWatchLogsLogConfiguration.type = Types::ExperimentCloudWatchLogsLogConfiguration
    ExperimentError.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentErrorAccountId, name: "accountId"))
    ExperimentError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentErrorCode, name: "code"))
    ExperimentError.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentErrorLocation, name: "location"))
    ExperimentError.type = Types::ExperimentError
    ExperimentLogConfiguration.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentCloudWatchLogsLogConfiguration, name: "cloudWatchLogsConfiguration"))
    ExperimentLogConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentS3LogConfiguration, name: "s3Configuration"))
    ExperimentLogConfiguration.add_member(:log_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSchemaVersion, name: "logSchemaVersion"))
    ExperimentLogConfiguration.type = Types::ExperimentLogConfiguration
    ExperimentOptions.add_member(:account_targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTargeting, name: "accountTargeting"))
    ExperimentOptions.add_member(:empty_target_resolution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptyTargetResolutionMode, name: "emptyTargetResolutionMode"))
    ExperimentOptions.add_member(:actions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsMode, name: "actionsMode"))
    ExperimentOptions.type = Types::ExperimentOptions
    ExperimentReport.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportState, name: "state"))
    ExperimentReport.add_member(:s3_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportS3ReportList, name: "s3Reports"))
    ExperimentReport.type = Types::ExperimentReport
    ExperimentReportConfiguration.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportConfigurationOutputs, name: "outputs"))
    ExperimentReportConfiguration.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportConfigurationDataSources, name: "dataSources"))
    ExperimentReportConfiguration.add_member(:pre_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "preExperimentDuration"))
    ExperimentReportConfiguration.add_member(:post_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "postExperimentDuration"))
    ExperimentReportConfiguration.type = Types::ExperimentReportConfiguration
    ExperimentReportConfigurationCloudWatchDashboard.add_member(:dashboard_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationCloudWatchDashboardIdentifier, name: "dashboardIdentifier"))
    ExperimentReportConfigurationCloudWatchDashboard.type = Types::ExperimentReportConfigurationCloudWatchDashboard
    ExperimentReportConfigurationCloudWatchDashboardList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportConfigurationCloudWatchDashboard, name: "member")
    ExperimentReportConfigurationDataSources.add_member(:cloud_watch_dashboards, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportConfigurationCloudWatchDashboardList, name: "cloudWatchDashboards"))
    ExperimentReportConfigurationDataSources.type = Types::ExperimentReportConfigurationDataSources
    ExperimentReportConfigurationOutputs.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportConfigurationOutputsS3Configuration, name: "s3Configuration"))
    ExperimentReportConfigurationOutputs.type = Types::ExperimentReportConfigurationOutputs
    ExperimentReportConfigurationOutputsS3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName"))
    ExperimentReportConfigurationOutputsS3Configuration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationS3OutputPrefix, name: "prefix"))
    ExperimentReportConfigurationOutputsS3Configuration.type = Types::ExperimentReportConfigurationOutputsS3Configuration
    ExperimentReportError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportErrorCode, name: "code"))
    ExperimentReportError.type = Types::ExperimentReportError
    ExperimentReportS3Report.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportS3ReportArn, name: "arn"))
    ExperimentReportS3Report.add_member(:report_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportS3ReportType, name: "reportType"))
    ExperimentReportS3Report.type = Types::ExperimentReportS3Report
    ExperimentReportS3ReportList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportS3Report, name: "member")
    ExperimentReportState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportStatus, name: "status"))
    ExperimentReportState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportReason, name: "reason"))
    ExperimentReportState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentReportError, name: "error"))
    ExperimentReportState.type = Types::ExperimentReportState
    ExperimentReportStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "pending"}))
    ExperimentReportStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "running", traits: {"smithy.api#enumValue" => "running"}))
    ExperimentReportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "completed", traits: {"smithy.api#enumValue" => "completed"}))
    ExperimentReportStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cancelled", traits: {"smithy.api#enumValue" => "cancelled"}))
    ExperimentReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "failed", traits: {"smithy.api#enumValue" => "failed"}))
    ExperimentS3LogConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName"))
    ExperimentS3LogConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "prefix"))
    ExperimentS3LogConfiguration.type = Types::ExperimentS3LogConfiguration
    ExperimentState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentStatus, name: "status"))
    ExperimentState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentStatusReason, name: "reason"))
    ExperimentState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentError, name: "error"))
    ExperimentState.type = Types::ExperimentState
    ExperimentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending", traits: {"smithy.api#enumValue" => "pending"}))
    ExperimentStatus.add_member(:initiating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "initiating", traits: {"smithy.api#enumValue" => "initiating"}))
    ExperimentStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "running", traits: {"smithy.api#enumValue" => "running"}))
    ExperimentStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "completed", traits: {"smithy.api#enumValue" => "completed"}))
    ExperimentStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "stopping", traits: {"smithy.api#enumValue" => "stopping"}))
    ExperimentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "stopped", traits: {"smithy.api#enumValue" => "stopped"}))
    ExperimentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "failed", traits: {"smithy.api#enumValue" => "failed"}))
    ExperimentStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cancelled", traits: {"smithy.api#enumValue" => "cancelled"}))
    ExperimentStopCondition.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionSource, name: "source"))
    ExperimentStopCondition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionValue, name: "value"))
    ExperimentStopCondition.type = Types::ExperimentStopCondition
    ExperimentStopConditionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentStopCondition, name: "member")
    ExperimentSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentId, name: "id"))
    ExperimentSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    ExperimentSummary.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId"))
    ExperimentSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentState, name: "state"))
    ExperimentSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "creationTime"))
    ExperimentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ExperimentSummary.add_member(:experiment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentOptions, name: "experimentOptions"))
    ExperimentSummary.type = Types::ExperimentSummary
    ExperimentSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentSummary, name: "member")
    ExperimentTarget.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType"))
    ExperimentTarget.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "resourceArns"))
    ExperimentTarget.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "resourceTags"))
    ExperimentTarget.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetFilterList, name: "filters"))
    ExperimentTarget.add_member(:selection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetSelectionMode, name: "selectionMode"))
    ExperimentTarget.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetParameterMap, name: "parameters"))
    ExperimentTarget.type = Types::ExperimentTarget
    ExperimentTargetAccountConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    ExperimentTargetAccountConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId"))
    ExperimentTargetAccountConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationDescription, name: "description"))
    ExperimentTargetAccountConfiguration.type = Types::ExperimentTargetAccountConfiguration
    ExperimentTargetAccountConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetAccountConfigurationSummary, name: "member")
    ExperimentTargetAccountConfigurationSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    ExperimentTargetAccountConfigurationSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId"))
    ExperimentTargetAccountConfigurationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationDescription, name: "description"))
    ExperimentTargetAccountConfigurationSummary.type = Types::ExperimentTargetAccountConfigurationSummary
    ExperimentTargetFilter.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetFilterPath, name: "path"))
    ExperimentTargetFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetFilterValues, name: "values"))
    ExperimentTargetFilter.type = Types::ExperimentTargetFilter
    ExperimentTargetFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetFilter, name: "member")
    ExperimentTargetFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetFilterValue, name: "member")
    ExperimentTargetMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetName, name: "key")
    ExperimentTargetMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTarget, name: "value")
    ExperimentTargetParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetParameterName, name: "key")
    ExperimentTargetParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetParameterValue, name: "value")
    ExperimentTemplate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "id"))
    ExperimentTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    ExperimentTemplate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateDescription, name: "description"))
    ExperimentTemplate.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetMap, name: "targets"))
    ExperimentTemplate.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionMap, name: "actions"))
    ExperimentTemplate.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateStopConditionList, name: "stopConditions"))
    ExperimentTemplate.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "creationTime"))
    ExperimentTemplate.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateTime, name: "lastUpdateTime"))
    ExperimentTemplate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    ExperimentTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ExperimentTemplate.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateLogConfiguration, name: "logConfiguration"))
    ExperimentTemplate.add_member(:experiment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateExperimentOptions, name: "experimentOptions"))
    ExperimentTemplate.add_member(:target_account_configurations_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationsCount, name: "targetAccountConfigurationsCount"))
    ExperimentTemplate.add_member(:experiment_report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfiguration, name: "experimentReportConfiguration"))
    ExperimentTemplate.type = Types::ExperimentTemplate
    ExperimentTemplateAction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "actionId"))
    ExperimentTemplateAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionDescription, name: "description"))
    ExperimentTemplateAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionParameterMap, name: "parameters"))
    ExperimentTemplateAction.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionTargetMap, name: "targets"))
    ExperimentTemplateAction.add_member(:start_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionStartAfterList, name: "startAfter"))
    ExperimentTemplateAction.type = Types::ExperimentTemplateAction
    ExperimentTemplateActionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionName, name: "key")
    ExperimentTemplateActionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateAction, name: "value")
    ExperimentTemplateActionParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionParameterName, name: "key")
    ExperimentTemplateActionParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionParameter, name: "value")
    ExperimentTemplateActionStartAfterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionStartAfter, name: "member")
    ExperimentTemplateActionTargetMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionTargetName, name: "key")
    ExperimentTemplateActionTargetMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetName, name: "value")
    ExperimentTemplateCloudWatchLogsLogConfiguration.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupArn, name: "logGroupArn"))
    ExperimentTemplateCloudWatchLogsLogConfiguration.type = Types::ExperimentTemplateCloudWatchLogsLogConfiguration
    ExperimentTemplateCloudWatchLogsLogConfigurationInput.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupArn, name: "logGroupArn", traits: {"smithy.api#required" => {}}))
    ExperimentTemplateCloudWatchLogsLogConfigurationInput.type = Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput
    ExperimentTemplateExperimentOptions.add_member(:account_targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTargeting, name: "accountTargeting"))
    ExperimentTemplateExperimentOptions.add_member(:empty_target_resolution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptyTargetResolutionMode, name: "emptyTargetResolutionMode"))
    ExperimentTemplateExperimentOptions.type = Types::ExperimentTemplateExperimentOptions
    ExperimentTemplateLogConfiguration.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateCloudWatchLogsLogConfiguration, name: "cloudWatchLogsConfiguration"))
    ExperimentTemplateLogConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateS3LogConfiguration, name: "s3Configuration"))
    ExperimentTemplateLogConfiguration.add_member(:log_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSchemaVersion, name: "logSchemaVersion"))
    ExperimentTemplateLogConfiguration.type = Types::ExperimentTemplateLogConfiguration
    ExperimentTemplateReportConfiguration.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationOutputs, name: "outputs"))
    ExperimentTemplateReportConfiguration.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationDataSources, name: "dataSources"))
    ExperimentTemplateReportConfiguration.add_member(:pre_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "preExperimentDuration"))
    ExperimentTemplateReportConfiguration.add_member(:post_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "postExperimentDuration"))
    ExperimentTemplateReportConfiguration.type = Types::ExperimentTemplateReportConfiguration
    ExperimentTemplateReportConfigurationCloudWatchDashboard.add_member(:dashboard_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationCloudWatchDashboardIdentifier, name: "dashboardIdentifier"))
    ExperimentTemplateReportConfigurationCloudWatchDashboard.type = Types::ExperimentTemplateReportConfigurationCloudWatchDashboard
    ExperimentTemplateReportConfigurationCloudWatchDashboardList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationCloudWatchDashboard, name: "member")
    ExperimentTemplateReportConfigurationDataSources.add_member(:cloud_watch_dashboards, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationCloudWatchDashboardList, name: "cloudWatchDashboards"))
    ExperimentTemplateReportConfigurationDataSources.type = Types::ExperimentTemplateReportConfigurationDataSources
    ExperimentTemplateReportConfigurationDataSourcesInput.add_member(:cloud_watch_dashboards, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationCloudWatchDashboardInputList, name: "cloudWatchDashboards"))
    ExperimentTemplateReportConfigurationDataSourcesInput.type = Types::ExperimentTemplateReportConfigurationDataSourcesInput
    ExperimentTemplateReportConfigurationOutputs.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationS3Output, name: "s3Configuration"))
    ExperimentTemplateReportConfigurationOutputs.type = Types::ExperimentTemplateReportConfigurationOutputs
    ExperimentTemplateReportConfigurationOutputsInput.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationS3OutputInput, name: "s3Configuration"))
    ExperimentTemplateReportConfigurationOutputsInput.type = Types::ExperimentTemplateReportConfigurationOutputsInput
    ExperimentTemplateS3LogConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName"))
    ExperimentTemplateS3LogConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "prefix"))
    ExperimentTemplateS3LogConfiguration.type = Types::ExperimentTemplateS3LogConfiguration
    ExperimentTemplateS3LogConfigurationInput.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    ExperimentTemplateS3LogConfigurationInput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "prefix"))
    ExperimentTemplateS3LogConfigurationInput.type = Types::ExperimentTemplateS3LogConfigurationInput
    ExperimentTemplateStopCondition.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionSource, name: "source"))
    ExperimentTemplateStopCondition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionValue, name: "value"))
    ExperimentTemplateStopCondition.type = Types::ExperimentTemplateStopCondition
    ExperimentTemplateStopConditionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateStopCondition, name: "member")
    ExperimentTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "id"))
    ExperimentTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    ExperimentTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateDescription, name: "description"))
    ExperimentTemplateSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "creationTime"))
    ExperimentTemplateSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateTime, name: "lastUpdateTime"))
    ExperimentTemplateSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ExperimentTemplateSummary.type = Types::ExperimentTemplateSummary
    ExperimentTemplateSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateSummary, name: "member")
    ExperimentTemplateTarget.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType"))
    ExperimentTemplateTarget.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "resourceArns"))
    ExperimentTemplateTarget.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "resourceTags"))
    ExperimentTemplateTarget.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterList, name: "filters"))
    ExperimentTemplateTarget.add_member(:selection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetSelectionMode, name: "selectionMode"))
    ExperimentTemplateTarget.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetParameterMap, name: "parameters"))
    ExperimentTemplateTarget.type = Types::ExperimentTemplateTarget
    ExperimentTemplateTargetFilter.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterPath, name: "path"))
    ExperimentTemplateTargetFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterValues, name: "values"))
    ExperimentTemplateTargetFilter.type = Types::ExperimentTemplateTargetFilter
    ExperimentTemplateTargetFilterInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetInputFilter, name: "member")
    ExperimentTemplateTargetFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilter, name: "member")
    ExperimentTemplateTargetFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterValue, name: "member")
    ExperimentTemplateTargetInputFilter.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterPath, name: "path", traits: {"smithy.api#required" => {}}))
    ExperimentTemplateTargetInputFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    ExperimentTemplateTargetInputFilter.type = Types::ExperimentTemplateTargetInputFilter
    ExperimentTemplateTargetMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetName, name: "key")
    ExperimentTemplateTargetMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTarget, name: "value")
    ExperimentTemplateTargetParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetParameterName, name: "key")
    ExperimentTemplateTargetParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetParameterValue, name: "value")
    GetActionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetActionRequest.type = Types::GetActionRequest
    GetActionResponse.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "action"))
    GetActionResponse.type = Types::GetActionResponse
    GetExperimentRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentRequest.type = Types::GetExperimentRequest
    GetExperimentResponse.add_member(:experiment, ::Smithy::Schema::Shapes::MemberShape.new(target: Experiment, name: "experiment"))
    GetExperimentResponse.type = Types::GetExperimentResponse
    GetExperimentTargetAccountConfigurationRequest.add_member(:experiment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentId, name: "experimentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentTargetAccountConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentTargetAccountConfigurationRequest.type = Types::GetExperimentTargetAccountConfigurationRequest
    GetExperimentTargetAccountConfigurationResponse.add_member(:target_account_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetAccountConfiguration, name: "targetAccountConfiguration"))
    GetExperimentTargetAccountConfigurationResponse.type = Types::GetExperimentTargetAccountConfigurationResponse
    GetExperimentTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentTemplateRequest.type = Types::GetExperimentTemplateRequest
    GetExperimentTemplateResponse.add_member(:experiment_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplate, name: "experimentTemplate"))
    GetExperimentTemplateResponse.type = Types::GetExperimentTemplateResponse
    GetSafetyLeverRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSafetyLeverRequest.type = Types::GetSafetyLeverRequest
    GetSafetyLeverResponse.add_member(:safety_lever, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLever, name: "safetyLever"))
    GetSafetyLeverResponse.type = Types::GetSafetyLeverResponse
    GetTargetAccountConfigurationRequest.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetAccountConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetAccountConfigurationRequest.type = Types::GetTargetAccountConfigurationRequest
    GetTargetAccountConfigurationResponse.add_member(:target_account_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfiguration, name: "targetAccountConfiguration"))
    GetTargetAccountConfigurationResponse.type = Types::GetTargetAccountConfigurationResponse
    GetTargetResourceTypeRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetResourceTypeRequest.type = Types::GetTargetResourceTypeRequest
    GetTargetResourceTypeResponse.add_member(:target_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceType, name: "targetResourceType"))
    GetTargetResourceTypeResponse.type = Types::GetTargetResourceTypeResponse
    ListActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListActionsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListActionsRequest.type = Types::ListActionsRequest
    ListActionsResponse.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSummaryList, name: "actions"))
    ListActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActionsResponse.type = Types::ListActionsResponse
    ListExperimentResolvedTargetsRequest.add_member(:experiment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentId, name: "experimentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentResolvedTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExperimentResolvedTargetsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListExperimentResolvedTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExperimentResolvedTargetsRequest.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "targetName", traits: {"smithy.api#httpQuery" => "targetName"}))
    ListExperimentResolvedTargetsRequest.type = Types::ListExperimentResolvedTargetsRequest
    ListExperimentResolvedTargetsResponse.add_member(:resolved_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargetList, name: "resolvedTargets"))
    ListExperimentResolvedTargetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExperimentResolvedTargetsResponse.type = Types::ListExperimentResolvedTargetsResponse
    ListExperimentTargetAccountConfigurationsRequest.add_member(:experiment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentId, name: "experimentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentTargetAccountConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExperimentTargetAccountConfigurationsRequest.type = Types::ListExperimentTargetAccountConfigurationsRequest
    ListExperimentTargetAccountConfigurationsResponse.add_member(:target_account_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTargetAccountConfigurationList, name: "targetAccountConfigurations"))
    ListExperimentTargetAccountConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExperimentTargetAccountConfigurationsResponse.type = Types::ListExperimentTargetAccountConfigurationsResponse
    ListExperimentTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExperimentTemplatesMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListExperimentTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExperimentTemplatesRequest.type = Types::ListExperimentTemplatesRequest
    ListExperimentTemplatesResponse.add_member(:experiment_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateSummaryList, name: "experimentTemplates"))
    ListExperimentTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExperimentTemplatesResponse.type = Types::ListExperimentTemplatesResponse
    ListExperimentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExperimentsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListExperimentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExperimentsRequest.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId", traits: {"smithy.api#httpQuery" => "experimentTemplateId"}))
    ListExperimentsRequest.type = Types::ListExperimentsRequest
    ListExperimentsResponse.add_member(:experiments, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentSummaryList, name: "experiments"))
    ListExperimentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExperimentsResponse.type = Types::ListExperimentsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetAccountConfigurationsRequest.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTargetAccountConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTargetAccountConfigurationsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTargetAccountConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTargetAccountConfigurationsRequest.type = Types::ListTargetAccountConfigurationsRequest
    ListTargetAccountConfigurationsResponse.add_member(:target_account_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationList, name: "targetAccountConfigurations"))
    ListTargetAccountConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTargetAccountConfigurationsResponse.type = Types::ListTargetAccountConfigurationsResponse
    ListTargetResourceTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTargetResourceTypesMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTargetResourceTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTargetResourceTypesRequest.type = Types::ListTargetResourceTypesRequest
    ListTargetResourceTypesResponse.add_member(:target_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeSummaryList, name: "targetResourceTypes"))
    ListTargetResourceTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTargetResourceTypesResponse.type = Types::ListTargetResourceTypesResponse
    ReportConfigurationCloudWatchDashboardInput.add_member(:dashboard_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationCloudWatchDashboardIdentifier, name: "dashboardIdentifier"))
    ReportConfigurationCloudWatchDashboardInput.type = Types::ReportConfigurationCloudWatchDashboardInput
    ReportConfigurationCloudWatchDashboardInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationCloudWatchDashboardInput, name: "member")
    ReportConfigurationS3Output.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName"))
    ReportConfigurationS3Output.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationS3OutputPrefix, name: "prefix"))
    ReportConfigurationS3Output.type = Types::ReportConfigurationS3Output
    ReportConfigurationS3OutputInput.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName"))
    ReportConfigurationS3OutputInput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationS3OutputPrefix, name: "prefix"))
    ReportConfigurationS3OutputInput.type = Types::ReportConfigurationS3OutputInput
    ResolvedTarget.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType"))
    ResolvedTarget.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "targetName"))
    ResolvedTarget.add_member(:target_information, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInformationMap, name: "targetInformation"))
    ResolvedTarget.type = Types::ResolvedTarget
    ResolvedTargetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTarget, name: "member")
    ResourceArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SafetyLever.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverId, name: "id"))
    SafetyLever.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    SafetyLever.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverState, name: "state"))
    SafetyLever.type = Types::SafetyLever
    SafetyLeverState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverStatus, name: "status"))
    SafetyLeverState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverStatusReason, name: "reason"))
    SafetyLeverState.type = Types::SafetyLeverState
    SafetyLeverStatus.add_member(:disengaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISENGAGED", traits: {"smithy.api#enumValue" => "disengaged"}))
    SafetyLeverStatus.add_member(:engaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGED", traits: {"smithy.api#enumValue" => "engaged"}))
    SafetyLeverStatus.add_member(:engaging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGING", traits: {"smithy.api#enumValue" => "engaging"}))
    SafetyLeverStatusInput.add_member(:disengaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISENGAGED", traits: {"smithy.api#enumValue" => "disengaged"}))
    SafetyLeverStatusInput.add_member(:engaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGED", traits: {"smithy.api#enumValue" => "engaged"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartExperimentExperimentOptionsInput.add_member(:actions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsMode, name: "actionsMode"))
    StartExperimentExperimentOptionsInput.type = Types::StartExperimentExperimentOptionsInput
    StartExperimentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartExperimentRequest.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId", traits: {"smithy.api#required" => {}}))
    StartExperimentRequest.add_member(:experiment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StartExperimentExperimentOptionsInput, name: "experimentOptions"))
    StartExperimentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    StartExperimentRequest.type = Types::StartExperimentRequest
    StartExperimentResponse.add_member(:experiment, ::Smithy::Schema::Shapes::MemberShape.new(target: Experiment, name: "experiment"))
    StartExperimentResponse.type = Types::StartExperimentResponse
    StopExperimentRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentRequest.type = Types::StopExperimentRequest
    StopExperimentResponse.add_member(:experiment, ::Smithy::Schema::Shapes::MemberShape.new(target: Experiment, name: "experiment"))
    StopExperimentResponse.type = Types::StopExperimentResponse
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetAccountConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    TargetAccountConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId"))
    TargetAccountConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationDescription, name: "description"))
    TargetAccountConfiguration.type = Types::TargetAccountConfiguration
    TargetAccountConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationSummary, name: "member")
    TargetAccountConfigurationSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    TargetAccountConfigurationSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId"))
    TargetAccountConfigurationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationDescription, name: "description"))
    TargetAccountConfigurationSummary.type = Types::TargetAccountConfigurationSummary
    TargetInformationMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInformationKey, name: "key")
    TargetInformationMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInformationValue, name: "value")
    TargetResourceType.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType"))
    TargetResourceType.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeDescription, name: "description"))
    TargetResourceType.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeParameterMap, name: "parameters"))
    TargetResourceType.type = Types::TargetResourceType
    TargetResourceTypeParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeParameterDescription, name: "description"))
    TargetResourceTypeParameter.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeParameterRequired, name: "required", traits: {"smithy.api#default" => nil}))
    TargetResourceTypeParameter.type = Types::TargetResourceTypeParameter
    TargetResourceTypeParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeParameterName, name: "key")
    TargetResourceTypeParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeParameter, name: "value")
    TargetResourceTypeSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType"))
    TargetResourceTypeSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeDescription, name: "description"))
    TargetResourceTypeSummary.type = Types::TargetResourceTypeSummary
    TargetResourceTypeSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeSummary, name: "member")
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys"}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateExperimentTemplateActionInputItem.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "actionId"))
    UpdateExperimentTemplateActionInputItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionDescription, name: "description"))
    UpdateExperimentTemplateActionInputItem.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionParameterMap, name: "parameters"))
    UpdateExperimentTemplateActionInputItem.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionTargetMap, name: "targets"))
    UpdateExperimentTemplateActionInputItem.add_member(:start_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionStartAfterList, name: "startAfter"))
    UpdateExperimentTemplateActionInputItem.type = Types::UpdateExperimentTemplateActionInputItem
    UpdateExperimentTemplateActionInputMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateActionName, name: "key")
    UpdateExperimentTemplateActionInputMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateActionInputItem, name: "value")
    UpdateExperimentTemplateExperimentOptionsInput.add_member(:empty_target_resolution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptyTargetResolutionMode, name: "emptyTargetResolutionMode"))
    UpdateExperimentTemplateExperimentOptionsInput.type = Types::UpdateExperimentTemplateExperimentOptionsInput
    UpdateExperimentTemplateLogConfigurationInput.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateCloudWatchLogsLogConfigurationInput, name: "cloudWatchLogsConfiguration"))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateS3LogConfigurationInput, name: "s3Configuration"))
    UpdateExperimentTemplateLogConfigurationInput.add_member(:log_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSchemaVersion, name: "logSchemaVersion"))
    UpdateExperimentTemplateLogConfigurationInput.type = Types::UpdateExperimentTemplateLogConfigurationInput
    UpdateExperimentTemplateReportConfigurationInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationOutputsInput, name: "outputs"))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateReportConfigurationDataSourcesInput, name: "dataSources"))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:pre_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "preExperimentDuration"))
    UpdateExperimentTemplateReportConfigurationInput.add_member(:post_experiment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportConfigurationDuration, name: "postExperimentDuration"))
    UpdateExperimentTemplateReportConfigurationInput.type = Types::UpdateExperimentTemplateReportConfigurationInput
    UpdateExperimentTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateDescription, name: "description"))
    UpdateExperimentTemplateRequest.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateStopConditionInputList, name: "stopConditions"))
    UpdateExperimentTemplateRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateTargetInputMap, name: "targets"))
    UpdateExperimentTemplateRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateActionInputMap, name: "actions"))
    UpdateExperimentTemplateRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    UpdateExperimentTemplateRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateLogConfigurationInput, name: "logConfiguration"))
    UpdateExperimentTemplateRequest.add_member(:experiment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateExperimentOptionsInput, name: "experimentOptions"))
    UpdateExperimentTemplateRequest.add_member(:experiment_report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateReportConfigurationInput, name: "experimentReportConfiguration"))
    UpdateExperimentTemplateRequest.type = Types::UpdateExperimentTemplateRequest
    UpdateExperimentTemplateResponse.add_member(:experiment_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplate, name: "experimentTemplate"))
    UpdateExperimentTemplateResponse.type = Types::UpdateExperimentTemplateResponse
    UpdateExperimentTemplateStopConditionInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionSource, name: "source", traits: {"smithy.api#required" => {}}))
    UpdateExperimentTemplateStopConditionInput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionValue, name: "value"))
    UpdateExperimentTemplateStopConditionInput.type = Types::UpdateExperimentTemplateStopConditionInput
    UpdateExperimentTemplateStopConditionInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateStopConditionInput, name: "member")
    UpdateExperimentTemplateTargetInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceTypeId, name: "resourceType", traits: {"smithy.api#required" => {}}))
    UpdateExperimentTemplateTargetInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "resourceArns"))
    UpdateExperimentTemplateTargetInput.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "resourceTags"))
    UpdateExperimentTemplateTargetInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetFilterInputList, name: "filters"))
    UpdateExperimentTemplateTargetInput.add_member(:selection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetSelectionMode, name: "selectionMode", traits: {"smithy.api#required" => {}}))
    UpdateExperimentTemplateTargetInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetParameterMap, name: "parameters"))
    UpdateExperimentTemplateTargetInput.type = Types::UpdateExperimentTemplateTargetInput
    UpdateExperimentTemplateTargetInputMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateTargetName, name: "key")
    UpdateExperimentTemplateTargetInputMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExperimentTemplateTargetInput, name: "value")
    UpdateSafetyLeverStateInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverStatusInput, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateSafetyLeverStateInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverStatusReason, name: "reason", traits: {"smithy.api#required" => {}}))
    UpdateSafetyLeverStateInput.type = Types::UpdateSafetyLeverStateInput
    UpdateSafetyLeverStateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLeverId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSafetyLeverStateRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSafetyLeverStateInput, name: "state", traits: {"smithy.api#required" => {}}))
    UpdateSafetyLeverStateRequest.type = Types::UpdateSafetyLeverStateRequest
    UpdateSafetyLeverStateResponse.add_member(:safety_lever, ::Smithy::Schema::Shapes::MemberShape.new(target: SafetyLever, name: "safetyLever"))
    UpdateSafetyLeverStateResponse.type = Types::UpdateSafetyLeverStateResponse
    UpdateTargetAccountConfigurationRequest.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentTemplateId, name: "experimentTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTargetAccountConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTargetAccountConfigurationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    UpdateTargetAccountConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfigurationDescription, name: "description"))
    UpdateTargetAccountConfigurationRequest.type = Types::UpdateTargetAccountConfigurationRequest
    UpdateTargetAccountConfigurationResponse.add_member(:target_account_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAccountConfiguration, name: "targetAccountConfiguration"))
    UpdateTargetAccountConfigurationResponse.type = Types::UpdateTargetAccountConfigurationResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ValidationException.type = Types::ValidationException

    FaultInjectionSimulator = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.fis#FaultInjectionSimulator"
      service.name = "FaultInjectionSimulator"
      service.version = "2020-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "fis", "arnNamespace" => "fis", "cloudFormationName" => "Fis", "cloudTrailEventSource" => "fis.amazonaws.com", "endpointPrefix" => "fis"}, "aws.auth#sigv4" => {"name" => "fis"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Fault Injection Simulator"}
      service.add_operation(:create_experiment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#CreateExperimentTemplate"
        operation.name = "CreateExperimentTemplate"
        operation.input = CreateExperimentTemplateRequest
        operation.output = CreateExperimentTemplateResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/experimentTemplates", "code" => 200}}
      end)
      service.add_operation(:create_target_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#CreateTargetAccountConfiguration"
        operation.name = "CreateTargetAccountConfiguration"
        operation.input = CreateTargetAccountConfigurationRequest
        operation.output = CreateTargetAccountConfigurationResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:delete_experiment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#DeleteExperimentTemplate"
        operation.name = "DeleteExperimentTemplate"
        operation.input = DeleteExperimentTemplateRequest
        operation.output = DeleteExperimentTemplateResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/experimentTemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_target_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#DeleteTargetAccountConfiguration"
        operation.name = "DeleteTargetAccountConfiguration"
        operation.input = DeleteTargetAccountConfigurationRequest
        operation.output = DeleteTargetAccountConfigurationResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:get_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetAction"
        operation.name = "GetAction"
        operation.input = GetActionRequest
        operation.output = GetActionResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/actions/{id}", "code" => 200}}
      end)
      service.add_operation(:get_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetExperiment"
        operation.name = "GetExperiment"
        operation.input = GetExperimentRequest
        operation.output = GetExperimentResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{id}", "code" => 200}}
      end)
      service.add_operation(:get_experiment_target_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetExperimentTargetAccountConfiguration"
        operation.name = "GetExperimentTargetAccountConfiguration"
        operation.input = GetExperimentTargetAccountConfigurationRequest
        operation.output = GetExperimentTargetAccountConfigurationResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{experimentId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:get_experiment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetExperimentTemplate"
        operation.name = "GetExperimentTemplate"
        operation.input = GetExperimentTemplateRequest
        operation.output = GetExperimentTemplateResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:get_safety_lever, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetSafetyLever"
        operation.name = "GetSafetyLever"
        operation.input = GetSafetyLeverRequest
        operation.output = GetSafetyLeverResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/safetyLevers/{id}", "code" => 200}}
      end)
      service.add_operation(:get_target_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetTargetAccountConfiguration"
        operation.name = "GetTargetAccountConfiguration"
        operation.input = GetTargetAccountConfigurationRequest
        operation.output = GetTargetAccountConfigurationResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
      end)
      service.add_operation(:get_target_resource_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#GetTargetResourceType"
        operation.name = "GetTargetResourceType"
        operation.input = GetTargetResourceTypeRequest
        operation.output = GetTargetResourceTypeResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/targetResourceTypes/{resourceType}", "code" => 200}}
      end)
      service.add_operation(:list_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListActions"
        operation.name = "ListActions"
        operation.input = ListActionsRequest
        operation.output = ListActionsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/actions", "code" => 200}}
        operation[:paginator] = Paginators::ListActions.new
      end)
      service.add_operation(:list_experiment_resolved_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperimentResolvedTargets"
        operation.name = "ListExperimentResolvedTargets"
        operation.input = ListExperimentResolvedTargetsRequest
        operation.output = ListExperimentResolvedTargetsResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{experimentId}/resolvedTargets", "code" => 200}}
        operation[:paginator] = Paginators::ListExperimentResolvedTargets.new
      end)
      service.add_operation(:list_experiment_target_account_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperimentTargetAccountConfigurations"
        operation.name = "ListExperimentTargetAccountConfigurations"
        operation.input = ListExperimentTargetAccountConfigurationsRequest
        operation.output = ListExperimentTargetAccountConfigurationsResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments/{experimentId}/targetAccountConfigurations", "code" => 200}}
      end)
      service.add_operation(:list_experiment_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperimentTemplates"
        operation.name = "ListExperimentTemplates"
        operation.input = ListExperimentTemplatesRequest
        operation.output = ListExperimentTemplatesResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListExperimentTemplates.new
      end)
      service.add_operation(:list_experiments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListExperiments"
        operation.name = "ListExperiments"
        operation.input = ListExperimentsRequest
        operation.output = ListExperimentsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experiments", "code" => 200}}
        operation[:paginator] = Paginators::ListExperiments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_target_account_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListTargetAccountConfigurations"
        operation.name = "ListTargetAccountConfigurations"
        operation.input = ListTargetAccountConfigurationsRequest
        operation.output = ListTargetAccountConfigurationsResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListTargetAccountConfigurations.new
      end)
      service.add_operation(:list_target_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#ListTargetResourceTypes"
        operation.name = "ListTargetResourceTypes"
        operation.input = ListTargetResourceTypesRequest
        operation.output = ListTargetResourceTypesResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/targetResourceTypes", "code" => 200}}
        operation[:paginator] = Paginators::ListTargetResourceTypes.new
      end)
      service.add_operation(:start_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#StartExperiment"
        operation.name = "StartExperiment"
        operation.input = StartExperimentRequest
        operation.output = StartExperimentResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/experiments", "code" => 200}}
      end)
      service.add_operation(:stop_experiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#StopExperiment"
        operation.name = "StopExperiment"
        operation.input = StopExperimentRequest
        operation.output = StopExperimentResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/experiments/{id}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_experiment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UpdateExperimentTemplate"
        operation.name = "UpdateExperimentTemplate"
        operation.input = UpdateExperimentTemplateRequest
        operation.output = UpdateExperimentTemplateResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/experimentTemplates/{id}", "code" => 200}}
      end)
      service.add_operation(:update_safety_lever_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UpdateSafetyLeverState"
        operation.name = "UpdateSafetyLeverState"
        operation.input = UpdateSafetyLeverStateRequest
        operation.output = UpdateSafetyLeverStateResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/safetyLevers/{id}/state", "code" => 200}}
      end)
      service.add_operation(:update_target_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fis#UpdateTargetAccountConfiguration"
        operation.name = "UpdateTargetAccountConfiguration"
        operation.input = UpdateTargetAccountConfigurationRequest
        operation.output = UpdateTargetAccountConfigurationResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}", "code" => 200}}
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
