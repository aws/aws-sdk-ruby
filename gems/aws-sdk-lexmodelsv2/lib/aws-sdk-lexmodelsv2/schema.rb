# frozen_string_literal: true

# This is generated code!

module Aws::LexModelsV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActiveContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ActiveContext", name: "ActiveContext")
    ActiveContextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ActiveContextList", name: "ActiveContextList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ActiveContextName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ActiveContextName", name: "ActiveContextName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    AdvancedRecognitionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AdvancedRecognitionSetting", name: "AdvancedRecognitionSetting")
    AgentTurnResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AgentTurnResult", name: "AgentTurnResult")
    AgentTurnSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AgentTurnSpecification", name: "AgentTurnSpecification")
    AggregatedUtterancesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesFilter", name: "AggregatedUtterancesFilter")
    AggregatedUtterancesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesFilterName", name: "AggregatedUtterancesFilterName")
    AggregatedUtterancesFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesFilterOperator", name: "AggregatedUtterancesFilterOperator")
    AggregatedUtterancesFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesFilters", name: "AggregatedUtterancesFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AggregatedUtterancesSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesSortAttribute", name: "AggregatedUtterancesSortAttribute")
    AggregatedUtterancesSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesSortBy", name: "AggregatedUtterancesSortBy")
    AggregatedUtterancesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesSummary", name: "AggregatedUtterancesSummary")
    AggregatedUtterancesSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AggregatedUtterancesSummaryList", name: "AggregatedUtterancesSummaryList")
    AllowedInputTypes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AllowedInputTypes", name: "AllowedInputTypes")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AnalyticsBinByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsBinByList", name: "AnalyticsBinByList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AnalyticsBinByName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsBinByName", name: "AnalyticsBinByName")
    AnalyticsBinBySpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsBinBySpecification", name: "AnalyticsBinBySpecification")
    AnalyticsBinKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsBinKey", name: "AnalyticsBinKey")
    AnalyticsBinKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsBinKeys", name: "AnalyticsBinKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AnalyticsBinValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsBinValue", name: "AnalyticsBinValue")
    AnalyticsChannel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsChannel", name: "AnalyticsChannel", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AnalyticsCommonFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsCommonFilterName", name: "AnalyticsCommonFilterName")
    AnalyticsFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsFilterOperator", name: "AnalyticsFilterOperator")
    AnalyticsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsFilterValue", name: "AnalyticsFilterValue")
    AnalyticsFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsFilterValues", name: "AnalyticsFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AnalyticsGroupByValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsGroupByValue", name: "AnalyticsGroupByValue")
    AnalyticsIntentField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentField", name: "AnalyticsIntentField")
    AnalyticsIntentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentFilter", name: "AnalyticsIntentFilter")
    AnalyticsIntentFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentFilterName", name: "AnalyticsIntentFilterName")
    AnalyticsIntentFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentFilters", name: "AnalyticsIntentFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}})
    AnalyticsIntentGroupByKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentGroupByKey", name: "AnalyticsIntentGroupByKey")
    AnalyticsIntentGroupByKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentGroupByKeys", name: "AnalyticsIntentGroupByKeys")
    AnalyticsIntentGroupByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentGroupByList", name: "AnalyticsIntentGroupByList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    AnalyticsIntentGroupBySpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentGroupBySpecification", name: "AnalyticsIntentGroupBySpecification")
    AnalyticsIntentMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentMetric", name: "AnalyticsIntentMetric")
    AnalyticsIntentMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentMetricName", name: "AnalyticsIntentMetricName")
    AnalyticsIntentMetricResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentMetricResult", name: "AnalyticsIntentMetricResult")
    AnalyticsIntentMetricResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentMetricResults", name: "AnalyticsIntentMetricResults")
    AnalyticsIntentMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentMetrics", name: "AnalyticsIntentMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AnalyticsIntentNodeSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentNodeSummaries", name: "AnalyticsIntentNodeSummaries", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AnalyticsIntentNodeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentNodeSummary", name: "AnalyticsIntentNodeSummary")
    AnalyticsIntentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentResult", name: "AnalyticsIntentResult")
    AnalyticsIntentResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentResults", name: "AnalyticsIntentResults")
    AnalyticsIntentStageField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageField", name: "AnalyticsIntentStageField")
    AnalyticsIntentStageFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageFilter", name: "AnalyticsIntentStageFilter")
    AnalyticsIntentStageFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageFilterName", name: "AnalyticsIntentStageFilterName")
    AnalyticsIntentStageFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageFilters", name: "AnalyticsIntentStageFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}})
    AnalyticsIntentStageGroupByKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageGroupByKey", name: "AnalyticsIntentStageGroupByKey")
    AnalyticsIntentStageGroupByKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageGroupByKeys", name: "AnalyticsIntentStageGroupByKeys")
    AnalyticsIntentStageGroupByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageGroupByList", name: "AnalyticsIntentStageGroupByList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    AnalyticsIntentStageGroupBySpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageGroupBySpecification", name: "AnalyticsIntentStageGroupBySpecification")
    AnalyticsIntentStageMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageMetric", name: "AnalyticsIntentStageMetric")
    AnalyticsIntentStageMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageMetricName", name: "AnalyticsIntentStageMetricName")
    AnalyticsIntentStageMetricResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageMetricResult", name: "AnalyticsIntentStageMetricResult")
    AnalyticsIntentStageMetricResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageMetricResults", name: "AnalyticsIntentStageMetricResults")
    AnalyticsIntentStageMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageMetrics", name: "AnalyticsIntentStageMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AnalyticsIntentStageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageResult", name: "AnalyticsIntentStageResult")
    AnalyticsIntentStageResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsIntentStageResults", name: "AnalyticsIntentStageResults")
    AnalyticsInterval = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsInterval", name: "AnalyticsInterval")
    AnalyticsLongValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsLongValue", name: "AnalyticsLongValue")
    AnalyticsMetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsMetricStatistic", name: "AnalyticsMetricStatistic")
    AnalyticsMetricValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsMetricValue", name: "AnalyticsMetricValue")
    AnalyticsModality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsModality", name: "AnalyticsModality")
    AnalyticsNodeCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsNodeCount", name: "AnalyticsNodeCount")
    AnalyticsNodeLevel = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsNodeLevel", name: "AnalyticsNodeLevel", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    AnalyticsNodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsNodeType", name: "AnalyticsNodeType")
    AnalyticsOriginatingRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsOriginatingRequestId", name: "AnalyticsOriginatingRequestId")
    AnalyticsPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsPath", name: "AnalyticsPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    AnalyticsPathFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsPathFilter", name: "AnalyticsPathFilter")
    AnalyticsPathFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsPathFilters", name: "AnalyticsPathFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AnalyticsSessionField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionField", name: "AnalyticsSessionField")
    AnalyticsSessionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionFilter", name: "AnalyticsSessionFilter")
    AnalyticsSessionFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionFilterName", name: "AnalyticsSessionFilterName")
    AnalyticsSessionFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionFilters", name: "AnalyticsSessionFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AnalyticsSessionGroupByKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionGroupByKey", name: "AnalyticsSessionGroupByKey")
    AnalyticsSessionGroupByKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionGroupByKeys", name: "AnalyticsSessionGroupByKeys")
    AnalyticsSessionGroupByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionGroupByList", name: "AnalyticsSessionGroupByList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    AnalyticsSessionGroupBySpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionGroupBySpecification", name: "AnalyticsSessionGroupBySpecification")
    AnalyticsSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionId", name: "AnalyticsSessionId", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z._:-]$"})
    AnalyticsSessionMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionMetric", name: "AnalyticsSessionMetric")
    AnalyticsSessionMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionMetricName", name: "AnalyticsSessionMetricName")
    AnalyticsSessionMetricResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionMetricResult", name: "AnalyticsSessionMetricResult")
    AnalyticsSessionMetricResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionMetricResults", name: "AnalyticsSessionMetricResults")
    AnalyticsSessionMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionMetrics", name: "AnalyticsSessionMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    AnalyticsSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionResult", name: "AnalyticsSessionResult")
    AnalyticsSessionResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionResults", name: "AnalyticsSessionResults")
    AnalyticsSessionSortByName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSessionSortByName", name: "AnalyticsSessionSortByName")
    AnalyticsSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsSortOrder", name: "AnalyticsSortOrder")
    AnalyticsUtteranceAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceAttribute", name: "AnalyticsUtteranceAttribute")
    AnalyticsUtteranceAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceAttributeName", name: "AnalyticsUtteranceAttributeName")
    AnalyticsUtteranceAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceAttributeResult", name: "AnalyticsUtteranceAttributeResult")
    AnalyticsUtteranceAttributeResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceAttributeResults", name: "AnalyticsUtteranceAttributeResults")
    AnalyticsUtteranceAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceAttributes", name: "AnalyticsUtteranceAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AnalyticsUtteranceField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceField", name: "AnalyticsUtteranceField")
    AnalyticsUtteranceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceFilter", name: "AnalyticsUtteranceFilter")
    AnalyticsUtteranceFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceFilterName", name: "AnalyticsUtteranceFilterName")
    AnalyticsUtteranceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceFilters", name: "AnalyticsUtteranceFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}})
    AnalyticsUtteranceGroupByKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceGroupByKey", name: "AnalyticsUtteranceGroupByKey")
    AnalyticsUtteranceGroupByKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceGroupByKeys", name: "AnalyticsUtteranceGroupByKeys")
    AnalyticsUtteranceGroupByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceGroupByList", name: "AnalyticsUtteranceGroupByList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    AnalyticsUtteranceGroupBySpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceGroupBySpecification", name: "AnalyticsUtteranceGroupBySpecification")
    AnalyticsUtteranceMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceMetric", name: "AnalyticsUtteranceMetric")
    AnalyticsUtteranceMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceMetricName", name: "AnalyticsUtteranceMetricName")
    AnalyticsUtteranceMetricResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceMetricResult", name: "AnalyticsUtteranceMetricResult")
    AnalyticsUtteranceMetricResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceMetricResults", name: "AnalyticsUtteranceMetricResults")
    AnalyticsUtteranceMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceMetrics", name: "AnalyticsUtteranceMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AnalyticsUtteranceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceResult", name: "AnalyticsUtteranceResult")
    AnalyticsUtteranceResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceResults", name: "AnalyticsUtteranceResults")
    AnalyticsUtteranceSortByName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AnalyticsUtteranceSortByName", name: "AnalyticsUtteranceSortByName")
    AnswerField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AnswerField", name: "AnswerField")
    AssociatedTranscript = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AssociatedTranscript", name: "AssociatedTranscript")
    AssociatedTranscriptFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AssociatedTranscriptFilter", name: "AssociatedTranscriptFilter")
    AssociatedTranscriptFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AssociatedTranscriptFilterName", name: "AssociatedTranscriptFilterName")
    AssociatedTranscriptFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AssociatedTranscriptFilters", name: "AssociatedTranscriptFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AssociatedTranscriptList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AssociatedTranscriptList", name: "AssociatedTranscriptList")
    AttachmentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AttachmentTitle", name: "AttachmentTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    AttachmentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AttachmentUrl", name: "AttachmentUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    AudioAndDTMFInputSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AudioAndDTMFInputSpecification", name: "AudioAndDTMFInputSpecification")
    AudioFileS3Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#AudioFileS3Location", name: "AudioFileS3Location", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://([a-z0-9\\\\.-]+)/(.+)$"})
    AudioLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AudioLogDestination", name: "AudioLogDestination")
    AudioLogSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AudioLogSetting", name: "AudioLogSetting")
    AudioLogSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#AudioLogSettingsList", name: "AudioLogSettingsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AudioRecognitionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#AudioRecognitionStrategy", name: "AudioRecognitionStrategy")
    AudioSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#AudioSpecification", name: "AudioSpecification")
    BatchCreateCustomVocabularyItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BatchCreateCustomVocabularyItemRequest", name: "BatchCreateCustomVocabularyItemRequest")
    BatchCreateCustomVocabularyItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BatchCreateCustomVocabularyItemResponse", name: "BatchCreateCustomVocabularyItemResponse")
    BatchDeleteCustomVocabularyItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BatchDeleteCustomVocabularyItemRequest", name: "BatchDeleteCustomVocabularyItemRequest")
    BatchDeleteCustomVocabularyItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BatchDeleteCustomVocabularyItemResponse", name: "BatchDeleteCustomVocabularyItemResponse")
    BatchUpdateCustomVocabularyItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BatchUpdateCustomVocabularyItemRequest", name: "BatchUpdateCustomVocabularyItemRequest")
    BatchUpdateCustomVocabularyItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BatchUpdateCustomVocabularyItemResponse", name: "BatchUpdateCustomVocabularyItemResponse")
    BedrockGuardrailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BedrockGuardrailConfiguration", name: "BedrockGuardrailConfiguration")
    BedrockGuardrailIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BedrockGuardrailIdentifier", name: "BedrockGuardrailIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$"})
    BedrockGuardrailVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BedrockGuardrailVersion", name: "BedrockGuardrailVersion", traits: {"smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$"})
    BedrockKnowledgeBaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BedrockKnowledgeBaseArn", name: "BedrockKnowledgeBaseArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,40}:[0-9]{12}:knowledge-base\\/[A-Za-z0-9]{10}$|^[A-Za-z0-9]{10}$"})
    BedrockKnowledgeStoreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BedrockKnowledgeStoreConfiguration", name: "BedrockKnowledgeStoreConfiguration")
    BedrockKnowledgeStoreExactResponseFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BedrockKnowledgeStoreExactResponseFields", name: "BedrockKnowledgeStoreExactResponseFields")
    BedrockModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BedrockModelArn", name: "BedrockModelArn", traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model\\/[a-z0-9-]{1,63}[.]{1}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}$"})
    BedrockModelCustomPrompt = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BedrockModelCustomPrompt", name: "BedrockModelCustomPrompt", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}})
    BedrockModelSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BedrockModelSpecification", name: "BedrockModelSpecification")
    BedrockTraceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BedrockTraceStatus", name: "BedrockTraceStatus")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexmodelsv2#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BotAliasHistoryEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasHistoryEvent", name: "BotAliasHistoryEvent")
    BotAliasHistoryEventsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasHistoryEventsList", name: "BotAliasHistoryEventsList")
    BotAliasId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasId", name: "BotAliasId", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^(\\bTSTALIASID\\b|[0-9a-zA-Z]+)$"})
    BotAliasLocaleSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasLocaleSettings", name: "BotAliasLocaleSettings")
    BotAliasLocaleSettingsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasLocaleSettingsMap", name: "BotAliasLocaleSettingsMap", traits: {"smithy.api#length" => {"min" => 1}})
    BotAliasName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasName", name: "BotAliasName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\bAmazonLexTestAlias\\b|[0-9a-zA-Z][_-]?)+$"})
    BotAliasReplicaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasReplicaSummary", name: "BotAliasReplicaSummary")
    BotAliasReplicaSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasReplicaSummaryList", name: "BotAliasReplicaSummaryList")
    BotAliasReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasReplicationStatus", name: "BotAliasReplicationStatus")
    BotAliasStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasStatus", name: "BotAliasStatus")
    BotAliasSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasSummary", name: "BotAliasSummary")
    BotAliasSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasSummaryList", name: "BotAliasSummaryList")
    BotAliasTestExecutionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotAliasTestExecutionTarget", name: "BotAliasTestExecutionTarget")
    BotExportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotExportSpecification", name: "BotExportSpecification")
    BotFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotFilter", name: "BotFilter")
    BotFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotFilterName", name: "BotFilterName")
    BotFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotFilterOperator", name: "BotFilterOperator")
    BotFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotFilters", name: "BotFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    BotImportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotImportSpecification", name: "BotImportSpecification")
    BotLocaleExportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleExportSpecification", name: "BotLocaleExportSpecification")
    BotLocaleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleFilter", name: "BotLocaleFilter")
    BotLocaleFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleFilterName", name: "BotLocaleFilterName")
    BotLocaleFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleFilterOperator", name: "BotLocaleFilterOperator")
    BotLocaleFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleFilters", name: "BotLocaleFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    BotLocaleHistoryEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleHistoryEvent", name: "BotLocaleHistoryEvent")
    BotLocaleHistoryEventDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleHistoryEventDescription", name: "BotLocaleHistoryEventDescription")
    BotLocaleHistoryEventsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleHistoryEventsList", name: "BotLocaleHistoryEventsList")
    BotLocaleImportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleImportSpecification", name: "BotLocaleImportSpecification")
    BotLocaleSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleSortAttribute", name: "BotLocaleSortAttribute")
    BotLocaleSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleSortBy", name: "BotLocaleSortBy")
    BotLocaleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleStatus", name: "BotLocaleStatus")
    BotLocaleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleSummary", name: "BotLocaleSummary")
    BotLocaleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotLocaleSummaryList", name: "BotLocaleSummaryList")
    BotMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotMember", name: "BotMember")
    BotMembers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotMembers", name: "BotMembers", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BotRecommendationResultStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotRecommendationResultStatistics", name: "BotRecommendationResultStatistics")
    BotRecommendationResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotRecommendationResults", name: "BotRecommendationResults")
    BotRecommendationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotRecommendationStatus", name: "BotRecommendationStatus")
    BotRecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotRecommendationSummary", name: "BotRecommendationSummary")
    BotRecommendationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotRecommendationSummaryList", name: "BotRecommendationSummaryList")
    BotReplicaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotReplicaStatus", name: "BotReplicaStatus")
    BotReplicaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotReplicaSummary", name: "BotReplicaSummary")
    BotReplicaSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotReplicaSummaryList", name: "BotReplicaSummaryList")
    BotSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotSortAttribute", name: "BotSortAttribute")
    BotSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotSortBy", name: "BotSortBy")
    BotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotStatus", name: "BotStatus")
    BotSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotSummary", name: "BotSummary")
    BotSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotSummaryList", name: "BotSummaryList")
    BotType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotType", name: "BotType")
    BotVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BotVersion", name: "BotVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(DRAFT|[0-9]+)$"})
    BotVersionLocaleDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionLocaleDetails", name: "BotVersionLocaleDetails")
    BotVersionLocaleSpecification = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionLocaleSpecification", name: "BotVersionLocaleSpecification", traits: {"smithy.api#length" => {"min" => 1}})
    BotVersionReplicaSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionReplicaSortAttribute", name: "BotVersionReplicaSortAttribute")
    BotVersionReplicaSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionReplicaSortBy", name: "BotVersionReplicaSortBy")
    BotVersionReplicaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionReplicaSummary", name: "BotVersionReplicaSummary")
    BotVersionReplicaSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionReplicaSummaryList", name: "BotVersionReplicaSummaryList")
    BotVersionReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionReplicationStatus", name: "BotVersionReplicationStatus")
    BotVersionSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionSortAttribute", name: "BotVersionSortAttribute")
    BotVersionSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionSortBy", name: "BotVersionSortBy")
    BotVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionSummary", name: "BotVersionSummary")
    BotVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BotVersionSummaryList", name: "BotVersionSummaryList")
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexmodelsv2#BoxedBoolean", name: "BoxedBoolean")
    BuildBotLocaleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BuildBotLocaleRequest", name: "BuildBotLocaleRequest")
    BuildBotLocaleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BuildBotLocaleResponse", name: "BuildBotLocaleResponse")
    BuildtimeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BuildtimeSettings", name: "BuildtimeSettings")
    BuiltInIntentSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInIntentSortAttribute", name: "BuiltInIntentSortAttribute")
    BuiltInIntentSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInIntentSortBy", name: "BuiltInIntentSortBy")
    BuiltInIntentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInIntentSummary", name: "BuiltInIntentSummary")
    BuiltInIntentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInIntentSummaryList", name: "BuiltInIntentSummaryList")
    BuiltInOrCustomSlotTypeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInOrCustomSlotTypeId", name: "BuiltInOrCustomSlotTypeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^((AMAZON\\.)[a-zA-Z_]+?|[0-9a-zA-Z]+)$"})
    BuiltInSlotTypeSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInSlotTypeSortAttribute", name: "BuiltInSlotTypeSortAttribute")
    BuiltInSlotTypeSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInSlotTypeSortBy", name: "BuiltInSlotTypeSortBy")
    BuiltInSlotTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInSlotTypeSummary", name: "BuiltInSlotTypeSummary")
    BuiltInSlotTypeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInSlotTypeSummaryList", name: "BuiltInSlotTypeSummaryList")
    BuiltInsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#BuiltInsMaxResults", name: "BuiltInsMaxResults", traits: {"smithy.api#range" => {"min" => 20, "max" => 20}})
    Button = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#Button", name: "Button")
    ButtonText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ButtonText", name: "ButtonText", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ButtonValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ButtonValue", name: "ButtonValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ButtonsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ButtonsList", name: "ButtonsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ChildDirected = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexmodelsv2#ChildDirected", name: "ChildDirected", traits: {"smithy.api#default" => false})
    CloudWatchLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#CloudWatchLogGroupArn", name: "CloudWatchLogGroupArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:logs:[\\w\\-]+:[\\d]{12}:log-group:[\\.\\-_/#A-Za-z0-9]{1,512}(?::\\*)?$"})
    CloudWatchLogGroupLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CloudWatchLogGroupLogDestination", name: "CloudWatchLogGroupLogDestination")
    CodeHookInterfaceVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#CodeHookInterfaceVersion", name: "CodeHookInterfaceVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CodeHookSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CodeHookSpecification", name: "CodeHookSpecification")
    CompositeSlotTypeSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CompositeSlotTypeSetting", name: "CompositeSlotTypeSetting")
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#Condition", name: "Condition")
    ConditionExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ConditionExpression", name: "ConditionExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ConditionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ConditionKey", name: "ConditionKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ConditionKeyValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#ConditionKeyValueMap", name: "ConditionKeyValueMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ConditionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#ConditionMap", name: "ConditionMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ConditionOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ConditionOperator", name: "ConditionOperator", traits: {"smithy.api#length" => {"min" => 1}})
    ConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ConditionValue", name: "ConditionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ConditionalBranch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConditionalBranch", name: "ConditionalBranch")
    ConditionalBranches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ConditionalBranches", name: "ConditionalBranches", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    ConditionalSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConditionalSpecification", name: "ConditionalSpecification")
    ConfidenceThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lexmodelsv2#ConfidenceThreshold", name: "ConfidenceThreshold", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContextTimeToLiveInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#ContextTimeToLiveInSeconds", name: "ContextTimeToLiveInSeconds", traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    ContextTurnsToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#ContextTurnsToLive", name: "ContextTurnsToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ConversationEndState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ConversationEndState", name: "ConversationEndState")
    ConversationLevelIntentClassificationResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelIntentClassificationResultItem", name: "ConversationLevelIntentClassificationResultItem")
    ConversationLevelIntentClassificationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelIntentClassificationResults", name: "ConversationLevelIntentClassificationResults")
    ConversationLevelResultDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelResultDetail", name: "ConversationLevelResultDetail")
    ConversationLevelSlotResolutionResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelSlotResolutionResultItem", name: "ConversationLevelSlotResolutionResultItem")
    ConversationLevelSlotResolutionResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelSlotResolutionResults", name: "ConversationLevelSlotResolutionResults")
    ConversationLevelTestResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelTestResultItem", name: "ConversationLevelTestResultItem")
    ConversationLevelTestResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelTestResultItemList", name: "ConversationLevelTestResultItemList")
    ConversationLevelTestResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelTestResults", name: "ConversationLevelTestResults")
    ConversationLevelTestResultsFilterBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLevelTestResultsFilterBy", name: "ConversationLevelTestResultsFilterBy")
    ConversationLogSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLogSettings", name: "ConversationLogSettings")
    ConversationLogsDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLogsDataSource", name: "ConversationLogsDataSource")
    ConversationLogsDataSourceFilterBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLogsDataSourceFilterBy", name: "ConversationLogsDataSourceFilterBy")
    ConversationLogsInputModeFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ConversationLogsInputModeFilter", name: "ConversationLogsInputModeFilter")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#Count", name: "Count")
    CreateBotAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotAliasRequest", name: "CreateBotAliasRequest")
    CreateBotAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotAliasResponse", name: "CreateBotAliasResponse")
    CreateBotLocaleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotLocaleRequest", name: "CreateBotLocaleRequest")
    CreateBotLocaleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotLocaleResponse", name: "CreateBotLocaleResponse")
    CreateBotReplicaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotReplicaRequest", name: "CreateBotReplicaRequest")
    CreateBotReplicaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotReplicaResponse", name: "CreateBotReplicaResponse")
    CreateBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotRequest", name: "CreateBotRequest")
    CreateBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotResponse", name: "CreateBotResponse")
    CreateBotVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotVersionRequest", name: "CreateBotVersionRequest")
    CreateBotVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateBotVersionResponse", name: "CreateBotVersionResponse")
    CreateCustomVocabularyItemsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#CreateCustomVocabularyItemsList", name: "CreateCustomVocabularyItemsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CreateExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateExportRequest", name: "CreateExportRequest")
    CreateExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateExportResponse", name: "CreateExportResponse")
    CreateIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateIntentRequest", name: "CreateIntentRequest")
    CreateIntentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateIntentResponse", name: "CreateIntentResponse")
    CreateResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateResourcePolicyRequest", name: "CreateResourcePolicyRequest")
    CreateResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateResourcePolicyResponse", name: "CreateResourcePolicyResponse")
    CreateResourcePolicyStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateResourcePolicyStatementRequest", name: "CreateResourcePolicyStatementRequest")
    CreateResourcePolicyStatementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateResourcePolicyStatementResponse", name: "CreateResourcePolicyStatementResponse")
    CreateSlotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateSlotRequest", name: "CreateSlotRequest")
    CreateSlotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateSlotResponse", name: "CreateSlotResponse")
    CreateSlotTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateSlotTypeRequest", name: "CreateSlotTypeRequest")
    CreateSlotTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateSlotTypeResponse", name: "CreateSlotTypeResponse")
    CreateTestSetDiscrepancyReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateTestSetDiscrepancyReportRequest", name: "CreateTestSetDiscrepancyReportRequest")
    CreateTestSetDiscrepancyReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateTestSetDiscrepancyReportResponse", name: "CreateTestSetDiscrepancyReportResponse")
    CreateUploadUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateUploadUrlRequest", name: "CreateUploadUrlRequest")
    CreateUploadUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CreateUploadUrlResponse", name: "CreateUploadUrlResponse")
    CustomPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CustomPayload", name: "CustomPayload")
    CustomPayloadValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#CustomPayloadValue", name: "CustomPayloadValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CustomVocabularyEntryId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CustomVocabularyEntryId", name: "CustomVocabularyEntryId")
    CustomVocabularyExportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CustomVocabularyExportSpecification", name: "CustomVocabularyExportSpecification")
    CustomVocabularyImportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CustomVocabularyImportSpecification", name: "CustomVocabularyImportSpecification")
    CustomVocabularyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#CustomVocabularyItem", name: "CustomVocabularyItem")
    CustomVocabularyItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#CustomVocabularyItems", name: "CustomVocabularyItems")
    CustomVocabularyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#CustomVocabularyStatus", name: "CustomVocabularyStatus")
    DTMFCharacter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#DTMFCharacter", name: "DTMFCharacter", traits: {"smithy.api#pattern" => "^[A-D0-9#*]{1}$"})
    DTMFSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DTMFSpecification", name: "DTMFSpecification")
    DataPrivacy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DataPrivacy", name: "DataPrivacy")
    DataSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DataSourceConfiguration", name: "DataSourceConfiguration")
    DateRangeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DateRangeFilter", name: "DateRangeFilter")
    DefaultConditionalBranch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DefaultConditionalBranch", name: "DefaultConditionalBranch")
    DeleteBotAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotAliasRequest", name: "DeleteBotAliasRequest")
    DeleteBotAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotAliasResponse", name: "DeleteBotAliasResponse")
    DeleteBotLocaleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotLocaleRequest", name: "DeleteBotLocaleRequest")
    DeleteBotLocaleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotLocaleResponse", name: "DeleteBotLocaleResponse")
    DeleteBotReplicaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotReplicaRequest", name: "DeleteBotReplicaRequest")
    DeleteBotReplicaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotReplicaResponse", name: "DeleteBotReplicaResponse")
    DeleteBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotRequest", name: "DeleteBotRequest")
    DeleteBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotResponse", name: "DeleteBotResponse")
    DeleteBotVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotVersionRequest", name: "DeleteBotVersionRequest")
    DeleteBotVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteBotVersionResponse", name: "DeleteBotVersionResponse")
    DeleteCustomVocabularyItemsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#DeleteCustomVocabularyItemsList", name: "DeleteCustomVocabularyItemsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DeleteCustomVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteCustomVocabularyRequest", name: "DeleteCustomVocabularyRequest")
    DeleteCustomVocabularyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteCustomVocabularyResponse", name: "DeleteCustomVocabularyResponse")
    DeleteExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteExportRequest", name: "DeleteExportRequest")
    DeleteExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteExportResponse", name: "DeleteExportResponse")
    DeleteImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteImportRequest", name: "DeleteImportRequest")
    DeleteImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteImportResponse", name: "DeleteImportResponse")
    DeleteIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteIntentRequest", name: "DeleteIntentRequest")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteResourcePolicyStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteResourcePolicyStatementRequest", name: "DeleteResourcePolicyStatementRequest")
    DeleteResourcePolicyStatementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteResourcePolicyStatementResponse", name: "DeleteResourcePolicyStatementResponse")
    DeleteSlotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteSlotRequest", name: "DeleteSlotRequest")
    DeleteSlotTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteSlotTypeRequest", name: "DeleteSlotTypeRequest")
    DeleteTestSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteTestSetRequest", name: "DeleteTestSetRequest")
    DeleteUtterancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteUtterancesRequest", name: "DeleteUtterancesRequest")
    DeleteUtterancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DeleteUtterancesResponse", name: "DeleteUtterancesResponse")
    DescribeBotAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotAliasRequest", name: "DescribeBotAliasRequest")
    DescribeBotAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotAliasResponse", name: "DescribeBotAliasResponse")
    DescribeBotLocaleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotLocaleRequest", name: "DescribeBotLocaleRequest")
    DescribeBotLocaleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotLocaleResponse", name: "DescribeBotLocaleResponse")
    DescribeBotRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotRecommendationRequest", name: "DescribeBotRecommendationRequest")
    DescribeBotRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotRecommendationResponse", name: "DescribeBotRecommendationResponse")
    DescribeBotReplicaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotReplicaRequest", name: "DescribeBotReplicaRequest")
    DescribeBotReplicaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotReplicaResponse", name: "DescribeBotReplicaResponse")
    DescribeBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotRequest", name: "DescribeBotRequest")
    DescribeBotResourceGenerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotResourceGenerationRequest", name: "DescribeBotResourceGenerationRequest")
    DescribeBotResourceGenerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotResourceGenerationResponse", name: "DescribeBotResourceGenerationResponse")
    DescribeBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotResponse", name: "DescribeBotResponse")
    DescribeBotVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotVersionRequest", name: "DescribeBotVersionRequest")
    DescribeBotVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeBotVersionResponse", name: "DescribeBotVersionResponse")
    DescribeCustomVocabularyMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeCustomVocabularyMetadataRequest", name: "DescribeCustomVocabularyMetadataRequest")
    DescribeCustomVocabularyMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeCustomVocabularyMetadataResponse", name: "DescribeCustomVocabularyMetadataResponse")
    DescribeExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeExportRequest", name: "DescribeExportRequest")
    DescribeExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeExportResponse", name: "DescribeExportResponse")
    DescribeImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeImportRequest", name: "DescribeImportRequest")
    DescribeImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeImportResponse", name: "DescribeImportResponse")
    DescribeIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeIntentRequest", name: "DescribeIntentRequest")
    DescribeIntentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeIntentResponse", name: "DescribeIntentResponse")
    DescribeResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeResourcePolicyRequest", name: "DescribeResourcePolicyRequest")
    DescribeResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeResourcePolicyResponse", name: "DescribeResourcePolicyResponse")
    DescribeSlotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeSlotRequest", name: "DescribeSlotRequest")
    DescribeSlotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeSlotResponse", name: "DescribeSlotResponse")
    DescribeSlotTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeSlotTypeRequest", name: "DescribeSlotTypeRequest")
    DescribeSlotTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeSlotTypeResponse", name: "DescribeSlotTypeResponse")
    DescribeTestExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestExecutionRequest", name: "DescribeTestExecutionRequest")
    DescribeTestExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestExecutionResponse", name: "DescribeTestExecutionResponse")
    DescribeTestSetDiscrepancyReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestSetDiscrepancyReportRequest", name: "DescribeTestSetDiscrepancyReportRequest")
    DescribeTestSetDiscrepancyReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestSetDiscrepancyReportResponse", name: "DescribeTestSetDiscrepancyReportResponse")
    DescribeTestSetGenerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestSetGenerationRequest", name: "DescribeTestSetGenerationRequest")
    DescribeTestSetGenerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestSetGenerationResponse", name: "DescribeTestSetGenerationResponse")
    DescribeTestSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestSetRequest", name: "DescribeTestSetRequest")
    DescribeTestSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescribeTestSetResponse", name: "DescribeTestSetResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    DescriptiveBotBuilderSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DescriptiveBotBuilderSpecification", name: "DescriptiveBotBuilderSpecification")
    DialogAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DialogAction", name: "DialogAction")
    DialogActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#DialogActionType", name: "DialogActionType")
    DialogCodeHookInvocationSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DialogCodeHookInvocationSetting", name: "DialogCodeHookInvocationSetting")
    DialogCodeHookSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DialogCodeHookSettings", name: "DialogCodeHookSettings")
    DialogState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#DialogState", name: "DialogState")
    DomainEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#DomainEndpoint", name: "DomainEndpoint", traits: {"smithy.api#pattern" => "^(http|https):\\/\\/+[^\\s]+[\\w]$"})
    DraftBotVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#DraftBotVersion", name: "DraftBotVersion", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^DRAFT$"})
    Effect = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#Effect", name: "Effect")
    ElicitationCodeHookInvocationSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ElicitationCodeHookInvocationSetting", name: "ElicitationCodeHookInvocationSetting")
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexmodelsv2#Enabled", name: "Enabled", traits: {"smithy.api#default" => false})
    EncryptionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#EncryptionSetting", name: "EncryptionSetting")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ErrorCode", name: "ErrorCode")
    ErrorLogSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ErrorLogSettings", name: "ErrorLogSettings")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ErrorMessage", name: "ErrorMessage")
    ExactResponseFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ExactResponseFields", name: "ExactResponseFields")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ExceptionMessage", name: "ExceptionMessage")
    ExecutionErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ExecutionErrorDetails", name: "ExecutionErrorDetails")
    ExportFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ExportFilter", name: "ExportFilter")
    ExportFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ExportFilterName", name: "ExportFilterName")
    ExportFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ExportFilterOperator", name: "ExportFilterOperator")
    ExportFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ExportFilters", name: "ExportFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ExportResourceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ExportResourceSpecification", name: "ExportResourceSpecification")
    ExportSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ExportSortAttribute", name: "ExportSortAttribute")
    ExportSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ExportSortBy", name: "ExportSortBy")
    ExportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ExportStatus", name: "ExportStatus")
    ExportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ExportSummary", name: "ExportSummary")
    ExportSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ExportSummaryList", name: "ExportSummaryList")
    ExternalSourceSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ExternalSourceSetting", name: "ExternalSourceSetting")
    FailedCustomVocabularyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#FailedCustomVocabularyItem", name: "FailedCustomVocabularyItem")
    FailedCustomVocabularyItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#FailedCustomVocabularyItems", name: "FailedCustomVocabularyItems")
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#FailureReason", name: "FailureReason")
    FailureReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#FailureReasons", name: "FailureReasons")
    FilePassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#FilePassword", name: "FilePassword", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z_()\\s-]+$"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#FilterValues", name: "FilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FulfillmentCodeHookSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#FulfillmentCodeHookSettings", name: "FulfillmentCodeHookSettings")
    FulfillmentStartResponseDelay = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#FulfillmentStartResponseDelay", name: "FulfillmentStartResponseDelay", traits: {"smithy.api#range" => {"min" => 1, "max" => 900}})
    FulfillmentStartResponseSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#FulfillmentStartResponseSpecification", name: "FulfillmentStartResponseSpecification")
    FulfillmentTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#FulfillmentTimeout", name: "FulfillmentTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 900}})
    FulfillmentUpdateResponseFrequency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#FulfillmentUpdateResponseFrequency", name: "FulfillmentUpdateResponseFrequency", traits: {"smithy.api#range" => {"min" => 1, "max" => 900}})
    FulfillmentUpdateResponseSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#FulfillmentUpdateResponseSpecification", name: "FulfillmentUpdateResponseSpecification")
    FulfillmentUpdatesSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#FulfillmentUpdatesSpecification", name: "FulfillmentUpdatesSpecification")
    GenerateBotElementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GenerateBotElementRequest", name: "GenerateBotElementRequest")
    GenerateBotElementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GenerateBotElementResponse", name: "GenerateBotElementResponse")
    GenerationInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#GenerationInput", name: "GenerationInput", traits: {"smithy.api#length" => {"min" => 100, "max" => 2000}})
    GenerationSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GenerationSortBy", name: "GenerationSortBy")
    GenerationSortByAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#GenerationSortByAttribute", name: "GenerationSortByAttribute")
    GenerationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#GenerationStatus", name: "GenerationStatus")
    GenerationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GenerationSummary", name: "GenerationSummary")
    GenerationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#GenerationSummaryList", name: "GenerationSummaryList")
    GenerativeAISettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GenerativeAISettings", name: "GenerativeAISettings")
    GetTestExecutionArtifactsUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GetTestExecutionArtifactsUrlRequest", name: "GetTestExecutionArtifactsUrlRequest")
    GetTestExecutionArtifactsUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GetTestExecutionArtifactsUrlResponse", name: "GetTestExecutionArtifactsUrlResponse")
    GrammarSlotTypeSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GrammarSlotTypeSetting", name: "GrammarSlotTypeSetting")
    GrammarSlotTypeSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#GrammarSlotTypeSource", name: "GrammarSlotTypeSource")
    HitCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#HitCount", name: "HitCount")
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    ImageResponseCard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ImageResponseCard", name: "ImageResponseCard")
    ImportExportFileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ImportExportFileFormat", name: "ImportExportFileFormat")
    ImportExportFilePassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ImportExportFilePassword", name: "ImportExportFilePassword", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    ImportFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ImportFilter", name: "ImportFilter")
    ImportFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ImportFilterName", name: "ImportFilterName")
    ImportFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ImportFilterOperator", name: "ImportFilterOperator")
    ImportFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ImportFilters", name: "ImportFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ImportResourceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ImportResourceSpecification", name: "ImportResourceSpecification")
    ImportResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ImportResourceType", name: "ImportResourceType")
    ImportSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ImportSortAttribute", name: "ImportSortAttribute")
    ImportSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ImportSortBy", name: "ImportSortBy")
    ImportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ImportStatus", name: "ImportStatus")
    ImportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ImportSummary", name: "ImportSummary")
    ImportSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ImportSummaryList", name: "ImportSummaryList")
    ImportedResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ImportedResourceId", name: "ImportedResourceId", traits: {"smithy.api#length" => {"min" => 5, "max" => 10}, "smithy.api#pattern" => "^([0-9a-zA-Z_])+$"})
    IncludeField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#IncludeField", name: "IncludeField")
    InitialResponseSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#InitialResponseSetting", name: "InitialResponseSetting")
    InputContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#InputContext", name: "InputContext")
    InputContextsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#InputContextsList", name: "InputContextsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    InputSessionStateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#InputSessionStateSpecification", name: "InputSessionStateSpecification")
    IntentClassificationTestResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentClassificationTestResultItem", name: "IntentClassificationTestResultItem")
    IntentClassificationTestResultItemCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentClassificationTestResultItemCounts", name: "IntentClassificationTestResultItemCounts")
    IntentClassificationTestResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#IntentClassificationTestResultItemList", name: "IntentClassificationTestResultItemList")
    IntentClassificationTestResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentClassificationTestResults", name: "IntentClassificationTestResults")
    IntentClosingSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentClosingSetting", name: "IntentClosingSetting")
    IntentConfirmationSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentConfirmationSetting", name: "IntentConfirmationSetting")
    IntentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentFilter", name: "IntentFilter")
    IntentFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#IntentFilterName", name: "IntentFilterName")
    IntentFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#IntentFilterOperator", name: "IntentFilterOperator")
    IntentFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#IntentFilters", name: "IntentFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IntentLevelSlotResolutionTestResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentLevelSlotResolutionTestResultItem", name: "IntentLevelSlotResolutionTestResultItem")
    IntentLevelSlotResolutionTestResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#IntentLevelSlotResolutionTestResultItemList", name: "IntentLevelSlotResolutionTestResultItemList")
    IntentLevelSlotResolutionTestResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentLevelSlotResolutionTestResults", name: "IntentLevelSlotResolutionTestResults")
    IntentOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentOverride", name: "IntentOverride")
    IntentSignature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#IntentSignature", name: "IntentSignature")
    IntentSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#IntentSortAttribute", name: "IntentSortAttribute")
    IntentSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentSortBy", name: "IntentSortBy")
    IntentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#IntentState", name: "IntentState")
    IntentStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentStatistics", name: "IntentStatistics")
    IntentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#IntentSummary", name: "IntentSummary")
    IntentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#IntentSummaryList", name: "IntentSummaryList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvokedIntentSample = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#InvokedIntentSample", name: "InvokedIntentSample")
    InvokedIntentSamples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#InvokedIntentSamples", name: "InvokedIntentSamples")
    ItemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ItemId", name: "ItemId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    KendraConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#KendraConfiguration", name: "KendraConfiguration")
    KendraIndexArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#KendraIndexArn", name: "KendraIndexArn", traits: {"smithy.api#length" => {"min" => 32, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kendra:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:index\\/[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:kms:[\\w\\-]+:[\\d]{12}:(?:key\\/[\\w\\-]+|alias\\/[a-zA-Z0-9:\\/_\\-]{1,256})$"})
    LambdaARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#LambdaARN", name: "LambdaARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?$"})
    LambdaCodeHook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#LambdaCodeHook", name: "LambdaCodeHook")
    LexTranscriptFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#LexTranscriptFilter", name: "LexTranscriptFilter")
    ListAggregatedUtterancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListAggregatedUtterancesRequest", name: "ListAggregatedUtterancesRequest")
    ListAggregatedUtterancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListAggregatedUtterancesResponse", name: "ListAggregatedUtterancesResponse")
    ListBotAliasReplicasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotAliasReplicasRequest", name: "ListBotAliasReplicasRequest")
    ListBotAliasReplicasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotAliasReplicasResponse", name: "ListBotAliasReplicasResponse")
    ListBotAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotAliasesRequest", name: "ListBotAliasesRequest")
    ListBotAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotAliasesResponse", name: "ListBotAliasesResponse")
    ListBotLocalesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotLocalesRequest", name: "ListBotLocalesRequest")
    ListBotLocalesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotLocalesResponse", name: "ListBotLocalesResponse")
    ListBotRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotRecommendationsRequest", name: "ListBotRecommendationsRequest")
    ListBotRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotRecommendationsResponse", name: "ListBotRecommendationsResponse")
    ListBotReplicasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotReplicasRequest", name: "ListBotReplicasRequest")
    ListBotReplicasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotReplicasResponse", name: "ListBotReplicasResponse")
    ListBotResourceGenerationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotResourceGenerationsRequest", name: "ListBotResourceGenerationsRequest")
    ListBotResourceGenerationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotResourceGenerationsResponse", name: "ListBotResourceGenerationsResponse")
    ListBotVersionReplicasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotVersionReplicasRequest", name: "ListBotVersionReplicasRequest")
    ListBotVersionReplicasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotVersionReplicasResponse", name: "ListBotVersionReplicasResponse")
    ListBotVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotVersionsRequest", name: "ListBotVersionsRequest")
    ListBotVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotVersionsResponse", name: "ListBotVersionsResponse")
    ListBotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotsRequest", name: "ListBotsRequest")
    ListBotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBotsResponse", name: "ListBotsResponse")
    ListBuiltInIntentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBuiltInIntentsRequest", name: "ListBuiltInIntentsRequest")
    ListBuiltInIntentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBuiltInIntentsResponse", name: "ListBuiltInIntentsResponse")
    ListBuiltInSlotTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBuiltInSlotTypesRequest", name: "ListBuiltInSlotTypesRequest")
    ListBuiltInSlotTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListBuiltInSlotTypesResponse", name: "ListBuiltInSlotTypesResponse")
    ListCustomVocabularyItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListCustomVocabularyItemsRequest", name: "ListCustomVocabularyItemsRequest")
    ListCustomVocabularyItemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListCustomVocabularyItemsResponse", name: "ListCustomVocabularyItemsResponse")
    ListExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListExportsRequest", name: "ListExportsRequest")
    ListExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListExportsResponse", name: "ListExportsResponse")
    ListImportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListImportsRequest", name: "ListImportsRequest")
    ListImportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListImportsResponse", name: "ListImportsResponse")
    ListIntentMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentMetricsRequest", name: "ListIntentMetricsRequest")
    ListIntentMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentMetricsResponse", name: "ListIntentMetricsResponse")
    ListIntentPathsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentPathsRequest", name: "ListIntentPathsRequest")
    ListIntentPathsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentPathsResponse", name: "ListIntentPathsResponse")
    ListIntentStageMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentStageMetricsRequest", name: "ListIntentStageMetricsRequest")
    ListIntentStageMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentStageMetricsResponse", name: "ListIntentStageMetricsResponse")
    ListIntentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentsRequest", name: "ListIntentsRequest")
    ListIntentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListIntentsResponse", name: "ListIntentsResponse")
    ListRecommendedIntentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListRecommendedIntentsRequest", name: "ListRecommendedIntentsRequest")
    ListRecommendedIntentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListRecommendedIntentsResponse", name: "ListRecommendedIntentsResponse")
    ListSessionAnalyticsDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSessionAnalyticsDataRequest", name: "ListSessionAnalyticsDataRequest")
    ListSessionAnalyticsDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSessionAnalyticsDataResponse", name: "ListSessionAnalyticsDataResponse")
    ListSessionMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSessionMetricsRequest", name: "ListSessionMetricsRequest")
    ListSessionMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSessionMetricsResponse", name: "ListSessionMetricsResponse")
    ListSlotTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSlotTypesRequest", name: "ListSlotTypesRequest")
    ListSlotTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSlotTypesResponse", name: "ListSlotTypesResponse")
    ListSlotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSlotsRequest", name: "ListSlotsRequest")
    ListSlotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListSlotsResponse", name: "ListSlotsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTestExecutionResultItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestExecutionResultItemsRequest", name: "ListTestExecutionResultItemsRequest")
    ListTestExecutionResultItemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestExecutionResultItemsResponse", name: "ListTestExecutionResultItemsResponse")
    ListTestExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestExecutionsRequest", name: "ListTestExecutionsRequest")
    ListTestExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestExecutionsResponse", name: "ListTestExecutionsResponse")
    ListTestSetRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestSetRecordsRequest", name: "ListTestSetRecordsRequest")
    ListTestSetRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestSetRecordsResponse", name: "ListTestSetRecordsResponse")
    ListTestSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestSetsRequest", name: "ListTestSetsRequest")
    ListTestSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListTestSetsResponse", name: "ListTestSetsResponse")
    ListUtteranceAnalyticsDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListUtteranceAnalyticsDataRequest", name: "ListUtteranceAnalyticsDataRequest")
    ListUtteranceAnalyticsDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListUtteranceAnalyticsDataResponse", name: "ListUtteranceAnalyticsDataResponse")
    ListUtteranceMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListUtteranceMetricsRequest", name: "ListUtteranceMetricsRequest")
    ListUtteranceMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ListUtteranceMetricsResponse", name: "ListUtteranceMetricsResponse")
    LocaleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#LocaleId", name: "LocaleId")
    LocaleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#LocaleName", name: "LocaleName")
    LogPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#LogPrefix", name: "LogPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxUtteranceDigits = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#MaxUtteranceDigits", name: "MaxUtteranceDigits", traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}})
    MergeStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#MergeStrategy", name: "MergeStrategy")
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#Message", name: "Message")
    MessageGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#MessageGroup", name: "MessageGroup")
    MessageGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#MessageGroupsList", name: "MessageGroupsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MessageSelectionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#MessageSelectionStrategy", name: "MessageSelectionStrategy")
    MessageVariationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#MessageVariationsList", name: "MessageVariationsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    MissedCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#MissedCount", name: "MissedCount")
    MultipleValuesSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#MultipleValuesSetting", name: "MultipleValuesSetting")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$"})
    NewCustomVocabularyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#NewCustomVocabularyItem", name: "NewCustomVocabularyItem")
    NextIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#NextIndex", name: "NextIndex", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#NextToken", name: "NextToken")
    NluImprovementSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#NluImprovementSpecification", name: "NluImprovementSpecification")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    NumericalBotVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#NumericalBotVersion", name: "NumericalBotVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^[0-9]+$"})
    OSIncludeFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#OSIncludeFields", name: "OSIncludeFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    OSIndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#OSIndexName", name: "OSIndexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?![_-])[a-z0-9][a-z0-9_\\-]{0,254}$"})
    ObfuscationSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ObfuscationSetting", name: "ObfuscationSetting")
    ObfuscationSettingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#ObfuscationSettingType", name: "ObfuscationSettingType")
    ObjectPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ObjectPrefix", name: "ObjectPrefix", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\/]?+[a-zA-Z0-9!_.*'()-]+(\\/[a-zA-Z0-9!_.*'()-]+)*$"})
    ObjectPrefixes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ObjectPrefixes", name: "ObjectPrefixes", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    OpensearchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#OpensearchConfiguration", name: "OpensearchConfiguration")
    Operation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Operation", name: "Operation", traits: {"smithy.api#length" => {"min" => 5, "max" => 50}, "smithy.api#pattern" => "^lex:[a-zA-Z*]+$"})
    OperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#OperationList", name: "OperationList")
    OutputContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#OutputContext", name: "OutputContext")
    OutputContextsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#OutputContextsList", name: "OutputContextsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    OverallTestResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#OverallTestResultItem", name: "OverallTestResultItem")
    OverallTestResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#OverallTestResultItemList", name: "OverallTestResultItemList")
    OverallTestResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#OverallTestResults", name: "OverallTestResults")
    ParentBotNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ParentBotNetwork", name: "ParentBotNetwork")
    ParentBotNetworks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#ParentBotNetworks", name: "ParentBotNetworks", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    PathFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#PathFormat", name: "PathFormat")
    Phrase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Phrase", name: "Phrase", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PlainTextMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#PlainTextMessage", name: "PlainTextMessage")
    PlainTextMessageValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#PlainTextMessageValue", name: "PlainTextMessageValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 2}})
    PostDialogCodeHookInvocationSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#PostDialogCodeHookInvocationSpecification", name: "PostDialogCodeHookInvocationSpecification")
    PostFulfillmentStatusSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#PostFulfillmentStatusSpecification", name: "PostFulfillmentStatusSpecification")
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    PresignedS3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#PresignedS3Url", name: "PresignedS3Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Principal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#Principal", name: "Principal")
    PrincipalArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#PrincipalArn", name: "PrincipalArn", traits: {"smithy.api#length" => {"min" => 30, "max" => 1024}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:(root|(user|role)/.*)$"})
    PrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#PrincipalList", name: "PrincipalList")
    PriorityValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#PriorityValue", name: "PriorityValue", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PromptAttempt = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#PromptAttempt", name: "PromptAttempt")
    PromptAttemptSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#PromptAttemptSpecification", name: "PromptAttemptSpecification")
    PromptAttemptsSpecificationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#PromptAttemptsSpecificationMap", name: "PromptAttemptsSpecificationMap")
    PromptMaxRetries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#PromptMaxRetries", name: "PromptMaxRetries", traits: {"smithy.api#range" => {"min" => 0, "max" => 5}})
    PromptSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#PromptSpecification", name: "PromptSpecification")
    QInConnectAssistantARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#QInConnectAssistantARN", name: "QInConnectAssistantARN", traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"})
    QInConnectAssistantConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#QInConnectAssistantConfiguration", name: "QInConnectAssistantConfiguration")
    QInConnectIntentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#QInConnectIntentConfiguration", name: "QInConnectIntentConfiguration")
    QnAIntentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#QnAIntentConfiguration", name: "QnAIntentConfiguration")
    QnAKendraConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#QnAKendraConfiguration", name: "QnAKendraConfiguration")
    QueryFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#QueryFilterString", name: "QueryFilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    QuestionField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#QuestionField", name: "QuestionField")
    RecommendedAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#RecommendedAction", name: "RecommendedAction")
    RecommendedActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#RecommendedActions", name: "RecommendedActions")
    RecommendedIntentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#RecommendedIntentSummary", name: "RecommendedIntentSummary")
    RecommendedIntentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#RecommendedIntentSummaryList", name: "RecommendedIntentSummaryList")
    RecordNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#RecordNumber", name: "RecordNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 200000}})
    RegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#RegexPattern", name: "RegexPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    RelativeAggregationDuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#RelativeAggregationDuration", name: "RelativeAggregationDuration")
    ReplicaRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ReplicaRegion", name: "ReplicaRegion", traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    ResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#ResourceCount", name: "ResourceCount")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ResponseSpecification", name: "ResponseSpecification")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    RevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#RevisionId", name: "RevisionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^[0-9]+$"})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 32, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/.*$"})
    RuntimeHintDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#RuntimeHintDetails", name: "RuntimeHintDetails")
    RuntimeHintPhrase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#RuntimeHintPhrase", name: "RuntimeHintPhrase", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    RuntimeHintValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#RuntimeHintValue", name: "RuntimeHintValue")
    RuntimeHintValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#RuntimeHintValuesList", name: "RuntimeHintValuesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RuntimeHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#RuntimeHints", name: "RuntimeHints")
    RuntimeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#RuntimeSettings", name: "RuntimeSettings")
    S3BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#S3BucketArn", name: "S3BucketArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w\\-]+:s3:::[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3BucketLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#S3BucketLogDestination", name: "S3BucketLogDestination")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3BucketTranscriptSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#S3BucketTranscriptSource", name: "S3BucketTranscriptSource")
    S3ObjectPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#S3ObjectPath", name: "S3ObjectPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\.\\-\\!\\*\\_\\'\\(\\)a-zA-Z0-9][\\.\\-\\!\\*\\_\\'\\(\\)\\/a-zA-Z0-9]*$"})
    SSMLMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SSMLMessage", name: "SSMLMessage")
    SSMLMessageValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#SSMLMessageValue", name: "SSMLMessageValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    SampleUtterance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SampleUtterance", name: "SampleUtterance")
    SampleUtteranceGenerationSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SampleUtteranceGenerationSpecification", name: "SampleUtteranceGenerationSpecification")
    SampleUtterancesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#SampleUtterancesCount", name: "SampleUtterancesCount")
    SampleUtterancesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SampleUtterancesList", name: "SampleUtterancesList")
    SampleValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SampleValue", name: "SampleValue")
    SearchAssociatedTranscriptsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SearchAssociatedTranscriptsRequest", name: "SearchAssociatedTranscriptsRequest")
    SearchAssociatedTranscriptsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SearchAssociatedTranscriptsResponse", name: "SearchAssociatedTranscriptsResponse")
    SearchOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SearchOrder", name: "SearchOrder")
    SentimentAnalysisSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SentimentAnalysisSettings", name: "SentimentAnalysisSettings")
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#ServicePrincipal", name: "ServicePrincipal", traits: {"smithy.api#length" => {"min" => 15, "max" => 1024}, "smithy.api#pattern" => "^[0-9a-zA-Z_.]+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionDataSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SessionDataSortBy", name: "SessionDataSortBy")
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z._:-]+$"})
    SessionSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SessionSpecification", name: "SessionSpecification")
    SessionSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SessionSpecifications", name: "SessionSpecifications")
    SessionTTL = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#SessionTTL", name: "SessionTTL", traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    SkipResourceInUseCheck = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexmodelsv2#SkipResourceInUseCheck", name: "SkipResourceInUseCheck", traits: {"smithy.api#default" => false})
    SlotCaptureSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotCaptureSetting", name: "SlotCaptureSetting")
    SlotConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotConstraint", name: "SlotConstraint")
    SlotDefaultValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotDefaultValue", name: "SlotDefaultValue")
    SlotDefaultValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotDefaultValueList", name: "SlotDefaultValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SlotDefaultValueSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotDefaultValueSpecification", name: "SlotDefaultValueSpecification")
    SlotDefaultValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#SlotDefaultValueString", name: "SlotDefaultValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 202}})
    SlotFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotFilter", name: "SlotFilter")
    SlotFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotFilterName", name: "SlotFilterName")
    SlotFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotFilterOperator", name: "SlotFilterOperator")
    SlotFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotFilters", name: "SlotFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SlotHintsIntentMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#SlotHintsIntentMap", name: "SlotHintsIntentMap")
    SlotHintsSlotMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#SlotHintsSlotMap", name: "SlotHintsSlotMap")
    SlotPrioritiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotPrioritiesList", name: "SlotPrioritiesList")
    SlotPriority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotPriority", name: "SlotPriority")
    SlotResolutionImprovementSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotResolutionImprovementSpecification", name: "SlotResolutionImprovementSpecification")
    SlotResolutionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotResolutionSetting", name: "SlotResolutionSetting")
    SlotResolutionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotResolutionStrategy", name: "SlotResolutionStrategy")
    SlotResolutionTestResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotResolutionTestResultItem", name: "SlotResolutionTestResultItem")
    SlotResolutionTestResultItemCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotResolutionTestResultItemCounts", name: "SlotResolutionTestResultItemCounts")
    SlotResolutionTestResultItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotResolutionTestResultItems", name: "SlotResolutionTestResultItems")
    SlotShape = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotShape", name: "SlotShape")
    SlotSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotSortAttribute", name: "SlotSortAttribute")
    SlotSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotSortBy", name: "SlotSortBy")
    SlotSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotSummary", name: "SlotSummary")
    SlotSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotSummaryList", name: "SlotSummaryList")
    SlotTypeCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeCategory", name: "SlotTypeCategory")
    SlotTypeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeFilter", name: "SlotTypeFilter")
    SlotTypeFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeFilterName", name: "SlotTypeFilterName")
    SlotTypeFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeFilterOperator", name: "SlotTypeFilterOperator")
    SlotTypeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeFilters", name: "SlotTypeFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SlotTypeSignature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeSignature", name: "SlotTypeSignature")
    SlotTypeSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeSortAttribute", name: "SlotTypeSortAttribute")
    SlotTypeSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeSortBy", name: "SlotTypeSortBy")
    SlotTypeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeStatistics", name: "SlotTypeStatistics")
    SlotTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeSummary", name: "SlotTypeSummary")
    SlotTypeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeSummaryList", name: "SlotTypeSummaryList")
    SlotTypeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeValue", name: "SlotTypeValue")
    SlotTypeValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotTypeValues", name: "SlotTypeValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    SlotValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotValue", name: "SlotValue")
    SlotValueElicitationSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotValueElicitationSetting", name: "SlotValueElicitationSetting")
    SlotValueOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotValueOverride", name: "SlotValueOverride")
    SlotValueOverrideMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#SlotValueOverrideMap", name: "SlotValueOverrideMap")
    SlotValueRegexFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotValueRegexFilter", name: "SlotValueRegexFilter")
    SlotValueResolutionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SlotValueResolutionStrategy", name: "SlotValueResolutionStrategy")
    SlotValueSelectionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SlotValueSelectionSetting", name: "SlotValueSelectionSetting")
    SlotValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SlotValues", name: "SlotValues")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#SortOrder", name: "SortOrder")
    Specifications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#Specifications", name: "Specifications")
    StartBotRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartBotRecommendationRequest", name: "StartBotRecommendationRequest")
    StartBotRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartBotRecommendationResponse", name: "StartBotRecommendationResponse")
    StartBotResourceGenerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartBotResourceGenerationRequest", name: "StartBotResourceGenerationRequest")
    StartBotResourceGenerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartBotResourceGenerationResponse", name: "StartBotResourceGenerationResponse")
    StartImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartImportRequest", name: "StartImportRequest")
    StartImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartImportResponse", name: "StartImportResponse")
    StartTestExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartTestExecutionRequest", name: "StartTestExecutionRequest")
    StartTestExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartTestExecutionResponse", name: "StartTestExecutionResponse")
    StartTestSetGenerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartTestSetGenerationRequest", name: "StartTestSetGenerationRequest")
    StartTestSetGenerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StartTestSetGenerationResponse", name: "StartTestSetGenerationResponse")
    StillWaitingResponseFrequency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#StillWaitingResponseFrequency", name: "StillWaitingResponseFrequency", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    StillWaitingResponseSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StillWaitingResponseSpecification", name: "StillWaitingResponseSpecification")
    StillWaitingResponseTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#StillWaitingResponseTimeout", name: "StillWaitingResponseTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 900}})
    StopBotRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StopBotRecommendationRequest", name: "StopBotRecommendationRequest")
    StopBotRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#StopBotRecommendationResponse", name: "StopBotRecommendationResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#String", name: "String")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#StringMap", name: "StringMap")
    SubSlotExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#SubSlotExpression", name: "SubSlotExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 640}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-\\s\\(\\)]+$"})
    SubSlotSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SubSlotSetting", name: "SubSlotSetting")
    SubSlotSpecificationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#SubSlotSpecificationMap", name: "SubSlotSpecificationMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    SubSlotTypeComposition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SubSlotTypeComposition", name: "SubSlotTypeComposition")
    SubSlotTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SubSlotTypeList", name: "SubSlotTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    SubSlotValueElicitationSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#SubSlotValueElicitationSetting", name: "SubSlotValueElicitationSetting")
    SynonymList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#SynonymList", name: "SynonymList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TestExecutionApiMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionApiMode", name: "TestExecutionApiMode")
    TestExecutionModality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionModality", name: "TestExecutionModality")
    TestExecutionResultFilterBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionResultFilterBy", name: "TestExecutionResultFilterBy")
    TestExecutionResultItems = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionResultItems", name: "TestExecutionResultItems")
    TestExecutionSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionSortAttribute", name: "TestExecutionSortAttribute")
    TestExecutionSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionSortBy", name: "TestExecutionSortBy")
    TestExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionStatus", name: "TestExecutionStatus")
    TestExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionSummary", name: "TestExecutionSummary")
    TestExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionSummaryList", name: "TestExecutionSummaryList")
    TestExecutionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestExecutionTarget", name: "TestExecutionTarget")
    TestResultMatchStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestResultMatchStatus", name: "TestResultMatchStatus")
    TestResultMatchStatusCountMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#TestResultMatchStatusCountMap", name: "TestResultMatchStatusCountMap")
    TestResultSlotName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#TestResultSlotName", name: "TestResultSlotName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([0-9a-zA-Z][_.-]?)+$"})
    TestResultTypeFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestResultTypeFilter", name: "TestResultTypeFilter")
    TestSetAgentPrompt = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#TestSetAgentPrompt", name: "TestSetAgentPrompt", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TestSetConversationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#TestSetConversationId", name: "TestSetConversationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?)+$"})
    TestSetDiscrepancyErrors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetDiscrepancyErrors", name: "TestSetDiscrepancyErrors")
    TestSetDiscrepancyReportBotAliasTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetDiscrepancyReportBotAliasTarget", name: "TestSetDiscrepancyReportBotAliasTarget")
    TestSetDiscrepancyReportResourceTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetDiscrepancyReportResourceTarget", name: "TestSetDiscrepancyReportResourceTarget")
    TestSetDiscrepancyReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestSetDiscrepancyReportStatus", name: "TestSetDiscrepancyReportStatus")
    TestSetExportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetExportSpecification", name: "TestSetExportSpecification")
    TestSetGenerationDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetGenerationDataSource", name: "TestSetGenerationDataSource")
    TestSetGenerationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestSetGenerationStatus", name: "TestSetGenerationStatus")
    TestSetImportInputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetImportInputLocation", name: "TestSetImportInputLocation")
    TestSetImportResourceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetImportResourceSpecification", name: "TestSetImportResourceSpecification")
    TestSetIntentDiscrepancyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetIntentDiscrepancyItem", name: "TestSetIntentDiscrepancyItem")
    TestSetIntentDiscrepancyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#TestSetIntentDiscrepancyList", name: "TestSetIntentDiscrepancyList")
    TestSetModality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestSetModality", name: "TestSetModality")
    TestSetSlotDiscrepancyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetSlotDiscrepancyItem", name: "TestSetSlotDiscrepancyItem")
    TestSetSlotDiscrepancyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#TestSetSlotDiscrepancyList", name: "TestSetSlotDiscrepancyList")
    TestSetSortAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestSetSortAttribute", name: "TestSetSortAttribute")
    TestSetSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetSortBy", name: "TestSetSortBy")
    TestSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TestSetStatus", name: "TestSetStatus")
    TestSetStorageLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetStorageLocation", name: "TestSetStorageLocation")
    TestSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetSummary", name: "TestSetSummary")
    TestSetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#TestSetSummaryList", name: "TestSetSummaryList")
    TestSetTurnRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetTurnRecord", name: "TestSetTurnRecord")
    TestSetTurnRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#TestSetTurnRecordList", name: "TestSetTurnRecordList")
    TestSetTurnResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TestSetTurnResult", name: "TestSetTurnResult")
    TestSetUtteranceText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#TestSetUtteranceText", name: "TestSetUtteranceText", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TextInputSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TextInputSpecification", name: "TextInputSpecification")
    TextLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TextLogDestination", name: "TextLogDestination")
    TextLogSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TextLogSetting", name: "TextLogSetting")
    TextLogSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#TextLogSettingsList", name: "TextLogSettingsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeDimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TimeDimension", name: "TimeDimension")
    TimeInMilliSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#TimeInMilliSeconds", name: "TimeInMilliSeconds", traits: {"smithy.api#range" => {"min" => 1}})
    TimeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#TimeValue", name: "TimeValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lexmodelsv2#Timestamp", name: "Timestamp")
    Transcript = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Transcript", name: "Transcript", traits: {"smithy.api#length" => {"min" => 1, "max" => 6000000}, "smithy.api#pattern" => ".*"})
    TranscriptFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TranscriptFilter", name: "TranscriptFilter")
    TranscriptFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#TranscriptFormat", name: "TranscriptFormat")
    TranscriptSourceSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TranscriptSourceSetting", name: "TranscriptSourceSetting")
    TurnNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#TurnNumber", name: "TurnNumber", traits: {"smithy.api#range" => {"min" => 0, "max" => 30}})
    TurnSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#TurnSpecification", name: "TurnSpecification")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBotAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotAliasRequest", name: "UpdateBotAliasRequest")
    UpdateBotAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotAliasResponse", name: "UpdateBotAliasResponse")
    UpdateBotLocaleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotLocaleRequest", name: "UpdateBotLocaleRequest")
    UpdateBotLocaleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotLocaleResponse", name: "UpdateBotLocaleResponse")
    UpdateBotRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotRecommendationRequest", name: "UpdateBotRecommendationRequest")
    UpdateBotRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotRecommendationResponse", name: "UpdateBotRecommendationResponse")
    UpdateBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotRequest", name: "UpdateBotRequest")
    UpdateBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateBotResponse", name: "UpdateBotResponse")
    UpdateCustomVocabularyItemsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#UpdateCustomVocabularyItemsList", name: "UpdateCustomVocabularyItemsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    UpdateExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateExportRequest", name: "UpdateExportRequest")
    UpdateExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateExportResponse", name: "UpdateExportResponse")
    UpdateIntentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateIntentRequest", name: "UpdateIntentRequest")
    UpdateIntentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateIntentResponse", name: "UpdateIntentResponse")
    UpdateResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateResourcePolicyRequest", name: "UpdateResourcePolicyRequest")
    UpdateResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateResourcePolicyResponse", name: "UpdateResourcePolicyResponse")
    UpdateSlotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateSlotRequest", name: "UpdateSlotRequest")
    UpdateSlotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateSlotResponse", name: "UpdateSlotResponse")
    UpdateSlotTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateSlotTypeRequest", name: "UpdateSlotTypeRequest")
    UpdateSlotTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateSlotTypeResponse", name: "UpdateSlotTypeResponse")
    UpdateTestSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateTestSetRequest", name: "UpdateTestSetRequest")
    UpdateTestSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UpdateTestSetResponse", name: "UpdateTestSetResponse")
    UserTurnInputSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnInputSpecification", name: "UserTurnInputSpecification")
    UserTurnIntentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnIntentOutput", name: "UserTurnIntentOutput")
    UserTurnOutputSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnOutputSpecification", name: "UserTurnOutputSpecification")
    UserTurnResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnResult", name: "UserTurnResult")
    UserTurnSlotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnSlotOutput", name: "UserTurnSlotOutput")
    UserTurnSlotOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnSlotOutputList", name: "UserTurnSlotOutputList")
    UserTurnSlotOutputMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnSlotOutputMap", name: "UserTurnSlotOutputMap")
    UserTurnSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UserTurnSpecification", name: "UserTurnSpecification")
    Utterance = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Utterance", name: "Utterance")
    UtteranceAggregationDuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceAggregationDuration", name: "UtteranceAggregationDuration")
    UtteranceAudioInputSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceAudioInputSpecification", name: "UtteranceAudioInputSpecification")
    UtteranceBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceBotResponse", name: "UtteranceBotResponse")
    UtteranceBotResponses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceBotResponses", name: "UtteranceBotResponses")
    UtteranceContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceContentType", name: "UtteranceContentType")
    UtteranceDataSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceDataSortBy", name: "UtteranceDataSortBy")
    UtteranceInputSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceInputSpecification", name: "UtteranceInputSpecification")
    UtteranceLevelTestResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceLevelTestResultItem", name: "UtteranceLevelTestResultItem")
    UtteranceLevelTestResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceLevelTestResultItemList", name: "UtteranceLevelTestResultItemList")
    UtteranceLevelTestResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceLevelTestResults", name: "UtteranceLevelTestResults")
    UtteranceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceSpecification", name: "UtteranceSpecification")
    UtteranceSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceSpecifications", name: "UtteranceSpecifications")
    UtteranceUnderstood = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexmodelsv2#UtteranceUnderstood", name: "UtteranceUnderstood", traits: {"smithy.api#default" => false})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    VoiceEngine = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexmodelsv2#VoiceEngine", name: "VoiceEngine")
    VoiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexmodelsv2#VoiceId", name: "VoiceId")
    VoiceSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#VoiceSettings", name: "VoiceSettings")
    WaitAndContinueSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexmodelsv2#WaitAndContinueSpecification", name: "WaitAndContinueSpecification")
    Weight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexmodelsv2#Weight", name: "Weight", traits: {"smithy.api#range" => {"min" => 0, "max" => 3}})

    ActiveContext.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextName, name: "name", traits: {"smithy.api#required" => {}}))
    ActiveContext.type = Types::ActiveContext
    ActiveContextList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContext, name: "member")
    AdvancedRecognitionSetting.add_member(:audio_recognition_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioRecognitionStrategy, name: "audioRecognitionStrategy"))
    AdvancedRecognitionSetting.type = Types::AdvancedRecognitionSetting
    AgentTurnResult.add_member(:expected_agent_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetAgentPrompt, name: "expectedAgentPrompt", traits: {"smithy.api#required" => {}}))
    AgentTurnResult.add_member(:actual_agent_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetAgentPrompt, name: "actualAgentPrompt"))
    AgentTurnResult.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionErrorDetails, name: "errorDetails"))
    AgentTurnResult.add_member(:actual_elicited_slot, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultSlotName, name: "actualElicitedSlot"))
    AgentTurnResult.add_member(:actual_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "actualIntent"))
    AgentTurnResult.type = Types::AgentTurnResult
    AgentTurnSpecification.add_member(:agent_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetAgentPrompt, name: "agentPrompt", traits: {"smithy.api#required" => {}}))
    AgentTurnSpecification.type = Types::AgentTurnSpecification
    AggregatedUtterancesFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AggregatedUtterancesFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AggregatedUtterancesFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    AggregatedUtterancesFilter.type = Types::AggregatedUtterancesFilter
    AggregatedUtterancesFilterName.add_member(:utterance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Utterance", traits: {"smithy.api#enumValue" => "Utterance"}))
    AggregatedUtterancesFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    AggregatedUtterancesFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    AggregatedUtterancesFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesFilter, name: "member")
    AggregatedUtterancesSortAttribute.add_member(:hit_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HitCount", traits: {"smithy.api#enumValue" => "HitCount"}))
    AggregatedUtterancesSortAttribute.add_member(:missed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissedCount", traits: {"smithy.api#enumValue" => "MissedCount"}))
    AggregatedUtterancesSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    AggregatedUtterancesSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    AggregatedUtterancesSortBy.type = Types::AggregatedUtterancesSortBy
    AggregatedUtterancesSummary.add_member(:utterance, ::Smithy::Schema::Shapes::MemberShape.new(target: Utterance, name: "utterance"))
    AggregatedUtterancesSummary.add_member(:hit_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HitCount, name: "hitCount"))
    AggregatedUtterancesSummary.add_member(:missed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MissedCount, name: "missedCount"))
    AggregatedUtterancesSummary.add_member(:utterance_first_recorded_in_aggregation_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "utteranceFirstRecordedInAggregationDuration"))
    AggregatedUtterancesSummary.add_member(:utterance_last_recorded_in_aggregation_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "utteranceLastRecordedInAggregationDuration"))
    AggregatedUtterancesSummary.add_member(:contains_data_from_deleted_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "containsDataFromDeletedResources"))
    AggregatedUtterancesSummary.type = Types::AggregatedUtterancesSummary
    AggregatedUtterancesSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesSummary, name: "member")
    AllowedInputTypes.add_member(:allow_audio_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowAudioInput", traits: {"smithy.api#required" => {}}))
    AllowedInputTypes.add_member(:allow_dtmf_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowDTMFInput", traits: {"smithy.api#required" => {}}))
    AllowedInputTypes.type = Types::AllowedInputTypes
    AnalyticsBinByList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinBySpecification, name: "member")
    AnalyticsBinByName.add_member(:conversation_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConversationStartTime", traits: {"smithy.api#enumValue" => "ConversationStartTime"}))
    AnalyticsBinByName.add_member(:utterance_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceTimestamp", traits: {"smithy.api#enumValue" => "UtteranceTimestamp"}))
    AnalyticsBinBySpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinByName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsBinBySpecification.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsInterval, name: "interval", traits: {"smithy.api#required" => {}}))
    AnalyticsBinBySpecification.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSortOrder, name: "order"))
    AnalyticsBinBySpecification.type = Types::AnalyticsBinBySpecification
    AnalyticsBinKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinByName, name: "name"))
    AnalyticsBinKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinValue, name: "value"))
    AnalyticsBinKey.type = Types::AnalyticsBinKey
    AnalyticsBinKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinKey, name: "member")
    AnalyticsCommonFilterName.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotAliasId", traits: {"smithy.api#enumValue" => "BotAliasId"}))
    AnalyticsCommonFilterName.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotVersion", traits: {"smithy.api#enumValue" => "BotVersion"}))
    AnalyticsCommonFilterName.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocaleId", traits: {"smithy.api#enumValue" => "LocaleId"}))
    AnalyticsCommonFilterName.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modality", traits: {"smithy.api#enumValue" => "Modality"}))
    AnalyticsCommonFilterName.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Channel", traits: {"smithy.api#enumValue" => "Channel"}))
    AnalyticsFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    AnalyticsFilterOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThan", traits: {"smithy.api#enumValue" => "GT"}))
    AnalyticsFilterOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThan", traits: {"smithy.api#enumValue" => "LT"}))
    AnalyticsFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterValue, name: "member")
    AnalyticsIntentField.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentName", traits: {"smithy.api#enumValue" => "IntentName"}))
    AnalyticsIntentField.add_member(:intent_end_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentEndState", traits: {"smithy.api#enumValue" => "IntentEndState"}))
    AnalyticsIntentField.add_member(:intent_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentLevel", traits: {"smithy.api#enumValue" => "IntentLevel"}))
    AnalyticsIntentFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentFilter.type = Types::AnalyticsIntentFilter
    AnalyticsIntentFilterName.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotAliasId", traits: {"smithy.api#enumValue" => "BotAliasId"}))
    AnalyticsIntentFilterName.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotVersion", traits: {"smithy.api#enumValue" => "BotVersion"}))
    AnalyticsIntentFilterName.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocaleId", traits: {"smithy.api#enumValue" => "LocaleId"}))
    AnalyticsIntentFilterName.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modality", traits: {"smithy.api#enumValue" => "Modality"}))
    AnalyticsIntentFilterName.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Channel", traits: {"smithy.api#enumValue" => "Channel"}))
    AnalyticsIntentFilterName.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SessionId", traits: {"smithy.api#enumValue" => "SessionId"}))
    AnalyticsIntentFilterName.add_member(:originating_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OriginatingRequestId", traits: {"smithy.api#enumValue" => "OriginatingRequestId"}))
    AnalyticsIntentFilterName.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentName", traits: {"smithy.api#enumValue" => "IntentName"}))
    AnalyticsIntentFilterName.add_member(:intent_end_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentEndState", traits: {"smithy.api#enumValue" => "IntentEndState"}))
    AnalyticsIntentFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentFilter, name: "member")
    AnalyticsIntentGroupByKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentField, name: "name"))
    AnalyticsIntentGroupByKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsGroupByValue, name: "value"))
    AnalyticsIntentGroupByKey.type = Types::AnalyticsIntentGroupByKey
    AnalyticsIntentGroupByKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentGroupByKey, name: "member")
    AnalyticsIntentGroupByList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentGroupBySpecification, name: "member")
    AnalyticsIntentGroupBySpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentField, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentGroupBySpecification.type = Types::AnalyticsIntentGroupBySpecification
    AnalyticsIntentMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentMetricName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentMetric.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSortOrder, name: "order"))
    AnalyticsIntentMetric.type = Types::AnalyticsIntentMetric
    AnalyticsIntentMetricName.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    AnalyticsIntentMetricName.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    AnalyticsIntentMetricName.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failure", traits: {"smithy.api#enumValue" => "Failure"}))
    AnalyticsIntentMetricName.add_member(:switched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Switched", traits: {"smithy.api#enumValue" => "Switched"}))
    AnalyticsIntentMetricName.add_member(:dropped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dropped", traits: {"smithy.api#enumValue" => "Dropped"}))
    AnalyticsIntentMetricResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentMetricName, name: "name"))
    AnalyticsIntentMetricResult.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic"))
    AnalyticsIntentMetricResult.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricValue, name: "value"))
    AnalyticsIntentMetricResult.type = Types::AnalyticsIntentMetricResult
    AnalyticsIntentMetricResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentMetricResult, name: "member")
    AnalyticsIntentMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentMetric, name: "member")
    AnalyticsIntentNodeSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentNodeSummary, name: "member")
    AnalyticsIntentNodeSummary.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName"))
    AnalyticsIntentNodeSummary.add_member(:intent_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsPath, name: "intentPath"))
    AnalyticsIntentNodeSummary.add_member(:intent_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsNodeCount, name: "intentCount"))
    AnalyticsIntentNodeSummary.add_member(:intent_level, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsNodeLevel, name: "intentLevel"))
    AnalyticsIntentNodeSummary.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsNodeType, name: "nodeType"))
    AnalyticsIntentNodeSummary.type = Types::AnalyticsIntentNodeSummary
    AnalyticsIntentResult.add_member(:bin_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinKeys, name: "binKeys"))
    AnalyticsIntentResult.add_member(:group_by_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentGroupByKeys, name: "groupByKeys"))
    AnalyticsIntentResult.add_member(:metrics_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentMetricResults, name: "metricsResults"))
    AnalyticsIntentResult.type = Types::AnalyticsIntentResult
    AnalyticsIntentResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentResult, name: "member")
    AnalyticsIntentStageField.add_member(:intent_stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentStageName", traits: {"smithy.api#enumValue" => "IntentStageName"}))
    AnalyticsIntentStageField.add_member(:switched_to_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SwitchedToIntent", traits: {"smithy.api#enumValue" => "SwitchedToIntent"}))
    AnalyticsIntentStageFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentStageFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentStageFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentStageFilter.type = Types::AnalyticsIntentStageFilter
    AnalyticsIntentStageFilterName.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotAliasId", traits: {"smithy.api#enumValue" => "BotAliasId"}))
    AnalyticsIntentStageFilterName.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotVersion", traits: {"smithy.api#enumValue" => "BotVersion"}))
    AnalyticsIntentStageFilterName.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocaleId", traits: {"smithy.api#enumValue" => "LocaleId"}))
    AnalyticsIntentStageFilterName.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modality", traits: {"smithy.api#enumValue" => "Modality"}))
    AnalyticsIntentStageFilterName.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Channel", traits: {"smithy.api#enumValue" => "Channel"}))
    AnalyticsIntentStageFilterName.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SessionId", traits: {"smithy.api#enumValue" => "SessionId"}))
    AnalyticsIntentStageFilterName.add_member(:originating_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OriginatingRequestId", traits: {"smithy.api#enumValue" => "OriginatingRequestId"}))
    AnalyticsIntentStageFilterName.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentName", traits: {"smithy.api#enumValue" => "IntentName"}))
    AnalyticsIntentStageFilterName.add_member(:intent_stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentStageName", traits: {"smithy.api#enumValue" => "IntentStageName"}))
    AnalyticsIntentStageFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageFilter, name: "member")
    AnalyticsIntentStageGroupByKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageField, name: "name"))
    AnalyticsIntentStageGroupByKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsGroupByValue, name: "value"))
    AnalyticsIntentStageGroupByKey.type = Types::AnalyticsIntentStageGroupByKey
    AnalyticsIntentStageGroupByKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageGroupByKey, name: "member")
    AnalyticsIntentStageGroupByList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageGroupBySpecification, name: "member")
    AnalyticsIntentStageGroupBySpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageField, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentStageGroupBySpecification.type = Types::AnalyticsIntentStageGroupBySpecification
    AnalyticsIntentStageMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageMetricName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentStageMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic", traits: {"smithy.api#required" => {}}))
    AnalyticsIntentStageMetric.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSortOrder, name: "order"))
    AnalyticsIntentStageMetric.type = Types::AnalyticsIntentStageMetric
    AnalyticsIntentStageMetricName.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    AnalyticsIntentStageMetricName.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    AnalyticsIntentStageMetricName.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    AnalyticsIntentStageMetricName.add_member(:dropped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dropped", traits: {"smithy.api#enumValue" => "Dropped"}))
    AnalyticsIntentStageMetricName.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retry", traits: {"smithy.api#enumValue" => "Retry"}))
    AnalyticsIntentStageMetricResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageMetricName, name: "name"))
    AnalyticsIntentStageMetricResult.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic"))
    AnalyticsIntentStageMetricResult.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricValue, name: "value"))
    AnalyticsIntentStageMetricResult.type = Types::AnalyticsIntentStageMetricResult
    AnalyticsIntentStageMetricResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageMetricResult, name: "member")
    AnalyticsIntentStageMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageMetric, name: "member")
    AnalyticsIntentStageResult.add_member(:bin_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinKeys, name: "binKeys"))
    AnalyticsIntentStageResult.add_member(:group_by_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageGroupByKeys, name: "groupByKeys"))
    AnalyticsIntentStageResult.add_member(:metrics_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageMetricResults, name: "metricsResults"))
    AnalyticsIntentStageResult.type = Types::AnalyticsIntentStageResult
    AnalyticsIntentStageResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageResult, name: "member")
    AnalyticsInterval.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneHour", traits: {"smithy.api#enumValue" => "OneHour"}))
    AnalyticsInterval.add_member(:one_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneDay", traits: {"smithy.api#enumValue" => "OneDay"}))
    AnalyticsMetricStatistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sum", traits: {"smithy.api#enumValue" => "Sum"}))
    AnalyticsMetricStatistic.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Avg", traits: {"smithy.api#enumValue" => "Avg"}))
    AnalyticsMetricStatistic.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Max", traits: {"smithy.api#enumValue" => "Max"}))
    AnalyticsModality.add_member(:speech, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Speech", traits: {"smithy.api#enumValue" => "Speech"}))
    AnalyticsModality.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Text", traits: {"smithy.api#enumValue" => "Text"}))
    AnalyticsModality.add_member(:dtmf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DTMF", traits: {"smithy.api#enumValue" => "DTMF"}))
    AnalyticsModality.add_member(:multi_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MultiMode", traits: {"smithy.api#enumValue" => "MultiMode"}))
    AnalyticsNodeType.add_member(:inner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inner", traits: {"smithy.api#enumValue" => "Inner"}))
    AnalyticsNodeType.add_member(:exit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Exit", traits: {"smithy.api#enumValue" => "Exit"}))
    AnalyticsPathFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsCommonFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsPathFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    AnalyticsPathFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AnalyticsPathFilter.type = Types::AnalyticsPathFilter
    AnalyticsPathFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsPathFilter, name: "member")
    AnalyticsSessionField.add_member(:conversation_end_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConversationEndState", traits: {"smithy.api#enumValue" => "ConversationEndState"}))
    AnalyticsSessionField.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocaleId", traits: {"smithy.api#enumValue" => "LocaleId"}))
    AnalyticsSessionFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsSessionFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    AnalyticsSessionFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AnalyticsSessionFilter.type = Types::AnalyticsSessionFilter
    AnalyticsSessionFilterName.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotAliasId", traits: {"smithy.api#enumValue" => "BotAliasId"}))
    AnalyticsSessionFilterName.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotVersion", traits: {"smithy.api#enumValue" => "BotVersion"}))
    AnalyticsSessionFilterName.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocaleId", traits: {"smithy.api#enumValue" => "LocaleId"}))
    AnalyticsSessionFilterName.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modality", traits: {"smithy.api#enumValue" => "Modality"}))
    AnalyticsSessionFilterName.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Channel", traits: {"smithy.api#enumValue" => "Channel"}))
    AnalyticsSessionFilterName.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Duration", traits: {"smithy.api#enumValue" => "Duration"}))
    AnalyticsSessionFilterName.add_member(:conversation_end_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConversationEndState", traits: {"smithy.api#enumValue" => "ConversationEndState"}))
    AnalyticsSessionFilterName.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SessionId", traits: {"smithy.api#enumValue" => "SessionId"}))
    AnalyticsSessionFilterName.add_member(:originating_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OriginatingRequestId", traits: {"smithy.api#enumValue" => "OriginatingRequestId"}))
    AnalyticsSessionFilterName.add_member(:intent_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentPath", traits: {"smithy.api#enumValue" => "IntentPath"}))
    AnalyticsSessionFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionFilter, name: "member")
    AnalyticsSessionGroupByKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionField, name: "name"))
    AnalyticsSessionGroupByKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsGroupByValue, name: "value"))
    AnalyticsSessionGroupByKey.type = Types::AnalyticsSessionGroupByKey
    AnalyticsSessionGroupByKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionGroupByKey, name: "member")
    AnalyticsSessionGroupByList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionGroupBySpecification, name: "member")
    AnalyticsSessionGroupBySpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionField, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsSessionGroupBySpecification.type = Types::AnalyticsSessionGroupBySpecification
    AnalyticsSessionMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionMetricName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsSessionMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic", traits: {"smithy.api#required" => {}}))
    AnalyticsSessionMetric.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSortOrder, name: "order"))
    AnalyticsSessionMetric.type = Types::AnalyticsSessionMetric
    AnalyticsSessionMetricName.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    AnalyticsSessionMetricName.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    AnalyticsSessionMetricName.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failure", traits: {"smithy.api#enumValue" => "Failure"}))
    AnalyticsSessionMetricName.add_member(:dropped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dropped", traits: {"smithy.api#enumValue" => "Dropped"}))
    AnalyticsSessionMetricName.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Duration", traits: {"smithy.api#enumValue" => "Duration"}))
    AnalyticsSessionMetricName.add_member(:turns_per_conversation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TurnsPerConversation", traits: {"smithy.api#enumValue" => "TurnsPerConversation"}))
    AnalyticsSessionMetricName.add_member(:concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Concurrency", traits: {"smithy.api#enumValue" => "Concurrency"}))
    AnalyticsSessionMetricResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionMetricName, name: "name"))
    AnalyticsSessionMetricResult.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic"))
    AnalyticsSessionMetricResult.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricValue, name: "value"))
    AnalyticsSessionMetricResult.type = Types::AnalyticsSessionMetricResult
    AnalyticsSessionMetricResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionMetricResult, name: "member")
    AnalyticsSessionMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionMetric, name: "member")
    AnalyticsSessionResult.add_member(:bin_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinKeys, name: "binKeys"))
    AnalyticsSessionResult.add_member(:group_by_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionGroupByKeys, name: "groupByKeys"))
    AnalyticsSessionResult.add_member(:metrics_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionMetricResults, name: "metricsResults"))
    AnalyticsSessionResult.type = Types::AnalyticsSessionResult
    AnalyticsSessionResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionResult, name: "member")
    AnalyticsSessionSortByName.add_member(:conversation_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConversationStartTime", traits: {"smithy.api#enumValue" => "ConversationStartTime"}))
    AnalyticsSessionSortByName.add_member(:number_of_turns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NumberOfTurns", traits: {"smithy.api#enumValue" => "NumberOfTurns"}))
    AnalyticsSessionSortByName.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Duration", traits: {"smithy.api#enumValue" => "Duration"}))
    AnalyticsSortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ascending", traits: {"smithy.api#enumValue" => "Ascending"}))
    AnalyticsSortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Descending", traits: {"smithy.api#enumValue" => "Descending"}))
    AnalyticsUtteranceAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceAttributeName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsUtteranceAttribute.type = Types::AnalyticsUtteranceAttribute
    AnalyticsUtteranceAttributeName.add_member(:last_used_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUsedIntent", traits: {"smithy.api#enumValue" => "LastUsedIntent"}))
    AnalyticsUtteranceAttributeResult.add_member(:last_used_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "lastUsedIntent"))
    AnalyticsUtteranceAttributeResult.type = Types::AnalyticsUtteranceAttributeResult
    AnalyticsUtteranceAttributeResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceAttributeResult, name: "member")
    AnalyticsUtteranceAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceAttribute, name: "member")
    AnalyticsUtteranceField.add_member(:utterance_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceText", traits: {"smithy.api#enumValue" => "UtteranceText"}))
    AnalyticsUtteranceField.add_member(:utterance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceState", traits: {"smithy.api#enumValue" => "UtteranceState"}))
    AnalyticsUtteranceFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsUtteranceFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    AnalyticsUtteranceFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AnalyticsUtteranceFilter.type = Types::AnalyticsUtteranceFilter
    AnalyticsUtteranceFilterName.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotAliasId", traits: {"smithy.api#enumValue" => "BotAliasId"}))
    AnalyticsUtteranceFilterName.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotVersion", traits: {"smithy.api#enumValue" => "BotVersion"}))
    AnalyticsUtteranceFilterName.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocaleId", traits: {"smithy.api#enumValue" => "LocaleId"}))
    AnalyticsUtteranceFilterName.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modality", traits: {"smithy.api#enumValue" => "Modality"}))
    AnalyticsUtteranceFilterName.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Channel", traits: {"smithy.api#enumValue" => "Channel"}))
    AnalyticsUtteranceFilterName.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SessionId", traits: {"smithy.api#enumValue" => "SessionId"}))
    AnalyticsUtteranceFilterName.add_member(:originating_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OriginatingRequestId", traits: {"smithy.api#enumValue" => "OriginatingRequestId"}))
    AnalyticsUtteranceFilterName.add_member(:utterance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceState", traits: {"smithy.api#enumValue" => "UtteranceState"}))
    AnalyticsUtteranceFilterName.add_member(:utterance_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceText", traits: {"smithy.api#enumValue" => "UtteranceText"}))
    AnalyticsUtteranceFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceFilter, name: "member")
    AnalyticsUtteranceGroupByKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceField, name: "name"))
    AnalyticsUtteranceGroupByKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsGroupByValue, name: "value"))
    AnalyticsUtteranceGroupByKey.type = Types::AnalyticsUtteranceGroupByKey
    AnalyticsUtteranceGroupByKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceGroupByKey, name: "member")
    AnalyticsUtteranceGroupByList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceGroupBySpecification, name: "member")
    AnalyticsUtteranceGroupBySpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceField, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsUtteranceGroupBySpecification.type = Types::AnalyticsUtteranceGroupBySpecification
    AnalyticsUtteranceMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceMetricName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyticsUtteranceMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic", traits: {"smithy.api#required" => {}}))
    AnalyticsUtteranceMetric.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSortOrder, name: "order"))
    AnalyticsUtteranceMetric.type = Types::AnalyticsUtteranceMetric
    AnalyticsUtteranceMetricName.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    AnalyticsUtteranceMetricName.add_member(:missed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Missed", traits: {"smithy.api#enumValue" => "Missed"}))
    AnalyticsUtteranceMetricName.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Detected", traits: {"smithy.api#enumValue" => "Detected"}))
    AnalyticsUtteranceMetricName.add_member(:utterance_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceTimestamp", traits: {"smithy.api#enumValue" => "UtteranceTimestamp"}))
    AnalyticsUtteranceMetricResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceMetricName, name: "name"))
    AnalyticsUtteranceMetricResult.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricStatistic, name: "statistic"))
    AnalyticsUtteranceMetricResult.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetricValue, name: "value"))
    AnalyticsUtteranceMetricResult.type = Types::AnalyticsUtteranceMetricResult
    AnalyticsUtteranceMetricResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceMetricResult, name: "member")
    AnalyticsUtteranceMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceMetric, name: "member")
    AnalyticsUtteranceResult.add_member(:bin_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinKeys, name: "binKeys"))
    AnalyticsUtteranceResult.add_member(:group_by_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceGroupByKeys, name: "groupByKeys"))
    AnalyticsUtteranceResult.add_member(:metrics_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceMetricResults, name: "metricsResults"))
    AnalyticsUtteranceResult.add_member(:attribute_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceAttributeResults, name: "attributeResults"))
    AnalyticsUtteranceResult.type = Types::AnalyticsUtteranceResult
    AnalyticsUtteranceResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceResult, name: "member")
    AnalyticsUtteranceSortByName.add_member(:utterance_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceTimestamp", traits: {"smithy.api#enumValue" => "UtteranceTimestamp"}))
    AssociatedTranscript.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: Transcript, name: "transcript"))
    AssociatedTranscript.type = Types::AssociatedTranscript
    AssociatedTranscriptFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTranscriptFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    AssociatedTranscriptFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    AssociatedTranscriptFilter.type = Types::AssociatedTranscriptFilter
    AssociatedTranscriptFilterName.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentId", traits: {"smithy.api#enumValue" => "IntentId"}))
    AssociatedTranscriptFilterName.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SlotTypeId", traits: {"smithy.api#enumValue" => "SlotTypeId"}))
    AssociatedTranscriptFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTranscriptFilter, name: "member")
    AssociatedTranscriptList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTranscript, name: "member")
    AudioAndDTMFInputSpecification.add_member(:start_timeout_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInMilliSeconds, name: "startTimeoutMs", traits: {"smithy.api#required" => {}}))
    AudioAndDTMFInputSpecification.add_member(:audio_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioSpecification, name: "audioSpecification"))
    AudioAndDTMFInputSpecification.add_member(:dtmf_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: DTMFSpecification, name: "dtmfSpecification"))
    AudioAndDTMFInputSpecification.type = Types::AudioAndDTMFInputSpecification
    AudioLogDestination.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketLogDestination, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    AudioLogDestination.type = Types::AudioLogDestination
    AudioLogSetting.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    AudioLogSetting.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioLogDestination, name: "destination", traits: {"smithy.api#required" => {}}))
    AudioLogSetting.add_member(:selective_logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "selectiveLoggingEnabled"))
    AudioLogSetting.type = Types::AudioLogSetting
    AudioLogSettingsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AudioLogSetting, name: "member")
    AudioRecognitionStrategy.add_member(:use_slot_values_as_custom_vocabulary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UseSlotValuesAsCustomVocabulary", traits: {"smithy.api#enumValue" => "UseSlotValuesAsCustomVocabulary"}))
    AudioSpecification.add_member(:max_length_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInMilliSeconds, name: "maxLengthMs", traits: {"smithy.api#required" => {}}))
    AudioSpecification.add_member(:end_timeout_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInMilliSeconds, name: "endTimeoutMs", traits: {"smithy.api#required" => {}}))
    AudioSpecification.type = Types::AudioSpecification
    BatchCreateCustomVocabularyItemRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateCustomVocabularyItemRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateCustomVocabularyItemRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateCustomVocabularyItemRequest.add_member(:custom_vocabulary_item_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateCustomVocabularyItemsList, name: "customVocabularyItemList", traits: {"smithy.api#required" => {}}))
    BatchCreateCustomVocabularyItemRequest.type = Types::BatchCreateCustomVocabularyItemRequest
    BatchCreateCustomVocabularyItemResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    BatchCreateCustomVocabularyItemResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BatchCreateCustomVocabularyItemResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    BatchCreateCustomVocabularyItemResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCustomVocabularyItems, name: "errors"))
    BatchCreateCustomVocabularyItemResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyItems, name: "resources"))
    BatchCreateCustomVocabularyItemResponse.type = Types::BatchCreateCustomVocabularyItemResponse
    BatchDeleteCustomVocabularyItemRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteCustomVocabularyItemRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteCustomVocabularyItemRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteCustomVocabularyItemRequest.add_member(:custom_vocabulary_item_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteCustomVocabularyItemsList, name: "customVocabularyItemList", traits: {"smithy.api#required" => {}}))
    BatchDeleteCustomVocabularyItemRequest.type = Types::BatchDeleteCustomVocabularyItemRequest
    BatchDeleteCustomVocabularyItemResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCustomVocabularyItems, name: "errors"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyItems, name: "resources"))
    BatchDeleteCustomVocabularyItemResponse.type = Types::BatchDeleteCustomVocabularyItemResponse
    BatchUpdateCustomVocabularyItemRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateCustomVocabularyItemRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateCustomVocabularyItemRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateCustomVocabularyItemRequest.add_member(:custom_vocabulary_item_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCustomVocabularyItemsList, name: "customVocabularyItemList", traits: {"smithy.api#required" => {}}))
    BatchUpdateCustomVocabularyItemRequest.type = Types::BatchUpdateCustomVocabularyItemRequest
    BatchUpdateCustomVocabularyItemResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCustomVocabularyItems, name: "errors"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyItems, name: "resources"))
    BatchUpdateCustomVocabularyItemResponse.type = Types::BatchUpdateCustomVocabularyItemResponse
    BedrockGuardrailConfiguration.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockGuardrailIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    BedrockGuardrailConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockGuardrailVersion, name: "version", traits: {"smithy.api#required" => {}}))
    BedrockGuardrailConfiguration.type = Types::BedrockGuardrailConfiguration
    BedrockKnowledgeStoreConfiguration.add_member(:bedrock_knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockKnowledgeBaseArn, name: "bedrockKnowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    BedrockKnowledgeStoreConfiguration.add_member(:exact_response, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "exactResponse", traits: {"smithy.api#default" => false}))
    BedrockKnowledgeStoreConfiguration.add_member(:exact_response_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockKnowledgeStoreExactResponseFields, name: "exactResponseFields"))
    BedrockKnowledgeStoreConfiguration.type = Types::BedrockKnowledgeStoreConfiguration
    BedrockKnowledgeStoreExactResponseFields.add_member(:answer_field, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerField, name: "answerField"))
    BedrockKnowledgeStoreExactResponseFields.type = Types::BedrockKnowledgeStoreExactResponseFields
    BedrockModelSpecification.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    BedrockModelSpecification.add_member(:guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockGuardrailConfiguration, name: "guardrail"))
    BedrockModelSpecification.add_member(:trace_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockTraceStatus, name: "traceStatus"))
    BedrockModelSpecification.add_member(:custom_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelCustomPrompt, name: "customPrompt"))
    BedrockModelSpecification.type = Types::BedrockModelSpecification
    BedrockTraceStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    BedrockTraceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    BotAliasHistoryEvent.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BotAliasHistoryEvent.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate"))
    BotAliasHistoryEvent.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDate"))
    BotAliasHistoryEvent.type = Types::BotAliasHistoryEvent
    BotAliasHistoryEventsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasHistoryEvent, name: "member")
    BotAliasLocaleSettings.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    BotAliasLocaleSettings.add_member(:code_hook_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeHookSpecification, name: "codeHookSpecification"))
    BotAliasLocaleSettings.type = Types::BotAliasLocaleSettings
    BotAliasLocaleSettingsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "key")
    BotAliasLocaleSettingsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasLocaleSettings, name: "value")
    BotAliasReplicaSummary.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    BotAliasReplicaSummary.add_member(:bot_alias_replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasReplicationStatus, name: "botAliasReplicationStatus"))
    BotAliasReplicaSummary.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BotAliasReplicaSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    BotAliasReplicaSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    BotAliasReplicaSummary.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    BotAliasReplicaSummary.type = Types::BotAliasReplicaSummary
    BotAliasReplicaSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasReplicaSummary, name: "member")
    BotAliasReplicationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    BotAliasReplicationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Updating", traits: {"smithy.api#enumValue" => "Updating"}))
    BotAliasReplicationStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Available", traits: {"smithy.api#enumValue" => "Available"}))
    BotAliasReplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    BotAliasReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BotAliasStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    BotAliasStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Available", traits: {"smithy.api#enumValue" => "Available"}))
    BotAliasStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    BotAliasStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BotAliasSummary.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    BotAliasSummary.add_member(:bot_alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botAliasName"))
    BotAliasSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    BotAliasSummary.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BotAliasSummary.add_member(:bot_alias_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasStatus, name: "botAliasStatus"))
    BotAliasSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    BotAliasSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    BotAliasSummary.type = Types::BotAliasSummary
    BotAliasSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasSummary, name: "member")
    BotAliasTestExecutionTarget.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    BotAliasTestExecutionTarget.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId", traits: {"smithy.api#required" => {}}))
    BotAliasTestExecutionTarget.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    BotAliasTestExecutionTarget.type = Types::BotAliasTestExecutionTarget
    BotExportSpecification.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    BotExportSpecification.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#required" => {}}))
    BotExportSpecification.type = Types::BotExportSpecification
    BotFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BotFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    BotFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    BotFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: BotFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    BotFilter.type = Types::BotFilter
    BotFilterName.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotName", traits: {"smithy.api#enumValue" => "BotName"}))
    BotFilterName.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotType", traits: {"smithy.api#enumValue" => "BotType"}))
    BotFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    BotFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    BotFilterOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotEquals", traits: {"smithy.api#enumValue" => "NE"}))
    BotFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotFilter, name: "member")
    BotImportSpecification.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName", traits: {"smithy.api#required" => {}}))
    BotImportSpecification.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    BotImportSpecification.add_member(:data_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPrivacy, name: "dataPrivacy", traits: {"smithy.api#required" => {}}))
    BotImportSpecification.add_member(:error_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorLogSettings, name: "errorLogSettings"))
    BotImportSpecification.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds"))
    BotImportSpecification.add_member(:bot_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "botTags"))
    BotImportSpecification.add_member(:test_bot_alias_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "testBotAliasTags"))
    BotImportSpecification.type = Types::BotImportSpecification
    BotLocaleExportSpecification.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    BotLocaleExportSpecification.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#required" => {}}))
    BotLocaleExportSpecification.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    BotLocaleExportSpecification.type = Types::BotLocaleExportSpecification
    BotLocaleFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    BotLocaleFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    BotLocaleFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    BotLocaleFilter.type = Types::BotLocaleFilter
    BotLocaleFilterName.add_member(:bot_locale_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotLocaleName", traits: {"smithy.api#enumValue" => "BotLocaleName"}))
    BotLocaleFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    BotLocaleFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    BotLocaleFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleFilter, name: "member")
    BotLocaleHistoryEvent.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleHistoryEventDescription, name: "event", traits: {"smithy.api#required" => {}}))
    BotLocaleHistoryEvent.add_member(:event_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "eventDate", traits: {"smithy.api#required" => {}}))
    BotLocaleHistoryEvent.type = Types::BotLocaleHistoryEvent
    BotLocaleHistoryEventsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleHistoryEvent, name: "member")
    BotLocaleImportSpecification.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    BotLocaleImportSpecification.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#required" => {}}))
    BotLocaleImportSpecification.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    BotLocaleImportSpecification.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "nluIntentConfidenceThreshold"))
    BotLocaleImportSpecification.add_member(:voice_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceSettings, name: "voiceSettings"))
    BotLocaleImportSpecification.type = Types::BotLocaleImportSpecification
    BotLocaleSortAttribute.add_member(:bot_locale_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotLocaleName", traits: {"smithy.api#enumValue" => "BotLocaleName"}))
    BotLocaleSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    BotLocaleSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    BotLocaleSortBy.type = Types::BotLocaleSortBy
    BotLocaleStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    BotLocaleStatus.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Building", traits: {"smithy.api#enumValue" => "Building"}))
    BotLocaleStatus.add_member(:built, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Built", traits: {"smithy.api#enumValue" => "Built"}))
    BotLocaleStatus.add_member(:ready_express_testing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReadyExpressTesting", traits: {"smithy.api#enumValue" => "ReadyExpressTesting"}))
    BotLocaleStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BotLocaleStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    BotLocaleStatus.add_member(:not_built, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotBuilt", traits: {"smithy.api#enumValue" => "NotBuilt"}))
    BotLocaleStatus.add_member(:importing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Importing", traits: {"smithy.api#enumValue" => "Importing"}))
    BotLocaleStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    BotLocaleSummary.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    BotLocaleSummary.add_member(:locale_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleName, name: "localeName"))
    BotLocaleSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    BotLocaleSummary.add_member(:bot_locale_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleStatus, name: "botLocaleStatus"))
    BotLocaleSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    BotLocaleSummary.add_member(:last_build_submitted_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastBuildSubmittedDateTime"))
    BotLocaleSummary.type = Types::BotLocaleSummary
    BotLocaleSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleSummary, name: "member")
    BotMember.add_member(:bot_member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botMemberId", traits: {"smithy.api#required" => {}}))
    BotMember.add_member(:bot_member_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botMemberName", traits: {"smithy.api#required" => {}}))
    BotMember.add_member(:bot_member_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botMemberAliasId", traits: {"smithy.api#required" => {}}))
    BotMember.add_member(:bot_member_alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasName, name: "botMemberAliasName", traits: {"smithy.api#required" => {}}))
    BotMember.add_member(:bot_member_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botMemberVersion", traits: {"smithy.api#required" => {}}))
    BotMember.type = Types::BotMember
    BotMembers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotMember, name: "member")
    BotRecommendationResultStatistics.add_member(:intents, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentStatistics, name: "intents"))
    BotRecommendationResultStatistics.add_member(:slot_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeStatistics, name: "slotTypes"))
    BotRecommendationResultStatistics.type = Types::BotRecommendationResultStatistics
    BotRecommendationResults.add_member(:bot_locale_export_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "botLocaleExportUrl"))
    BotRecommendationResults.add_member(:associated_transcripts_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "associatedTranscriptsUrl"))
    BotRecommendationResults.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationResultStatistics, name: "statistics"))
    BotRecommendationResults.type = Types::BotRecommendationResults
    BotRecommendationStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    BotRecommendationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    BotRecommendationStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleted", traits: {"smithy.api#enumValue" => "Deleted"}))
    BotRecommendationStatus.add_member(:downloading, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Downloading", traits: {"smithy.api#enumValue" => "Downloading"}))
    BotRecommendationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Updating", traits: {"smithy.api#enumValue" => "Updating"}))
    BotRecommendationStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Available", traits: {"smithy.api#enumValue" => "Available"}))
    BotRecommendationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BotRecommendationStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    BotRecommendationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    BotRecommendationSummary.add_member(:bot_recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationStatus, name: "botRecommendationStatus", traits: {"smithy.api#required" => {}}))
    BotRecommendationSummary.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId", traits: {"smithy.api#required" => {}}))
    BotRecommendationSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    BotRecommendationSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    BotRecommendationSummary.type = Types::BotRecommendationSummary
    BotRecommendationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationSummary, name: "member")
    BotReplicaStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabling", traits: {"smithy.api#enumValue" => "Enabling"}))
    BotReplicaStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    BotReplicaStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    BotReplicaStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BotReplicaSummary.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion"))
    BotReplicaSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    BotReplicaSummary.add_member(:bot_replica_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotReplicaStatus, name: "botReplicaStatus"))
    BotReplicaSummary.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    BotReplicaSummary.type = Types::BotReplicaSummary
    BotReplicaSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotReplicaSummary, name: "member")
    BotSortAttribute.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotName", traits: {"smithy.api#enumValue" => "BotName"}))
    BotSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: BotSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    BotSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    BotSortBy.type = Types::BotSortBy
    BotStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    BotStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Available", traits: {"smithy.api#enumValue" => "Available"}))
    BotStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive"}))
    BotStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    BotStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BotStatus.add_member(:versioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Versioning", traits: {"smithy.api#enumValue" => "Versioning"}))
    BotStatus.add_member(:importing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Importing", traits: {"smithy.api#enumValue" => "Importing"}))
    BotStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Updating", traits: {"smithy.api#enumValue" => "Updating"}))
    BotSummary.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    BotSummary.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName"))
    BotSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    BotSummary.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    BotSummary.add_member(:latest_bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "latestBotVersion"))
    BotSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    BotSummary.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "botType"))
    BotSummary.type = Types::BotSummary
    BotSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotSummary, name: "member")
    BotType.add_member(:bot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bot", traits: {"smithy.api#enumValue" => "Bot"}))
    BotType.add_member(:bot_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotNetwork", traits: {"smithy.api#enumValue" => "BotNetwork"}))
    BotVersionLocaleDetails.add_member(:source_bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "sourceBotVersion", traits: {"smithy.api#required" => {}}))
    BotVersionLocaleDetails.type = Types::BotVersionLocaleDetails
    BotVersionLocaleSpecification.key = ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "key")
    BotVersionLocaleSpecification.value = ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionLocaleDetails, name: "value")
    BotVersionReplicaSortAttribute.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotVersion", traits: {"smithy.api#enumValue" => "BotVersion"}))
    BotVersionReplicaSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionReplicaSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    BotVersionReplicaSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    BotVersionReplicaSortBy.type = Types::BotVersionReplicaSortBy
    BotVersionReplicaSummary.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BotVersionReplicaSummary.add_member(:bot_version_replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionReplicationStatus, name: "botVersionReplicationStatus"))
    BotVersionReplicaSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    BotVersionReplicaSummary.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    BotVersionReplicaSummary.type = Types::BotVersionReplicaSummary
    BotVersionReplicaSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionReplicaSummary, name: "member")
    BotVersionReplicationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    BotVersionReplicationStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Available", traits: {"smithy.api#enumValue" => "Available"}))
    BotVersionReplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    BotVersionReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    BotVersionSortAttribute.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotVersion", traits: {"smithy.api#enumValue" => "BotVersion"}))
    BotVersionSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    BotVersionSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    BotVersionSortBy.type = Types::BotVersionSortBy
    BotVersionSummary.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName"))
    BotVersionSummary.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    BotVersionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    BotVersionSummary.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    BotVersionSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    BotVersionSummary.type = Types::BotVersionSummary
    BotVersionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionSummary, name: "member")
    BuildBotLocaleRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BuildBotLocaleRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BuildBotLocaleRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BuildBotLocaleRequest.type = Types::BuildBotLocaleRequest
    BuildBotLocaleResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    BuildBotLocaleResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    BuildBotLocaleResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    BuildBotLocaleResponse.add_member(:bot_locale_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleStatus, name: "botLocaleStatus"))
    BuildBotLocaleResponse.add_member(:last_build_submitted_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastBuildSubmittedDateTime"))
    BuildBotLocaleResponse.type = Types::BuildBotLocaleResponse
    BuildtimeSettings.add_member(:descriptive_bot_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptiveBotBuilderSpecification, name: "descriptiveBotBuilder"))
    BuildtimeSettings.add_member(:sample_utterance_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtteranceGenerationSpecification, name: "sampleUtteranceGeneration"))
    BuildtimeSettings.type = Types::BuildtimeSettings
    BuiltInIntentSortAttribute.add_member(:intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentSignature", traits: {"smithy.api#enumValue" => "IntentSignature"}))
    BuiltInIntentSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInIntentSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    BuiltInIntentSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    BuiltInIntentSortBy.type = Types::BuiltInIntentSortBy
    BuiltInIntentSummary.add_member(:intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSignature, name: "intentSignature"))
    BuiltInIntentSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    BuiltInIntentSummary.type = Types::BuiltInIntentSummary
    BuiltInIntentSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInIntentSummary, name: "member")
    BuiltInSlotTypeSortAttribute.add_member(:slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SlotTypeSignature", traits: {"smithy.api#enumValue" => "SlotTypeSignature"}))
    BuiltInSlotTypeSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInSlotTypeSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    BuiltInSlotTypeSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    BuiltInSlotTypeSortBy.type = Types::BuiltInSlotTypeSortBy
    BuiltInSlotTypeSummary.add_member(:slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSignature, name: "slotTypeSignature"))
    BuiltInSlotTypeSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    BuiltInSlotTypeSummary.type = Types::BuiltInSlotTypeSummary
    BuiltInSlotTypeSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInSlotTypeSummary, name: "member")
    Button.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonText, name: "text", traits: {"smithy.api#required" => {}}))
    Button.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonValue, name: "value", traits: {"smithy.api#required" => {}}))
    Button.type = Types::Button
    ButtonsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Button, name: "member")
    CloudWatchLogGroupLogDestination.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupArn, name: "cloudWatchLogGroupArn", traits: {"smithy.api#required" => {}}))
    CloudWatchLogGroupLogDestination.add_member(:log_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogPrefix, name: "logPrefix", traits: {"smithy.api#required" => {}}))
    CloudWatchLogGroupLogDestination.type = Types::CloudWatchLogGroupLogDestination
    CodeHookSpecification.add_member(:lambda_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaCodeHook, name: "lambdaCodeHook", traits: {"smithy.api#required" => {}}))
    CodeHookSpecification.type = Types::CodeHookSpecification
    CompositeSlotTypeSetting.add_member(:sub_slots, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotTypeList, name: "subSlots"))
    CompositeSlotTypeSetting.type = Types::CompositeSlotTypeSetting
    Condition.add_member(:expression_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "expressionString", traits: {"smithy.api#required" => {}}))
    Condition.type = Types::Condition
    ConditionKeyValueMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKey, name: "key")
    ConditionKeyValueMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValue, name: "value")
    ConditionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOperator, name: "key")
    ConditionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKeyValueMap, name: "value")
    ConditionalBranch.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ConditionalBranch.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "condition", traits: {"smithy.api#required" => {}}))
    ConditionalBranch.add_member(:next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "nextStep", traits: {"smithy.api#required" => {}}))
    ConditionalBranch.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "response"))
    ConditionalBranch.type = Types::ConditionalBranch
    ConditionalBranches.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalBranch, name: "member")
    ConditionalSpecification.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "active", traits: {"smithy.api#required" => {}}))
    ConditionalSpecification.add_member(:conditional_branches, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalBranches, name: "conditionalBranches", traits: {"smithy.api#required" => {}}))
    ConditionalSpecification.add_member(:default_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultConditionalBranch, name: "defaultBranch", traits: {"smithy.api#required" => {}}))
    ConditionalSpecification.type = Types::ConditionalSpecification
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    ConversationEndState.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    ConversationEndState.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failure", traits: {"smithy.api#enumValue" => "Failure"}))
    ConversationEndState.add_member(:dropped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dropped", traits: {"smithy.api#enumValue" => "Dropped"}))
    ConversationLevelIntentClassificationResultItem.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    ConversationLevelIntentClassificationResultItem.add_member(:match_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "matchResult", traits: {"smithy.api#required" => {}}))
    ConversationLevelIntentClassificationResultItem.type = Types::ConversationLevelIntentClassificationResultItem
    ConversationLevelIntentClassificationResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelIntentClassificationResultItem, name: "member")
    ConversationLevelResultDetail.add_member(:end_to_end_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "endToEndResult", traits: {"smithy.api#required" => {}}))
    ConversationLevelResultDetail.add_member(:speech_transcription_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "speechTranscriptionResult"))
    ConversationLevelResultDetail.type = Types::ConversationLevelResultDetail
    ConversationLevelSlotResolutionResultItem.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    ConversationLevelSlotResolutionResultItem.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultSlotName, name: "slotName", traits: {"smithy.api#required" => {}}))
    ConversationLevelSlotResolutionResultItem.add_member(:match_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "matchResult", traits: {"smithy.api#required" => {}}))
    ConversationLevelSlotResolutionResultItem.type = Types::ConversationLevelSlotResolutionResultItem
    ConversationLevelSlotResolutionResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelSlotResolutionResultItem, name: "member")
    ConversationLevelTestResultItem.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetConversationId, name: "conversationId", traits: {"smithy.api#required" => {}}))
    ConversationLevelTestResultItem.add_member(:end_to_end_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "endToEndResult", traits: {"smithy.api#required" => {}}))
    ConversationLevelTestResultItem.add_member(:speech_transcription_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "speechTranscriptionResult"))
    ConversationLevelTestResultItem.add_member(:intent_classification_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelIntentClassificationResults, name: "intentClassificationResults", traits: {"smithy.api#required" => {}}))
    ConversationLevelTestResultItem.add_member(:slot_resolution_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelSlotResolutionResults, name: "slotResolutionResults", traits: {"smithy.api#required" => {}}))
    ConversationLevelTestResultItem.type = Types::ConversationLevelTestResultItem
    ConversationLevelTestResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelTestResultItem, name: "member")
    ConversationLevelTestResults.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelTestResultItemList, name: "items", traits: {"smithy.api#required" => {}}))
    ConversationLevelTestResults.type = Types::ConversationLevelTestResults
    ConversationLevelTestResultsFilterBy.add_member(:end_to_end_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "endToEndResult"))
    ConversationLevelTestResultsFilterBy.type = Types::ConversationLevelTestResultsFilterBy
    ConversationLogSettings.add_member(:text_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TextLogSettingsList, name: "textLogSettings"))
    ConversationLogSettings.add_member(:audio_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioLogSettingsList, name: "audioLogSettings"))
    ConversationLogSettings.type = Types::ConversationLogSettings
    ConversationLogsDataSource.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    ConversationLogsDataSource.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId", traits: {"smithy.api#required" => {}}))
    ConversationLogsDataSource.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    ConversationLogsDataSource.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogsDataSourceFilterBy, name: "filter", traits: {"smithy.api#required" => {}}))
    ConversationLogsDataSource.type = Types::ConversationLogsDataSource
    ConversationLogsDataSourceFilterBy.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    ConversationLogsDataSourceFilterBy.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    ConversationLogsDataSourceFilterBy.add_member(:input_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogsInputModeFilter, name: "inputMode", traits: {"smithy.api#required" => {}}))
    ConversationLogsDataSourceFilterBy.type = Types::ConversationLogsDataSourceFilterBy
    ConversationLogsInputModeFilter.add_member(:speech, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Speech", traits: {"smithy.api#enumValue" => "Speech"}))
    ConversationLogsInputModeFilter.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Text", traits: {"smithy.api#enumValue" => "Text"}))
    CreateBotAliasRequest.add_member(:bot_alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botAliasName", traits: {"smithy.api#required" => {}}))
    CreateBotAliasRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotAliasRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion"))
    CreateBotAliasRequest.add_member(:bot_alias_locale_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasLocaleSettingsMap, name: "botAliasLocaleSettings"))
    CreateBotAliasRequest.add_member(:conversation_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogSettings, name: "conversationLogSettings"))
    CreateBotAliasRequest.add_member(:sentiment_analysis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentAnalysisSettings, name: "sentimentAnalysisSettings"))
    CreateBotAliasRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotAliasRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateBotAliasRequest.type = Types::CreateBotAliasRequest
    CreateBotAliasResponse.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    CreateBotAliasResponse.add_member(:bot_alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botAliasName"))
    CreateBotAliasResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotAliasResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion"))
    CreateBotAliasResponse.add_member(:bot_alias_locale_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasLocaleSettingsMap, name: "botAliasLocaleSettings"))
    CreateBotAliasResponse.add_member(:conversation_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogSettings, name: "conversationLogSettings"))
    CreateBotAliasResponse.add_member(:sentiment_analysis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentAnalysisSettings, name: "sentimentAnalysisSettings"))
    CreateBotAliasResponse.add_member(:bot_alias_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasStatus, name: "botAliasStatus"))
    CreateBotAliasResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateBotAliasResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateBotAliasResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateBotAliasResponse.type = Types::CreateBotAliasResponse
    CreateBotLocaleRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotLocaleRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotLocaleRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    CreateBotLocaleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotLocaleRequest.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "nluIntentConfidenceThreshold", traits: {"smithy.api#required" => {}}))
    CreateBotLocaleRequest.add_member(:voice_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceSettings, name: "voiceSettings"))
    CreateBotLocaleRequest.add_member(:generative_ai_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeAISettings, name: "generativeAISettings"))
    CreateBotLocaleRequest.type = Types::CreateBotLocaleRequest
    CreateBotLocaleResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateBotLocaleResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    CreateBotLocaleResponse.add_member(:locale_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleName, name: "localeName"))
    CreateBotLocaleResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    CreateBotLocaleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotLocaleResponse.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "nluIntentConfidenceThreshold"))
    CreateBotLocaleResponse.add_member(:voice_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceSettings, name: "voiceSettings"))
    CreateBotLocaleResponse.add_member(:bot_locale_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleStatus, name: "botLocaleStatus"))
    CreateBotLocaleResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateBotLocaleResponse.add_member(:generative_ai_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeAISettings, name: "generativeAISettings"))
    CreateBotLocaleResponse.type = Types::CreateBotLocaleResponse
    CreateBotReplicaRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotReplicaRequest.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion", traits: {"smithy.api#required" => {}}))
    CreateBotReplicaRequest.type = Types::CreateBotReplicaRequest
    CreateBotReplicaResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateBotReplicaResponse.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion"))
    CreateBotReplicaResponse.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "sourceRegion"))
    CreateBotReplicaResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateBotReplicaResponse.add_member(:bot_replica_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotReplicaStatus, name: "botReplicaStatus"))
    CreateBotReplicaResponse.type = Types::CreateBotReplicaResponse
    CreateBotRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.add_member(:data_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPrivacy, name: "dataPrivacy", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.add_member(:bot_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "botTags"))
    CreateBotRequest.add_member(:test_bot_alias_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "testBotAliasTags"))
    CreateBotRequest.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "botType"))
    CreateBotRequest.add_member(:bot_members, ::Smithy::Schema::Shapes::MemberShape.new(target: BotMembers, name: "botMembers"))
    CreateBotRequest.add_member(:error_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorLogSettings, name: "errorLogSettings"))
    CreateBotRequest.type = Types::CreateBotRequest
    CreateBotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateBotResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName"))
    CreateBotResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    CreateBotResponse.add_member(:data_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPrivacy, name: "dataPrivacy"))
    CreateBotResponse.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds"))
    CreateBotResponse.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    CreateBotResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateBotResponse.add_member(:bot_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "botTags"))
    CreateBotResponse.add_member(:test_bot_alias_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "testBotAliasTags"))
    CreateBotResponse.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "botType"))
    CreateBotResponse.add_member(:bot_members, ::Smithy::Schema::Shapes::MemberShape.new(target: BotMembers, name: "botMembers"))
    CreateBotResponse.add_member(:error_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorLogSettings, name: "errorLogSettings"))
    CreateBotResponse.type = Types::CreateBotResponse
    CreateBotVersionRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotVersionRequest.add_member(:bot_version_locale_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionLocaleSpecification, name: "botVersionLocaleSpecification", traits: {"smithy.api#required" => {}}))
    CreateBotVersionRequest.type = Types::CreateBotVersionRequest
    CreateBotVersionResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateBotVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateBotVersionResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion"))
    CreateBotVersionResponse.add_member(:bot_version_locale_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionLocaleSpecification, name: "botVersionLocaleSpecification"))
    CreateBotVersionResponse.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    CreateBotVersionResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateBotVersionResponse.type = Types::CreateBotVersionResponse
    CreateCustomVocabularyItemsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NewCustomVocabularyItem, name: "member")
    CreateExportRequest.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportResourceSpecification, name: "resourceSpecification", traits: {"smithy.api#required" => {}}))
    CreateExportRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFileFormat, name: "fileFormat", traits: {"smithy.api#required" => {}}))
    CreateExportRequest.add_member(:file_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFilePassword, name: "filePassword"))
    CreateExportRequest.type = Types::CreateExportRequest
    CreateExportResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId"))
    CreateExportResponse.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportResourceSpecification, name: "resourceSpecification"))
    CreateExportResponse.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFileFormat, name: "fileFormat"))
    CreateExportResponse.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "exportStatus"))
    CreateExportResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateExportResponse.type = Types::CreateExportResponse
    CreateIntentRequest.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    CreateIntentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateIntentRequest.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSignature, name: "parentIntentSignature"))
    CreateIntentRequest.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    CreateIntentRequest.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookSettings, name: "dialogCodeHook"))
    CreateIntentRequest.add_member(:fulfillment_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentCodeHookSettings, name: "fulfillmentCodeHook"))
    CreateIntentRequest.add_member(:intent_confirmation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentConfirmationSetting, name: "intentConfirmationSetting"))
    CreateIntentRequest.add_member(:intent_closing_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClosingSetting, name: "intentClosingSetting"))
    CreateIntentRequest.add_member(:input_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContextsList, name: "inputContexts"))
    CreateIntentRequest.add_member(:output_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputContextsList, name: "outputContexts"))
    CreateIntentRequest.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraConfiguration, name: "kendraConfiguration"))
    CreateIntentRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntentRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntentRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntentRequest.add_member(:initial_response_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialResponseSetting, name: "initialResponseSetting"))
    CreateIntentRequest.add_member(:qn_a_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QnAIntentConfiguration, name: "qnAIntentConfiguration"))
    CreateIntentRequest.add_member(:q_in_connect_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QInConnectIntentConfiguration, name: "qInConnectIntentConfiguration"))
    CreateIntentRequest.type = Types::CreateIntentRequest
    CreateIntentResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    CreateIntentResponse.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName"))
    CreateIntentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateIntentResponse.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSignature, name: "parentIntentSignature"))
    CreateIntentResponse.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    CreateIntentResponse.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookSettings, name: "dialogCodeHook"))
    CreateIntentResponse.add_member(:fulfillment_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentCodeHookSettings, name: "fulfillmentCodeHook"))
    CreateIntentResponse.add_member(:intent_confirmation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentConfirmationSetting, name: "intentConfirmationSetting"))
    CreateIntentResponse.add_member(:intent_closing_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClosingSetting, name: "intentClosingSetting"))
    CreateIntentResponse.add_member(:input_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContextsList, name: "inputContexts"))
    CreateIntentResponse.add_member(:output_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputContextsList, name: "outputContexts"))
    CreateIntentResponse.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraConfiguration, name: "kendraConfiguration"))
    CreateIntentResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateIntentResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    CreateIntentResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    CreateIntentResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateIntentResponse.add_member(:initial_response_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialResponseSetting, name: "initialResponseSetting"))
    CreateIntentResponse.add_member(:qn_a_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QnAIntentConfiguration, name: "qnAIntentConfiguration"))
    CreateIntentResponse.add_member(:q_in_connect_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QInConnectIntentConfiguration, name: "qInConnectIntentConfiguration"))
    CreateIntentResponse.type = Types::CreateIntentResponse
    CreateResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "policy", traits: {"smithy.api#required" => {}}))
    CreateResourcePolicyRequest.type = Types::CreateResourcePolicyRequest
    CreateResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn"))
    CreateResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    CreateResourcePolicyResponse.type = Types::CreateResourcePolicyResponse
    CreateResourcePolicyStatementRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourcePolicyStatementRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "statementId", traits: {"smithy.api#required" => {}}))
    CreateResourcePolicyStatementRequest.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: Effect, name: "effect", traits: {"smithy.api#required" => {}}))
    CreateResourcePolicyStatementRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalList, name: "principal", traits: {"smithy.api#required" => {}}))
    CreateResourcePolicyStatementRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "action", traits: {"smithy.api#required" => {}}))
    CreateResourcePolicyStatementRequest.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionMap, name: "condition"))
    CreateResourcePolicyStatementRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "expectedRevisionId", traits: {"smithy.api#httpQuery" => "expectedRevisionId"}))
    CreateResourcePolicyStatementRequest.type = Types::CreateResourcePolicyStatementRequest
    CreateResourcePolicyStatementResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn"))
    CreateResourcePolicyStatementResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    CreateResourcePolicyStatementResponse.type = Types::CreateResourcePolicyStatementResponse
    CreateSlotRequest.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotName", traits: {"smithy.api#required" => {}}))
    CreateSlotRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSlotRequest.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId"))
    CreateSlotRequest.add_member(:value_elicitation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueElicitationSetting, name: "valueElicitationSetting", traits: {"smithy.api#required" => {}}))
    CreateSlotRequest.add_member(:obfuscation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ObfuscationSetting, name: "obfuscationSetting"))
    CreateSlotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotRequest.add_member(:multiple_values_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipleValuesSetting, name: "multipleValuesSetting"))
    CreateSlotRequest.add_member(:sub_slot_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotSetting, name: "subSlotSetting"))
    CreateSlotRequest.type = Types::CreateSlotRequest
    CreateSlotResponse.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId"))
    CreateSlotResponse.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotName"))
    CreateSlotResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSlotResponse.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId"))
    CreateSlotResponse.add_member(:value_elicitation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueElicitationSetting, name: "valueElicitationSetting"))
    CreateSlotResponse.add_member(:obfuscation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ObfuscationSetting, name: "obfuscationSetting"))
    CreateSlotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateSlotResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    CreateSlotResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    CreateSlotResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    CreateSlotResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateSlotResponse.add_member(:multiple_values_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipleValuesSetting, name: "multipleValuesSetting"))
    CreateSlotResponse.add_member(:sub_slot_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotSetting, name: "subSlotSetting"))
    CreateSlotResponse.type = Types::CreateSlotResponse
    CreateSlotTypeRequest.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotTypeName", traits: {"smithy.api#required" => {}}))
    CreateSlotTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSlotTypeRequest.add_member(:slot_type_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeValues, name: "slotTypeValues"))
    CreateSlotTypeRequest.add_member(:value_selection_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueSelectionSetting, name: "valueSelectionSetting"))
    CreateSlotTypeRequest.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSignature, name: "parentSlotTypeSignature"))
    CreateSlotTypeRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotTypeRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotTypeRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSlotTypeRequest.add_member(:external_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceSetting, name: "externalSourceSetting"))
    CreateSlotTypeRequest.add_member(:composite_slot_type_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSlotTypeSetting, name: "compositeSlotTypeSetting"))
    CreateSlotTypeRequest.type = Types::CreateSlotTypeRequest
    CreateSlotTypeResponse.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotTypeId"))
    CreateSlotTypeResponse.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotTypeName"))
    CreateSlotTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSlotTypeResponse.add_member(:slot_type_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeValues, name: "slotTypeValues"))
    CreateSlotTypeResponse.add_member(:value_selection_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueSelectionSetting, name: "valueSelectionSetting"))
    CreateSlotTypeResponse.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSignature, name: "parentSlotTypeSignature"))
    CreateSlotTypeResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    CreateSlotTypeResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    CreateSlotTypeResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    CreateSlotTypeResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateSlotTypeResponse.add_member(:external_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceSetting, name: "externalSourceSetting"))
    CreateSlotTypeResponse.add_member(:composite_slot_type_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSlotTypeSetting, name: "compositeSlotTypeSetting"))
    CreateSlotTypeResponse.type = Types::CreateSlotTypeResponse
    CreateTestSetDiscrepancyReportRequest.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTestSetDiscrepancyReportRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetDiscrepancyReportResourceTarget, name: "target", traits: {"smithy.api#required" => {}}))
    CreateTestSetDiscrepancyReportRequest.type = Types::CreateTestSetDiscrepancyReportRequest
    CreateTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetDiscrepancyReportId"))
    CreateTestSetDiscrepancyReportResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    CreateTestSetDiscrepancyReportResponse.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    CreateTestSetDiscrepancyReportResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetDiscrepancyReportResourceTarget, name: "target"))
    CreateTestSetDiscrepancyReportResponse.type = Types::CreateTestSetDiscrepancyReportResponse
    CreateUploadUrlRequest.type = Types::CreateUploadUrlRequest
    CreateUploadUrlResponse.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId"))
    CreateUploadUrlResponse.add_member(:upload_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "uploadUrl"))
    CreateUploadUrlResponse.type = Types::CreateUploadUrlResponse
    CustomPayload.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPayloadValue, name: "value", traits: {"smithy.api#required" => {}}))
    CustomPayload.type = Types::CustomPayload
    CustomVocabularyEntryId.add_member(:item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemId, name: "itemId", traits: {"smithy.api#required" => {}}))
    CustomVocabularyEntryId.type = Types::CustomVocabularyEntryId
    CustomVocabularyExportSpecification.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    CustomVocabularyExportSpecification.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#required" => {}}))
    CustomVocabularyExportSpecification.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    CustomVocabularyExportSpecification.type = Types::CustomVocabularyExportSpecification
    CustomVocabularyImportSpecification.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    CustomVocabularyImportSpecification.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#required" => {}}))
    CustomVocabularyImportSpecification.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    CustomVocabularyImportSpecification.type = Types::CustomVocabularyImportSpecification
    CustomVocabularyItem.add_member(:item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemId, name: "itemId", traits: {"smithy.api#required" => {}}))
    CustomVocabularyItem.add_member(:phrase, ::Smithy::Schema::Shapes::MemberShape.new(target: Phrase, name: "phrase", traits: {"smithy.api#required" => {}}))
    CustomVocabularyItem.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: Weight, name: "weight"))
    CustomVocabularyItem.add_member(:display_as, ::Smithy::Schema::Shapes::MemberShape.new(target: Phrase, name: "displayAs"))
    CustomVocabularyItem.type = Types::CustomVocabularyItem
    CustomVocabularyItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyItem, name: "member")
    CustomVocabularyStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ready", traits: {"smithy.api#enumValue" => "Ready"}))
    CustomVocabularyStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    CustomVocabularyStatus.add_member(:exporting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Exporting", traits: {"smithy.api#enumValue" => "Exporting"}))
    CustomVocabularyStatus.add_member(:importing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Importing", traits: {"smithy.api#enumValue" => "Importing"}))
    CustomVocabularyStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    DTMFSpecification.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxUtteranceDigits, name: "maxLength", traits: {"smithy.api#required" => {}}))
    DTMFSpecification.add_member(:end_timeout_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInMilliSeconds, name: "endTimeoutMs", traits: {"smithy.api#required" => {}}))
    DTMFSpecification.add_member(:deletion_character, ::Smithy::Schema::Shapes::MemberShape.new(target: DTMFCharacter, name: "deletionCharacter", traits: {"smithy.api#required" => {}}))
    DTMFSpecification.add_member(:end_character, ::Smithy::Schema::Shapes::MemberShape.new(target: DTMFCharacter, name: "endCharacter", traits: {"smithy.api#required" => {}}))
    DTMFSpecification.type = Types::DTMFSpecification
    DataPrivacy.add_member(:child_directed, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildDirected, name: "childDirected", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DataPrivacy.type = Types::DataPrivacy
    DataSourceConfiguration.add_member(:opensearch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpensearchConfiguration, name: "opensearchConfiguration"))
    DataSourceConfiguration.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QnAKendraConfiguration, name: "kendraConfiguration"))
    DataSourceConfiguration.add_member(:bedrock_knowledge_store_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockKnowledgeStoreConfiguration, name: "bedrockKnowledgeStoreConfiguration"))
    DataSourceConfiguration.type = Types::DataSourceConfiguration
    DateRangeFilter.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    DateRangeFilter.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    DateRangeFilter.type = Types::DateRangeFilter
    DefaultConditionalBranch.add_member(:next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "nextStep"))
    DefaultConditionalBranch.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "response"))
    DefaultConditionalBranch.type = Types::DefaultConditionalBranch
    DeleteBotAliasRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotAliasRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotAliasRequest.add_member(:skip_resource_in_use_check, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipResourceInUseCheck, name: "skipResourceInUseCheck", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteBotAliasRequest.type = Types::DeleteBotAliasRequest
    DeleteBotAliasResponse.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    DeleteBotAliasResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DeleteBotAliasResponse.add_member(:bot_alias_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasStatus, name: "botAliasStatus"))
    DeleteBotAliasResponse.type = Types::DeleteBotAliasResponse
    DeleteBotLocaleRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotLocaleRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotLocaleRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotLocaleRequest.type = Types::DeleteBotLocaleRequest
    DeleteBotLocaleResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DeleteBotLocaleResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    DeleteBotLocaleResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DeleteBotLocaleResponse.add_member(:bot_locale_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleStatus, name: "botLocaleStatus"))
    DeleteBotLocaleResponse.type = Types::DeleteBotLocaleResponse
    DeleteBotReplicaRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotReplicaRequest.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotReplicaRequest.type = Types::DeleteBotReplicaRequest
    DeleteBotReplicaResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DeleteBotReplicaResponse.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion"))
    DeleteBotReplicaResponse.add_member(:bot_replica_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotReplicaStatus, name: "botReplicaStatus"))
    DeleteBotReplicaResponse.type = Types::DeleteBotReplicaResponse
    DeleteBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotRequest.add_member(:skip_resource_in_use_check, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipResourceInUseCheck, name: "skipResourceInUseCheck", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteBotRequest.type = Types::DeleteBotRequest
    DeleteBotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DeleteBotResponse.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    DeleteBotResponse.type = Types::DeleteBotResponse
    DeleteBotVersionRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotVersionRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotVersionRequest.add_member(:skip_resource_in_use_check, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipResourceInUseCheck, name: "skipResourceInUseCheck", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteBotVersionRequest.type = Types::DeleteBotVersionRequest
    DeleteBotVersionResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DeleteBotVersionResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion"))
    DeleteBotVersionResponse.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    DeleteBotVersionResponse.type = Types::DeleteBotVersionResponse
    DeleteCustomVocabularyItemsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyEntryId, name: "member")
    DeleteCustomVocabularyRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomVocabularyRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomVocabularyRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomVocabularyRequest.type = Types::DeleteCustomVocabularyRequest
    DeleteCustomVocabularyResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DeleteCustomVocabularyResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    DeleteCustomVocabularyResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DeleteCustomVocabularyResponse.add_member(:custom_vocabulary_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyStatus, name: "customVocabularyStatus"))
    DeleteCustomVocabularyResponse.type = Types::DeleteCustomVocabularyResponse
    DeleteExportRequest.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExportRequest.type = Types::DeleteExportRequest
    DeleteExportResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId"))
    DeleteExportResponse.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "exportStatus"))
    DeleteExportResponse.type = Types::DeleteExportResponse
    DeleteImportRequest.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportRequest.type = Types::DeleteImportRequest
    DeleteImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId"))
    DeleteImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, name: "importStatus"))
    DeleteImportResponse.type = Types::DeleteImportResponse
    DeleteIntentRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntentRequest.type = Types::DeleteIntentRequest
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "expectedRevisionId", traits: {"smithy.api#httpQuery" => "expectedRevisionId"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn"))
    DeleteResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteResourcePolicyStatementRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyStatementRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "statementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyStatementRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "expectedRevisionId", traits: {"smithy.api#httpQuery" => "expectedRevisionId"}))
    DeleteResourcePolicyStatementRequest.type = Types::DeleteResourcePolicyStatementRequest
    DeleteResourcePolicyStatementResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn"))
    DeleteResourcePolicyStatementResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    DeleteResourcePolicyStatementResponse.type = Types::DeleteResourcePolicyStatementResponse
    DeleteSlotRequest.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotRequest.type = Types::DeleteSlotRequest
    DeleteSlotTypeRequest.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSlotTypeRequest.add_member(:skip_resource_in_use_check, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipResourceInUseCheck, name: "skipResourceInUseCheck", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteSlotTypeRequest.type = Types::DeleteSlotTypeRequest
    DeleteTestSetRequest.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTestSetRequest.type = Types::DeleteTestSetRequest
    DeleteUtterancesRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUtterancesRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpQuery" => "localeId"}))
    DeleteUtterancesRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId"}))
    DeleteUtterancesRequest.type = Types::DeleteUtterancesRequest
    DeleteUtterancesResponse.type = Types::DeleteUtterancesResponse
    DescribeBotAliasRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotAliasRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotAliasRequest.type = Types::DescribeBotAliasRequest
    DescribeBotAliasResponse.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    DescribeBotAliasResponse.add_member(:bot_alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botAliasName"))
    DescribeBotAliasResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeBotAliasResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    DescribeBotAliasResponse.add_member(:bot_alias_locale_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasLocaleSettingsMap, name: "botAliasLocaleSettings"))
    DescribeBotAliasResponse.add_member(:conversation_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogSettings, name: "conversationLogSettings"))
    DescribeBotAliasResponse.add_member(:sentiment_analysis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentAnalysisSettings, name: "sentimentAnalysisSettings"))
    DescribeBotAliasResponse.add_member(:bot_alias_history_events, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasHistoryEventsList, name: "botAliasHistoryEvents"))
    DescribeBotAliasResponse.add_member(:bot_alias_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasStatus, name: "botAliasStatus"))
    DescribeBotAliasResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeBotAliasResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeBotAliasResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeBotAliasResponse.add_member(:parent_bot_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentBotNetworks, name: "parentBotNetworks"))
    DescribeBotAliasResponse.type = Types::DescribeBotAliasResponse
    DescribeBotLocaleRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotLocaleRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotLocaleRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotLocaleRequest.type = Types::DescribeBotLocaleRequest
    DescribeBotLocaleResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeBotLocaleResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    DescribeBotLocaleResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DescribeBotLocaleResponse.add_member(:locale_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleName, name: "localeName"))
    DescribeBotLocaleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeBotLocaleResponse.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "nluIntentConfidenceThreshold"))
    DescribeBotLocaleResponse.add_member(:voice_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceSettings, name: "voiceSettings"))
    DescribeBotLocaleResponse.add_member(:intents_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "intentsCount"))
    DescribeBotLocaleResponse.add_member(:slot_types_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "slotTypesCount"))
    DescribeBotLocaleResponse.add_member(:bot_locale_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleStatus, name: "botLocaleStatus"))
    DescribeBotLocaleResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeBotLocaleResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeBotLocaleResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeBotLocaleResponse.add_member(:last_build_submitted_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastBuildSubmittedDateTime"))
    DescribeBotLocaleResponse.add_member(:bot_locale_history_events, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleHistoryEventsList, name: "botLocaleHistoryEvents"))
    DescribeBotLocaleResponse.add_member(:recommended_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActions, name: "recommendedActions"))
    DescribeBotLocaleResponse.add_member(:generative_ai_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeAISettings, name: "generativeAISettings"))
    DescribeBotLocaleResponse.type = Types::DescribeBotLocaleResponse
    DescribeBotRecommendationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotRecommendationRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotRecommendationRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotRecommendationRequest.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotRecommendationRequest.type = Types::DescribeBotRecommendationRequest
    DescribeBotRecommendationResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeBotRecommendationResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    DescribeBotRecommendationResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DescribeBotRecommendationResponse.add_member(:bot_recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationStatus, name: "botRecommendationStatus"))
    DescribeBotRecommendationResponse.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId"))
    DescribeBotRecommendationResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeBotRecommendationResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeBotRecommendationResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeBotRecommendationResponse.add_member(:transcript_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptSourceSetting, name: "transcriptSourceSetting"))
    DescribeBotRecommendationResponse.add_member(:encryption_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSetting, name: "encryptionSetting"))
    DescribeBotRecommendationResponse.add_member(:bot_recommendation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationResults, name: "botRecommendationResults"))
    DescribeBotRecommendationResponse.type = Types::DescribeBotRecommendationResponse
    DescribeBotReplicaRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotReplicaRequest.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotReplicaRequest.type = Types::DescribeBotReplicaRequest
    DescribeBotReplicaResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeBotReplicaResponse.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion"))
    DescribeBotReplicaResponse.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "sourceRegion"))
    DescribeBotReplicaResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeBotReplicaResponse.add_member(:bot_replica_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotReplicaStatus, name: "botReplicaStatus"))
    DescribeBotReplicaResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeBotReplicaResponse.type = Types::DescribeBotReplicaResponse
    DescribeBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotRequest.type = Types::DescribeBotRequest
    DescribeBotResourceGenerationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotResourceGenerationRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotResourceGenerationRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotResourceGenerationRequest.add_member(:generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "generationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotResourceGenerationRequest.type = Types::DescribeBotResourceGenerationRequest
    DescribeBotResourceGenerationResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeBotResourceGenerationResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    DescribeBotResourceGenerationResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DescribeBotResourceGenerationResponse.add_member(:generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "generationId"))
    DescribeBotResourceGenerationResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeBotResourceGenerationResponse.add_member(:generation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationStatus, name: "generationStatus"))
    DescribeBotResourceGenerationResponse.add_member(:generation_input_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationInput, name: "generationInputPrompt"))
    DescribeBotResourceGenerationResponse.add_member(:generated_bot_locale_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "generatedBotLocaleUrl"))
    DescribeBotResourceGenerationResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeBotResourceGenerationResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn"))
    DescribeBotResourceGenerationResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeBotResourceGenerationResponse.type = Types::DescribeBotResourceGenerationResponse
    DescribeBotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeBotResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName"))
    DescribeBotResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeBotResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    DescribeBotResponse.add_member(:data_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPrivacy, name: "dataPrivacy"))
    DescribeBotResponse.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds"))
    DescribeBotResponse.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    DescribeBotResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeBotResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeBotResponse.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "botType"))
    DescribeBotResponse.add_member(:bot_members, ::Smithy::Schema::Shapes::MemberShape.new(target: BotMembers, name: "botMembers"))
    DescribeBotResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeBotResponse.add_member(:error_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorLogSettings, name: "errorLogSettings"))
    DescribeBotResponse.type = Types::DescribeBotResponse
    DescribeBotVersionRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotVersionRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBotVersionRequest.type = Types::DescribeBotVersionRequest
    DescribeBotVersionResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeBotVersionResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName"))
    DescribeBotVersionResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion"))
    DescribeBotVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeBotVersionResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    DescribeBotVersionResponse.add_member(:data_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPrivacy, name: "dataPrivacy"))
    DescribeBotVersionResponse.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds"))
    DescribeBotVersionResponse.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    DescribeBotVersionResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeBotVersionResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeBotVersionResponse.add_member(:parent_bot_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentBotNetworks, name: "parentBotNetworks"))
    DescribeBotVersionResponse.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "botType"))
    DescribeBotVersionResponse.add_member(:bot_members, ::Smithy::Schema::Shapes::MemberShape.new(target: BotMembers, name: "botMembers"))
    DescribeBotVersionResponse.type = Types::DescribeBotVersionResponse
    DescribeCustomVocabularyMetadataRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCustomVocabularyMetadataRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCustomVocabularyMetadataRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCustomVocabularyMetadataRequest.type = Types::DescribeCustomVocabularyMetadataRequest
    DescribeCustomVocabularyMetadataResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeCustomVocabularyMetadataResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    DescribeCustomVocabularyMetadataResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DescribeCustomVocabularyMetadataResponse.add_member(:custom_vocabulary_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyStatus, name: "customVocabularyStatus"))
    DescribeCustomVocabularyMetadataResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeCustomVocabularyMetadataResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeCustomVocabularyMetadataResponse.type = Types::DescribeCustomVocabularyMetadataResponse
    DescribeExportRequest.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeExportRequest.type = Types::DescribeExportRequest
    DescribeExportResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId"))
    DescribeExportResponse.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportResourceSpecification, name: "resourceSpecification"))
    DescribeExportResponse.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFileFormat, name: "fileFormat"))
    DescribeExportResponse.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "exportStatus"))
    DescribeExportResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeExportResponse.add_member(:download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "downloadUrl"))
    DescribeExportResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeExportResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeExportResponse.type = Types::DescribeExportResponse
    DescribeImportRequest.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeImportRequest.type = Types::DescribeImportRequest
    DescribeImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId"))
    DescribeImportResponse.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportResourceSpecification, name: "resourceSpecification"))
    DescribeImportResponse.add_member(:imported_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedResourceId, name: "importedResourceId"))
    DescribeImportResponse.add_member(:imported_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "importedResourceName"))
    DescribeImportResponse.add_member(:merge_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeStrategy, name: "mergeStrategy"))
    DescribeImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, name: "importStatus"))
    DescribeImportResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeImportResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeImportResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeImportResponse.type = Types::DescribeImportResponse
    DescribeIntentRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIntentRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIntentRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIntentRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIntentRequest.type = Types::DescribeIntentRequest
    DescribeIntentResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    DescribeIntentResponse.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName"))
    DescribeIntentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeIntentResponse.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSignature, name: "parentIntentSignature"))
    DescribeIntentResponse.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    DescribeIntentResponse.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookSettings, name: "dialogCodeHook"))
    DescribeIntentResponse.add_member(:fulfillment_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentCodeHookSettings, name: "fulfillmentCodeHook"))
    DescribeIntentResponse.add_member(:slot_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotPrioritiesList, name: "slotPriorities"))
    DescribeIntentResponse.add_member(:intent_confirmation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentConfirmationSetting, name: "intentConfirmationSetting"))
    DescribeIntentResponse.add_member(:intent_closing_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClosingSetting, name: "intentClosingSetting"))
    DescribeIntentResponse.add_member(:input_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContextsList, name: "inputContexts"))
    DescribeIntentResponse.add_member(:output_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputContextsList, name: "outputContexts"))
    DescribeIntentResponse.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraConfiguration, name: "kendraConfiguration"))
    DescribeIntentResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeIntentResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    DescribeIntentResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DescribeIntentResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeIntentResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeIntentResponse.add_member(:initial_response_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialResponseSetting, name: "initialResponseSetting"))
    DescribeIntentResponse.add_member(:qn_a_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QnAIntentConfiguration, name: "qnAIntentConfiguration"))
    DescribeIntentResponse.add_member(:q_in_connect_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QInConnectIntentConfiguration, name: "qInConnectIntentConfiguration"))
    DescribeIntentResponse.type = Types::DescribeIntentResponse
    DescribeResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn"))
    DescribeResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "policy"))
    DescribeResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeSlotRequest.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotRequest.type = Types::DescribeSlotRequest
    DescribeSlotResponse.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId"))
    DescribeSlotResponse.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotName"))
    DescribeSlotResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeSlotResponse.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId"))
    DescribeSlotResponse.add_member(:value_elicitation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueElicitationSetting, name: "valueElicitationSetting"))
    DescribeSlotResponse.add_member(:obfuscation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ObfuscationSetting, name: "obfuscationSetting"))
    DescribeSlotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeSlotResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    DescribeSlotResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DescribeSlotResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    DescribeSlotResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeSlotResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeSlotResponse.add_member(:multiple_values_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipleValuesSetting, name: "multipleValuesSetting"))
    DescribeSlotResponse.add_member(:sub_slot_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotSetting, name: "subSlotSetting"))
    DescribeSlotResponse.type = Types::DescribeSlotResponse
    DescribeSlotTypeRequest.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotTypeRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotTypeRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotTypeRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSlotTypeRequest.type = Types::DescribeSlotTypeRequest
    DescribeSlotTypeResponse.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotTypeId"))
    DescribeSlotTypeResponse.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotTypeName"))
    DescribeSlotTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeSlotTypeResponse.add_member(:slot_type_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeValues, name: "slotTypeValues"))
    DescribeSlotTypeResponse.add_member(:value_selection_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueSelectionSetting, name: "valueSelectionSetting"))
    DescribeSlotTypeResponse.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSignature, name: "parentSlotTypeSignature"))
    DescribeSlotTypeResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    DescribeSlotTypeResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    DescribeSlotTypeResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    DescribeSlotTypeResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeSlotTypeResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeSlotTypeResponse.add_member(:external_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceSetting, name: "externalSourceSetting"))
    DescribeSlotTypeResponse.add_member(:composite_slot_type_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSlotTypeSetting, name: "compositeSlotTypeSetting"))
    DescribeSlotTypeResponse.type = Types::DescribeSlotTypeResponse
    DescribeTestExecutionRequest.add_member(:test_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testExecutionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTestExecutionRequest.type = Types::DescribeTestExecutionRequest
    DescribeTestExecutionResponse.add_member(:test_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testExecutionId"))
    DescribeTestExecutionResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeTestExecutionResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeTestExecutionResponse.add_member(:test_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionStatus, name: "testExecutionStatus"))
    DescribeTestExecutionResponse.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    DescribeTestExecutionResponse.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName"))
    DescribeTestExecutionResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionTarget, name: "target"))
    DescribeTestExecutionResponse.add_member(:api_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionApiMode, name: "apiMode"))
    DescribeTestExecutionResponse.add_member(:test_execution_modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionModality, name: "testExecutionModality"))
    DescribeTestExecutionResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeTestExecutionResponse.type = Types::DescribeTestExecutionResponse
    DescribeTestSetDiscrepancyReportRequest.add_member(:test_set_discrepancy_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetDiscrepancyReportId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTestSetDiscrepancyReportRequest.type = Types::DescribeTestSetDiscrepancyReportRequest
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetDiscrepancyReportId"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetDiscrepancyReportResourceTarget, name: "target"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetDiscrepancyReportStatus, name: "testSetDiscrepancyReportStatus"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:last_updated_data_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDataTime"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_top_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetDiscrepancyErrors, name: "testSetDiscrepancyTopErrors"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_raw_output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "testSetDiscrepancyRawOutputUrl"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeTestSetDiscrepancyReportResponse.type = Types::DescribeTestSetDiscrepancyReportResponse
    DescribeTestSetGenerationRequest.add_member(:test_set_generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetGenerationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTestSetGenerationRequest.type = Types::DescribeTestSetGenerationRequest
    DescribeTestSetGenerationResponse.add_member(:test_set_generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetGenerationId"))
    DescribeTestSetGenerationResponse.add_member(:test_set_generation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetGenerationStatus, name: "testSetGenerationStatus"))
    DescribeTestSetGenerationResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    DescribeTestSetGenerationResponse.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    DescribeTestSetGenerationResponse.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName"))
    DescribeTestSetGenerationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeTestSetGenerationResponse.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStorageLocation, name: "storageLocation"))
    DescribeTestSetGenerationResponse.add_member(:generation_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetGenerationDataSource, name: "generationDataSource"))
    DescribeTestSetGenerationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    DescribeTestSetGenerationResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeTestSetGenerationResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeTestSetGenerationResponse.type = Types::DescribeTestSetGenerationResponse
    DescribeTestSetRequest.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTestSetRequest.type = Types::DescribeTestSetRequest
    DescribeTestSetResponse.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    DescribeTestSetResponse.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName"))
    DescribeTestSetResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DescribeTestSetResponse.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetModality, name: "modality"))
    DescribeTestSetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStatus, name: "status"))
    DescribeTestSetResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    DescribeTestSetResponse.add_member(:num_turns, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "numTurns"))
    DescribeTestSetResponse.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStorageLocation, name: "storageLocation"))
    DescribeTestSetResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    DescribeTestSetResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    DescribeTestSetResponse.type = Types::DescribeTestSetResponse
    DescriptiveBotBuilderSpecification.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DescriptiveBotBuilderSpecification.add_member(:bedrock_model_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelSpecification, name: "bedrockModelSpecification"))
    DescriptiveBotBuilderSpecification.type = Types::DescriptiveBotBuilderSpecification
    DialogAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogActionType, name: "type", traits: {"smithy.api#required" => {}}))
    DialogAction.add_member(:slot_to_elicit, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotToElicit"))
    DialogAction.add_member(:suppress_next_message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "suppressNextMessage"))
    DialogAction.type = Types::DialogAction
    DialogActionType.add_member(:elicit_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElicitIntent", traits: {"smithy.api#enumValue" => "ElicitIntent"}))
    DialogActionType.add_member(:start_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartIntent", traits: {"smithy.api#enumValue" => "StartIntent"}))
    DialogActionType.add_member(:elicit_slot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElicitSlot", traits: {"smithy.api#enumValue" => "ElicitSlot"}))
    DialogActionType.add_member(:evaluate_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EvaluateConditional", traits: {"smithy.api#enumValue" => "EvaluateConditional"}))
    DialogActionType.add_member(:invoke_dialog_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvokeDialogCodeHook", traits: {"smithy.api#enumValue" => "InvokeDialogCodeHook"}))
    DialogActionType.add_member(:confirm_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConfirmIntent", traits: {"smithy.api#enumValue" => "ConfirmIntent"}))
    DialogActionType.add_member(:fulfill_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FulfillIntent", traits: {"smithy.api#enumValue" => "FulfillIntent"}))
    DialogActionType.add_member(:close_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloseIntent", traits: {"smithy.api#enumValue" => "CloseIntent"}))
    DialogActionType.add_member(:end_conversation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EndConversation", traits: {"smithy.api#enumValue" => "EndConversation"}))
    DialogCodeHookInvocationSetting.add_member(:enable_code_hook_invocation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableCodeHookInvocation", traits: {"smithy.api#required" => {}}))
    DialogCodeHookInvocationSetting.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "active", traits: {"smithy.api#required" => {}}))
    DialogCodeHookInvocationSetting.add_member(:invocation_label, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "invocationLabel"))
    DialogCodeHookInvocationSetting.add_member(:post_code_hook_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PostDialogCodeHookInvocationSpecification, name: "postCodeHookSpecification", traits: {"smithy.api#required" => {}}))
    DialogCodeHookInvocationSetting.type = Types::DialogCodeHookInvocationSetting
    DialogCodeHookSettings.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DialogCodeHookSettings.type = Types::DialogCodeHookSettings
    DialogState.add_member(:dialog_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogAction, name: "dialogAction"))
    DialogState.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentOverride, name: "intent"))
    DialogState.add_member(:session_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "sessionAttributes"))
    DialogState.type = Types::DialogState
    Effect.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Allow", traits: {"smithy.api#enumValue" => "Allow"}))
    Effect.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deny", traits: {"smithy.api#enumValue" => "Deny"}))
    ElicitationCodeHookInvocationSetting.add_member(:enable_code_hook_invocation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableCodeHookInvocation", traits: {"smithy.api#required" => {}}))
    ElicitationCodeHookInvocationSetting.add_member(:invocation_label, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "invocationLabel"))
    ElicitationCodeHookInvocationSetting.type = Types::ElicitationCodeHookInvocationSetting
    EncryptionSetting.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    EncryptionSetting.add_member(:bot_locale_export_password, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePassword, name: "botLocaleExportPassword"))
    EncryptionSetting.add_member(:associated_transcripts_password, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePassword, name: "associatedTranscriptsPassword"))
    EncryptionSetting.type = Types::EncryptionSetting
    ErrorCode.add_member(:duplicate_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_INPUT", traits: {"smithy.api#enumValue" => "DUPLICATE_INPUT"}))
    ErrorCode.add_member(:resource_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_DOES_NOT_EXIST", traits: {"smithy.api#enumValue" => "RESOURCE_DOES_NOT_EXIST"}))
    ErrorCode.add_member(:resource_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "RESOURCE_ALREADY_EXISTS"}))
    ErrorCode.add_member(:internal_server_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_FAILURE"}))
    ErrorLogSettings.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    ErrorLogSettings.type = Types::ErrorLogSettings
    ExactResponseFields.add_member(:question_field, ::Smithy::Schema::Shapes::MemberShape.new(target: QuestionField, name: "questionField", traits: {"smithy.api#required" => {}}))
    ExactResponseFields.add_member(:answer_field, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerField, name: "answerField", traits: {"smithy.api#required" => {}}))
    ExactResponseFields.type = Types::ExactResponseFields
    ExecutionErrorDetails.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ExecutionErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    ExecutionErrorDetails.type = Types::ExecutionErrorDetails
    ExportFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    ExportFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    ExportFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    ExportFilter.type = Types::ExportFilter
    ExportFilterName.add_member(:export_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExportResourceType", traits: {"smithy.api#enumValue" => "ExportResourceType"}))
    ExportFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    ExportFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    ExportFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilter, name: "member")
    ExportResourceSpecification.add_member(:bot_export_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BotExportSpecification, name: "botExportSpecification"))
    ExportResourceSpecification.add_member(:bot_locale_export_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleExportSpecification, name: "botLocaleExportSpecification"))
    ExportResourceSpecification.add_member(:custom_vocabulary_export_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyExportSpecification, name: "customVocabularyExportSpecification"))
    ExportResourceSpecification.add_member(:test_set_export_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetExportSpecification, name: "testSetExportSpecification"))
    ExportResourceSpecification.type = Types::ExportResourceSpecification
    ExportSortAttribute.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUpdatedDateTime", traits: {"smithy.api#enumValue" => "LastUpdatedDateTime"}))
    ExportSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    ExportSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    ExportSortBy.type = Types::ExportSortBy
    ExportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    ExportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completed", traits: {"smithy.api#enumValue" => "Completed"}))
    ExportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    ExportStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    ExportSummary.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId"))
    ExportSummary.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportResourceSpecification, name: "resourceSpecification"))
    ExportSummary.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFileFormat, name: "fileFormat"))
    ExportSummary.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "exportStatus"))
    ExportSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    ExportSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    ExportSummary.type = Types::ExportSummary
    ExportSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummary, name: "member")
    ExternalSourceSetting.add_member(:grammar_slot_type_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: GrammarSlotTypeSetting, name: "grammarSlotTypeSetting"))
    ExternalSourceSetting.type = Types::ExternalSourceSetting
    FailedCustomVocabularyItem.add_member(:item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemId, name: "itemId"))
    FailedCustomVocabularyItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    FailedCustomVocabularyItem.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    FailedCustomVocabularyItem.type = Types::FailedCustomVocabularyItem
    FailedCustomVocabularyItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCustomVocabularyItem, name: "member")
    FailureReasons.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "member")
    FilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member")
    FulfillmentCodeHookSettings.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    FulfillmentCodeHookSettings.add_member(:post_fulfillment_status_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PostFulfillmentStatusSpecification, name: "postFulfillmentStatusSpecification"))
    FulfillmentCodeHookSettings.add_member(:fulfillment_updates_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentUpdatesSpecification, name: "fulfillmentUpdatesSpecification"))
    FulfillmentCodeHookSettings.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "active"))
    FulfillmentCodeHookSettings.type = Types::FulfillmentCodeHookSettings
    FulfillmentStartResponseSpecification.add_member(:delay_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentStartResponseDelay, name: "delayInSeconds", traits: {"smithy.api#required" => {}}))
    FulfillmentStartResponseSpecification.add_member(:message_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroupsList, name: "messageGroups", traits: {"smithy.api#required" => {}}))
    FulfillmentStartResponseSpecification.add_member(:allow_interrupt, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowInterrupt"))
    FulfillmentStartResponseSpecification.type = Types::FulfillmentStartResponseSpecification
    FulfillmentUpdateResponseSpecification.add_member(:frequency_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentUpdateResponseFrequency, name: "frequencyInSeconds", traits: {"smithy.api#required" => {}}))
    FulfillmentUpdateResponseSpecification.add_member(:message_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroupsList, name: "messageGroups", traits: {"smithy.api#required" => {}}))
    FulfillmentUpdateResponseSpecification.add_member(:allow_interrupt, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowInterrupt"))
    FulfillmentUpdateResponseSpecification.type = Types::FulfillmentUpdateResponseSpecification
    FulfillmentUpdatesSpecification.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "active", traits: {"smithy.api#required" => {}}))
    FulfillmentUpdatesSpecification.add_member(:start_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentStartResponseSpecification, name: "startResponse"))
    FulfillmentUpdatesSpecification.add_member(:update_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentUpdateResponseSpecification, name: "updateResponse"))
    FulfillmentUpdatesSpecification.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTimeout, name: "timeoutInSeconds"))
    FulfillmentUpdatesSpecification.type = Types::FulfillmentUpdatesSpecification
    GenerateBotElementRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#required" => {}}))
    GenerateBotElementRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateBotElementRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateBotElementRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateBotElementRequest.type = Types::GenerateBotElementRequest
    GenerateBotElementResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    GenerateBotElementResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    GenerateBotElementResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    GenerateBotElementResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    GenerateBotElementResponse.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    GenerateBotElementResponse.type = Types::GenerateBotElementResponse
    GenerationSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationSortByAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    GenerationSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    GenerationSortBy.type = Types::GenerationSortBy
    GenerationSortByAttribute.add_member(:creation_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "creationStartTime", traits: {"smithy.api#enumValue" => "creationStartTime"}))
    GenerationSortByAttribute.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "lastUpdatedTime", traits: {"smithy.api#enumValue" => "lastUpdatedTime"}))
    GenerationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    GenerationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Complete", traits: {"smithy.api#enumValue" => "Complete"}))
    GenerationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    GenerationSummary.add_member(:generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "generationId"))
    GenerationSummary.add_member(:generation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationStatus, name: "generationStatus"))
    GenerationSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    GenerationSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    GenerationSummary.type = Types::GenerationSummary
    GenerationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationSummary, name: "member")
    GenerativeAISettings.add_member(:runtime_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeSettings, name: "runtimeSettings"))
    GenerativeAISettings.add_member(:buildtime_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildtimeSettings, name: "buildtimeSettings"))
    GenerativeAISettings.type = Types::GenerativeAISettings
    GetTestExecutionArtifactsUrlRequest.add_member(:test_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testExecutionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTestExecutionArtifactsUrlRequest.type = Types::GetTestExecutionArtifactsUrlRequest
    GetTestExecutionArtifactsUrlResponse.add_member(:test_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testExecutionId"))
    GetTestExecutionArtifactsUrlResponse.add_member(:download_artifacts_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedS3Url, name: "downloadArtifactsUrl"))
    GetTestExecutionArtifactsUrlResponse.type = Types::GetTestExecutionArtifactsUrlResponse
    GrammarSlotTypeSetting.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: GrammarSlotTypeSource, name: "source"))
    GrammarSlotTypeSetting.type = Types::GrammarSlotTypeSetting
    GrammarSlotTypeSource.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName", traits: {"smithy.api#required" => {}}))
    GrammarSlotTypeSource.add_member(:s3_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectPath, name: "s3ObjectKey", traits: {"smithy.api#required" => {}}))
    GrammarSlotTypeSource.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    GrammarSlotTypeSource.type = Types::GrammarSlotTypeSource
    ImageResponseCard.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentTitle, name: "title", traits: {"smithy.api#required" => {}}))
    ImageResponseCard.add_member(:subtitle, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentTitle, name: "subtitle"))
    ImageResponseCard.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentUrl, name: "imageUrl"))
    ImageResponseCard.add_member(:buttons, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonsList, name: "buttons"))
    ImageResponseCard.type = Types::ImageResponseCard
    ImportExportFileFormat.add_member(:lex_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LexJson", traits: {"smithy.api#enumValue" => "LexJson"}))
    ImportExportFileFormat.add_member(:tsv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TSV", traits: {"smithy.api#enumValue" => "TSV"}))
    ImportExportFileFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ImportFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    ImportFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    ImportFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    ImportFilter.type = Types::ImportFilter
    ImportFilterName.add_member(:import_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImportResourceType", traits: {"smithy.api#enumValue" => "ImportResourceType"}))
    ImportFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    ImportFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    ImportFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFilter, name: "member")
    ImportResourceSpecification.add_member(:bot_import_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BotImportSpecification, name: "botImportSpecification"))
    ImportResourceSpecification.add_member(:bot_locale_import_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleImportSpecification, name: "botLocaleImportSpecification"))
    ImportResourceSpecification.add_member(:custom_vocabulary_import_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyImportSpecification, name: "customVocabularyImportSpecification"))
    ImportResourceSpecification.add_member(:test_set_import_resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetImportResourceSpecification, name: "testSetImportResourceSpecification"))
    ImportResourceSpecification.type = Types::ImportResourceSpecification
    ImportResourceType.add_member(:bot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bot", traits: {"smithy.api#enumValue" => "Bot"}))
    ImportResourceType.add_member(:bot_locale, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BotLocale", traits: {"smithy.api#enumValue" => "BotLocale"}))
    ImportResourceType.add_member(:custom_vocabulary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CustomVocabulary", traits: {"smithy.api#enumValue" => "CustomVocabulary"}))
    ImportResourceType.add_member(:test_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TestSet", traits: {"smithy.api#enumValue" => "TestSet"}))
    ImportSortAttribute.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUpdatedDateTime", traits: {"smithy.api#enumValue" => "LastUpdatedDateTime"}))
    ImportSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    ImportSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    ImportSortBy.type = Types::ImportSortBy
    ImportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    ImportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completed", traits: {"smithy.api#enumValue" => "Completed"}))
    ImportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    ImportStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    ImportSummary.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId"))
    ImportSummary.add_member(:imported_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedResourceId, name: "importedResourceId"))
    ImportSummary.add_member(:imported_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "importedResourceName"))
    ImportSummary.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, name: "importStatus"))
    ImportSummary.add_member(:merge_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeStrategy, name: "mergeStrategy"))
    ImportSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    ImportSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    ImportSummary.add_member(:imported_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportResourceType, name: "importedResourceType"))
    ImportSummary.type = Types::ImportSummary
    ImportSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSummary, name: "member")
    InitialResponseSetting.add_member(:initial_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "initialResponse"))
    InitialResponseSetting.add_member(:next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "nextStep"))
    InitialResponseSetting.add_member(:conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "conditional"))
    InitialResponseSetting.add_member(:code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookInvocationSetting, name: "codeHook"))
    InitialResponseSetting.type = Types::InitialResponseSetting
    InputContext.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    InputContext.type = Types::InputContext
    InputContextsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InputContext, name: "member")
    InputSessionStateSpecification.add_member(:session_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "sessionAttributes"))
    InputSessionStateSpecification.add_member(:active_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextList, name: "activeContexts"))
    InputSessionStateSpecification.add_member(:runtime_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHints, name: "runtimeHints"))
    InputSessionStateSpecification.type = Types::InputSessionStateSpecification
    IntentClassificationTestResultItem.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    IntentClassificationTestResultItem.add_member(:multi_turn_conversation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "multiTurnConversation", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    IntentClassificationTestResultItem.add_member(:result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClassificationTestResultItemCounts, name: "resultCounts", traits: {"smithy.api#required" => {}}))
    IntentClassificationTestResultItem.type = Types::IntentClassificationTestResultItem
    IntentClassificationTestResultItemCounts.add_member(:total_result_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "totalResultCount", traits: {"smithy.api#required" => {}}))
    IntentClassificationTestResultItemCounts.add_member(:speech_transcription_result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatusCountMap, name: "speechTranscriptionResultCounts"))
    IntentClassificationTestResultItemCounts.add_member(:intent_match_result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatusCountMap, name: "intentMatchResultCounts", traits: {"smithy.api#required" => {}}))
    IntentClassificationTestResultItemCounts.type = Types::IntentClassificationTestResultItemCounts
    IntentClassificationTestResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClassificationTestResultItem, name: "member")
    IntentClassificationTestResults.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClassificationTestResultItemList, name: "items", traits: {"smithy.api#required" => {}}))
    IntentClassificationTestResults.type = Types::IntentClassificationTestResults
    IntentClosingSetting.add_member(:closing_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "closingResponse"))
    IntentClosingSetting.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "active"))
    IntentClosingSetting.add_member(:next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "nextStep"))
    IntentClosingSetting.add_member(:conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "conditional"))
    IntentClosingSetting.type = Types::IntentClosingSetting
    IntentConfirmationSetting.add_member(:prompt_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptSpecification, name: "promptSpecification", traits: {"smithy.api#required" => {}}))
    IntentConfirmationSetting.add_member(:declination_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "declinationResponse"))
    IntentConfirmationSetting.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "active"))
    IntentConfirmationSetting.add_member(:confirmation_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "confirmationResponse"))
    IntentConfirmationSetting.add_member(:confirmation_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "confirmationNextStep"))
    IntentConfirmationSetting.add_member(:confirmation_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "confirmationConditional"))
    IntentConfirmationSetting.add_member(:declination_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "declinationNextStep"))
    IntentConfirmationSetting.add_member(:declination_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "declinationConditional"))
    IntentConfirmationSetting.add_member(:failure_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "failureResponse"))
    IntentConfirmationSetting.add_member(:failure_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "failureNextStep"))
    IntentConfirmationSetting.add_member(:failure_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "failureConditional"))
    IntentConfirmationSetting.add_member(:code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookInvocationSetting, name: "codeHook"))
    IntentConfirmationSetting.add_member(:elicitation_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: ElicitationCodeHookInvocationSetting, name: "elicitationCodeHook"))
    IntentConfirmationSetting.type = Types::IntentConfirmationSetting
    IntentFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    IntentFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    IntentFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    IntentFilter.type = Types::IntentFilter
    IntentFilterName.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentName", traits: {"smithy.api#enumValue" => "IntentName"}))
    IntentFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    IntentFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    IntentFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntentFilter, name: "member")
    IntentLevelSlotResolutionTestResultItem.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    IntentLevelSlotResolutionTestResultItem.add_member(:multi_turn_conversation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "multiTurnConversation", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    IntentLevelSlotResolutionTestResultItem.add_member(:slot_resolution_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotResolutionTestResultItems, name: "slotResolutionResults", traits: {"smithy.api#required" => {}}))
    IntentLevelSlotResolutionTestResultItem.type = Types::IntentLevelSlotResolutionTestResultItem
    IntentLevelSlotResolutionTestResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntentLevelSlotResolutionTestResultItem, name: "member")
    IntentLevelSlotResolutionTestResults.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentLevelSlotResolutionTestResultItemList, name: "items", traits: {"smithy.api#required" => {}}))
    IntentLevelSlotResolutionTestResults.type = Types::IntentLevelSlotResolutionTestResults
    IntentOverride.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    IntentOverride.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueOverrideMap, name: "slots"))
    IntentOverride.type = Types::IntentOverride
    IntentSortAttribute.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentName", traits: {"smithy.api#enumValue" => "IntentName"}))
    IntentSortAttribute.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUpdatedDateTime", traits: {"smithy.api#enumValue" => "LastUpdatedDateTime"}))
    IntentSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    IntentSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    IntentSortBy.type = Types::IntentSortBy
    IntentState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    IntentState.add_member(:fulfilled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Fulfilled", traits: {"smithy.api#enumValue" => "Fulfilled"}))
    IntentState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    IntentState.add_member(:ready_for_fulfillment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReadyForFulfillment", traits: {"smithy.api#enumValue" => "ReadyForFulfillment"}))
    IntentState.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Waiting", traits: {"smithy.api#enumValue" => "Waiting"}))
    IntentState.add_member(:fulfillment_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FulfillmentInProgress", traits: {"smithy.api#enumValue" => "FulfillmentInProgress"}))
    IntentStatistics.add_member(:discovered_intent_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "discoveredIntentCount"))
    IntentStatistics.type = Types::IntentStatistics
    IntentSummary.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    IntentSummary.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName"))
    IntentSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    IntentSummary.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSignature, name: "parentIntentSignature"))
    IntentSummary.add_member(:input_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContextsList, name: "inputContexts"))
    IntentSummary.add_member(:output_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputContextsList, name: "outputContexts"))
    IntentSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    IntentSummary.type = Types::IntentSummary
    IntentSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSummary, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvokedIntentSample.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName"))
    InvokedIntentSample.type = Types::InvokedIntentSample
    InvokedIntentSamples.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InvokedIntentSample, name: "member")
    KendraConfiguration.add_member(:kendra_index, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraIndexArn, name: "kendraIndex", traits: {"smithy.api#required" => {}}))
    KendraConfiguration.add_member(:query_filter_string_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "queryFilterStringEnabled", traits: {"smithy.api#default" => false}))
    KendraConfiguration.add_member(:query_filter_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilterString, name: "queryFilterString"))
    KendraConfiguration.type = Types::KendraConfiguration
    LambdaCodeHook.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaARN, name: "lambdaARN", traits: {"smithy.api#required" => {}}))
    LambdaCodeHook.add_member(:code_hook_interface_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeHookInterfaceVersion, name: "codeHookInterfaceVersion", traits: {"smithy.api#required" => {}}))
    LambdaCodeHook.type = Types::LambdaCodeHook
    LexTranscriptFilter.add_member(:date_range_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DateRangeFilter, name: "dateRangeFilter"))
    LexTranscriptFilter.type = Types::LexTranscriptFilter
    ListAggregatedUtterancesRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAggregatedUtterancesRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    ListAggregatedUtterancesRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListAggregatedUtterancesRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    ListAggregatedUtterancesRequest.add_member(:aggregation_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceAggregationDuration, name: "aggregationDuration", traits: {"smithy.api#required" => {}}))
    ListAggregatedUtterancesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesSortBy, name: "sortBy"))
    ListAggregatedUtterancesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesFilters, name: "filters"))
    ListAggregatedUtterancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAggregatedUtterancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAggregatedUtterancesRequest.type = Types::ListAggregatedUtterancesRequest
    ListAggregatedUtterancesResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListAggregatedUtterancesResponse.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    ListAggregatedUtterancesResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListAggregatedUtterancesResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceAggregationDuration, name: "aggregationDuration"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_window_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "aggregationWindowStartTime"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_window_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "aggregationWindowEndTime"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_last_refreshed_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "aggregationLastRefreshedDateTime"))
    ListAggregatedUtterancesResponse.add_member(:aggregated_utterances_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedUtterancesSummaryList, name: "aggregatedUtterancesSummaries"))
    ListAggregatedUtterancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAggregatedUtterancesResponse.type = Types::ListAggregatedUtterancesResponse
    ListBotAliasReplicasRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotAliasReplicasRequest.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotAliasReplicasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotAliasReplicasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotAliasReplicasRequest.type = Types::ListBotAliasReplicasRequest
    ListBotAliasReplicasResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotAliasReplicasResponse.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "sourceRegion"))
    ListBotAliasReplicasResponse.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion"))
    ListBotAliasReplicasResponse.add_member(:bot_alias_replica_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasReplicaSummaryList, name: "botAliasReplicaSummaries"))
    ListBotAliasReplicasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotAliasReplicasResponse.type = Types::ListBotAliasReplicasResponse
    ListBotAliasesRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotAliasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotAliasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotAliasesRequest.type = Types::ListBotAliasesRequest
    ListBotAliasesResponse.add_member(:bot_alias_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasSummaryList, name: "botAliasSummaries"))
    ListBotAliasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotAliasesResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotAliasesResponse.type = Types::ListBotAliasesResponse
    ListBotLocalesRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotLocalesRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotLocalesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleSortBy, name: "sortBy"))
    ListBotLocalesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleFilters, name: "filters"))
    ListBotLocalesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotLocalesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotLocalesRequest.type = Types::ListBotLocalesRequest
    ListBotLocalesResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotLocalesResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListBotLocalesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotLocalesResponse.add_member(:bot_locale_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleSummaryList, name: "botLocaleSummaries"))
    ListBotLocalesResponse.type = Types::ListBotLocalesResponse
    ListBotRecommendationsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotRecommendationsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotRecommendationsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotRecommendationsRequest.type = Types::ListBotRecommendationsRequest
    ListBotRecommendationsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotRecommendationsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    ListBotRecommendationsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListBotRecommendationsResponse.add_member(:bot_recommendation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationSummaryList, name: "botRecommendationSummaries"))
    ListBotRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotRecommendationsResponse.type = Types::ListBotRecommendationsResponse
    ListBotReplicasRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotReplicasRequest.type = Types::ListBotReplicasRequest
    ListBotReplicasResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotReplicasResponse.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "sourceRegion"))
    ListBotReplicasResponse.add_member(:bot_replica_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotReplicaSummaryList, name: "botReplicaSummaries"))
    ListBotReplicasResponse.type = Types::ListBotReplicasResponse
    ListBotResourceGenerationsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotResourceGenerationsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotResourceGenerationsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotResourceGenerationsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationSortBy, name: "sortBy"))
    ListBotResourceGenerationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotResourceGenerationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotResourceGenerationsRequest.type = Types::ListBotResourceGenerationsRequest
    ListBotResourceGenerationsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotResourceGenerationsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListBotResourceGenerationsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListBotResourceGenerationsResponse.add_member(:generation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationSummaryList, name: "generationSummaries"))
    ListBotResourceGenerationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotResourceGenerationsResponse.type = Types::ListBotResourceGenerationsResponse
    ListBotVersionReplicasRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotVersionReplicasRequest.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotVersionReplicasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotVersionReplicasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotVersionReplicasRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionReplicaSortBy, name: "sortBy"))
    ListBotVersionReplicasRequest.type = Types::ListBotVersionReplicasRequest
    ListBotVersionReplicasResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotVersionReplicasResponse.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "sourceRegion"))
    ListBotVersionReplicasResponse.add_member(:replica_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegion, name: "replicaRegion"))
    ListBotVersionReplicasResponse.add_member(:bot_version_replica_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionReplicaSummaryList, name: "botVersionReplicaSummaries"))
    ListBotVersionReplicasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotVersionReplicasResponse.type = Types::ListBotVersionReplicasResponse
    ListBotVersionsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotVersionsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionSortBy, name: "sortBy"))
    ListBotVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotVersionsRequest.type = Types::ListBotVersionsRequest
    ListBotVersionsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListBotVersionsResponse.add_member(:bot_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersionSummaryList, name: "botVersionSummaries"))
    ListBotVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotVersionsResponse.type = Types::ListBotVersionsResponse
    ListBotsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: BotSortBy, name: "sortBy"))
    ListBotsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: BotFilters, name: "filters"))
    ListBotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotsRequest.type = Types::ListBotsRequest
    ListBotsResponse.add_member(:bot_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BotSummaryList, name: "botSummaries"))
    ListBotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBotsResponse.type = Types::ListBotsResponse
    ListBuiltInIntentsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBuiltInIntentsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInIntentSortBy, name: "sortBy"))
    ListBuiltInIntentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInsMaxResults, name: "maxResults"))
    ListBuiltInIntentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBuiltInIntentsRequest.type = Types::ListBuiltInIntentsRequest
    ListBuiltInIntentsResponse.add_member(:built_in_intent_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInIntentSummaryList, name: "builtInIntentSummaries"))
    ListBuiltInIntentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBuiltInIntentsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListBuiltInIntentsResponse.type = Types::ListBuiltInIntentsResponse
    ListBuiltInSlotTypesRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBuiltInSlotTypesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInSlotTypeSortBy, name: "sortBy"))
    ListBuiltInSlotTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInsMaxResults, name: "maxResults"))
    ListBuiltInSlotTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBuiltInSlotTypesRequest.type = Types::ListBuiltInSlotTypesRequest
    ListBuiltInSlotTypesResponse.add_member(:built_in_slot_type_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInSlotTypeSummaryList, name: "builtInSlotTypeSummaries"))
    ListBuiltInSlotTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBuiltInSlotTypesResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListBuiltInSlotTypesResponse.type = Types::ListBuiltInSlotTypesResponse
    ListCustomVocabularyItemsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCustomVocabularyItemsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCustomVocabularyItemsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCustomVocabularyItemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListCustomVocabularyItemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCustomVocabularyItemsRequest.type = Types::ListCustomVocabularyItemsRequest
    ListCustomVocabularyItemsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListCustomVocabularyItemsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListCustomVocabularyItemsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListCustomVocabularyItemsResponse.add_member(:custom_vocabulary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyItems, name: "customVocabularyItems"))
    ListCustomVocabularyItemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCustomVocabularyItemsResponse.type = Types::ListCustomVocabularyItemsResponse
    ListExportsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListExportsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListExportsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSortBy, name: "sortBy"))
    ListExportsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilters, name: "filters"))
    ListExportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExportsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListExportsRequest.type = Types::ListExportsRequest
    ListExportsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListExportsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListExportsResponse.add_member(:export_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummaryList, name: "exportSummaries"))
    ListExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExportsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListExportsResponse.type = Types::ListExportsResponse
    ListImportsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListImportsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    ListImportsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSortBy, name: "sortBy"))
    ListImportsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFilters, name: "filters"))
    ListImportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListImportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListImportsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListImportsRequest.type = Types::ListImportsRequest
    ListImportsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListImportsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    ListImportsResponse.add_member(:import_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSummaryList, name: "importSummaries"))
    ListImportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListImportsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListImportsResponse.type = Types::ListImportsResponse
    ListIntentMetricsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIntentMetricsRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    ListIntentMetricsRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    ListIntentMetricsRequest.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentMetrics, name: "metrics", traits: {"smithy.api#required" => {}}))
    ListIntentMetricsRequest.add_member(:bin_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinByList, name: "binBy"))
    ListIntentMetricsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentGroupByList, name: "groupBy"))
    ListIntentMetricsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentFilters, name: "filters"))
    ListIntentMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListIntentMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntentMetricsRequest.type = Types::ListIntentMetricsRequest
    ListIntentMetricsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListIntentMetricsResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentResults, name: "results"))
    ListIntentMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntentMetricsResponse.type = Types::ListIntentMetricsResponse
    ListIntentPathsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIntentPathsRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    ListIntentPathsRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    ListIntentPathsRequest.add_member(:intent_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsPath, name: "intentPath", traits: {"smithy.api#required" => {}}))
    ListIntentPathsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsPathFilters, name: "filters"))
    ListIntentPathsRequest.type = Types::ListIntentPathsRequest
    ListIntentPathsResponse.add_member(:node_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentNodeSummaries, name: "nodeSummaries"))
    ListIntentPathsResponse.type = Types::ListIntentPathsResponse
    ListIntentStageMetricsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIntentStageMetricsRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    ListIntentStageMetricsRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    ListIntentStageMetricsRequest.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageMetrics, name: "metrics", traits: {"smithy.api#required" => {}}))
    ListIntentStageMetricsRequest.add_member(:bin_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinByList, name: "binBy"))
    ListIntentStageMetricsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageGroupByList, name: "groupBy"))
    ListIntentStageMetricsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageFilters, name: "filters"))
    ListIntentStageMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListIntentStageMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntentStageMetricsRequest.type = Types::ListIntentStageMetricsRequest
    ListIntentStageMetricsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListIntentStageMetricsResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsIntentStageResults, name: "results"))
    ListIntentStageMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntentStageMetricsResponse.type = Types::ListIntentStageMetricsResponse
    ListIntentsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIntentsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIntentsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIntentsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSortBy, name: "sortBy"))
    ListIntentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentFilters, name: "filters"))
    ListIntentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListIntentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntentsRequest.type = Types::ListIntentsRequest
    ListIntentsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListIntentsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListIntentsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListIntentsResponse.add_member(:intent_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSummaryList, name: "intentSummaries"))
    ListIntentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntentsResponse.type = Types::ListIntentsResponse
    ListRecommendedIntentsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendedIntentsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendedIntentsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendedIntentsRequest.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendedIntentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendedIntentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListRecommendedIntentsRequest.type = Types::ListRecommendedIntentsRequest
    ListRecommendedIntentsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListRecommendedIntentsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    ListRecommendedIntentsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListRecommendedIntentsResponse.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId"))
    ListRecommendedIntentsResponse.add_member(:summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedIntentSummaryList, name: "summaryList"))
    ListRecommendedIntentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendedIntentsResponse.type = Types::ListRecommendedIntentsResponse
    ListSessionAnalyticsDataRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionAnalyticsDataRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    ListSessionAnalyticsDataRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    ListSessionAnalyticsDataRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDataSortBy, name: "sortBy"))
    ListSessionAnalyticsDataRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionFilters, name: "filters"))
    ListSessionAnalyticsDataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSessionAnalyticsDataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSessionAnalyticsDataRequest.type = Types::ListSessionAnalyticsDataRequest
    ListSessionAnalyticsDataResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListSessionAnalyticsDataResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSessionAnalyticsDataResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSpecifications, name: "sessions"))
    ListSessionAnalyticsDataResponse.type = Types::ListSessionAnalyticsDataResponse
    ListSessionMetricsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionMetricsRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    ListSessionMetricsRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    ListSessionMetricsRequest.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionMetrics, name: "metrics", traits: {"smithy.api#required" => {}}))
    ListSessionMetricsRequest.add_member(:bin_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinByList, name: "binBy"))
    ListSessionMetricsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionGroupByList, name: "groupBy"))
    ListSessionMetricsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionFilters, name: "filters"))
    ListSessionMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSessionMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSessionMetricsRequest.type = Types::ListSessionMetricsRequest
    ListSessionMetricsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListSessionMetricsResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionResults, name: "results"))
    ListSessionMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSessionMetricsResponse.type = Types::ListSessionMetricsResponse
    ListSlotTypesRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSlotTypesRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSlotTypesRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSlotTypesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSortBy, name: "sortBy"))
    ListSlotTypesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeFilters, name: "filters"))
    ListSlotTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSlotTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSlotTypesRequest.type = Types::ListSlotTypesRequest
    ListSlotTypesResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListSlotTypesResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListSlotTypesResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListSlotTypesResponse.add_member(:slot_type_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSummaryList, name: "slotTypeSummaries"))
    ListSlotTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSlotTypesResponse.type = Types::ListSlotTypesResponse
    ListSlotsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSlotsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSlotsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSlotsRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSlotsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotSortBy, name: "sortBy"))
    ListSlotsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotFilters, name: "filters"))
    ListSlotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSlotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSlotsRequest.type = Types::ListSlotsRequest
    ListSlotsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListSlotsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    ListSlotsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    ListSlotsResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    ListSlotsResponse.add_member(:slot_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotSummaryList, name: "slotSummaries"))
    ListSlotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSlotsResponse.type = Types::ListSlotsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTestExecutionResultItemsRequest.add_member(:test_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testExecutionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestExecutionResultItemsRequest.add_member(:result_filter_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionResultFilterBy, name: "resultFilterBy", traits: {"smithy.api#required" => {}}))
    ListTestExecutionResultItemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTestExecutionResultItemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestExecutionResultItemsRequest.type = Types::ListTestExecutionResultItemsRequest
    ListTestExecutionResultItemsResponse.add_member(:test_execution_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionResultItems, name: "testExecutionResults"))
    ListTestExecutionResultItemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestExecutionResultItemsResponse.type = Types::ListTestExecutionResultItemsResponse
    ListTestExecutionsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionSortBy, name: "sortBy"))
    ListTestExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTestExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestExecutionsRequest.type = Types::ListTestExecutionsRequest
    ListTestExecutionsResponse.add_member(:test_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionSummaryList, name: "testExecutions"))
    ListTestExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestExecutionsResponse.type = Types::ListTestExecutionsResponse
    ListTestSetRecordsRequest.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestSetRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTestSetRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestSetRecordsRequest.type = Types::ListTestSetRecordsRequest
    ListTestSetRecordsResponse.add_member(:test_set_records, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetTurnRecordList, name: "testSetRecords"))
    ListTestSetRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestSetRecordsResponse.type = Types::ListTestSetRecordsResponse
    ListTestSetsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetSortBy, name: "sortBy"))
    ListTestSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTestSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestSetsRequest.type = Types::ListTestSetsRequest
    ListTestSetsResponse.add_member(:test_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetSummaryList, name: "testSets"))
    ListTestSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestSetsResponse.type = Types::ListTestSetsResponse
    ListUtteranceAnalyticsDataRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUtteranceAnalyticsDataRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    ListUtteranceAnalyticsDataRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    ListUtteranceAnalyticsDataRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceDataSortBy, name: "sortBy"))
    ListUtteranceAnalyticsDataRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceFilters, name: "filters"))
    ListUtteranceAnalyticsDataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListUtteranceAnalyticsDataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListUtteranceAnalyticsDataRequest.type = Types::ListUtteranceAnalyticsDataRequest
    ListUtteranceAnalyticsDataResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListUtteranceAnalyticsDataResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListUtteranceAnalyticsDataResponse.add_member(:utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceSpecifications, name: "utterances"))
    ListUtteranceAnalyticsDataResponse.type = Types::ListUtteranceAnalyticsDataResponse
    ListUtteranceMetricsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUtteranceMetricsRequest.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#required" => {}}))
    ListUtteranceMetricsRequest.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#required" => {}}))
    ListUtteranceMetricsRequest.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceMetrics, name: "metrics", traits: {"smithy.api#required" => {}}))
    ListUtteranceMetricsRequest.add_member(:bin_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsBinByList, name: "binBy"))
    ListUtteranceMetricsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceGroupByList, name: "groupBy"))
    ListUtteranceMetricsRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceAttributes, name: "attributes"))
    ListUtteranceMetricsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceFilters, name: "filters"))
    ListUtteranceMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListUtteranceMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListUtteranceMetricsRequest.type = Types::ListUtteranceMetricsRequest
    ListUtteranceMetricsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    ListUtteranceMetricsResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceResults, name: "results"))
    ListUtteranceMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListUtteranceMetricsResponse.type = Types::ListUtteranceMetricsResponse
    MergeStrategy.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Overwrite", traits: {"smithy.api#enumValue" => "Overwrite"}))
    MergeStrategy.add_member(:fail_on_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailOnConflict", traits: {"smithy.api#enumValue" => "FailOnConflict"}))
    MergeStrategy.add_member(:append, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Append", traits: {"smithy.api#enumValue" => "Append"}))
    Message.add_member(:plain_text_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PlainTextMessage, name: "plainTextMessage"))
    Message.add_member(:custom_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPayload, name: "customPayload"))
    Message.add_member(:ssml_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SSMLMessage, name: "ssmlMessage"))
    Message.add_member(:image_response_card, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageResponseCard, name: "imageResponseCard"))
    Message.type = Types::Message
    MessageGroup.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message", traits: {"smithy.api#required" => {}}))
    MessageGroup.add_member(:variations, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageVariationsList, name: "variations"))
    MessageGroup.type = Types::MessageGroup
    MessageGroupsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroup, name: "member")
    MessageSelectionStrategy.add_member(:random, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Random", traits: {"smithy.api#enumValue" => "Random"}))
    MessageSelectionStrategy.add_member(:ordered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ordered", traits: {"smithy.api#enumValue" => "Ordered"}))
    MessageVariationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "member")
    MultipleValuesSetting.add_member(:allow_multiple_values, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowMultipleValues", traits: {"smithy.api#default" => false}))
    MultipleValuesSetting.type = Types::MultipleValuesSetting
    NewCustomVocabularyItem.add_member(:phrase, ::Smithy::Schema::Shapes::MemberShape.new(target: Phrase, name: "phrase", traits: {"smithy.api#required" => {}}))
    NewCustomVocabularyItem.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: Weight, name: "weight"))
    NewCustomVocabularyItem.add_member(:display_as, ::Smithy::Schema::Shapes::MemberShape.new(target: Phrase, name: "displayAs"))
    NewCustomVocabularyItem.type = Types::NewCustomVocabularyItem
    NluImprovementSpecification.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    NluImprovementSpecification.type = Types::NluImprovementSpecification
    OSIncludeFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeField, name: "member")
    ObfuscationSetting.add_member(:obfuscation_setting_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ObfuscationSettingType, name: "obfuscationSettingType", traits: {"smithy.api#required" => {}}))
    ObfuscationSetting.type = Types::ObfuscationSetting
    ObfuscationSettingType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    ObfuscationSettingType.add_member(:default_obfuscation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DefaultObfuscation", traits: {"smithy.api#enumValue" => "DefaultObfuscation"}))
    ObjectPrefixes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectPrefix, name: "member")
    OpensearchConfiguration.add_member(:domain_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEndpoint, name: "domainEndpoint", traits: {"smithy.api#required" => {}}))
    OpensearchConfiguration.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OSIndexName, name: "indexName", traits: {"smithy.api#required" => {}}))
    OpensearchConfiguration.add_member(:exact_response, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "exactResponse", traits: {"smithy.api#default" => false}))
    OpensearchConfiguration.add_member(:exact_response_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ExactResponseFields, name: "exactResponseFields"))
    OpensearchConfiguration.add_member(:include_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: OSIncludeFields, name: "includeFields"))
    OpensearchConfiguration.type = Types::OpensearchConfiguration
    OperationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "member")
    OutputContext.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    OutputContext.add_member(:time_to_live_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextTimeToLiveInSeconds, name: "timeToLiveInSeconds", traits: {"smithy.api#required" => {}}))
    OutputContext.add_member(:turns_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextTurnsToLive, name: "turnsToLive", traits: {"smithy.api#required" => {}}))
    OutputContext.type = Types::OutputContext
    OutputContextsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OutputContext, name: "member")
    OverallTestResultItem.add_member(:multi_turn_conversation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "multiTurnConversation", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    OverallTestResultItem.add_member(:total_result_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "totalResultCount", traits: {"smithy.api#required" => {}}))
    OverallTestResultItem.add_member(:speech_transcription_result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatusCountMap, name: "speechTranscriptionResultCounts"))
    OverallTestResultItem.add_member(:end_to_end_result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatusCountMap, name: "endToEndResultCounts", traits: {"smithy.api#required" => {}}))
    OverallTestResultItem.type = Types::OverallTestResultItem
    OverallTestResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OverallTestResultItem, name: "member")
    OverallTestResults.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OverallTestResultItemList, name: "items", traits: {"smithy.api#required" => {}}))
    OverallTestResults.type = Types::OverallTestResults
    ParentBotNetwork.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    ParentBotNetwork.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#required" => {}}))
    ParentBotNetwork.type = Types::ParentBotNetwork
    ParentBotNetworks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParentBotNetwork, name: "member")
    PathFormat.add_member(:object_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectPrefixes, name: "objectPrefixes"))
    PathFormat.type = Types::PathFormat
    PlainTextMessage.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PlainTextMessageValue, name: "value", traits: {"smithy.api#required" => {}}))
    PlainTextMessage.type = Types::PlainTextMessage
    PostDialogCodeHookInvocationSpecification.add_member(:success_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "successResponse"))
    PostDialogCodeHookInvocationSpecification.add_member(:success_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "successNextStep"))
    PostDialogCodeHookInvocationSpecification.add_member(:success_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "successConditional"))
    PostDialogCodeHookInvocationSpecification.add_member(:failure_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "failureResponse"))
    PostDialogCodeHookInvocationSpecification.add_member(:failure_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "failureNextStep"))
    PostDialogCodeHookInvocationSpecification.add_member(:failure_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "failureConditional"))
    PostDialogCodeHookInvocationSpecification.add_member(:timeout_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "timeoutResponse"))
    PostDialogCodeHookInvocationSpecification.add_member(:timeout_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "timeoutNextStep"))
    PostDialogCodeHookInvocationSpecification.add_member(:timeout_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "timeoutConditional"))
    PostDialogCodeHookInvocationSpecification.type = Types::PostDialogCodeHookInvocationSpecification
    PostFulfillmentStatusSpecification.add_member(:success_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "successResponse"))
    PostFulfillmentStatusSpecification.add_member(:failure_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "failureResponse"))
    PostFulfillmentStatusSpecification.add_member(:timeout_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "timeoutResponse"))
    PostFulfillmentStatusSpecification.add_member(:success_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "successNextStep"))
    PostFulfillmentStatusSpecification.add_member(:success_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "successConditional"))
    PostFulfillmentStatusSpecification.add_member(:failure_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "failureNextStep"))
    PostFulfillmentStatusSpecification.add_member(:failure_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "failureConditional"))
    PostFulfillmentStatusSpecification.add_member(:timeout_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "timeoutNextStep"))
    PostFulfillmentStatusSpecification.add_member(:timeout_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "timeoutConditional"))
    PostFulfillmentStatusSpecification.type = Types::PostFulfillmentStatusSpecification
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    PreconditionFailedException.type = Types::PreconditionFailedException
    Principal.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "service"))
    Principal.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArn, name: "arn"))
    Principal.type = Types::Principal
    PrincipalList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "member")
    PromptAttempt.add_member(:initial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Initial", traits: {"smithy.api#enumValue" => "Initial"}))
    PromptAttempt.add_member(:retry1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retry1", traits: {"smithy.api#enumValue" => "Retry1"}))
    PromptAttempt.add_member(:retry2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retry2", traits: {"smithy.api#enumValue" => "Retry2"}))
    PromptAttempt.add_member(:retry3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retry3", traits: {"smithy.api#enumValue" => "Retry3"}))
    PromptAttempt.add_member(:retry4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retry4", traits: {"smithy.api#enumValue" => "Retry4"}))
    PromptAttempt.add_member(:retry5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retry5", traits: {"smithy.api#enumValue" => "Retry5"}))
    PromptAttemptSpecification.add_member(:allow_interrupt, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowInterrupt"))
    PromptAttemptSpecification.add_member(:allowed_input_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedInputTypes, name: "allowedInputTypes", traits: {"smithy.api#required" => {}}))
    PromptAttemptSpecification.add_member(:audio_and_dtmf_input_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioAndDTMFInputSpecification, name: "audioAndDTMFInputSpecification"))
    PromptAttemptSpecification.add_member(:text_input_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: TextInputSpecification, name: "textInputSpecification"))
    PromptAttemptSpecification.type = Types::PromptAttemptSpecification
    PromptAttemptsSpecificationMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PromptAttempt, name: "key")
    PromptAttemptsSpecificationMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PromptAttemptSpecification, name: "value")
    PromptSpecification.add_member(:message_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroupsList, name: "messageGroups", traits: {"smithy.api#required" => {}}))
    PromptSpecification.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptMaxRetries, name: "maxRetries", traits: {"smithy.api#required" => {}}))
    PromptSpecification.add_member(:allow_interrupt, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowInterrupt"))
    PromptSpecification.add_member(:message_selection_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageSelectionStrategy, name: "messageSelectionStrategy"))
    PromptSpecification.add_member(:prompt_attempts_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptAttemptsSpecificationMap, name: "promptAttemptsSpecification"))
    PromptSpecification.type = Types::PromptSpecification
    QInConnectAssistantConfiguration.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QInConnectAssistantARN, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    QInConnectAssistantConfiguration.type = Types::QInConnectAssistantConfiguration
    QInConnectIntentConfiguration.add_member(:q_in_connect_assistant_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QInConnectAssistantConfiguration, name: "qInConnectAssistantConfiguration"))
    QInConnectIntentConfiguration.type = Types::QInConnectIntentConfiguration
    QnAIntentConfiguration.add_member(:data_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, name: "dataSourceConfiguration"))
    QnAIntentConfiguration.add_member(:bedrock_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelSpecification, name: "bedrockModelConfiguration"))
    QnAIntentConfiguration.type = Types::QnAIntentConfiguration
    QnAKendraConfiguration.add_member(:kendra_index, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraIndexArn, name: "kendraIndex", traits: {"smithy.api#required" => {}}))
    QnAKendraConfiguration.add_member(:query_filter_string_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "queryFilterStringEnabled", traits: {"smithy.api#default" => false}))
    QnAKendraConfiguration.add_member(:query_filter_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilterString, name: "queryFilterString"))
    QnAKendraConfiguration.add_member(:exact_response, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "exactResponse", traits: {"smithy.api#default" => false}))
    QnAKendraConfiguration.type = Types::QnAKendraConfiguration
    RecommendedActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedAction, name: "member")
    RecommendedIntentSummary.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    RecommendedIntentSummary.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName"))
    RecommendedIntentSummary.add_member(:sample_utterances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesCount, name: "sampleUtterancesCount"))
    RecommendedIntentSummary.type = Types::RecommendedIntentSummary
    RecommendedIntentSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedIntentSummary, name: "member")
    RelativeAggregationDuration.add_member(:time_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeDimension, name: "timeDimension", traits: {"smithy.api#required" => {}}))
    RelativeAggregationDuration.add_member(:time_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeValue, name: "timeValue", traits: {"smithy.api#required" => {}}))
    RelativeAggregationDuration.type = Types::RelativeAggregationDuration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseSpecification.add_member(:message_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroupsList, name: "messageGroups", traits: {"smithy.api#required" => {}}))
    ResponseSpecification.add_member(:allow_interrupt, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowInterrupt"))
    ResponseSpecification.type = Types::ResponseSpecification
    RuntimeHintDetails.add_member(:runtime_hint_values, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintValuesList, name: "runtimeHintValues"))
    RuntimeHintDetails.add_member(:sub_slot_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotHintsSlotMap, name: "subSlotHints"))
    RuntimeHintDetails.type = Types::RuntimeHintDetails
    RuntimeHintValue.add_member(:phrase, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintPhrase, name: "phrase", traits: {"smithy.api#required" => {}}))
    RuntimeHintValue.type = Types::RuntimeHintValue
    RuntimeHintValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintValue, name: "member")
    RuntimeHints.add_member(:slot_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotHintsIntentMap, name: "slotHints"))
    RuntimeHints.type = Types::RuntimeHints
    RuntimeSettings.add_member(:slot_resolution_improvement, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotResolutionImprovementSpecification, name: "slotResolutionImprovement"))
    RuntimeSettings.add_member(:nlu_improvement, ::Smithy::Schema::Shapes::MemberShape.new(target: NluImprovementSpecification, name: "nluImprovement"))
    RuntimeSettings.type = Types::RuntimeSettings
    S3BucketLogDestination.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    S3BucketLogDestination.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArn, name: "s3BucketArn", traits: {"smithy.api#required" => {}}))
    S3BucketLogDestination.add_member(:log_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogPrefix, name: "logPrefix", traits: {"smithy.api#required" => {}}))
    S3BucketLogDestination.type = Types::S3BucketLogDestination
    S3BucketTranscriptSource.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName", traits: {"smithy.api#required" => {}}))
    S3BucketTranscriptSource.add_member(:path_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PathFormat, name: "pathFormat"))
    S3BucketTranscriptSource.add_member(:transcript_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptFormat, name: "transcriptFormat", traits: {"smithy.api#required" => {}}))
    S3BucketTranscriptSource.add_member(:transcript_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptFilter, name: "transcriptFilter"))
    S3BucketTranscriptSource.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    S3BucketTranscriptSource.type = Types::S3BucketTranscriptSource
    SSMLMessage.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SSMLMessageValue, name: "value", traits: {"smithy.api#required" => {}}))
    SSMLMessage.type = Types::SSMLMessage
    SampleUtterance.add_member(:utterance, ::Smithy::Schema::Shapes::MemberShape.new(target: Utterance, name: "utterance", traits: {"smithy.api#required" => {}}))
    SampleUtterance.type = Types::SampleUtterance
    SampleUtteranceGenerationSpecification.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SampleUtteranceGenerationSpecification.add_member(:bedrock_model_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelSpecification, name: "bedrockModelSpecification"))
    SampleUtteranceGenerationSpecification.type = Types::SampleUtteranceGenerationSpecification
    SampleUtterancesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterance, name: "member")
    SampleValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#required" => {}}))
    SampleValue.type = Types::SampleValue
    SearchAssociatedTranscriptsRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchAssociatedTranscriptsRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchAssociatedTranscriptsRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchAssociatedTranscriptsRequest.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchAssociatedTranscriptsRequest.add_member(:search_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchOrder, name: "searchOrder"))
    SearchAssociatedTranscriptsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTranscriptFilters, name: "filters", traits: {"smithy.api#required" => {}}))
    SearchAssociatedTranscriptsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchAssociatedTranscriptsRequest.add_member(:next_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NextIndex, name: "nextIndex"))
    SearchAssociatedTranscriptsRequest.type = Types::SearchAssociatedTranscriptsRequest
    SearchAssociatedTranscriptsResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    SearchAssociatedTranscriptsResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    SearchAssociatedTranscriptsResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    SearchAssociatedTranscriptsResponse.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId"))
    SearchAssociatedTranscriptsResponse.add_member(:next_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NextIndex, name: "nextIndex"))
    SearchAssociatedTranscriptsResponse.add_member(:associated_transcripts, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTranscriptList, name: "associatedTranscripts"))
    SearchAssociatedTranscriptsResponse.add_member(:total_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "totalResults"))
    SearchAssociatedTranscriptsResponse.type = Types::SearchAssociatedTranscriptsResponse
    SearchOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ascending", traits: {"smithy.api#enumValue" => "Ascending"}))
    SearchOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Descending", traits: {"smithy.api#enumValue" => "Descending"}))
    SentimentAnalysisSettings.add_member(:detect_sentiment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "detectSentiment", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SentimentAnalysisSettings.type = Types::SentimentAnalysisSettings
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionDataSortBy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionSortByName, name: "name", traits: {"smithy.api#required" => {}}))
    SessionDataSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    SessionDataSortBy.type = Types::SessionDataSortBy
    SessionSpecification.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    SessionSpecification.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion"))
    SessionSpecification.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    SessionSpecification.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsChannel, name: "channel"))
    SessionSpecification.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionId, name: "sessionId"))
    SessionSpecification.add_member(:conversation_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "conversationStartTime"))
    SessionSpecification.add_member(:conversation_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "conversationEndTime"))
    SessionSpecification.add_member(:conversation_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsLongValue, name: "conversationDurationSeconds"))
    SessionSpecification.add_member(:conversation_end_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationEndState, name: "conversationEndState"))
    SessionSpecification.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsModality, name: "mode"))
    SessionSpecification.add_member(:number_of_turns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsLongValue, name: "numberOfTurns"))
    SessionSpecification.add_member(:invoked_intent_samples, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokedIntentSamples, name: "invokedIntentSamples"))
    SessionSpecification.add_member(:originating_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsOriginatingRequestId, name: "originatingRequestId"))
    SessionSpecification.type = Types::SessionSpecification
    SessionSpecifications.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSpecification, name: "member")
    SlotCaptureSetting.add_member(:capture_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "captureResponse"))
    SlotCaptureSetting.add_member(:capture_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "captureNextStep"))
    SlotCaptureSetting.add_member(:capture_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "captureConditional"))
    SlotCaptureSetting.add_member(:failure_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "failureResponse"))
    SlotCaptureSetting.add_member(:failure_next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogState, name: "failureNextStep"))
    SlotCaptureSetting.add_member(:failure_conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalSpecification, name: "failureConditional"))
    SlotCaptureSetting.add_member(:code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookInvocationSetting, name: "codeHook"))
    SlotCaptureSetting.add_member(:elicitation_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: ElicitationCodeHookInvocationSetting, name: "elicitationCodeHook"))
    SlotCaptureSetting.type = Types::SlotCaptureSetting
    SlotConstraint.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Required", traits: {"smithy.api#enumValue" => "Required"}))
    SlotConstraint.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Optional", traits: {"smithy.api#enumValue" => "Optional"}))
    SlotDefaultValue.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotDefaultValueString, name: "defaultValue", traits: {"smithy.api#required" => {}}))
    SlotDefaultValue.type = Types::SlotDefaultValue
    SlotDefaultValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotDefaultValue, name: "member")
    SlotDefaultValueSpecification.add_member(:default_value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotDefaultValueList, name: "defaultValueList", traits: {"smithy.api#required" => {}}))
    SlotDefaultValueSpecification.type = Types::SlotDefaultValueSpecification
    SlotFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    SlotFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    SlotFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    SlotFilter.type = Types::SlotFilter
    SlotFilterName.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SlotName", traits: {"smithy.api#enumValue" => "SlotName"}))
    SlotFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    SlotFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    SlotFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotFilter, name: "member")
    SlotHintsIntentMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    SlotHintsIntentMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotHintsSlotMap, name: "value")
    SlotHintsSlotMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    SlotHintsSlotMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintDetails, name: "value")
    SlotPrioritiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotPriority, name: "member")
    SlotPriority.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityValue, name: "priority", traits: {"smithy.api#required" => {}}))
    SlotPriority.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId", traits: {"smithy.api#required" => {}}))
    SlotPriority.type = Types::SlotPriority
    SlotResolutionImprovementSpecification.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SlotResolutionImprovementSpecification.add_member(:bedrock_model_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelSpecification, name: "bedrockModelSpecification"))
    SlotResolutionImprovementSpecification.type = Types::SlotResolutionImprovementSpecification
    SlotResolutionSetting.add_member(:slot_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotResolutionStrategy, name: "slotResolutionStrategy", traits: {"smithy.api#required" => {}}))
    SlotResolutionSetting.type = Types::SlotResolutionSetting
    SlotResolutionStrategy.add_member(:enhanced_fallback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EnhancedFallback", traits: {"smithy.api#enumValue" => "EnhancedFallback"}))
    SlotResolutionStrategy.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Default", traits: {"smithy.api#enumValue" => "Default"}))
    SlotResolutionTestResultItem.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultSlotName, name: "slotName", traits: {"smithy.api#required" => {}}))
    SlotResolutionTestResultItem.add_member(:result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotResolutionTestResultItemCounts, name: "resultCounts", traits: {"smithy.api#required" => {}}))
    SlotResolutionTestResultItem.type = Types::SlotResolutionTestResultItem
    SlotResolutionTestResultItemCounts.add_member(:total_result_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "totalResultCount", traits: {"smithy.api#required" => {}}))
    SlotResolutionTestResultItemCounts.add_member(:speech_transcription_result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatusCountMap, name: "speechTranscriptionResultCounts"))
    SlotResolutionTestResultItemCounts.add_member(:slot_match_result_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatusCountMap, name: "slotMatchResultCounts", traits: {"smithy.api#required" => {}}))
    SlotResolutionTestResultItemCounts.type = Types::SlotResolutionTestResultItemCounts
    SlotResolutionTestResultItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotResolutionTestResultItem, name: "member")
    SlotShape.add_member(:scalar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Scalar", traits: {"smithy.api#enumValue" => "Scalar"}))
    SlotShape.add_member(:list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "List", traits: {"smithy.api#enumValue" => "List"}))
    SlotSortAttribute.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SlotName", traits: {"smithy.api#enumValue" => "SlotName"}))
    SlotSortAttribute.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUpdatedDateTime", traits: {"smithy.api#enumValue" => "LastUpdatedDateTime"}))
    SlotSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    SlotSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    SlotSortBy.type = Types::SlotSortBy
    SlotSummary.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId"))
    SlotSummary.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotName"))
    SlotSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    SlotSummary.add_member(:slot_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotConstraint, name: "slotConstraint"))
    SlotSummary.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId"))
    SlotSummary.add_member(:value_elicitation_prompt_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptSpecification, name: "valueElicitationPromptSpecification"))
    SlotSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    SlotSummary.type = Types::SlotSummary
    SlotSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotSummary, name: "member")
    SlotTypeCategory.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Custom", traits: {"smithy.api#enumValue" => "Custom"}))
    SlotTypeCategory.add_member(:extended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Extended", traits: {"smithy.api#enumValue" => "Extended"}))
    SlotTypeCategory.add_member(:external_grammar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExternalGrammar", traits: {"smithy.api#enumValue" => "ExternalGrammar"}))
    SlotTypeCategory.add_member(:composite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Composite", traits: {"smithy.api#enumValue" => "Composite"}))
    SlotTypeFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    SlotTypeFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    SlotTypeFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    SlotTypeFilter.type = Types::SlotTypeFilter
    SlotTypeFilterName.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SlotTypeName", traits: {"smithy.api#enumValue" => "SlotTypeName"}))
    SlotTypeFilterName.add_member(:external_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExternalSourceType", traits: {"smithy.api#enumValue" => "ExternalSourceType"}))
    SlotTypeFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "CO"}))
    SlotTypeFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "EQ"}))
    SlotTypeFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeFilter, name: "member")
    SlotTypeSortAttribute.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SlotTypeName", traits: {"smithy.api#enumValue" => "SlotTypeName"}))
    SlotTypeSortAttribute.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUpdatedDateTime", traits: {"smithy.api#enumValue" => "LastUpdatedDateTime"}))
    SlotTypeSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    SlotTypeSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    SlotTypeSortBy.type = Types::SlotTypeSortBy
    SlotTypeStatistics.add_member(:discovered_slot_type_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "discoveredSlotTypeCount"))
    SlotTypeStatistics.type = Types::SlotTypeStatistics
    SlotTypeSummary.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotTypeId"))
    SlotTypeSummary.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotTypeName"))
    SlotTypeSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    SlotTypeSummary.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSignature, name: "parentSlotTypeSignature"))
    SlotTypeSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    SlotTypeSummary.add_member(:slot_type_category, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeCategory, name: "slotTypeCategory"))
    SlotTypeSummary.type = Types::SlotTypeSummary
    SlotTypeSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSummary, name: "member")
    SlotTypeValue.add_member(:sample_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleValue, name: "sampleValue"))
    SlotTypeValue.add_member(:synonyms, ::Smithy::Schema::Shapes::MemberShape.new(target: SynonymList, name: "synonyms"))
    SlotTypeValue.type = Types::SlotTypeValue
    SlotTypeValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeValue, name: "member")
    SlotValue.add_member(:interpreted_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "interpretedValue"))
    SlotValue.type = Types::SlotValue
    SlotValueElicitationSetting.add_member(:default_value_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotDefaultValueSpecification, name: "defaultValueSpecification"))
    SlotValueElicitationSetting.add_member(:slot_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotConstraint, name: "slotConstraint", traits: {"smithy.api#required" => {}}))
    SlotValueElicitationSetting.add_member(:prompt_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptSpecification, name: "promptSpecification"))
    SlotValueElicitationSetting.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    SlotValueElicitationSetting.add_member(:wait_and_continue_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitAndContinueSpecification, name: "waitAndContinueSpecification"))
    SlotValueElicitationSetting.add_member(:slot_capture_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotCaptureSetting, name: "slotCaptureSetting"))
    SlotValueElicitationSetting.add_member(:slot_resolution_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotResolutionSetting, name: "slotResolutionSetting"))
    SlotValueElicitationSetting.type = Types::SlotValueElicitationSetting
    SlotValueOverride.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotShape, name: "shape"))
    SlotValueOverride.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValue, name: "value"))
    SlotValueOverride.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValues, name: "values"))
    SlotValueOverride.type = Types::SlotValueOverride
    SlotValueOverrideMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    SlotValueOverrideMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueOverride, name: "value")
    SlotValueRegexFilter.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: RegexPattern, name: "pattern", traits: {"smithy.api#required" => {}}))
    SlotValueRegexFilter.type = Types::SlotValueRegexFilter
    SlotValueResolutionStrategy.add_member(:original_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OriginalValue", traits: {"smithy.api#enumValue" => "OriginalValue"}))
    SlotValueResolutionStrategy.add_member(:top_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TopResolution", traits: {"smithy.api#enumValue" => "TopResolution"}))
    SlotValueResolutionStrategy.add_member(:concatenation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Concatenation", traits: {"smithy.api#enumValue" => "Concatenation"}))
    SlotValueSelectionSetting.add_member(:resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueResolutionStrategy, name: "resolutionStrategy", traits: {"smithy.api#required" => {}}))
    SlotValueSelectionSetting.add_member(:regex_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueRegexFilter, name: "regexFilter"))
    SlotValueSelectionSetting.add_member(:advanced_recognition_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedRecognitionSetting, name: "advancedRecognitionSetting"))
    SlotValueSelectionSetting.type = Types::SlotValueSelectionSetting
    SlotValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueOverride, name: "member")
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ascending", traits: {"smithy.api#enumValue" => "Ascending"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Descending", traits: {"smithy.api#enumValue" => "Descending"}))
    Specifications.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId", traits: {"smithy.api#required" => {}}))
    Specifications.add_member(:value_elicitation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotValueElicitationSetting, name: "valueElicitationSetting", traits: {"smithy.api#required" => {}}))
    Specifications.type = Types::Specifications
    StartBotRecommendationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBotRecommendationRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBotRecommendationRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBotRecommendationRequest.add_member(:transcript_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptSourceSetting, name: "transcriptSourceSetting", traits: {"smithy.api#required" => {}}))
    StartBotRecommendationRequest.add_member(:encryption_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSetting, name: "encryptionSetting"))
    StartBotRecommendationRequest.type = Types::StartBotRecommendationRequest
    StartBotRecommendationResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    StartBotRecommendationResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    StartBotRecommendationResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    StartBotRecommendationResponse.add_member(:bot_recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationStatus, name: "botRecommendationStatus"))
    StartBotRecommendationResponse.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId"))
    StartBotRecommendationResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    StartBotRecommendationResponse.add_member(:transcript_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptSourceSetting, name: "transcriptSourceSetting"))
    StartBotRecommendationResponse.add_member(:encryption_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSetting, name: "encryptionSetting"))
    StartBotRecommendationResponse.type = Types::StartBotRecommendationResponse
    StartBotResourceGenerationRequest.add_member(:generation_input_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationInput, name: "generationInputPrompt", traits: {"smithy.api#required" => {}}))
    StartBotResourceGenerationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBotResourceGenerationRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBotResourceGenerationRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBotResourceGenerationRequest.type = Types::StartBotResourceGenerationRequest
    StartBotResourceGenerationResponse.add_member(:generation_input_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationInput, name: "generationInputPrompt"))
    StartBotResourceGenerationResponse.add_member(:generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "generationId"))
    StartBotResourceGenerationResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    StartBotResourceGenerationResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    StartBotResourceGenerationResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    StartBotResourceGenerationResponse.add_member(:generation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationStatus, name: "generationStatus"))
    StartBotResourceGenerationResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    StartBotResourceGenerationResponse.type = Types::StartBotResourceGenerationResponse
    StartImportRequest.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId", traits: {"smithy.api#required" => {}}))
    StartImportRequest.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportResourceSpecification, name: "resourceSpecification", traits: {"smithy.api#required" => {}}))
    StartImportRequest.add_member(:merge_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeStrategy, name: "mergeStrategy", traits: {"smithy.api#required" => {}}))
    StartImportRequest.add_member(:file_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFilePassword, name: "filePassword"))
    StartImportRequest.type = Types::StartImportRequest
    StartImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "importId"))
    StartImportResponse.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportResourceSpecification, name: "resourceSpecification"))
    StartImportResponse.add_member(:merge_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeStrategy, name: "mergeStrategy"))
    StartImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, name: "importStatus"))
    StartImportResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    StartImportResponse.type = Types::StartImportResponse
    StartTestExecutionRequest.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartTestExecutionRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionTarget, name: "target", traits: {"smithy.api#required" => {}}))
    StartTestExecutionRequest.add_member(:api_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionApiMode, name: "apiMode", traits: {"smithy.api#required" => {}}))
    StartTestExecutionRequest.add_member(:test_execution_modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionModality, name: "testExecutionModality"))
    StartTestExecutionRequest.type = Types::StartTestExecutionRequest
    StartTestExecutionResponse.add_member(:test_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testExecutionId"))
    StartTestExecutionResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    StartTestExecutionResponse.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    StartTestExecutionResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionTarget, name: "target"))
    StartTestExecutionResponse.add_member(:api_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionApiMode, name: "apiMode"))
    StartTestExecutionResponse.add_member(:test_execution_modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionModality, name: "testExecutionModality"))
    StartTestExecutionResponse.type = Types::StartTestExecutionResponse
    StartTestSetGenerationRequest.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName", traits: {"smithy.api#required" => {}}))
    StartTestSetGenerationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    StartTestSetGenerationRequest.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStorageLocation, name: "storageLocation", traits: {"smithy.api#required" => {}}))
    StartTestSetGenerationRequest.add_member(:generation_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetGenerationDataSource, name: "generationDataSource", traits: {"smithy.api#required" => {}}))
    StartTestSetGenerationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartTestSetGenerationRequest.add_member(:test_set_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "testSetTags"))
    StartTestSetGenerationRequest.type = Types::StartTestSetGenerationRequest
    StartTestSetGenerationResponse.add_member(:test_set_generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetGenerationId"))
    StartTestSetGenerationResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    StartTestSetGenerationResponse.add_member(:test_set_generation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetGenerationStatus, name: "testSetGenerationStatus"))
    StartTestSetGenerationResponse.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName"))
    StartTestSetGenerationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    StartTestSetGenerationResponse.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStorageLocation, name: "storageLocation"))
    StartTestSetGenerationResponse.add_member(:generation_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetGenerationDataSource, name: "generationDataSource"))
    StartTestSetGenerationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    StartTestSetGenerationResponse.add_member(:test_set_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "testSetTags"))
    StartTestSetGenerationResponse.type = Types::StartTestSetGenerationResponse
    StillWaitingResponseSpecification.add_member(:message_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroupsList, name: "messageGroups", traits: {"smithy.api#required" => {}}))
    StillWaitingResponseSpecification.add_member(:frequency_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StillWaitingResponseFrequency, name: "frequencyInSeconds", traits: {"smithy.api#required" => {}}))
    StillWaitingResponseSpecification.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StillWaitingResponseTimeout, name: "timeoutInSeconds", traits: {"smithy.api#required" => {}}))
    StillWaitingResponseSpecification.add_member(:allow_interrupt, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "allowInterrupt"))
    StillWaitingResponseSpecification.type = Types::StillWaitingResponseSpecification
    StopBotRecommendationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBotRecommendationRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBotRecommendationRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBotRecommendationRequest.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBotRecommendationRequest.type = Types::StopBotRecommendationRequest
    StopBotRecommendationResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    StopBotRecommendationResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    StopBotRecommendationResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    StopBotRecommendationResponse.add_member(:bot_recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationStatus, name: "botRecommendationStatus"))
    StopBotRecommendationResponse.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId"))
    StopBotRecommendationResponse.type = Types::StopBotRecommendationResponse
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key")
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    SubSlotSetting.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotExpression, name: "expression"))
    SubSlotSetting.add_member(:slot_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotSpecificationMap, name: "slotSpecifications"))
    SubSlotSetting.type = Types::SubSlotSetting
    SubSlotSpecificationMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    SubSlotSpecificationMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Specifications, name: "value")
    SubSlotTypeComposition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    SubSlotTypeComposition.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId", traits: {"smithy.api#required" => {}}))
    SubSlotTypeComposition.type = Types::SubSlotTypeComposition
    SubSlotTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotTypeComposition, name: "member")
    SubSlotValueElicitationSetting.add_member(:default_value_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotDefaultValueSpecification, name: "defaultValueSpecification"))
    SubSlotValueElicitationSetting.add_member(:prompt_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptSpecification, name: "promptSpecification", traits: {"smithy.api#required" => {}}))
    SubSlotValueElicitationSetting.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    SubSlotValueElicitationSetting.add_member(:wait_and_continue_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitAndContinueSpecification, name: "waitAndContinueSpecification"))
    SubSlotValueElicitationSetting.type = Types::SubSlotValueElicitationSetting
    SynonymList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SampleValue, name: "member")
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TestExecutionApiMode.add_member(:streaming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Streaming", traits: {"smithy.api#enumValue" => "Streaming"}))
    TestExecutionApiMode.add_member(:non_streaming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NonStreaming", traits: {"smithy.api#enumValue" => "NonStreaming"}))
    TestExecutionModality.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Text", traits: {"smithy.api#enumValue" => "Text"}))
    TestExecutionModality.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Audio", traits: {"smithy.api#enumValue" => "Audio"}))
    TestExecutionResultFilterBy.add_member(:result_type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultTypeFilter, name: "resultTypeFilter", traits: {"smithy.api#required" => {}}))
    TestExecutionResultFilterBy.add_member(:conversation_level_test_results_filter_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelTestResultsFilterBy, name: "conversationLevelTestResultsFilterBy"))
    TestExecutionResultFilterBy.type = Types::TestExecutionResultFilterBy
    TestExecutionResultItems.add_member(:overall_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: OverallTestResults, name: "overallTestResults"))
    TestExecutionResultItems.add_member(:conversation_level_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelTestResults, name: "conversationLevelTestResults"))
    TestExecutionResultItems.add_member(:intent_classification_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClassificationTestResults, name: "intentClassificationTestResults"))
    TestExecutionResultItems.add_member(:intent_level_slot_resolution_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentLevelSlotResolutionTestResults, name: "intentLevelSlotResolutionTestResults"))
    TestExecutionResultItems.add_member(:utterance_level_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceLevelTestResults, name: "utteranceLevelTestResults"))
    TestExecutionResultItems.type = Types::TestExecutionResultItems
    TestExecutionSortAttribute.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TestSetName", traits: {"smithy.api#enumValue" => "TestSetName"}))
    TestExecutionSortAttribute.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreationDateTime", traits: {"smithy.api#enumValue" => "CreationDateTime"}))
    TestExecutionSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    TestExecutionSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    TestExecutionSortBy.type = Types::TestExecutionSortBy
    TestExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    TestExecutionStatus.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Waiting", traits: {"smithy.api#enumValue" => "Waiting"}))
    TestExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    TestExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completed", traits: {"smithy.api#enumValue" => "Completed"}))
    TestExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    TestExecutionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    TestExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    TestExecutionSummary.add_member(:test_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testExecutionId"))
    TestExecutionSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    TestExecutionSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    TestExecutionSummary.add_member(:test_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionStatus, name: "testExecutionStatus"))
    TestExecutionSummary.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    TestExecutionSummary.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName"))
    TestExecutionSummary.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionTarget, name: "target"))
    TestExecutionSummary.add_member(:api_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionApiMode, name: "apiMode"))
    TestExecutionSummary.add_member(:test_execution_modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionModality, name: "testExecutionModality"))
    TestExecutionSummary.type = Types::TestExecutionSummary
    TestExecutionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionSummary, name: "member")
    TestExecutionTarget.add_member(:bot_alias_target, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasTestExecutionTarget, name: "botAliasTarget"))
    TestExecutionTarget.type = Types::TestExecutionTarget
    TestResultMatchStatus.add_member(:matched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Matched", traits: {"smithy.api#enumValue" => "Matched"}))
    TestResultMatchStatus.add_member(:mismatched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mismatched", traits: {"smithy.api#enumValue" => "Mismatched"}))
    TestResultMatchStatus.add_member(:execution_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionError", traits: {"smithy.api#enumValue" => "ExecutionError"}))
    TestResultMatchStatusCountMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "key")
    TestResultMatchStatusCountMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "value")
    TestResultTypeFilter.add_member(:overall_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OverallTestResults", traits: {"smithy.api#enumValue" => "OverallTestResults"}))
    TestResultTypeFilter.add_member(:conversation_level_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConversationLevelTestResults", traits: {"smithy.api#enumValue" => "ConversationLevelTestResults"}))
    TestResultTypeFilter.add_member(:intent_classification_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntentClassificationTestResults", traits: {"smithy.api#enumValue" => "IntentClassificationTestResults"}))
    TestResultTypeFilter.add_member(:slot_resolution_test_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SlotResolutionTestResults", traits: {"smithy.api#enumValue" => "SlotResolutionTestResults"}))
    TestResultTypeFilter.add_member(:utterance_level_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UtteranceLevelResults", traits: {"smithy.api#enumValue" => "UtteranceLevelResults"}))
    TestSetDiscrepancyErrors.add_member(:intent_discrepancies, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetIntentDiscrepancyList, name: "intentDiscrepancies", traits: {"smithy.api#required" => {}}))
    TestSetDiscrepancyErrors.add_member(:slot_discrepancies, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetSlotDiscrepancyList, name: "slotDiscrepancies", traits: {"smithy.api#required" => {}}))
    TestSetDiscrepancyErrors.type = Types::TestSetDiscrepancyErrors
    TestSetDiscrepancyReportBotAliasTarget.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#required" => {}}))
    TestSetDiscrepancyReportBotAliasTarget.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId", traits: {"smithy.api#required" => {}}))
    TestSetDiscrepancyReportBotAliasTarget.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#required" => {}}))
    TestSetDiscrepancyReportBotAliasTarget.type = Types::TestSetDiscrepancyReportBotAliasTarget
    TestSetDiscrepancyReportResourceTarget.add_member(:bot_alias_target, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetDiscrepancyReportBotAliasTarget, name: "botAliasTarget"))
    TestSetDiscrepancyReportResourceTarget.type = Types::TestSetDiscrepancyReportResourceTarget
    TestSetDiscrepancyReportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    TestSetDiscrepancyReportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completed", traits: {"smithy.api#enumValue" => "Completed"}))
    TestSetDiscrepancyReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    TestSetExportSpecification.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId", traits: {"smithy.api#required" => {}}))
    TestSetExportSpecification.type = Types::TestSetExportSpecification
    TestSetGenerationDataSource.add_member(:conversation_logs_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogsDataSource, name: "conversationLogsDataSource"))
    TestSetGenerationDataSource.type = Types::TestSetGenerationDataSource
    TestSetGenerationStatus.add_member(:generating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Generating", traits: {"smithy.api#enumValue" => "Generating"}))
    TestSetGenerationStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ready", traits: {"smithy.api#enumValue" => "Ready"}))
    TestSetGenerationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    TestSetGenerationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    TestSetImportInputLocation.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName", traits: {"smithy.api#required" => {}}))
    TestSetImportInputLocation.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectPath, name: "s3Path", traits: {"smithy.api#required" => {}}))
    TestSetImportInputLocation.type = Types::TestSetImportInputLocation
    TestSetImportResourceSpecification.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName", traits: {"smithy.api#required" => {}}))
    TestSetImportResourceSpecification.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    TestSetImportResourceSpecification.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    TestSetImportResourceSpecification.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStorageLocation, name: "storageLocation", traits: {"smithy.api#required" => {}}))
    TestSetImportResourceSpecification.add_member(:import_input_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetImportInputLocation, name: "importInputLocation", traits: {"smithy.api#required" => {}}))
    TestSetImportResourceSpecification.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetModality, name: "modality", traits: {"smithy.api#required" => {}}))
    TestSetImportResourceSpecification.add_member(:test_set_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "testSetTags"))
    TestSetImportResourceSpecification.type = Types::TestSetImportResourceSpecification
    TestSetIntentDiscrepancyItem.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    TestSetIntentDiscrepancyItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    TestSetIntentDiscrepancyItem.type = Types::TestSetIntentDiscrepancyItem
    TestSetIntentDiscrepancyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetIntentDiscrepancyItem, name: "member")
    TestSetModality.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Text", traits: {"smithy.api#enumValue" => "Text"}))
    TestSetModality.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Audio", traits: {"smithy.api#enumValue" => "Audio"}))
    TestSetSlotDiscrepancyItem.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    TestSetSlotDiscrepancyItem.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotName", traits: {"smithy.api#required" => {}}))
    TestSetSlotDiscrepancyItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    TestSetSlotDiscrepancyItem.type = Types::TestSetSlotDiscrepancyItem
    TestSetSlotDiscrepancyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetSlotDiscrepancyItem, name: "member")
    TestSetSortAttribute.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TestSetName", traits: {"smithy.api#enumValue" => "TestSetName"}))
    TestSetSortAttribute.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUpdatedDateTime", traits: {"smithy.api#enumValue" => "LastUpdatedDateTime"}))
    TestSetSortBy.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetSortAttribute, name: "attribute", traits: {"smithy.api#required" => {}}))
    TestSetSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    TestSetSortBy.type = Types::TestSetSortBy
    TestSetStatus.add_member(:importing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Importing", traits: {"smithy.api#enumValue" => "Importing"}))
    TestSetStatus.add_member(:pending_annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingAnnotation", traits: {"smithy.api#enumValue" => "PendingAnnotation"}))
    TestSetStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    TestSetStatus.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationError", traits: {"smithy.api#enumValue" => "ValidationError"}))
    TestSetStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ready", traits: {"smithy.api#enumValue" => "Ready"}))
    TestSetStorageLocation.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName", traits: {"smithy.api#required" => {}}))
    TestSetStorageLocation.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectPath, name: "s3Path", traits: {"smithy.api#required" => {}}))
    TestSetStorageLocation.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    TestSetStorageLocation.type = Types::TestSetStorageLocation
    TestSetSummary.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    TestSetSummary.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName"))
    TestSetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    TestSetSummary.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetModality, name: "modality"))
    TestSetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStatus, name: "status"))
    TestSetSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    TestSetSummary.add_member(:num_turns, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "numTurns"))
    TestSetSummary.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStorageLocation, name: "storageLocation"))
    TestSetSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    TestSetSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    TestSetSummary.type = Types::TestSetSummary
    TestSetSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetSummary, name: "member")
    TestSetTurnRecord.add_member(:record_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordNumber, name: "recordNumber", traits: {"smithy.api#required" => {}}))
    TestSetTurnRecord.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetConversationId, name: "conversationId"))
    TestSetTurnRecord.add_member(:turn_number, ::Smithy::Schema::Shapes::MemberShape.new(target: TurnNumber, name: "turnNumber"))
    TestSetTurnRecord.add_member(:turn_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: TurnSpecification, name: "turnSpecification", traits: {"smithy.api#required" => {}}))
    TestSetTurnRecord.type = Types::TestSetTurnRecord
    TestSetTurnRecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetTurnRecord, name: "member")
    TestSetTurnResult.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTurnResult, name: "agent"))
    TestSetTurnResult.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnResult, name: "user"))
    TestSetTurnResult.type = Types::TestSetTurnResult
    TextInputSpecification.add_member(:start_timeout_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInMilliSeconds, name: "startTimeoutMs", traits: {"smithy.api#required" => {}}))
    TextInputSpecification.type = Types::TextInputSpecification
    TextLogDestination.add_member(:cloud_watch, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupLogDestination, name: "cloudWatch", traits: {"smithy.api#required" => {}}))
    TextLogDestination.type = Types::TextLogDestination
    TextLogSetting.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    TextLogSetting.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: TextLogDestination, name: "destination", traits: {"smithy.api#required" => {}}))
    TextLogSetting.add_member(:selective_logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "selectiveLoggingEnabled"))
    TextLogSetting.type = Types::TextLogSetting
    TextLogSettingsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TextLogSetting, name: "member")
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TimeDimension.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hours", traits: {"smithy.api#enumValue" => "Hours"}))
    TimeDimension.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Days", traits: {"smithy.api#enumValue" => "Days"}))
    TimeDimension.add_member(:weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Weeks", traits: {"smithy.api#enumValue" => "Weeks"}))
    TranscriptFilter.add_member(:lex_transcript_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LexTranscriptFilter, name: "lexTranscriptFilter"))
    TranscriptFilter.type = Types::TranscriptFilter
    TranscriptFormat.add_member(:lex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lex", traits: {"smithy.api#enumValue" => "Lex"}))
    TranscriptSourceSetting.add_member(:s3_bucket_transcript_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketTranscriptSource, name: "s3BucketTranscriptSource"))
    TranscriptSourceSetting.type = Types::TranscriptSourceSetting
    TurnSpecification.add_member(:agent_turn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTurnSpecification, name: "agentTurn"))
    TurnSpecification.add_member(:user_turn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnSpecification, name: "userTurn"))
    TurnSpecification.type = Types::TurnSpecification
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBotAliasRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotAliasRequest.add_member(:bot_alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botAliasName", traits: {"smithy.api#required" => {}}))
    UpdateBotAliasRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateBotAliasRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    UpdateBotAliasRequest.add_member(:bot_alias_locale_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasLocaleSettingsMap, name: "botAliasLocaleSettings"))
    UpdateBotAliasRequest.add_member(:conversation_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogSettings, name: "conversationLogSettings"))
    UpdateBotAliasRequest.add_member(:sentiment_analysis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentAnalysisSettings, name: "sentimentAnalysisSettings"))
    UpdateBotAliasRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotAliasRequest.type = Types::UpdateBotAliasRequest
    UpdateBotAliasResponse.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    UpdateBotAliasResponse.add_member(:bot_alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botAliasName"))
    UpdateBotAliasResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateBotAliasResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BotVersion, name: "botVersion"))
    UpdateBotAliasResponse.add_member(:bot_alias_locale_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasLocaleSettingsMap, name: "botAliasLocaleSettings"))
    UpdateBotAliasResponse.add_member(:conversation_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLogSettings, name: "conversationLogSettings"))
    UpdateBotAliasResponse.add_member(:sentiment_analysis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentAnalysisSettings, name: "sentimentAnalysisSettings"))
    UpdateBotAliasResponse.add_member(:bot_alias_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasStatus, name: "botAliasStatus"))
    UpdateBotAliasResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    UpdateBotAliasResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateBotAliasResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateBotAliasResponse.type = Types::UpdateBotAliasResponse
    UpdateBotLocaleRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotLocaleRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotLocaleRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotLocaleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateBotLocaleRequest.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "nluIntentConfidenceThreshold", traits: {"smithy.api#required" => {}}))
    UpdateBotLocaleRequest.add_member(:voice_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceSettings, name: "voiceSettings"))
    UpdateBotLocaleRequest.add_member(:generative_ai_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeAISettings, name: "generativeAISettings"))
    UpdateBotLocaleRequest.type = Types::UpdateBotLocaleRequest
    UpdateBotLocaleResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    UpdateBotLocaleResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    UpdateBotLocaleResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    UpdateBotLocaleResponse.add_member(:locale_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleName, name: "localeName"))
    UpdateBotLocaleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateBotLocaleResponse.add_member(:nlu_intent_confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "nluIntentConfidenceThreshold"))
    UpdateBotLocaleResponse.add_member(:voice_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceSettings, name: "voiceSettings"))
    UpdateBotLocaleResponse.add_member(:bot_locale_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotLocaleStatus, name: "botLocaleStatus"))
    UpdateBotLocaleResponse.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasons, name: "failureReasons"))
    UpdateBotLocaleResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateBotLocaleResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateBotLocaleResponse.add_member(:recommended_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActions, name: "recommendedActions"))
    UpdateBotLocaleResponse.add_member(:generative_ai_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeAISettings, name: "generativeAISettings"))
    UpdateBotLocaleResponse.type = Types::UpdateBotLocaleResponse
    UpdateBotRecommendationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRecommendationRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRecommendationRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRecommendationRequest.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRecommendationRequest.add_member(:encryption_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSetting, name: "encryptionSetting", traits: {"smithy.api#required" => {}}))
    UpdateBotRecommendationRequest.type = Types::UpdateBotRecommendationRequest
    UpdateBotRecommendationResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    UpdateBotRecommendationResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    UpdateBotRecommendationResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    UpdateBotRecommendationResponse.add_member(:bot_recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotRecommendationStatus, name: "botRecommendationStatus"))
    UpdateBotRecommendationResponse.add_member(:bot_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botRecommendationId"))
    UpdateBotRecommendationResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateBotRecommendationResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateBotRecommendationResponse.add_member(:transcript_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptSourceSetting, name: "transcriptSourceSetting"))
    UpdateBotRecommendationResponse.add_member(:encryption_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSetting, name: "encryptionSetting"))
    UpdateBotRecommendationResponse.type = Types::UpdateBotRecommendationResponse
    UpdateBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName", traits: {"smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateBotRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:data_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPrivacy, name: "dataPrivacy", traits: {"smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds", traits: {"smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "botType"))
    UpdateBotRequest.add_member(:bot_members, ::Smithy::Schema::Shapes::MemberShape.new(target: BotMembers, name: "botMembers"))
    UpdateBotRequest.add_member(:error_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorLogSettings, name: "errorLogSettings"))
    UpdateBotRequest.type = Types::UpdateBotRequest
    UpdateBotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    UpdateBotResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "botName"))
    UpdateBotResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateBotResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    UpdateBotResponse.add_member(:data_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPrivacy, name: "dataPrivacy"))
    UpdateBotResponse.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds"))
    UpdateBotResponse.add_member(:bot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "botStatus"))
    UpdateBotResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateBotResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateBotResponse.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "botType"))
    UpdateBotResponse.add_member(:bot_members, ::Smithy::Schema::Shapes::MemberShape.new(target: BotMembers, name: "botMembers"))
    UpdateBotResponse.add_member(:error_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorLogSettings, name: "errorLogSettings"))
    UpdateBotResponse.type = Types::UpdateBotResponse
    UpdateCustomVocabularyItemsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVocabularyItem, name: "member")
    UpdateExportRequest.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExportRequest.add_member(:file_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFilePassword, name: "filePassword"))
    UpdateExportRequest.type = Types::UpdateExportRequest
    UpdateExportResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "exportId"))
    UpdateExportResponse.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportResourceSpecification, name: "resourceSpecification"))
    UpdateExportResponse.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportExportFileFormat, name: "fileFormat"))
    UpdateExportResponse.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "exportStatus"))
    UpdateExportResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateExportResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateExportResponse.type = Types::UpdateExportResponse
    UpdateIntentRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntentRequest.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName", traits: {"smithy.api#required" => {}}))
    UpdateIntentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateIntentRequest.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSignature, name: "parentIntentSignature"))
    UpdateIntentRequest.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    UpdateIntentRequest.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookSettings, name: "dialogCodeHook"))
    UpdateIntentRequest.add_member(:fulfillment_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentCodeHookSettings, name: "fulfillmentCodeHook"))
    UpdateIntentRequest.add_member(:slot_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotPrioritiesList, name: "slotPriorities"))
    UpdateIntentRequest.add_member(:intent_confirmation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentConfirmationSetting, name: "intentConfirmationSetting"))
    UpdateIntentRequest.add_member(:intent_closing_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClosingSetting, name: "intentClosingSetting"))
    UpdateIntentRequest.add_member(:input_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContextsList, name: "inputContexts"))
    UpdateIntentRequest.add_member(:output_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputContextsList, name: "outputContexts"))
    UpdateIntentRequest.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraConfiguration, name: "kendraConfiguration"))
    UpdateIntentRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntentRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntentRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntentRequest.add_member(:initial_response_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialResponseSetting, name: "initialResponseSetting"))
    UpdateIntentRequest.add_member(:qn_a_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QnAIntentConfiguration, name: "qnAIntentConfiguration"))
    UpdateIntentRequest.add_member(:q_in_connect_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QInConnectIntentConfiguration, name: "qInConnectIntentConfiguration"))
    UpdateIntentRequest.type = Types::UpdateIntentRequest
    UpdateIntentResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    UpdateIntentResponse.add_member(:intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "intentName"))
    UpdateIntentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateIntentResponse.add_member(:parent_intent_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentSignature, name: "parentIntentSignature"))
    UpdateIntentResponse.add_member(:sample_utterances, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleUtterancesList, name: "sampleUtterances"))
    UpdateIntentResponse.add_member(:dialog_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogCodeHookSettings, name: "dialogCodeHook"))
    UpdateIntentResponse.add_member(:fulfillment_code_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentCodeHookSettings, name: "fulfillmentCodeHook"))
    UpdateIntentResponse.add_member(:slot_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotPrioritiesList, name: "slotPriorities"))
    UpdateIntentResponse.add_member(:intent_confirmation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentConfirmationSetting, name: "intentConfirmationSetting"))
    UpdateIntentResponse.add_member(:intent_closing_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentClosingSetting, name: "intentClosingSetting"))
    UpdateIntentResponse.add_member(:input_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContextsList, name: "inputContexts"))
    UpdateIntentResponse.add_member(:output_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputContextsList, name: "outputContexts"))
    UpdateIntentResponse.add_member(:kendra_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraConfiguration, name: "kendraConfiguration"))
    UpdateIntentResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    UpdateIntentResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    UpdateIntentResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    UpdateIntentResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateIntentResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateIntentResponse.add_member(:initial_response_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialResponseSetting, name: "initialResponseSetting"))
    UpdateIntentResponse.add_member(:qn_a_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QnAIntentConfiguration, name: "qnAIntentConfiguration"))
    UpdateIntentResponse.add_member(:q_in_connect_intent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QInConnectIntentConfiguration, name: "qInConnectIntentConfiguration"))
    UpdateIntentResponse.type = Types::UpdateIntentResponse
    UpdateResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "policy", traits: {"smithy.api#required" => {}}))
    UpdateResourcePolicyRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "expectedRevisionId", traits: {"smithy.api#httpQuery" => "expectedRevisionId"}))
    UpdateResourcePolicyRequest.type = Types::UpdateResourcePolicyRequest
    UpdateResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn"))
    UpdateResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    UpdateResourcePolicyResponse.type = Types::UpdateResourcePolicyResponse
    UpdateSlotRequest.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotRequest.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotName", traits: {"smithy.api#required" => {}}))
    UpdateSlotRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateSlotRequest.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId"))
    UpdateSlotRequest.add_member(:value_elicitation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueElicitationSetting, name: "valueElicitationSetting", traits: {"smithy.api#required" => {}}))
    UpdateSlotRequest.add_member(:obfuscation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ObfuscationSetting, name: "obfuscationSetting"))
    UpdateSlotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotRequest.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotRequest.add_member(:multiple_values_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipleValuesSetting, name: "multipleValuesSetting"))
    UpdateSlotRequest.add_member(:sub_slot_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotSetting, name: "subSlotSetting"))
    UpdateSlotRequest.type = Types::UpdateSlotRequest
    UpdateSlotResponse.add_member(:slot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotId"))
    UpdateSlotResponse.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotName"))
    UpdateSlotResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateSlotResponse.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuiltInOrCustomSlotTypeId, name: "slotTypeId"))
    UpdateSlotResponse.add_member(:value_elicitation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueElicitationSetting, name: "valueElicitationSetting"))
    UpdateSlotResponse.add_member(:obfuscation_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ObfuscationSetting, name: "obfuscationSetting"))
    UpdateSlotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    UpdateSlotResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    UpdateSlotResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    UpdateSlotResponse.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "intentId"))
    UpdateSlotResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateSlotResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateSlotResponse.add_member(:multiple_values_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipleValuesSetting, name: "multipleValuesSetting"))
    UpdateSlotResponse.add_member(:sub_slot_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SubSlotSetting, name: "subSlotSetting"))
    UpdateSlotResponse.type = Types::UpdateSlotResponse
    UpdateSlotTypeRequest.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotTypeRequest.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotTypeName", traits: {"smithy.api#required" => {}}))
    UpdateSlotTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateSlotTypeRequest.add_member(:slot_type_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeValues, name: "slotTypeValues"))
    UpdateSlotTypeRequest.add_member(:value_selection_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueSelectionSetting, name: "valueSelectionSetting"))
    UpdateSlotTypeRequest.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSignature, name: "parentSlotTypeSignature"))
    UpdateSlotTypeRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotTypeRequest.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotTypeRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSlotTypeRequest.add_member(:external_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceSetting, name: "externalSourceSetting"))
    UpdateSlotTypeRequest.add_member(:composite_slot_type_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSlotTypeSetting, name: "compositeSlotTypeSetting"))
    UpdateSlotTypeRequest.type = Types::UpdateSlotTypeRequest
    UpdateSlotTypeResponse.add_member(:slot_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "slotTypeId"))
    UpdateSlotTypeResponse.add_member(:slot_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "slotTypeName"))
    UpdateSlotTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateSlotTypeResponse.add_member(:slot_type_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeValues, name: "slotTypeValues"))
    UpdateSlotTypeResponse.add_member(:value_selection_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotValueSelectionSetting, name: "valueSelectionSetting"))
    UpdateSlotTypeResponse.add_member(:parent_slot_type_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotTypeSignature, name: "parentSlotTypeSignature"))
    UpdateSlotTypeResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "botId"))
    UpdateSlotTypeResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DraftBotVersion, name: "botVersion"))
    UpdateSlotTypeResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    UpdateSlotTypeResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateSlotTypeResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateSlotTypeResponse.add_member(:external_source_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceSetting, name: "externalSourceSetting"))
    UpdateSlotTypeResponse.add_member(:composite_slot_type_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeSlotTypeSetting, name: "compositeSlotTypeSetting"))
    UpdateSlotTypeResponse.type = Types::UpdateSlotTypeResponse
    UpdateTestSetRequest.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTestSetRequest.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName", traits: {"smithy.api#required" => {}}))
    UpdateTestSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateTestSetRequest.type = Types::UpdateTestSetRequest
    UpdateTestSetResponse.add_member(:test_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "testSetId"))
    UpdateTestSetResponse.add_member(:test_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "testSetName"))
    UpdateTestSetResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateTestSetResponse.add_member(:modality, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetModality, name: "modality"))
    UpdateTestSetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStatus, name: "status"))
    UpdateTestSetResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    UpdateTestSetResponse.add_member(:num_turns, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "numTurns"))
    UpdateTestSetResponse.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetStorageLocation, name: "storageLocation"))
    UpdateTestSetResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    UpdateTestSetResponse.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDateTime"))
    UpdateTestSetResponse.type = Types::UpdateTestSetResponse
    UserTurnInputSpecification.add_member(:utterance_input, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceInputSpecification, name: "utteranceInput", traits: {"smithy.api#required" => {}}))
    UserTurnInputSpecification.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "requestAttributes"))
    UserTurnInputSpecification.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSessionStateSpecification, name: "sessionState"))
    UserTurnInputSpecification.type = Types::UserTurnInputSpecification
    UserTurnIntentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    UserTurnIntentOutput.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnSlotOutputMap, name: "slots"))
    UserTurnIntentOutput.type = Types::UserTurnIntentOutput
    UserTurnOutputSpecification.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnIntentOutput, name: "intent", traits: {"smithy.api#required" => {}}))
    UserTurnOutputSpecification.add_member(:active_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextList, name: "activeContexts"))
    UserTurnOutputSpecification.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetUtteranceText, name: "transcript"))
    UserTurnOutputSpecification.type = Types::UserTurnOutputSpecification
    UserTurnResult.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnInputSpecification, name: "input", traits: {"smithy.api#required" => {}}))
    UserTurnResult.add_member(:expected_output, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnOutputSpecification, name: "expectedOutput", traits: {"smithy.api#required" => {}}))
    UserTurnResult.add_member(:actual_output, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnOutputSpecification, name: "actualOutput"))
    UserTurnResult.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionErrorDetails, name: "errorDetails"))
    UserTurnResult.add_member(:end_to_end_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "endToEndResult"))
    UserTurnResult.add_member(:intent_match_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "intentMatchResult"))
    UserTurnResult.add_member(:slot_match_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "slotMatchResult"))
    UserTurnResult.add_member(:speech_transcription_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResultMatchStatus, name: "speechTranscriptionResult"))
    UserTurnResult.add_member(:conversation_level_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationLevelResultDetail, name: "conversationLevelResult"))
    UserTurnResult.type = Types::UserTurnResult
    UserTurnSlotOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    UserTurnSlotOutput.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnSlotOutputList, name: "values"))
    UserTurnSlotOutput.add_member(:sub_slots, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnSlotOutputMap, name: "subSlots"))
    UserTurnSlotOutput.type = Types::UserTurnSlotOutput
    UserTurnSlotOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnSlotOutput, name: "member")
    UserTurnSlotOutputMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    UserTurnSlotOutputMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnSlotOutput, name: "value")
    UserTurnSpecification.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnInputSpecification, name: "input", traits: {"smithy.api#required" => {}}))
    UserTurnSpecification.add_member(:expected, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTurnOutputSpecification, name: "expected", traits: {"smithy.api#required" => {}}))
    UserTurnSpecification.type = Types::UserTurnSpecification
    UtteranceAggregationDuration.add_member(:relative_aggregation_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: RelativeAggregationDuration, name: "relativeAggregationDuration", traits: {"smithy.api#required" => {}}))
    UtteranceAggregationDuration.type = Types::UtteranceAggregationDuration
    UtteranceAudioInputSpecification.add_member(:audio_file_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioFileS3Location, name: "audioFileS3Location", traits: {"smithy.api#required" => {}}))
    UtteranceAudioInputSpecification.type = Types::UtteranceAudioInputSpecification
    UtteranceBotResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "content"))
    UtteranceBotResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceContentType, name: "contentType"))
    UtteranceBotResponse.add_member(:image_response_card, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageResponseCard, name: "imageResponseCard"))
    UtteranceBotResponse.type = Types::UtteranceBotResponse
    UtteranceBotResponses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceBotResponse, name: "member")
    UtteranceContentType.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PlainText", traits: {"smithy.api#enumValue" => "PlainText"}))
    UtteranceContentType.add_member(:custom_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CustomPayload", traits: {"smithy.api#enumValue" => "CustomPayload"}))
    UtteranceContentType.add_member(:ssml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSML", traits: {"smithy.api#enumValue" => "SSML"}))
    UtteranceContentType.add_member(:image_response_card, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageResponseCard", traits: {"smithy.api#enumValue" => "ImageResponseCard"}))
    UtteranceDataSortBy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsUtteranceSortByName, name: "name", traits: {"smithy.api#required" => {}}))
    UtteranceDataSortBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSortOrder, name: "order", traits: {"smithy.api#required" => {}}))
    UtteranceDataSortBy.type = Types::UtteranceDataSortBy
    UtteranceInputSpecification.add_member(:text_input, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetUtteranceText, name: "textInput"))
    UtteranceInputSpecification.add_member(:audio_input, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceAudioInputSpecification, name: "audioInput"))
    UtteranceInputSpecification.type = Types::UtteranceInputSpecification
    UtteranceLevelTestResultItem.add_member(:record_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordNumber, name: "recordNumber", traits: {"smithy.api#required" => {}}))
    UtteranceLevelTestResultItem.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetConversationId, name: "conversationId"))
    UtteranceLevelTestResultItem.add_member(:turn_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSetTurnResult, name: "turnResult", traits: {"smithy.api#required" => {}}))
    UtteranceLevelTestResultItem.type = Types::UtteranceLevelTestResultItem
    UtteranceLevelTestResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceLevelTestResultItem, name: "member")
    UtteranceLevelTestResults.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceLevelTestResultItemList, name: "items", traits: {"smithy.api#required" => {}}))
    UtteranceLevelTestResults.type = Types::UtteranceLevelTestResults
    UtteranceSpecification.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasId, name: "botAliasId"))
    UtteranceSpecification.add_member(:bot_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericalBotVersion, name: "botVersion"))
    UtteranceSpecification.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, name: "localeId"))
    UtteranceSpecification.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsSessionId, name: "sessionId"))
    UtteranceSpecification.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsChannel, name: "channel"))
    UtteranceSpecification.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsModality, name: "mode"))
    UtteranceSpecification.add_member(:conversation_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "conversationStartTime"))
    UtteranceSpecification.add_member(:conversation_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "conversationEndTime"))
    UtteranceSpecification.add_member(:utterance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "utterance"))
    UtteranceSpecification.add_member(:utterance_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "utteranceTimestamp"))
    UtteranceSpecification.add_member(:audio_voice_duration_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsLongValue, name: "audioVoiceDurationMillis"))
    UtteranceSpecification.add_member(:utterance_understood, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceUnderstood, name: "utteranceUnderstood", traits: {"smithy.api#default" => false}))
    UtteranceSpecification.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "inputType"))
    UtteranceSpecification.add_member(:output_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "outputType"))
    UtteranceSpecification.add_member(:associated_intent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "associatedIntentName"))
    UtteranceSpecification.add_member(:associated_slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "associatedSlotName"))
    UtteranceSpecification.add_member(:intent_state, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentState, name: "intentState"))
    UtteranceSpecification.add_member(:dialog_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dialogActionType"))
    UtteranceSpecification.add_member(:bot_response_audio_voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "botResponseAudioVoiceId"))
    UtteranceSpecification.add_member(:slots_filled_in_session, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "slotsFilledInSession"))
    UtteranceSpecification.add_member(:utterance_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "utteranceRequestId"))
    UtteranceSpecification.add_member(:bot_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceBotResponses, name: "botResponses"))
    UtteranceSpecification.type = Types::UtteranceSpecification
    UtteranceSpecifications.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UtteranceSpecification, name: "member")
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    VoiceEngine.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Standard", traits: {"smithy.api#enumValue" => "standard"}))
    VoiceEngine.add_member(:neural, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Neural", traits: {"smithy.api#enumValue" => "neural"}))
    VoiceEngine.add_member(:long_form, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LongForm", traits: {"smithy.api#enumValue" => "long-form"}))
    VoiceEngine.add_member(:generative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Generative", traits: {"smithy.api#enumValue" => "generative"}))
    VoiceSettings.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "voiceId", traits: {"smithy.api#required" => {}}))
    VoiceSettings.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceEngine, name: "engine"))
    VoiceSettings.type = Types::VoiceSettings
    WaitAndContinueSpecification.add_member(:waiting_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "waitingResponse", traits: {"smithy.api#required" => {}}))
    WaitAndContinueSpecification.add_member(:continue_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseSpecification, name: "continueResponse", traits: {"smithy.api#required" => {}}))
    WaitAndContinueSpecification.add_member(:still_waiting_response, ::Smithy::Schema::Shapes::MemberShape.new(target: StillWaitingResponseSpecification, name: "stillWaitingResponse"))
    WaitAndContinueSpecification.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "active"))
    WaitAndContinueSpecification.type = Types::WaitAndContinueSpecification

    LexModelBuildingServiceV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lexmodelsv2#LexModelBuildingServiceV2"
      service.name = "LexModelBuildingServiceV2"
      service.version = "2020-08-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Lex Models V2", "arnNamespace" => "lex", "cloudFormationName" => "LexModelsV2", "cloudTrailEventSource" => "lexmodelsv2.amazonaws.com", "docId" => "models.lex.v2-2020-08-07", "endpointPrefix" => "models-v2-lex"}, "aws.auth#sigv4" => {"name" => "lex"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Lex Model Building V2"}
      service.add_operation(:batch_create_custom_vocabulary_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#BatchCreateCustomVocabularyItem"
        operation.name = "BatchCreateCustomVocabularyItem"
        operation.input = BatchCreateCustomVocabularyItemRequest
        operation.output = BatchCreateCustomVocabularyItemResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchcreate", "code" => 200}}
      end)
      service.add_operation(:batch_delete_custom_vocabulary_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#BatchDeleteCustomVocabularyItem"
        operation.name = "BatchDeleteCustomVocabularyItem"
        operation.input = BatchDeleteCustomVocabularyItemRequest
        operation.output = BatchDeleteCustomVocabularyItemResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchdelete", "code" => 200}}
      end)
      service.add_operation(:batch_update_custom_vocabulary_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#BatchUpdateCustomVocabularyItem"
        operation.name = "BatchUpdateCustomVocabularyItem"
        operation.input = BatchUpdateCustomVocabularyItemRequest
        operation.output = BatchUpdateCustomVocabularyItemResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchupdate", "code" => 200}}
      end)
      service.add_operation(:build_bot_locale, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#BuildBotLocale"
        operation.name = "BuildBotLocale"
        operation.input = BuildBotLocaleRequest
        operation.output = BuildBotLocaleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", "code" => 202}}
      end)
      service.add_operation(:create_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateBot"
        operation.name = "CreateBot"
        operation.input = CreateBotRequest
        operation.output = CreateBotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots", "code" => 202}}
      end)
      service.add_operation(:create_bot_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateBotAlias"
        operation.name = "CreateBotAlias"
        operation.input = CreateBotAliasRequest
        operation.output = CreateBotAliasResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botaliases", "code" => 202}}
      end)
      service.add_operation(:create_bot_locale, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateBotLocale"
        operation.name = "CreateBotLocale"
        operation.input = CreateBotLocaleRequest
        operation.output = CreateBotLocaleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales", "code" => 202}}
      end)
      service.add_operation(:create_bot_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateBotReplica"
        operation.name = "CreateBotReplica"
        operation.input = CreateBotReplicaRequest
        operation.output = CreateBotReplicaResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/replicas", "code" => 202}}
      end)
      service.add_operation(:create_bot_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateBotVersion"
        operation.name = "CreateBotVersion"
        operation.input = CreateBotVersionRequest
        operation.output = CreateBotVersionResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions", "code" => 202}}
      end)
      service.add_operation(:create_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateExport"
        operation.name = "CreateExport"
        operation.input = CreateExportRequest
        operation.output = CreateExportResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/exports", "code" => 202}}
      end)
      service.add_operation(:create_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateIntent"
        operation.name = "CreateIntent"
        operation.input = CreateIntentRequest
        operation.output = CreateIntentResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents", "code" => 200}}
      end)
      service.add_operation(:create_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateResourcePolicy"
        operation.name = "CreateResourcePolicy"
        operation.input = CreateResourcePolicyRequest
        operation.output = CreateResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/policy/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:create_resource_policy_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateResourcePolicyStatement"
        operation.name = "CreateResourcePolicyStatement"
        operation.input = CreateResourcePolicyStatementRequest
        operation.output = CreateResourcePolicyStatementResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/policy/{resourceArn}/statements", "code" => 200}}
      end)
      service.add_operation(:create_slot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateSlot"
        operation.name = "CreateSlot"
        operation.input = CreateSlotRequest
        operation.output = CreateSlotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots", "code" => 200}}
      end)
      service.add_operation(:create_slot_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateSlotType"
        operation.name = "CreateSlotType"
        operation.input = CreateSlotTypeRequest
        operation.output = CreateSlotTypeResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes", "code" => 200}}
      end)
      service.add_operation(:create_test_set_discrepancy_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateTestSetDiscrepancyReport"
        operation.name = "CreateTestSetDiscrepancyReport"
        operation.input = CreateTestSetDiscrepancyReportRequest
        operation.output = CreateTestSetDiscrepancyReportResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/testsets/{testSetId}/testsetdiscrepancy", "code" => 202}}
      end)
      service.add_operation(:create_upload_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#CreateUploadUrl"
        operation.name = "CreateUploadUrl"
        operation.input = CreateUploadUrlRequest
        operation.output = CreateUploadUrlResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createuploadurl", "code" => 200}}
      end)
      service.add_operation(:delete_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteBot"
        operation.name = "DeleteBot"
        operation.input = DeleteBotRequest
        operation.output = DeleteBotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}", "code" => 202}}
      end)
      service.add_operation(:delete_bot_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteBotAlias"
        operation.name = "DeleteBotAlias"
        operation.input = DeleteBotAliasRequest
        operation.output = DeleteBotAliasResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botaliases/{botAliasId}", "code" => 202}}
      end)
      service.add_operation(:delete_bot_locale, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteBotLocale"
        operation.name = "DeleteBotLocale"
        operation.input = DeleteBotLocaleRequest
        operation.output = DeleteBotLocaleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", "code" => 202}}
      end)
      service.add_operation(:delete_bot_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteBotReplica"
        operation.name = "DeleteBotReplica"
        operation.input = DeleteBotReplicaRequest
        operation.output = DeleteBotReplicaResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/replicas/{replicaRegion}", "code" => 202}}
      end)
      service.add_operation(:delete_bot_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteBotVersion"
        operation.name = "DeleteBotVersion"
        operation.input = DeleteBotVersionRequest
        operation.output = DeleteBotVersionResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botversions/{botVersion}", "code" => 202}}
      end)
      service.add_operation(:delete_custom_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteCustomVocabulary"
        operation.name = "DeleteCustomVocabulary"
        operation.input = DeleteCustomVocabularyRequest
        operation.output = DeleteCustomVocabularyResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary", "code" => 202}}
      end)
      service.add_operation(:delete_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteExport"
        operation.name = "DeleteExport"
        operation.input = DeleteExportRequest
        operation.output = DeleteExportResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/exports/{exportId}", "code" => 202}}
      end)
      service.add_operation(:delete_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteImport"
        operation.name = "DeleteImport"
        operation.input = DeleteImportRequest
        operation.output = DeleteImportResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/imports/{importId}", "code" => 202}}
      end)
      service.add_operation(:delete_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteIntent"
        operation.name = "DeleteIntent"
        operation.input = DeleteIntentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}", "code" => 204}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/policy/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:delete_resource_policy_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteResourcePolicyStatement"
        operation.name = "DeleteResourcePolicyStatement"
        operation.input = DeleteResourcePolicyStatementRequest
        operation.output = DeleteResourcePolicyStatementResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/policy/{resourceArn}/statements/{statementId}", "code" => 204}}
      end)
      service.add_operation(:delete_slot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteSlot"
        operation.name = "DeleteSlot"
        operation.input = DeleteSlotRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}", "code" => 204}}
      end)
      service.add_operation(:delete_slot_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteSlotType"
        operation.name = "DeleteSlotType"
        operation.input = DeleteSlotTypeRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}", "code" => 204}}
      end)
      service.add_operation(:delete_test_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteTestSet"
        operation.name = "DeleteTestSet"
        operation.input = DeleteTestSetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/testsets/{testSetId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_utterances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DeleteUtterances"
        operation.name = "DeleteUtterances"
        operation.input = DeleteUtterancesRequest
        operation.output = DeleteUtterancesResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/utterances", "code" => 204}}
      end)
      service.add_operation(:describe_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeBot"
        operation.name = "DescribeBot"
        operation.input = DescribeBotRequest
        operation.output = DescribeBotResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}", "code" => 200}}
      end)
      service.add_operation(:describe_bot_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeBotAlias"
        operation.name = "DescribeBotAlias"
        operation.input = DescribeBotAliasRequest
        operation.output = DescribeBotAliasResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botaliases/{botAliasId}", "code" => 200}}
      end)
      service.add_operation(:describe_bot_locale, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeBotLocale"
        operation.name = "DescribeBotLocale"
        operation.input = DescribeBotLocaleRequest
        operation.output = DescribeBotLocaleResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", "code" => 200}}
      end)
      service.add_operation(:describe_bot_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeBotRecommendation"
        operation.name = "DescribeBotRecommendation"
        operation.input = DescribeBotRecommendationRequest
        operation.output = DescribeBotRecommendationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}", "code" => 200}}
      end)
      service.add_operation(:describe_bot_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeBotReplica"
        operation.name = "DescribeBotReplica"
        operation.input = DescribeBotReplicaRequest
        operation.output = DescribeBotReplicaResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/replicas/{replicaRegion}", "code" => 200}}
      end)
      service.add_operation(:describe_bot_resource_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeBotResourceGeneration"
        operation.name = "DescribeBotResourceGeneration"
        operation.input = DescribeBotResourceGenerationRequest
        operation.output = DescribeBotResourceGenerationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations/{generationId}", "code" => 200}}
      end)
      service.add_operation(:describe_bot_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeBotVersion"
        operation.name = "DescribeBotVersion"
        operation.input = DescribeBotVersionRequest
        operation.output = DescribeBotVersionResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}", "code" => 200}}
      end)
      service.add_operation(:describe_custom_vocabulary_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeCustomVocabularyMetadata"
        operation.name = "DescribeCustomVocabularyMetadata"
        operation.input = DescribeCustomVocabularyMetadataRequest
        operation.output = DescribeCustomVocabularyMetadataResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/metadata", "code" => 200}}
      end)
      service.add_operation(:describe_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeExport"
        operation.name = "DescribeExport"
        operation.input = DescribeExportRequest
        operation.output = DescribeExportResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/exports/{exportId}", "code" => 200}}
      end)
      service.add_operation(:describe_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeImport"
        operation.name = "DescribeImport"
        operation.input = DescribeImportRequest
        operation.output = DescribeImportResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/imports/{importId}", "code" => 200}}
      end)
      service.add_operation(:describe_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeIntent"
        operation.name = "DescribeIntent"
        operation.input = DescribeIntentRequest
        operation.output = DescribeIntentResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}", "code" => 200}}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = DescribeResourcePolicyRequest
        operation.output = DescribeResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/policy/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:describe_slot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeSlot"
        operation.name = "DescribeSlot"
        operation.input = DescribeSlotRequest
        operation.output = DescribeSlotResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}", "code" => 200}}
      end)
      service.add_operation(:describe_slot_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeSlotType"
        operation.name = "DescribeSlotType"
        operation.input = DescribeSlotTypeRequest
        operation.output = DescribeSlotTypeResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}", "code" => 200}}
      end)
      service.add_operation(:describe_test_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeTestExecution"
        operation.name = "DescribeTestExecution"
        operation.input = DescribeTestExecutionRequest
        operation.output = DescribeTestExecutionResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/testexecutions/{testExecutionId}", "code" => 200}}
      end)
      service.add_operation(:describe_test_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeTestSet"
        operation.name = "DescribeTestSet"
        operation.input = DescribeTestSetRequest
        operation.output = DescribeTestSetResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/testsets/{testSetId}", "code" => 200}}
      end)
      service.add_operation(:describe_test_set_discrepancy_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeTestSetDiscrepancyReport"
        operation.name = "DescribeTestSetDiscrepancyReport"
        operation.input = DescribeTestSetDiscrepancyReportRequest
        operation.output = DescribeTestSetDiscrepancyReportResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/testsetdiscrepancy/{testSetDiscrepancyReportId}", "code" => 200}}
      end)
      service.add_operation(:describe_test_set_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#DescribeTestSetGeneration"
        operation.name = "DescribeTestSetGeneration"
        operation.input = DescribeTestSetGenerationRequest
        operation.output = DescribeTestSetGenerationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/testsetgenerations/{testSetGenerationId}", "code" => 200}}
      end)
      service.add_operation(:generate_bot_element, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#GenerateBotElement"
        operation.name = "GenerateBotElement"
        operation.input = GenerateBotElementRequest
        operation.output = GenerateBotElementResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generate", "code" => 202}}
      end)
      service.add_operation(:get_test_execution_artifacts_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#GetTestExecutionArtifactsUrl"
        operation.name = "GetTestExecutionArtifactsUrl"
        operation.input = GetTestExecutionArtifactsUrlRequest
        operation.output = GetTestExecutionArtifactsUrlResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/testexecutions/{testExecutionId}/artifacturl", "code" => 200}}
      end)
      service.add_operation(:list_aggregated_utterances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListAggregatedUtterances"
        operation.name = "ListAggregatedUtterances"
        operation.input = ListAggregatedUtterancesRequest
        operation.output = ListAggregatedUtterancesResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/aggregatedutterances", "code" => 200}}
        operation[:paginator] = Paginators::ListAggregatedUtterances.new
      end)
      service.add_operation(:list_bot_alias_replicas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotAliasReplicas"
        operation.name = "ListBotAliasReplicas"
        operation.input = ListBotAliasReplicasRequest
        operation.output = ListBotAliasReplicasResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/replicas/{replicaRegion}/botaliases", "code" => 200}}
        operation[:paginator] = Paginators::ListBotAliasReplicas.new
      end)
      service.add_operation(:list_bot_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotAliases"
        operation.name = "ListBotAliases"
        operation.input = ListBotAliasesRequest
        operation.output = ListBotAliasesResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botaliases", "code" => 200}}
        operation[:paginator] = Paginators::ListBotAliases.new
      end)
      service.add_operation(:list_bot_locales, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotLocales"
        operation.name = "ListBotLocales"
        operation.input = ListBotLocalesRequest
        operation.output = ListBotLocalesResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales", "code" => 200}}
        operation[:paginator] = Paginators::ListBotLocales.new
      end)
      service.add_operation(:list_bot_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotRecommendations"
        operation.name = "ListBotRecommendations"
        operation.input = ListBotRecommendationsRequest
        operation.output = ListBotRecommendationsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListBotRecommendations.new
      end)
      service.add_operation(:list_bot_replicas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotReplicas"
        operation.name = "ListBotReplicas"
        operation.input = ListBotReplicasRequest
        operation.output = ListBotReplicasResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/replicas", "code" => 200}}
      end)
      service.add_operation(:list_bot_resource_generations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotResourceGenerations"
        operation.name = "ListBotResourceGenerations"
        operation.input = ListBotResourceGenerationsRequest
        operation.output = ListBotResourceGenerationsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations", "code" => 200}}
        operation[:paginator] = Paginators::ListBotResourceGenerations.new
      end)
      service.add_operation(:list_bot_version_replicas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotVersionReplicas"
        operation.name = "ListBotVersionReplicas"
        operation.input = ListBotVersionReplicasRequest
        operation.output = ListBotVersionReplicasResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/replicas/{replicaRegion}/botversions", "code" => 200}}
        operation[:paginator] = Paginators::ListBotVersionReplicas.new
      end)
      service.add_operation(:list_bot_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBotVersions"
        operation.name = "ListBotVersions"
        operation.input = ListBotVersionsRequest
        operation.output = ListBotVersionsResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions", "code" => 200}}
        operation[:paginator] = Paginators::ListBotVersions.new
      end)
      service.add_operation(:list_bots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBots"
        operation.name = "ListBots"
        operation.input = ListBotsRequest
        operation.output = ListBotsResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots", "code" => 200}}
        operation[:paginator] = Paginators::ListBots.new
      end)
      service.add_operation(:list_built_in_intents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBuiltInIntents"
        operation.name = "ListBuiltInIntents"
        operation.input = ListBuiltInIntentsRequest
        operation.output = ListBuiltInIntentsResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/builtins/locales/{localeId}/intents", "code" => 200}}
        operation[:paginator] = Paginators::ListBuiltInIntents.new
      end)
      service.add_operation(:list_built_in_slot_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListBuiltInSlotTypes"
        operation.name = "ListBuiltInSlotTypes"
        operation.input = ListBuiltInSlotTypesRequest
        operation.output = ListBuiltInSlotTypesResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/builtins/locales/{localeId}/slottypes", "code" => 200}}
        operation[:paginator] = Paginators::ListBuiltInSlotTypes.new
      end)
      service.add_operation(:list_custom_vocabulary_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListCustomVocabularyItems"
        operation.name = "ListCustomVocabularyItems"
        operation.input = ListCustomVocabularyItemsRequest
        operation.output = ListCustomVocabularyItemsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/list", "code" => 200}}
        operation[:paginator] = Paginators::ListCustomVocabularyItems.new
      end)
      service.add_operation(:list_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListExports"
        operation.name = "ListExports"
        operation.input = ListExportsRequest
        operation.output = ListExportsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/exports", "code" => 200}}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:list_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListImports"
        operation.name = "ListImports"
        operation.input = ListImportsRequest
        operation.output = ListImportsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/imports", "code" => 200}}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_intent_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListIntentMetrics"
        operation.name = "ListIntentMetrics"
        operation.input = ListIntentMetricsRequest
        operation.output = ListIntentMetricsResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/analytics/intentmetrics", "code" => 200}}
        operation[:paginator] = Paginators::ListIntentMetrics.new
      end)
      service.add_operation(:list_intent_paths, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListIntentPaths"
        operation.name = "ListIntentPaths"
        operation.input = ListIntentPathsRequest
        operation.output = ListIntentPathsResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/analytics/intentpaths", "code" => 200}}
      end)
      service.add_operation(:list_intent_stage_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListIntentStageMetrics"
        operation.name = "ListIntentStageMetrics"
        operation.input = ListIntentStageMetricsRequest
        operation.output = ListIntentStageMetricsResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/analytics/intentstagemetrics", "code" => 200}}
        operation[:paginator] = Paginators::ListIntentStageMetrics.new
      end)
      service.add_operation(:list_intents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListIntents"
        operation.name = "ListIntents"
        operation.input = ListIntentsRequest
        operation.output = ListIntentsResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents", "code" => 200}}
        operation[:paginator] = Paginators::ListIntents.new
      end)
      service.add_operation(:list_recommended_intents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListRecommendedIntents"
        operation.name = "ListRecommendedIntents"
        operation.input = ListRecommendedIntentsRequest
        operation.output = ListRecommendedIntentsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents", "code" => 200}}
        operation[:paginator] = Paginators::ListRecommendedIntents.new
      end)
      service.add_operation(:list_session_analytics_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListSessionAnalyticsData"
        operation.name = "ListSessionAnalyticsData"
        operation.input = ListSessionAnalyticsDataRequest
        operation.output = ListSessionAnalyticsDataResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/analytics/sessions", "code" => 200}}
        operation[:paginator] = Paginators::ListSessionAnalyticsData.new
      end)
      service.add_operation(:list_session_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListSessionMetrics"
        operation.name = "ListSessionMetrics"
        operation.input = ListSessionMetricsRequest
        operation.output = ListSessionMetricsResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/analytics/sessionmetrics", "code" => 200}}
        operation[:paginator] = Paginators::ListSessionMetrics.new
      end)
      service.add_operation(:list_slot_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListSlotTypes"
        operation.name = "ListSlotTypes"
        operation.input = ListSlotTypesRequest
        operation.output = ListSlotTypesResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes", "code" => 200}}
        operation[:paginator] = Paginators::ListSlotTypes.new
      end)
      service.add_operation(:list_slots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListSlots"
        operation.name = "ListSlots"
        operation.input = ListSlotsRequest
        operation.output = ListSlotsResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots", "code" => 200}}
        operation[:paginator] = Paginators::ListSlots.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceARN}", "code" => 200}}
      end)
      service.add_operation(:list_test_execution_result_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListTestExecutionResultItems"
        operation.name = "ListTestExecutionResultItems"
        operation.input = ListTestExecutionResultItemsRequest
        operation.output = ListTestExecutionResultItemsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/testexecutions/{testExecutionId}/results", "code" => 200}}
        operation[:paginator] = Paginators::ListTestExecutionResultItems.new
      end)
      service.add_operation(:list_test_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListTestExecutions"
        operation.name = "ListTestExecutions"
        operation.input = ListTestExecutionsRequest
        operation.output = ListTestExecutionsResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/testexecutions", "code" => 200}}
        operation[:paginator] = Paginators::ListTestExecutions.new
      end)
      service.add_operation(:list_test_set_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListTestSetRecords"
        operation.name = "ListTestSetRecords"
        operation.input = ListTestSetRecordsRequest
        operation.output = ListTestSetRecordsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/testsets/{testSetId}/records", "code" => 200}}
        operation[:paginator] = Paginators::ListTestSetRecords.new
      end)
      service.add_operation(:list_test_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListTestSets"
        operation.name = "ListTestSets"
        operation.input = ListTestSetsRequest
        operation.output = ListTestSetsResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/testsets", "code" => 200}}
        operation[:paginator] = Paginators::ListTestSets.new
      end)
      service.add_operation(:list_utterance_analytics_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListUtteranceAnalyticsData"
        operation.name = "ListUtteranceAnalyticsData"
        operation.input = ListUtteranceAnalyticsDataRequest
        operation.output = ListUtteranceAnalyticsDataResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/analytics/utterances", "code" => 200}}
        operation[:paginator] = Paginators::ListUtteranceAnalyticsData.new
      end)
      service.add_operation(:list_utterance_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#ListUtteranceMetrics"
        operation.name = "ListUtteranceMetrics"
        operation.input = ListUtteranceMetricsRequest
        operation.output = ListUtteranceMetricsResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/analytics/utterancemetrics", "code" => 200}}
        operation[:paginator] = Paginators::ListUtteranceMetrics.new
      end)
      service.add_operation(:search_associated_transcripts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#SearchAssociatedTranscripts"
        operation.name = "SearchAssociatedTranscripts"
        operation.input = SearchAssociatedTranscriptsRequest
        operation.output = SearchAssociatedTranscriptsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts", "code" => 200}}
      end)
      service.add_operation(:start_bot_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#StartBotRecommendation"
        operation.name = "StartBotRecommendation"
        operation.input = StartBotRecommendationRequest
        operation.output = StartBotRecommendationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations", "code" => 202}}
      end)
      service.add_operation(:start_bot_resource_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#StartBotResourceGeneration"
        operation.name = "StartBotResourceGeneration"
        operation.input = StartBotResourceGenerationRequest
        operation.output = StartBotResourceGenerationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/startgeneration", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#StartImport"
        operation.name = "StartImport"
        operation.input = StartImportRequest
        operation.output = StartImportResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/imports", "code" => 202}}
      end)
      service.add_operation(:start_test_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#StartTestExecution"
        operation.name = "StartTestExecution"
        operation.input = StartTestExecutionRequest
        operation.output = StartTestExecutionResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/testsets/{testSetId}/testexecutions", "code" => 202}}
      end)
      service.add_operation(:start_test_set_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#StartTestSetGeneration"
        operation.name = "StartTestSetGeneration"
        operation.input = StartTestSetGenerationRequest
        operation.output = StartTestSetGenerationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/testsetgenerations", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_bot_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#StopBotRecommendation"
        operation.name = "StopBotRecommendation"
        operation.input = StopBotRecommendationRequest
        operation.output = StopBotRecommendationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/stopbotrecommendation", "code" => 202}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceARN}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceARN}", "code" => 200}}
      end)
      service.add_operation(:update_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateBot"
        operation.name = "UpdateBot"
        operation.input = UpdateBotRequest
        operation.output = UpdateBotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}", "code" => 202}}
      end)
      service.add_operation(:update_bot_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateBotAlias"
        operation.name = "UpdateBotAlias"
        operation.input = UpdateBotAliasRequest
        operation.output = UpdateBotAliasResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botaliases/{botAliasId}", "code" => 202}}
      end)
      service.add_operation(:update_bot_locale, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateBotLocale"
        operation.name = "UpdateBotLocale"
        operation.input = UpdateBotLocaleRequest
        operation.output = UpdateBotLocaleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", "code" => 202}}
      end)
      service.add_operation(:update_bot_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateBotRecommendation"
        operation.name = "UpdateBotRecommendation"
        operation.input = UpdateBotRecommendationRequest
        operation.output = UpdateBotRecommendationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}", "code" => 202}}
      end)
      service.add_operation(:update_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateExport"
        operation.name = "UpdateExport"
        operation.input = UpdateExportRequest
        operation.output = UpdateExportResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/exports/{exportId}", "code" => 202}}
      end)
      service.add_operation(:update_intent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateIntent"
        operation.name = "UpdateIntent"
        operation.input = UpdateIntentRequest
        operation.output = UpdateIntentResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}", "code" => 200}}
      end)
      service.add_operation(:update_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateResourcePolicy"
        operation.name = "UpdateResourcePolicy"
        operation.input = UpdateResourcePolicyRequest
        operation.output = UpdateResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/policy/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_slot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateSlot"
        operation.name = "UpdateSlot"
        operation.input = UpdateSlotRequest
        operation.output = UpdateSlotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}", "code" => 200}}
      end)
      service.add_operation(:update_slot_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateSlotType"
        operation.name = "UpdateSlotType"
        operation.input = UpdateSlotTypeRequest
        operation.output = UpdateSlotTypeResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}", "code" => 202}}
      end)
      service.add_operation(:update_test_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexmodelsv2#UpdateTestSet"
        operation.name = "UpdateTestSet"
        operation.input = UpdateTestSetRequest
        operation.output = UpdateTestSetResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/testsets/{testSetId}", "code" => 200}, "smithy.api#idempotent" => {}}
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
