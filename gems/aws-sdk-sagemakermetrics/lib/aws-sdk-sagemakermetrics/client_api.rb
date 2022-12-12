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

    BatchPutMetricsError = Shapes::StructureShape.new(name: 'BatchPutMetricsError')
    BatchPutMetricsErrorList = Shapes::ListShape.new(name: 'BatchPutMetricsErrorList')
    BatchPutMetricsRequest = Shapes::StructureShape.new(name: 'BatchPutMetricsRequest')
    BatchPutMetricsResponse = Shapes::StructureShape.new(name: 'BatchPutMetricsResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    ExperimentEntityName = Shapes::StringShape.new(name: 'ExperimentEntityName')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    PutMetricsErrorCode = Shapes::StringShape.new(name: 'PutMetricsErrorCode')
    RawMetricData = Shapes::StructureShape.new(name: 'RawMetricData')
    RawMetricDataList = Shapes::ListShape.new(name: 'RawMetricDataList')
    Step = Shapes::IntegerShape.new(name: 'Step')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')

    BatchPutMetricsError.add_member(:code, Shapes::ShapeRef.new(shape: PutMetricsErrorCode, location_name: "Code"))
    BatchPutMetricsError.add_member(:metric_index, Shapes::ShapeRef.new(shape: Integer, location_name: "MetricIndex"))
    BatchPutMetricsError.struct_class = Types::BatchPutMetricsError

    BatchPutMetricsErrorList.member = Shapes::ShapeRef.new(shape: BatchPutMetricsError)

    BatchPutMetricsRequest.add_member(:trial_component_name, Shapes::ShapeRef.new(shape: ExperimentEntityName, required: true, location_name: "TrialComponentName"))
    BatchPutMetricsRequest.add_member(:metric_data, Shapes::ShapeRef.new(shape: RawMetricDataList, required: true, location_name: "MetricData"))
    BatchPutMetricsRequest.struct_class = Types::BatchPutMetricsRequest

    BatchPutMetricsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchPutMetricsErrorList, location_name: "Errors"))
    BatchPutMetricsResponse.struct_class = Types::BatchPutMetricsResponse

    RawMetricData.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    RawMetricData.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    RawMetricData.add_member(:step, Shapes::ShapeRef.new(shape: Step, location_name: "Step"))
    RawMetricData.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    RawMetricData.struct_class = Types::RawMetricData

    RawMetricDataList.member = Shapes::ShapeRef.new(shape: RawMetricData)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-09-30"

      api.metadata = {
        "apiVersion" => "2022-09-30",
        "endpointPrefix" => "metrics.sagemaker",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "SageMaker Metrics",
        "serviceFullName" => "Amazon SageMaker Metrics Service",
        "serviceId" => "SageMaker Metrics",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-metrics-2022-09-30",
      }

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
