# frozen_string_literal: true

# This is generated code!

module Aws::Sustainability
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a dimension and its corresponding value.</p>
    # @!attribute dimension
    #   <p>The dimension type that categorizes this entry.</p>
    #   @return [String]
    # @!attribute value
    #   <p> The value for the specified dimension. Valid values vary based on the dimension type (e.g., <code>us-east-1</code> for the <code>REGION</code> dimension, <code>AmazonEC2</code> for the <code>SERVICE</code> dimension). </p>
    #   @return [String]
    class DimensionEntry < Struct.new(
      nil,
      :dimension,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a carbon emissions quantity with its value and unit of measurement.</p>
    # @!attribute value
    #   <p>The numeric value of the emissions quantity.</p>
    #   @return [Float]
    # @!attribute unit
    #   <p>The unit of measurement for the emissions value.</p>
    #   @return [String]
    class Emissions < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains estimated carbon emissions data for a specific time period and dimension grouping.</p>
    # @!attribute time_period
    #   <p>The reporting period for emission values.</p>
    #   @return [Types::TimePeriod]
    # @!attribute dimensions_values
    #   <p>The dimensions used to group emissions values.</p>
    #   @return [Hash<String, String>]
    # @!attribute model_version
    #   <p>The semantic version-formatted string that indicates the methodology version used to calculate the emission values. </p> <note> <p> The AWS Sustainability service reflects the most recent model version for every month. You will not see two entries for the same month with different <code>ModelVersion</code> values. To track the evolution of the methodology and compare emission values from previous versions, we recommend creating a <a href="https://docs.aws.amazon.com/cur/latest/userguide/what-is-data-exports.html">Data Export</a>. </p> </note>
    #   @return [String]
    # @!attribute emissions_values
    #   <p>The emissions values for the requested emissions types.</p>
    #   @return [Hash<String, Types::Emissions>]
    class EstimatedCarbonEmissions < Struct.new(
      nil,
      :time_period,
      :dimensions_values,
      :model_version,
      :emissions_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains estimated water allocation data for a specific time period and dimension grouping.</p>
    # @!attribute time_period
    #   <p>The reporting period for water allocation values.</p>
    #   @return [Types::TimePeriod]
    # @!attribute dimensions_values
    #   <p>The dimensions used to group water allocation values.</p>
    #   @return [Hash<String, String>]
    # @!attribute model_version
    #   <p>The semantic version-formatted string that indicates the methodology version used to calculate the water allocation values. </p> <note> <p> The AWS Sustainability service reflects the most recent model version for every month. You will not see two entries for the same month with different <code>ModelVersion</code> values. </p> </note>
    #   @return [String]
    # @!attribute allocation_values
    #   <p>The allocation values for the requested water allocation types.</p>
    #   @return [Hash<String, Types::WaterAllocation>]
    class EstimatedWaterAllocation < Struct.new(
      nil,
      :time_period,
      :dimensions_values,
      :model_version,
      :allocation_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters environmental impact values by specific dimension values.</p>
    # @!attribute dimensions
    #   <p>Filters environmental impact values by specific dimension values.</p>
    #   @return [Hash<String, Array<String>>]
    class FilterExpression < Struct.new(
      nil,
      :dimensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p> The date range for fetching the dimension values. The range must include the start date of a month for that month's dimensions to be included in the response. </p>
    #   @return [Types::TimePeriod]
    # @!attribute dimensions
    #   <p>The dimensions available for grouping estimated carbon emissions.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    #   @return [String]
    class GetEstimatedCarbonEmissionsDimensionValuesRequest < Struct.new(
      nil,
      :time_period,
      :dimensions,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The list of possible dimensions over which the emissions data is aggregated.</p>
    #   @return [Array<Types::DimensionEntry>]
    # @!attribute next_token
    #   <p>The pagination token indicating there are additional pages available. You can use the token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class GetEstimatedCarbonEmissionsDimensionValuesResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p> The date range for fetching estimated carbon emissions. The range must include the start date of a month for that month's data to be included in the response. </p>
    #   @return [Types::TimePeriod]
    # @!attribute group_by
    #   <p>The dimensions available for grouping estimated carbon emissions.</p>
    #   @return [Array<String>]
    # @!attribute filter_by
    #   <p> The criteria for filtering estimated carbon emissions. To determine which dimensions are available to be filtered by, you can first call <a>GetEstimatedCarbonEmissionsDimensionValues</a> </p>
    #   @return [Types::FilterExpression]
    # @!attribute emissions_types
    #   <p>The emission types to include in the results. If absent, returns <code>TOTAL_LBM_CARBON_EMISSIONS</code> and <code>TOTAL_MBM_CARBON_EMISSIONS</code> emissions types. </p>
    #   @return [Array<String>]
    # @!attribute granularity
    #   <p> The time granularity for the results. If absent, uses <code>MONTHLY</code> time granularity. The smallest supported granularity for carbon emissions is <code>MONTHLY</code>. </p> <p> If requesting partial time periods, data will be returned based on the smallest supported granularity. For example, requesting <code>2025-04-01T00:00:00Z</code> to <code>2026-04-01T00:00:00Z</code> with <code>YEARLY_CALENDAR</code> granularity will return the last 9 months for 2025 and the first 3 months of 2026. </p>
    #   @return [String]
    # @!attribute granularity_configuration
    #   <p>Configuration for fiscal year calculations when using <code>YEARLY_FISCAL</code> or <code>QUARTERLY_FISCAL</code> granularity. </p>
    #   @return [Types::GranularityConfiguration]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    #   @return [String]
    class GetEstimatedCarbonEmissionsRequest < Struct.new(
      nil,
      :time_period,
      :group_by,
      :filter_by,
      :emissions_types,
      :granularity,
      :granularity_configuration,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The result of the requested inputs.</p>
    #   @return [Array<Types::EstimatedCarbonEmissions>]
    # @!attribute next_token
    #   <p>The pagination token indicating there are additional pages available. You can use the token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class GetEstimatedCarbonEmissionsResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p> The date range for fetching the dimension values. The range must include the start date of a year for that year's data to be included in the response. </p>
    #   @return [Types::TimePeriod]
    # @!attribute dimensions
    #   <p>The dimensions available for grouping estimated water allocation.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    #   @return [String]
    class GetEstimatedWaterAllocationDimensionValuesRequest < Struct.new(
      nil,
      :time_period,
      :dimensions,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The list of possible dimensions over which the allocation data is aggregated.</p>
    #   @return [Array<Types::DimensionEntry>]
    # @!attribute next_token
    #   <p>The pagination token indicating there are additional pages available. You can use the token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class GetEstimatedWaterAllocationDimensionValuesResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p> The date range for fetching estimated water allocation. The range must include the start date of a year for that year's data to be included in the response. </p>
    #   @return [Types::TimePeriod]
    # @!attribute group_by
    #   <p>The dimensions available for grouping estimated water allocation.</p>
    #   @return [Array<String>]
    # @!attribute filter_by
    #   <p> The criteria for filtering estimated water allocation. To determine which dimensions are available to be filtered by, you can first call <a>GetEstimatedWaterAllocationDimensionValues</a> </p>
    #   @return [Types::FilterExpression]
    # @!attribute allocation_types
    #   <p>The allocation types to include in the results. If absent, returns <code>TOTAL_WATER_WITHDRAWALS</code> allocation types. </p>
    #   @return [Array<String>]
    # @!attribute granularity
    #   <p>The time granularity for the results. Only <code>YEARLY_CALENDAR</code> time granularity is currently supported for water allocation. Defaults to <code>YEARLY_CALENDAR</code> if absent.</p> <p> If requesting partial time periods, data will be returned based on the smallest supported granularity. For example, requesting <code>2025-04-01T00:00:00Z</code> to <code>2026-04-01T00:00:00Z</code> with <code>YEARLY_CALENDAR</code> will return all the data for 2026 only. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    #   @return [String]
    class GetEstimatedWaterAllocationRequest < Struct.new(
      nil,
      :time_period,
      :group_by,
      :filter_by,
      :allocation_types,
      :granularity,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The result of the requested inputs.</p>
    #   @return [Array<Types::EstimatedWaterAllocation>]
    # @!attribute next_token
    #   <p>The pagination token indicating there are additional pages available. You can use the token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class GetEstimatedWaterAllocationResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains configuration for the fiscal year granularities (e.g., <code>YEARLY_FISCAL</code>, <code>QUARTERLY_FISCAL</code>. </p>
    # @!attribute fiscal_year_start_month
    #   <p> The month (1-12) when the fiscal year begins. Used for <code>YEARLY_FISCAL</code> and <code>QUARTERLY_FISCAL</code> granularity. Defaults to 1 (January). </p>
    #   @return [Integer]
    class GranularityConfiguration < Struct.new(
      nil,
      :fiscal_year_start_month,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fiscal_year_start_month] = 1 unless options.key?(:fiscal_year_start_month)
        super
      end
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a duration of time defined by start and end timestamps.</p>
    # @!attribute start
    #   <p>The start (inclusive) of the time period. ISO-8601 formatted timestamp, for example: <code>YYYY-MM-DDThh:mm:ss.sssZ</code> </p>
    #   @return [Time]
    # @!attribute end
    #   <p>The end (exclusive) of the time period. ISO-8601 formatted timestamp, for example: <code>YYYY-MM-DDThh:mm:ss.sssZ</code> </p>
    #   @return [Time]
    class TimePeriod < Struct.new(
      nil,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a water allocation quantity with its value and unit of measurement.</p>
    # @!attribute value
    #   <p>The numeric value of the allocation quantity.</p>
    #   @return [Float]
    # @!attribute unit
    #   <p>The unit of measurement for the allocation value.</p>
    #   @return [String]
    class WaterAllocation < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
