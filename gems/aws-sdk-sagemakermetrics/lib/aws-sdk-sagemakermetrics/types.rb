# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerMetrics
  # This module contains the types returned by client operations.
  module Types

    # @!attribute metric_queries
    #   <p>Queries made to retrieve training metrics from SageMaker.</p>
    #   @return [Array<Types::MetricQuery>]
    class BatchGetMetricsRequest < Struct.new(
      nil,
      :metric_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_query_results
    #   <p>The results of a query to retrieve training metrics from SageMaker.</p>
    #   @return [Array<Types::MetricQueryResult>]
    class BatchGetMetricsResponse < Struct.new(
      nil,
      :metric_query_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occured when putting the metric data.</p>
    # @!attribute code
    #   <p>The error code of an error that occured when attempting to put metrics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>METRIC_LIMIT_EXCEEDED</code>: The maximum amount of metrics per resource is
    #                  exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_ERROR</code>: An internal error occured.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VALIDATION_ERROR</code>: The metric data failed validation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONFLICT_ERROR</code>: Multiple requests attempted to modify the same data
    #                  simultaneously.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute metric_index
    #   <p>An index that corresponds to the metric in the request.</p>
    #   @return [Integer]
    class BatchPutMetricsError < Struct.new(
      nil,
      :code,
      :metric_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trial_component_name
    #   <p>The name of the Trial Component to associate with the metrics. The Trial Component name must be entirely lowercase.</p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>A list of raw metric values to put.</p>
    #   @return [Array<Types::RawMetricData>]
    class BatchPutMetricsRequest < Struct.new(
      nil,
      :trial_component_name,
      :metric_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Lists any errors that occur when inserting metric data.</p>
    #   @return [Array<Types::BatchPutMetricsError>]
    class BatchPutMetricsResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a query to retrieve training metrics from SageMaker.</p>
    # @!attribute metric_name
    #   <p>The name of the metric to retrieve.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the SageMaker resource to retrieve metrics for.</p>
    #   @return [String]
    # @!attribute metric_stat
    #   <p>The metrics stat type of metrics to retrieve.</p>
    #   @return [String]
    # @!attribute period
    #   <p>The time period of metrics to retrieve.</p>
    #   @return [String]
    # @!attribute x_axis_type
    #   <p>The x-axis type of metrics to retrieve.</p>
    #   @return [String]
    # @!attribute start
    #   <p>The start time of metrics to retrieve.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The end time of metrics to retrieve.</p>
    #   @return [Integer]
    class MetricQuery < Struct.new(
      nil,
      :metric_name,
      :resource_arn,
      :metric_stat,
      :period,
      :x_axis_type,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a query to retrieve training metrics from SageMaker.</p>
    # @!attribute status
    #   <p>The status of the metric query.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the status of the metric query.</p>
    #   @return [String]
    # @!attribute x_axis_values
    #   <p>The values for the x-axis of the metrics.</p>
    #   @return [Array<Integer>]
    # @!attribute metric_values
    #   <p>The metric values retrieved by the query.</p>
    #   @return [Array<Float>]
    class MetricQueryResult < Struct.new(
      nil,
      :status,
      :message,
      :x_axis_values,
      :metric_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The raw metric data to associate with the resource.</p>
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time that the metric was recorded.</p>
    #   @return [Time]
    # @!attribute step
    #   <p>The metric step (epoch).
    #         </p>
    #   @return [Integer]
    # @!attribute value
    #   <p>The metric value.</p>
    #   @return [Float]
    class RawMetricData < Struct.new(
      nil,
      :metric_name,
      :timestamp,
      :step,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
