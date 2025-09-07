# frozen_string_literal: true

# This is generated code!

module Aws::BCMDashboards
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action. Verify your IAM permissions and any resource policies.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the parameters for retrieving Amazon Web Services cost and usage data. Includes specifications for metrics, time periods, granularity, grouping dimensions, and filtering conditions.</p>
    # @!attribute metrics
    #   <p>The specific cost and usage metrics to retrieve.</p> <note> <p>Valid values for CostAndUsageQuery metrics are <code>AmortizedCost</code>, <code>BlendedCost</code>, <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>, <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and <code>UsageQuantity</code>.</p> </note>
    #   @return [Array<String>]
    # @!attribute time_range
    #   <p>The time period for which to retrieve data. Can be specified as absolute dates or relative time periods.</p>
    #   @return [Types::DateTimeRange]
    # @!attribute granularity
    #   <p>The granularity of the retrieved data: <code>HOURLY</code>, <code>DAILY</code>, or <code>MONTHLY</code>.</p>
    #   @return [String]
    # @!attribute group_by
    #   <p>Specifies how to group the retrieved data, such as by <code>SERVICE</code>, <code>ACCOUNT</code>, or <code>TAG</code>.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute filter
    #   <p>The filter expression to be applied to the cost and usage data.</p>
    #   @return [Types::Expression]
    class CostAndUsageQuery < Struct.new(
      :metrics,
      :time_range,
      :granularity,
      :group_by,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the values and match options for cost category-based filtering in cost and usage queries.</p>
    # @!attribute key
    #   <p>The key of the cost category to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to match for the specified cost category key.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options for cost category values, such as <code>EQUALS</code>, <code>CONTAINS</code>, <code>STARTS_WITH</code>, or <code>ENDS_WITH</code>.</p>
    #   @return [Array<String>]
    class CostCategoryValues < Struct.new(
      :key,
      :values,
      :match_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the dashboard. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the dashboard's purpose or contents.</p>
    #   @return [String]
    # @!attribute widgets
    #   <p>An array of widget configurations that define the visualizations to be displayed in the dashboard. Each dashboard can contain up to 20 widgets.</p>
    #   @return [Array<Types::Widget>]
    # @!attribute resource_tags
    #   <p>The tags to apply to the dashboard resource for organization and management.</p>
    #   @return [Array<Types::ResourceTag>]
    class CreateDashboardRequest < Struct.new(
      :name,
      :description,
      :widgets,
      :resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the newly created dashboard.</p>
    #   @return [String]
    class CreateDashboardResponse < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains basic information about a dashboard, including its ARN, name, type, and timestamps.</p>
    # @!attribute arn
    #   <p>The ARN of the referenced dashboard.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the referenced dashboard.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the referenced dashboard.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The dashboard type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the dashboard was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the dashboard was last modified.</p>
    #   @return [Time]
    class DashboardReference < Struct.new(
      :arn,
      :name,
      :description,
      :type,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a time period with explicit start and end times for data queries.</p>
    # @!attribute start_time
    #   <p>The start time of the date range for querying data.</p>
    #   @return [Types::DateTimeValue]
    # @!attribute end_time
    #   <p>The end time of the date range for querying data.</p>
    #   @return [Types::DateTimeValue]
    class DateTimeRange < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a point in time that can be specified as either an absolute date (for example, "2025-07-01") or a relative time period using ISO 8601 duration format (for example, "-P3M" for three months ago).</p>
    # @!attribute type
    #   <p>The type of date/time value: <code>ABSOLUTE</code> for specific dates or <code>RELATIVE</code> for dynamic time periods.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The actual date/time value.</p>
    #   @return [String]
    class DateTimeValue < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the dashboard to be deleted.</p>
    #   @return [String]
    class DeleteDashboardRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the dashboard that was deleted.</p>
    #   @return [String]
    class DeleteDashboardResponse < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the values and match options for dimension-based filtering in cost and usage queries.</p>
    # @!attribute key
    #   <p>The key of the dimension to filter on (for example, <code>SERVICE</code>, <code>USAGE_TYPE</code>, or <code>OPERATION</code>).</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to match for the specified dimension key.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options for dimension values, such as <code>EQUALS</code>, <code>CONTAINS</code>, <code>STARTS_WITH</code>, or <code>ENDS_WITH</code>.</p>
    #   @return [Array<String>]
    class DimensionValues < Struct.new(
      :key,
      :values,
      :match_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how the widget's data should be visualized, including chart type, color schemes, axis configurations, and other display preferences.</p>
    # @!attribute graph
    #   <p>The configuration for graphical display of the widget data, including chart type and visual options.</p>
    #   @return [Hash<String, Types::GraphDisplayConfig>]
    # @!attribute table
    #   <p>The configuration for tabular display of the widget data.</p>
    #   @return [Types::TableDisplayConfigStruct]
    class DisplayConfig < Struct.new(
      :graph,
      :table,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Graph < DisplayConfig; end
      class Table < DisplayConfig; end
      class Unknown < DisplayConfig; end
    end

    # <p>Defines complex filtering conditions using logical operators (<code>AND</code>, <code>OR</code>, <code>NOT</code>) and various filter types.</p>
    # @!attribute or
    #   <p>A list of expressions to combine with OR logic.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute and
    #   <p>A list of expressions to combine with AND logic.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute not
    #   <p>An expression to negate with NOT logic.</p>
    #   @return [Types::Expression]
    # @!attribute dimensions
    #   <p>The dimension values to include in the filter expression.</p>
    #   @return [Types::DimensionValues]
    # @!attribute tags
    #   <p>The tag values to include in the filter expression.</p>
    #   @return [Types::TagValues]
    # @!attribute cost_categories
    #   <p>The cost category values to include in the filter expression.</p>
    #   @return [Types::CostCategoryValues]
    class Expression < Struct.new(
      :or,
      :and,
      :not,
      :dimensions,
      :tags,
      :cost_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the dashboard to retrieve. This is required to uniquely identify the dashboard.</p>
    #   @return [String]
    class GetDashboardRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the retrieved dashboard.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the retrieved dashboard.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the retrieved dashboard.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates the dashboard type.</p>
    #   @return [String]
    # @!attribute widgets
    #   <p>An array of widget configurations that make up the dashboard.</p>
    #   @return [Array<Types::Widget>]
    # @!attribute created_at
    #   <p>The timestamp when the dashboard was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the dashboard was last modified.</p>
    #   @return [Time]
    class GetDashboardResponse < Struct.new(
      :arn,
      :name,
      :description,
      :type,
      :widgets,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the dashboard whose resource-based policy you want to retrieve.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the dashboard for which the resource-based policy was retrieved.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON policy document that represents the dashboard's resource-based policy.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the visual representation settings for widget data, including the visualization type, styling options, and display preferences for different metric types.</p>
    # @!attribute visual_type
    #   <p>The type of visualization to use for the data.</p>
    #   @return [String]
    class GraphDisplayConfig < Struct.new(
      :visual_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how to group cost and usage data.</p>
    # @!attribute key
    #   <p>The key to use for grouping cost and usage data.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of grouping to apply.</p>
    #   @return [String]
    class GroupDefinition < Struct.new(
      :key,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'DIMENSION' unless options.key?(:type)
        super
      end
    end

    # <p>An internal error occurred while processing the request. Retry your request. If the problem persists, contact Amazon Web Services Support.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. Use the value returned in the previous response.</p>
    #   @return [String]
    class ListDashboardsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboards
    #   <p>An array of dashboard references, containing basic information about each dashboard.</p>
    #   @return [Array<Types::DashboardReference>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. Not returned if there are no more results to retrieve.</p>
    #   @return [String]
    class ListDashboardsResponse < Struct.new(
      :dashboards,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p>The list of tags associated with the specified dashboard resource.</p>
    #   @return [Array<Types::ResourceTag>]
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the data retrieval parameters for a widget.</p>
    # @!attribute cost_and_usage
    #   <p>The parameters for querying cost and usage data, including metrics, time range, granularity, grouping dimensions, and filters.</p>
    #   @return [Types::CostAndUsageQuery]
    # @!attribute savings_plans_coverage
    #   <p>The parameters for querying Savings Plans coverage data, showing how much of your eligible compute usage is covered by Savings Plans.</p>
    #   @return [Types::SavingsPlansCoverageQuery]
    # @!attribute savings_plans_utilization
    #   <p>The parameters for querying Savings Plans utilization data, showing how effectively your Savings Plans are being used.</p>
    #   @return [Types::SavingsPlansUtilizationQuery]
    # @!attribute reservation_coverage
    #   <p>The parameters for querying Reserved Instance coverage data, showing how much of your eligible instance usage is covered by Reserved Instances.</p>
    #   @return [Types::ReservationCoverageQuery]
    # @!attribute reservation_utilization
    #   <p>The parameters for querying Reserved Instance utilization data, showing how effectively your Reserved Instances are being used.</p>
    #   @return [Types::ReservationUtilizationQuery]
    class QueryParameters < Struct.new(
      :cost_and_usage,
      :savings_plans_coverage,
      :savings_plans_utilization,
      :reservation_coverage,
      :reservation_utilization,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CostAndUsage < QueryParameters; end
      class SavingsPlansCoverage < QueryParameters; end
      class SavingsPlansUtilization < QueryParameters; end
      class ReservationCoverage < QueryParameters; end
      class ReservationUtilization < QueryParameters; end
      class Unknown < QueryParameters; end
    end

    # <p>Defines the parameters for querying Reserved Instance coverage data, including grouping options, metrics, and sorting preferences.</p>
    # @!attribute time_range
    #   <p>Defines a time period with explicit start and end times for data queries.</p>
    #   @return [Types::DateTimeRange]
    # @!attribute group_by
    #   <p>Specifies how to group the Reserved Instance coverage data, such as by service, Region, or instance type.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute granularity
    #   <p>The time granularity of the retrieved data: <code>HOURLY</code>, <code>DAILY</code>, or <code>MONTHLY</code>.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Defines complex filtering conditions using logical operators (<code>AND</code>, <code>OR</code>, <code>NOT</code>) and various filter types.</p>
    #   @return [Types::Expression]
    # @!attribute metrics
    #   <p>The coverage metrics to include in the results.</p> <note> <p>Valid values for ReservationCoverageQuery metrics are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>.</p> </note>
    #   @return [Array<String>]
    class ReservationCoverageQuery < Struct.new(
      :time_range,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the parameters for querying Reserved Instance utilization data, including grouping options and time granularity.</p>
    # @!attribute time_range
    #   <p>Defines a time period with explicit start and end times for data queries.</p>
    #   @return [Types::DateTimeRange]
    # @!attribute group_by
    #   <p>Specifies how to group the Reserved Instance utilization data, such as by service, Region, or instance type.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute granularity
    #   <p>The time granularity of the retrieved data: <code>HOURLY</code>, <code>DAILY</code>, or <code>MONTHLY</code>.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Defines complex filtering conditions using logical operators (<code>AND</code>, <code>OR</code>, <code>NOT</code>) and various filter types.</p>
    #   @return [Types::Expression]
    class ReservationUtilizationQuery < Struct.new(
      :time_range,
      :group_by,
      :granularity,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource (dashboard, policy, or widget) was not found. Verify the ARN and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair that can be attached to a dashboard for organization and management purposes.</p>
    # @!attribute key
    #   <p>The key of the tag to be attached to the dashboard resource.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag to be attached to the dashboard resource.</p>
    #   @return [String]
    class ResourceTag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the parameters for querying Savings Plans coverage data, including metrics, grouping options, and time granularity.</p>
    # @!attribute time_range
    #   <p>Defines a time period with explicit start and end times for data queries.</p>
    #   @return [Types::DateTimeRange]
    # @!attribute metrics
    #   <p>The coverage metrics to include in the results.</p> <note> <p>Valid value for SavingsPlansCoverageQuery metrics is <code>SpendCoveredBySavingsPlans</code>.</p> </note>
    #   @return [Array<String>]
    # @!attribute granularity
    #   <p>The time granularity of the retrieved data: <code>HOURLY</code>, <code>DAILY</code>, or <code>MONTHLY</code>.</p>
    #   @return [String]
    # @!attribute group_by
    #   <p>Specifies how to group the Savings Plans coverage data, such as by service or instance family.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute filter
    #   <p>Defines complex filtering conditions using logical operators (<code>AND</code>, <code>OR</code>, <code>NOT</code>) and various filter types.</p>
    #   @return [Types::Expression]
    class SavingsPlansCoverageQuery < Struct.new(
      :time_range,
      :metrics,
      :granularity,
      :group_by,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the parameters for querying Savings Plans utilization data, including time granularity and sorting preferences.</p>
    # @!attribute time_range
    #   <p>Defines a time period with explicit start and end times for data queries.</p>
    #   @return [Types::DateTimeRange]
    # @!attribute granularity
    #   <p>The time granularity of the retrieved data: HOURLY, DAILY, or MONTHLY.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Defines complex filtering conditions using logical operators (<code>AND</code>, <code>OR</code>, <code>NOT</code>) and various filter types.</p>
    #   @return [Types::Expression]
    class SavingsPlansUtilizationQuery < Struct.new(
      :time_range,
      :granularity,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed service quotas. For example, attempting to create more than 20 widgets in a dashboard or exceeding the maximum number of dashboards per account.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration structure for customizing the tabular display of widget data.</p>
    class TableDisplayConfigStruct < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The tags to add to the dashboard resource.</p>
    #   @return [Array<Types::ResourceTag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies tag-based filtering options for cost and usage queries.</p>
    # @!attribute key
    #   <p>The key of the tag to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to match for the specified tag key.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options for tag values, such as <code>EQUALS</code>, <code>CONTAINS</code>, <code>STARTS_WITH</code>, or <code>ENDS_WITH</code>.</p>
    #   @return [Array<String>]
    class TagValues < Struct.new(
      :key,
      :values,
      :match_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. Reduce the frequency of requests and use exponential backoff.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p>The keys of the tags to remove from the dashboard resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the dashboard to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name for the dashboard. If not specified, the existing name is retained.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the dashboard. If not specified, the existing description is retained.</p>
    #   @return [String]
    # @!attribute widgets
    #   <p>The updated array of widget configurations for the dashboard. Replaces all existing widgets.</p>
    #   @return [Array<Types::Widget>]
    class UpdateDashboardRequest < Struct.new(
      :arn,
      :name,
      :description,
      :widgets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the updated dashboard.</p>
    #   @return [String]
    class UpdateDashboardResponse < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters do not satisfy the requirements. Check the error message for specific validation details.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configurable visualization component within a dashboard that displays specific cost and usage metrics. Each widget can show data as charts or tables and includes settings for data querying, filtering, and visual presentation.</p>
    # @!attribute title
    #   <p>The title of the widget.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the widget's purpose or the data it displays.</p>
    #   @return [String]
    # @!attribute width
    #   <p>The width of the widget in column spans. The dashboard layout consists of a grid system.</p>
    #   @return [Integer]
    # @!attribute height
    #   <p>The height of the widget in row spans. The dashboard layout consists of a grid system.</p>
    #   @return [Integer]
    # @!attribute horizontal_offset
    #   <p>Specifies the starting column position of the widget in the dashboard's grid layout. Used to control widget placement.</p>
    #   @return [Integer]
    # @!attribute configs
    #   <p>An array of configurations that define the data queries and display settings for the widget.</p>
    #   @return [Array<Types::WidgetConfig>]
    class Widget < Struct.new(
      :title,
      :description,
      :width,
      :height,
      :horizontal_offset,
      :configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:width] = 4 unless options.key?(:width)
        options[:height] = 7 unless options.key?(:height)
        options[:horizontal_offset] = 0 unless options.key?(:horizontal_offset)
        super
      end
    end

    # <p>Defines the complete configuration for a widget, including data retrieval settings and visualization preferences.</p>
    # @!attribute query_parameters
    #   <p>The parameters that define what data the widget should retrieve and how it should be filtered or grouped.</p>
    #   @return [Types::QueryParameters]
    # @!attribute display_config
    #   <p>The configuration that determines how the retrieved data should be visualized in the widget.</p>
    #   @return [Types::DisplayConfig]
    class WidgetConfig < Struct.new(
      :query_parameters,
      :display_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
