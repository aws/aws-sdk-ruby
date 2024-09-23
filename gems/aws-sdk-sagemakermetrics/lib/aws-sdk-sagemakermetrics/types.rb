# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerMetrics
  module Types

    # @!attribute [rw] metric_queries
    #   Queries made to retrieve training metrics from SageMaker.
    #   @return [Array<Types::MetricQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/BatchGetMetricsRequest AWS API Documentation
    #
    class BatchGetMetricsRequest < Struct.new(
      :metric_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_query_results
    #   The results of a query to retrieve training metrics from SageMaker.
    #   @return [Array<Types::MetricQueryResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/BatchGetMetricsResponse AWS API Documentation
    #
    class BatchGetMetricsResponse < Struct.new(
      :metric_query_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that occured when putting the metric data.
    #
    # @!attribute [rw] code
    #   The error code of an error that occured when attempting to put
    #   metrics.
    #
    #   * `METRIC_LIMIT_EXCEEDED`: The maximum amount of metrics per
    #     resource is exceeded.
    #
    #   * `INTERNAL_ERROR`: An internal error occured.
    #
    #   * `VALIDATION_ERROR`: The metric data failed validation.
    #
    #   * `CONFLICT_ERROR`: Multiple requests attempted to modify the same
    #     data simultaneously.
    #   @return [String]
    #
    # @!attribute [rw] metric_index
    #   An index that corresponds to the metric in the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/BatchPutMetricsError AWS API Documentation
    #
    class BatchPutMetricsError < Struct.new(
      :code,
      :metric_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_name
    #   The name of the Trial Component to associate with the metrics. The
    #   Trial Component name must be entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   A list of raw metric values to put.
    #   @return [Array<Types::RawMetricData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/BatchPutMetricsRequest AWS API Documentation
    #
    class BatchPutMetricsRequest < Struct.new(
      :trial_component_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Lists any errors that occur when inserting metric data.
    #   @return [Array<Types::BatchPutMetricsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/BatchPutMetricsResponse AWS API Documentation
    #
    class BatchPutMetricsResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a query to retrieve training metrics from SageMaker.
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the SageMaker resource to retrieve metrics for.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   The metrics stat type of metrics to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The time period of metrics to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] x_axis_type
    #   The x-axis type of metrics to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The start time of metrics to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The end time of metrics to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/MetricQuery AWS API Documentation
    #
    class MetricQuery < Struct.new(
      :metric_name,
      :resource_arn,
      :metric_stat,
      :period,
      :x_axis_type,
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a query to retrieve training metrics from SageMaker.
    #
    # @!attribute [rw] status
    #   The status of the metric query.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the status of the metric query.
    #   @return [String]
    #
    # @!attribute [rw] x_axis_values
    #   The values for the x-axis of the metrics.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] metric_values
    #   The metric values retrieved by the query.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/MetricQueryResult AWS API Documentation
    #
    class MetricQueryResult < Struct.new(
      :status,
      :message,
      :x_axis_values,
      :metric_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The raw metric data to associate with the resource.
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time that the metric was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] step
    #   The metric step (epoch).
    #   @return [Integer]
    #
    # @!attribute [rw] value
    #   The metric value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-metrics-2022-09-30/RawMetricData AWS API Documentation
    #
    class RawMetricData < Struct.new(
      :metric_name,
      :timestamp,
      :step,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

