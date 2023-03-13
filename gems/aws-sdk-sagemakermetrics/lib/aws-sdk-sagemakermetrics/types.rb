# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerMetrics
  module Types

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
    #   The name of the Trial Component to associate with the metrics.
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
