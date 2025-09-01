# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerMetrics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BatchGetMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#BatchGetMetricsRequest', name: 'BatchGetMetricsRequest')
    BatchGetMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#BatchGetMetricsResponse', name: 'BatchGetMetricsResponse')
    BatchPutMetricsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#BatchPutMetricsError', name: 'BatchPutMetricsError')
    BatchPutMetricsErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakermetrics#BatchPutMetricsErrorList', name: 'BatchPutMetricsErrorList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BatchPutMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#BatchPutMetricsRequest', name: 'BatchPutMetricsRequest')
    BatchPutMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#BatchPutMetricsResponse', name: 'BatchPutMetricsResponse')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.sagemakermetrics#Double', name: 'Double')
    ExperimentEntityName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakermetrics#ExperimentEntityName', name: 'ExperimentEntityName', traits: {"smithy.api#length" => {"min" => 1, "max" => 120}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9]){0,119}$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sagemakermetrics#Integer', name: 'Integer')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sagemakermetrics#Long', name: 'Long')
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakermetrics#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    MetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakermetrics#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    MetricQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#MetricQuery', name: 'MetricQuery')
    MetricQueryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakermetrics#MetricQueryList', name: 'MetricQueryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetricQueryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#MetricQueryResult', name: 'MetricQueryResult')
    MetricQueryResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakermetrics#MetricQueryResultList', name: 'MetricQueryResultList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetricQueryResultStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakermetrics#MetricQueryResultStatus', name: 'MetricQueryResultStatus')
    MetricStatistic = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakermetrics#MetricStatistic', name: 'MetricStatistic')
    MetricValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakermetrics#MetricValues', name: 'MetricValues')
    Period = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakermetrics#Period', name: 'Period')
    PutMetricsErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakermetrics#PutMetricsErrorCode', name: 'PutMetricsErrorCode')
    RawMetricData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakermetrics#RawMetricData', name: 'RawMetricData')
    RawMetricDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakermetrics#RawMetricDataList', name: 'RawMetricDataList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SageMakerResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakermetrics#SageMakerResourceArn', name: 'SageMakerResourceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:[a-z\\-].*/"})
    Step = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sagemakermetrics#Step', name: 'Step', traits: {"smithy.api#range" => {"min" => 0}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.sagemakermetrics#Timestamp', name: 'Timestamp')
    XAxisType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakermetrics#XAxisType', name: 'XAxisType')
    XAxisValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakermetrics#XAxisValues', name: 'XAxisValues')

    BatchGetMetricsRequest.add_member(:metric_queries, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricQueryList, location_name: 'MetricQueries', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Queries made to retrieve training metrics from SageMaker.</p>", "smithy.api#required" => {}}))
    BatchGetMetricsRequest.type = Types::BatchGetMetricsRequest
    BatchGetMetricsResponse.add_member(:metric_query_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricQueryResultList, location_name: 'MetricQueryResults', traits: {"smithy.api#documentation" => "<p>The results of a query to retrieve training metrics from SageMaker.</p>"}))
    BatchGetMetricsResponse.type = Types::BatchGetMetricsResponse
    BatchPutMetricsError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricsErrorCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The error code of an error that occured when attempting to put metrics.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>METRIC_LIMIT_EXCEEDED</code>: The maximum amount of metrics per resource is\n               exceeded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERNAL_ERROR</code>: An internal error occured.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VALIDATION_ERROR</code>: The metric data failed validation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CONFLICT_ERROR</code>: Multiple requests attempted to modify the same data\n               simultaneously.</p>\n            </li>\n         </ul>"}))
    BatchPutMetricsError.add_member(:metric_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MetricIndex', traits: {"smithy.api#documentation" => "<p>An index that corresponds to the metric in the request.</p>"}))
    BatchPutMetricsError.type = Types::BatchPutMetricsError
    BatchPutMetricsErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMetricsError)
    BatchPutMetricsRequest.add_member(:trial_component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExperimentEntityName, location_name: 'TrialComponentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the Trial Component to associate with the metrics. The Trial Component name must be entirely lowercase.</p>", "smithy.api#required" => {}}))
    BatchPutMetricsRequest.add_member(:metric_data, Smithy::Schema::Shapes::ShapeRef.new(shape: RawMetricDataList, location_name: 'MetricData', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of raw metric values to put.</p>", "smithy.api#required" => {}}))
    BatchPutMetricsRequest.type = Types::BatchPutMetricsRequest
    BatchPutMetricsResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMetricsErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Lists any errors that occur when inserting metric data.</p>"}))
    BatchPutMetricsResponse.type = Types::BatchPutMetricsResponse
    MetricQuery.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the metric to retrieve.</p>", "smithy.api#required" => {}}))
    MetricQuery.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the SageMaker resource to retrieve metrics for.</p>", "smithy.api#required" => {}}))
    MetricQuery.add_member(:metric_stat, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatistic, location_name: 'MetricStat', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The metrics stat type of metrics to retrieve.</p>", "smithy.api#required" => {}}))
    MetricQuery.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: 'Period', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The time period of metrics to retrieve.</p>", "smithy.api#required" => {}}))
    MetricQuery.add_member(:x_axis_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAxisType, location_name: 'XAxisType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The x-axis type of metrics to retrieve.</p>", "smithy.api#required" => {}}))
    MetricQuery.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Start', traits: {"smithy.api#documentation" => "<p>The start time of metrics to retrieve.</p>"}))
    MetricQuery.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'End', traits: {"smithy.api#documentation" => "<p>The end time of metrics to retrieve.</p>"}))
    MetricQuery.type = Types::MetricQuery
    MetricQueryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricQuery)
    MetricQueryResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricQueryResultStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The status of the metric query.</p>", "smithy.api#required" => {}}))
    MetricQueryResult.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the status of the metric query.</p>"}))
    MetricQueryResult.add_member(:x_axis_values, Smithy::Schema::Shapes::ShapeRef.new(shape: XAxisValues, location_name: 'XAxisValues', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The values for the x-axis of the metrics.</p>", "smithy.api#required" => {}}))
    MetricQueryResult.add_member(:metric_values, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValues, location_name: 'MetricValues', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The metric values retrieved by the query.</p>", "smithy.api#required" => {}}))
    MetricQueryResult.type = Types::MetricQueryResult
    MetricQueryResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricQueryResult)
    MetricQueryResultStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "Complete"}))
    MetricQueryResultStatus.add_member(:truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUNCATED', traits: {"smithy.api#enumValue" => "Truncated"}))
    MetricQueryResultStatus.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "InternalError"}))
    MetricQueryResultStatus.add_member(:validation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "ValidationError"}))
    MetricStatistic.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN', traits: {"smithy.api#enumValue" => "Min"}))
    MetricStatistic.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX', traits: {"smithy.api#enumValue" => "Max"}))
    MetricStatistic.add_member(:avg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVG', traits: {"smithy.api#enumValue" => "Avg"}))
    MetricStatistic.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "Count"}))
    MetricStatistic.add_member(:std_dev, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STD_DEV', traits: {"smithy.api#enumValue" => "StdDev"}))
    MetricStatistic.add_member(:last, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST', traits: {"smithy.api#enumValue" => "Last"}))
    MetricValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Double)
    Period.add_member(:one_minute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_MINUTE', traits: {"smithy.api#enumValue" => "OneMinute"}))
    Period.add_member(:five_minute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIVE_MINUTE', traits: {"smithy.api#enumValue" => "FiveMinute"}))
    Period.add_member(:one_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_HOUR', traits: {"smithy.api#enumValue" => "OneHour"}))
    Period.add_member(:iteration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITERATION_NUMBER', traits: {"smithy.api#enumValue" => "IterationNumber"}))
    PutMetricsErrorCode.add_member(:metric_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METRIC_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "METRIC_LIMIT_EXCEEDED"}))
    PutMetricsErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    PutMetricsErrorCode.add_member(:validation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    PutMetricsErrorCode.add_member(:conflict_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFLICT_ERROR', traits: {"smithy.api#enumValue" => "CONFLICT_ERROR"}))
    RawMetricData.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the metric.</p>", "smithy.api#required" => {}}))
    RawMetricData.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The time that the metric was recorded.</p>", "smithy.api#required" => {}}))
    RawMetricData.add_member(:step, Smithy::Schema::Shapes::ShapeRef.new(shape: Step, location_name: 'Step', traits: {"smithy.api#documentation" => "<p>The metric step (epoch).\n      </p>"}))
    RawMetricData.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The metric value.</p>", "smithy.api#required" => {}}))
    RawMetricData.type = Types::RawMetricData
    RawMetricDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RawMetricData)
    XAxisType.add_member(:iteration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITERATION_NUMBER', traits: {"smithy.api#enumValue" => "IterationNumber"}))
    XAxisType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "Timestamp"}))
    XAxisValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Long)

    SageMakerMetricsService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakermetrics#SageMakerMetricsService"
      service.name = "SageMakerMetricsService"
      service.version = "2022-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker Metrics", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerMetrics", "cloudTrailEventSource" => "sagemakermetrics.amazonaws.com", "endpointPrefix" => "metrics.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SageMaker Metrics Service"}
      service.add_operation(:batch_get_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakermetrics#BatchGetMetrics"
        operation.name = "BatchGetMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMetricsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetMetrics", "code" => 200}}
      end)
      service.add_operation(:batch_put_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakermetrics#BatchPutMetrics"
        operation.name = "BatchPutMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMetricsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/BatchPutMetrics", "code" => 200}}
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
