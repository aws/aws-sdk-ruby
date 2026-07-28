# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Sustainability
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a dimension and its corresponding value.
    #
    # @!attribute [rw] dimension
    #   The dimension type that categorizes this entry.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified dimension. Valid values vary based on
    #   the dimension type (e.g., `us-east-1` for the `REGION` dimension,
    #   `AmazonEC2` for the `SERVICE` dimension).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/DimensionEntry AWS API Documentation
    #
    class DimensionEntry < Struct.new(
      :dimension,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a carbon emissions quantity with its value and unit of
    # measurement.
    #
    # @!attribute [rw] value
    #   The numeric value of the emissions quantity.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the emissions value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/Emissions AWS API Documentation
    #
    class Emissions < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains estimated carbon emissions data for a specific time period
    # and dimension grouping.
    #
    # @!attribute [rw] time_period
    #   The reporting period for emission values.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] dimensions_values
    #   The dimensions used to group emissions values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] model_version
    #   The semantic version-formatted string that indicates the methodology
    #   version used to calculate the emission values.
    #
    #   <note markdown="1"> The AWS Sustainability service reflects the most recent model
    #   version for every month. You will not see two entries for the same
    #   month with different `ModelVersion` values. To track the evolution
    #   of the methodology and compare emission values from previous
    #   versions, we recommend creating a [Data Export][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cur/latest/userguide/what-is-data-exports.html
    #   @return [String]
    #
    # @!attribute [rw] emissions_values
    #   The emissions values for the requested emissions types.
    #   @return [Hash<String,Types::Emissions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/EstimatedCarbonEmissions AWS API Documentation
    #
    class EstimatedCarbonEmissions < Struct.new(
      :time_period,
      :dimensions_values,
      :model_version,
      :emissions_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains estimated water allocation data for a specific time period
    # and dimension grouping.
    #
    # @!attribute [rw] time_period
    #   The reporting period for water allocation values.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] dimensions_values
    #   The dimensions used to group water allocation values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] model_version
    #   The semantic version-formatted string that indicates the methodology
    #   version used to calculate the water allocation values.
    #
    #   <note markdown="1"> The AWS Sustainability service reflects the most recent model
    #   version for every month. You will not see two entries for the same
    #   month with different `ModelVersion` values.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] allocation_values
    #   The allocation values for the requested water allocation types.
    #   @return [Hash<String,Types::WaterAllocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/EstimatedWaterAllocation AWS API Documentation
    #
    class EstimatedWaterAllocation < Struct.new(
      :time_period,
      :dimensions_values,
      :model_version,
      :allocation_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters environmental impact values by specific dimension values.
    #
    # @!attribute [rw] dimensions
    #   Filters environmental impact values by specific dimension values.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/FilterExpression AWS API Documentation
    #
    class FilterExpression < Struct.new(
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   The date range for fetching the dimension values. The range must
    #   include the start date of a month for that month's dimensions to be
    #   included in the response.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] dimensions
    #   The dimensions available for grouping estimated carbon emissions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Default is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedCarbonEmissionsDimensionValuesRequest AWS API Documentation
    #
    class GetEstimatedCarbonEmissionsDimensionValuesRequest < Struct.new(
      :time_period,
      :dimensions,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The list of possible dimensions over which the emissions data is
    #   aggregated.
    #   @return [Array<Types::DimensionEntry>]
    #
    # @!attribute [rw] next_token
    #   The pagination token indicating there are additional pages
    #   available. You can use the token in a following request to fetch the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedCarbonEmissionsDimensionValuesResponse AWS API Documentation
    #
    class GetEstimatedCarbonEmissionsDimensionValuesResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   The date range for fetching estimated carbon emissions. The range
    #   must include the start date of a month for that month's data to be
    #   included in the response.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] group_by
    #   The dimensions available for grouping estimated carbon emissions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter_by
    #   The criteria for filtering estimated carbon emissions. To determine
    #   which dimensions are available to be filtered by, you can first call
    #   GetEstimatedCarbonEmissionsDimensionValues
    #   @return [Types::FilterExpression]
    #
    # @!attribute [rw] emissions_types
    #   The emission types to include in the results. If absent, returns
    #   `TOTAL_LBM_CARBON_EMISSIONS` and `TOTAL_MBM_CARBON_EMISSIONS`
    #   emissions types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] granularity
    #   The time granularity for the results. If absent, uses `MONTHLY` time
    #   granularity. The smallest supported granularity for carbon emissions
    #   is `MONTHLY`.
    #
    #   If requesting partial time periods, data will be returned based on
    #   the smallest supported granularity. For example, requesting
    #   `2025-04-01T00:00:00Z` to `2026-04-01T00:00:00Z` with
    #   `YEARLY_CALENDAR` granularity will return the last 9 months for 2025
    #   and the first 3 months of 2026.
    #   @return [String]
    #
    # @!attribute [rw] granularity_configuration
    #   Configuration for fiscal year calculations when using
    #   `YEARLY_FISCAL` or `QUARTERLY_FISCAL` granularity.
    #   @return [Types::GranularityConfiguration]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Default is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedCarbonEmissionsRequest AWS API Documentation
    #
    class GetEstimatedCarbonEmissionsRequest < Struct.new(
      :time_period,
      :group_by,
      :filter_by,
      :emissions_types,
      :granularity,
      :granularity_configuration,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The result of the requested inputs.
    #   @return [Array<Types::EstimatedCarbonEmissions>]
    #
    # @!attribute [rw] next_token
    #   The pagination token indicating there are additional pages
    #   available. You can use the token in a following request to fetch the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedCarbonEmissionsResponse AWS API Documentation
    #
    class GetEstimatedCarbonEmissionsResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   The date range for fetching the dimension values. The range must
    #   include the start date of a year for that year's data to be
    #   included in the response.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] dimensions
    #   The dimensions available for grouping estimated water allocation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Default is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedWaterAllocationDimensionValuesRequest AWS API Documentation
    #
    class GetEstimatedWaterAllocationDimensionValuesRequest < Struct.new(
      :time_period,
      :dimensions,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The list of possible dimensions over which the allocation data is
    #   aggregated.
    #   @return [Array<Types::DimensionEntry>]
    #
    # @!attribute [rw] next_token
    #   The pagination token indicating there are additional pages
    #   available. You can use the token in a following request to fetch the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedWaterAllocationDimensionValuesResponse AWS API Documentation
    #
    class GetEstimatedWaterAllocationDimensionValuesResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   The date range for fetching estimated water allocation. The range
    #   must include the start date of a year for that year's data to be
    #   included in the response.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] group_by
    #   The dimensions available for grouping estimated water allocation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter_by
    #   The criteria for filtering estimated water allocation. To determine
    #   which dimensions are available to be filtered by, you can first call
    #   GetEstimatedWaterAllocationDimensionValues
    #   @return [Types::FilterExpression]
    #
    # @!attribute [rw] allocation_types
    #   The allocation types to include in the results. If absent, returns
    #   `TOTAL_WATER_WITHDRAWALS` allocation types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] granularity
    #   The time granularity for the results. Only `YEARLY_CALENDAR` time
    #   granularity is currently supported for water allocation. Defaults to
    #   `YEARLY_CALENDAR` if absent.
    #
    #   If requesting partial time periods, data will be returned based on
    #   the smallest supported granularity. For example, requesting
    #   `2025-04-01T00:00:00Z` to `2026-04-01T00:00:00Z` with
    #   `YEARLY_CALENDAR` will return all the data for 2026 only.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Default is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedWaterAllocationRequest AWS API Documentation
    #
    class GetEstimatedWaterAllocationRequest < Struct.new(
      :time_period,
      :group_by,
      :filter_by,
      :allocation_types,
      :granularity,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The result of the requested inputs.
    #   @return [Array<Types::EstimatedWaterAllocation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token indicating there are additional pages
    #   available. You can use the token in a following request to fetch the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GetEstimatedWaterAllocationResponse AWS API Documentation
    #
    class GetEstimatedWaterAllocationResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration for the fiscal year granularities (e.g.,
    # `YEARLY_FISCAL`, `QUARTERLY_FISCAL`.
    #
    # @!attribute [rw] fiscal_year_start_month
    #   The month (1-12) when the fiscal year begins. Used for
    #   `YEARLY_FISCAL` and `QUARTERLY_FISCAL` granularity. Defaults to 1
    #   (January).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/GranularityConfiguration AWS API Documentation
    #
    class GranularityConfiguration < Struct.new(
      :fiscal_year_start_month)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a duration of time defined by start and end timestamps.
    #
    # @!attribute [rw] start
    #   The start (inclusive) of the time period. ISO-8601 formatted
    #   timestamp, for example: `YYYY-MM-DDThh:mm:ss.sssZ`
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end (exclusive) of the time period. ISO-8601 formatted
    #   timestamp, for example: `YYYY-MM-DDThh:mm:ss.sssZ`
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/TimePeriod AWS API Documentation
    #
    class TimePeriod < Struct.new(
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a water allocation quantity with its value and unit of
    # measurement.
    #
    # @!attribute [rw] value
    #   The numeric value of the allocation quantity.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the allocation value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sustainability-2018-05-10/WaterAllocation AWS API Documentation
    #
    class WaterAllocation < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

