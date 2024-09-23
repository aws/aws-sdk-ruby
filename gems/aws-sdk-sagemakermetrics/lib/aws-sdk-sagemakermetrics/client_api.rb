# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMakerMetrics
  # @api private
  module ClientApi

    include Seahorse::Model

    BatchGetMetricsRequest = Shapes::StructureShape.new(name: 'BatchGetMetricsRequest')
    BatchGetMetricsResponse = Shapes::StructureShape.new(name: 'BatchGetMetricsResponse')
    BatchPutMetricsError = Shapes::StructureShape.new(name: 'BatchPutMetricsError')
    BatchPutMetricsErrorList = Shapes::ListShape.new(name: 'BatchPutMetricsErrorList')
    BatchPutMetricsRequest = Shapes::StructureShape.new(name: 'BatchPutMetricsRequest')
    BatchPutMetricsResponse = Shapes::StructureShape.new(name: 'BatchPutMetricsResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    ExperimentEntityName = Shapes::StringShape.new(name: 'ExperimentEntityName')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Message = Shapes::StringShape.new(name: 'Message')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricQuery = Shapes::StructureShape.new(name: 'MetricQuery')
    MetricQueryList = Shapes::ListShape.new(name: 'MetricQueryList')
    MetricQueryResult = Shapes::StructureShape.new(name: 'MetricQueryResult')
    MetricQueryResultList = Shapes::ListShape.new(name: 'MetricQueryResultList')
    MetricQueryResultStatus = Shapes::StringShape.new(name: 'MetricQueryResultStatus')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricValues = Shapes::ListShape.new(name: 'MetricValues')
    Period = Shapes::StringShape.new(name: 'Period')
    PutMetricsErrorCode = Shapes::StringShape.new(name: 'PutMetricsErrorCode')
    RawMetricData = Shapes::StructureShape.new(name: 'RawMetricData')
    RawMetricDataList = Shapes::ListShape.new(name: 'RawMetricDataList')
    SageMakerResourceArn = Shapes::StringShape.new(name: 'SageMakerResourceArn')
    Step = Shapes::IntegerShape.new(name: 'Step')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    XAxisType = Shapes::StringShape.new(name: 'XAxisType')
    XAxisValues = Shapes::ListShape.new(name: 'XAxisValues')

    BatchGetMetricsRequest.add_member(:metric_queries, Shapes::ShapeRef.new(shape: MetricQueryList, required: true, location_name: "MetricQueries"))
    BatchGetMetricsRequest.struct_class = Types::BatchGetMetricsRequest

    BatchGetMetricsResponse.add_member(:metric_query_results, Shapes::ShapeRef.new(shape: MetricQueryResultList, location_name: "MetricQueryResults"))
    BatchGetMetricsResponse.struct_class = Types::BatchGetMetricsResponse

    BatchPutMetricsError.add_member(:code, Shapes::ShapeRef.new(shape: PutMetricsErrorCode, location_name: "Code"))
    BatchPutMetricsError.add_member(:metric_index, Shapes::ShapeRef.new(shape: Integer, location_name: "MetricIndex"))
    BatchPutMetricsError.struct_class = Types::BatchPutMetricsError

    BatchPutMetricsErrorList.member = Shapes::ShapeRef.new(shape: BatchPutMetricsError)

    BatchPutMetricsRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    BatchPutMetricsRequest.add_member(:metric_data, Shapes::ShapeRef.new(shape: RawMetricDataList, required: true, location_name: "MetricData"))
    BatchPutMetricsRequest.struct_class = Types::BatchPutMetricsRequest

    BatchPutMetricsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchPutMetricsErrorList, location_name: "Errors"))
    BatchPutMetricsResponse.struct_class = Types::BatchPutMetricsResponse

    MetricQuery.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    MetricQuery.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SageMakerResourceArn, required: true, location_name: "ResourceArn"))
    MetricQuery.add_member(:metric_stat, Shapes::ShapeRef.new(shape: MetricStatistic, required: true, location_name: "MetricStat"))
    MetricQuery.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "Period"))
    MetricQuery.add_member(:x_axis_type, Shapes::ShapeRef.new(shape: XAxisType, required: true, location_name: "XAxisType"))
    MetricQuery.add_member(:start, Shapes::ShapeRef.new(shape: Long, location_name: "Start", metadata: {"box"=>true}))
    MetricQuery.add_member(:end, Shapes::ShapeRef.new(shape: Long, location_name: "End", metadata: {"box"=>true}))
    MetricQuery.struct_class = Types::MetricQuery

    MetricQueryList.member = Shapes::ShapeRef.new(shape: MetricQuery)

    MetricQueryResult.add_member(:status, Shapes::ShapeRef.new(shape: MetricQueryResultStatus, required: true, location_name: "Status"))
    MetricQueryResult.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    MetricQueryResult.add_member(:x_axis_values, Shapes::ShapeRef.new(shape: XAxisValues, required: true, location_name: "XAxisValues"))
    MetricQueryResult.add_member(:metric_values, Shapes::ShapeRef.new(shape: MetricValues, required: true, location_name: "MetricValues"))
    MetricQueryResult.struct_class = Types::MetricQueryResult

    MetricQueryResultList.member = Shapes::ShapeRef.new(shape: MetricQueryResult)

    MetricValues.member = Shapes::ShapeRef.new(shape: Double)

    RawMetricData.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    RawMetricData.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    RawMetricData.add_member(:step, Shapes::ShapeRef.new(shape: Step, location_name: "Step"))
    RawMetricData.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    RawMetricData.struct_class = Types::RawMetricData

    RawMetricDataList.member = Shapes::ShapeRef.new(shape: RawMetricData)

    XAxisValues.member = Shapes::ShapeRef.new(shape: Long)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-09-30"

      api.metadata = {
        "apiVersion" => "2022-09-30",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "metrics.sagemaker",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "SageMaker Metrics",
        "serviceFullName" => "Amazon SageMaker Metrics Service",
        "serviceId" => "SageMaker Metrics",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-metrics-2022-09-30",
      }

      api.add_operation(:batch_get_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetMetrics"
        o.input = Shapes::ShapeRef.new(shape: BatchGetMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetMetricsResponse)
      end)

      api.add_operation(:batch_put_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutMetrics"
        o.http_method = "PUT"
        o.http_request_uri = "/BatchPutMetrics"
        o.input = Shapes::ShapeRef.new(shape: BatchPutMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutMetricsResponse)
      end)
    end

  end
end
