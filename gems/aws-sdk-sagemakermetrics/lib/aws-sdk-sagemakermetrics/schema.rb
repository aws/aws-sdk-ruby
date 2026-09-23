# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerMetrics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BatchGetMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#BatchGetMetricsRequest", name: "BatchGetMetricsRequest")
    BatchGetMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#BatchGetMetricsResponse", name: "BatchGetMetricsResponse")
    BatchPutMetricsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#BatchPutMetricsError", name: "BatchPutMetricsError")
    BatchPutMetricsErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakermetrics#BatchPutMetricsErrorList", name: "BatchPutMetricsErrorList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BatchPutMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#BatchPutMetricsRequest", name: "BatchPutMetricsRequest")
    BatchPutMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#BatchPutMetricsResponse", name: "BatchPutMetricsResponse")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.sagemakermetrics#Double", name: "Double")
    ExperimentEntityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakermetrics#ExperimentEntityName", name: "ExperimentEntityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 120}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9]){0,119}$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakermetrics#Integer", name: "Integer")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakermetrics#Long", name: "Long")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakermetrics#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakermetrics#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    MetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#MetricQuery", name: "MetricQuery")
    MetricQueryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakermetrics#MetricQueryList", name: "MetricQueryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetricQueryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#MetricQueryResult", name: "MetricQueryResult")
    MetricQueryResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakermetrics#MetricQueryResultList", name: "MetricQueryResultList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetricQueryResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakermetrics#MetricQueryResultStatus", name: "MetricQueryResultStatus")
    MetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakermetrics#MetricStatistic", name: "MetricStatistic")
    MetricValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakermetrics#MetricValues", name: "MetricValues")
    Period = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakermetrics#Period", name: "Period")
    PutMetricsErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakermetrics#PutMetricsErrorCode", name: "PutMetricsErrorCode")
    RawMetricData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakermetrics#RawMetricData", name: "RawMetricData")
    RawMetricDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakermetrics#RawMetricDataList", name: "RawMetricDataList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SageMakerResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakermetrics#SageMakerResourceArn", name: "SageMakerResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:[a-z\\-].*/"})
    Step = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakermetrics#Step", name: "Step", traits: {"smithy.api#range" => {"min" => 0}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sagemakermetrics#Timestamp", name: "Timestamp")
    XAxisType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakermetrics#XAxisType", name: "XAxisType")
    XAxisValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakermetrics#XAxisValues", name: "XAxisValues")

    BatchGetMetricsRequest.add_member(:metric_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryList, name: "MetricQueries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetMetricsRequest.type = Types::BatchGetMetricsRequest
    BatchGetMetricsResponse.add_member(:metric_query_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryResultList, name: "MetricQueryResults"))
    BatchGetMetricsResponse.type = Types::BatchGetMetricsResponse
    BatchPutMetricsError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: PutMetricsErrorCode, name: "Code"))
    BatchPutMetricsError.add_member(:metric_index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MetricIndex"))
    BatchPutMetricsError.type = Types::BatchPutMetricsError
    BatchPutMetricsErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutMetricsError, name: "member"))
    BatchPutMetricsRequest.add_member(:trial_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentEntityName, name: "TrialComponentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchPutMetricsRequest.add_member(:metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMetricDataList, name: "MetricData", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchPutMetricsRequest.type = Types::BatchPutMetricsRequest
    BatchPutMetricsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutMetricsErrorList, name: "Errors"))
    BatchPutMetricsResponse.type = Types::BatchPutMetricsResponse
    MetricQuery.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQuery.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerResourceArn, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "MetricStat", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQuery.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQuery.add_member(:x_axis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XAxisType, name: "XAxisType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQuery.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Start"))
    MetricQuery.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "End"))
    MetricQuery.type = Types::MetricQuery
    MetricQueryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQuery, name: "member"))
    MetricQueryResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryResultStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQueryResult.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    MetricQueryResult.add_member(:x_axis_values, ::Smithy::Schema::Shapes::MemberShape.new(target: XAxisValues, name: "XAxisValues", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQueryResult.add_member(:metric_values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValues, name: "MetricValues", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricQueryResult.type = Types::MetricQueryResult
    MetricQueryResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryResult, name: "member"))
    MetricQueryResultStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    MetricQueryResultStatus.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUNCATED", traits: {"smithy.api#enumValue" => "Truncated"}))
    MetricQueryResultStatus.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "InternalError"}))
    MetricQueryResultStatus.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "ValidationError"}))
    MetricStatistic.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN", traits: {"smithy.api#enumValue" => "Min"}))
    MetricStatistic.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX", traits: {"smithy.api#enumValue" => "Max"}))
    MetricStatistic.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVG", traits: {"smithy.api#enumValue" => "Avg"}))
    MetricStatistic.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "Count"}))
    MetricStatistic.add_member(:std_dev, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STD_DEV", traits: {"smithy.api#enumValue" => "StdDev"}))
    MetricStatistic.add_member(:last, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST", traits: {"smithy.api#enumValue" => "Last"}))
    MetricValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "member"))
    Period.add_member(:one_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_MINUTE", traits: {"smithy.api#enumValue" => "OneMinute"}))
    Period.add_member(:five_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIVE_MINUTE", traits: {"smithy.api#enumValue" => "FiveMinute"}))
    Period.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_HOUR", traits: {"smithy.api#enumValue" => "OneHour"}))
    Period.add_member(:iteration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITERATION_NUMBER", traits: {"smithy.api#enumValue" => "IterationNumber"}))
    PutMetricsErrorCode.add_member(:metric_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRIC_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "METRIC_LIMIT_EXCEEDED"}))
    PutMetricsErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    PutMetricsErrorCode.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    PutMetricsErrorCode.add_member(:conflict_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICT_ERROR", traits: {"smithy.api#enumValue" => "CONFLICT_ERROR"}))
    RawMetricData.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RawMetricData.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RawMetricData.add_member(:step, ::Smithy::Schema::Shapes::MemberShape.new(target: Step, name: "Step"))
    RawMetricData.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RawMetricData.type = Types::RawMetricData
    RawMetricDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMetricData, name: "member"))
    XAxisType.add_member(:iteration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITERATION_NUMBER", traits: {"smithy.api#enumValue" => "IterationNumber"}))
    XAxisType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "Timestamp"}))
    XAxisValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "member"))

    SageMakerMetricsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakermetrics#SageMakerMetricsService"
      service.name = "SageMakerMetricsService"
      service.version = "2022-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker Metrics", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerMetrics", "cloudTrailEventSource" => "sagemakermetrics.amazonaws.com", "endpointPrefix" => "metrics.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SageMaker Metrics Service"}
      service.add_operation(:batch_get_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakermetrics#BatchGetMetrics"
        operation.name = "BatchGetMetrics"
        operation.input = BatchGetMetricsRequest
        operation.output = BatchGetMetricsResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetMetrics", "code" => 200}}
      end)
      service.add_operation(:batch_put_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakermetrics#BatchPutMetrics"
        operation.name = "BatchPutMetrics"
        operation.input = BatchPutMetricsRequest
        operation.output = BatchPutMetricsResponse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/BatchPutMetrics", "code" => 200}}
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
