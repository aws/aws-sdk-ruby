# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BCMDashboards
  module Types

    # You do not have sufficient permissions to perform this action. Verify
    # your IAM permissions and any resource policies.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the parameters for retrieving Amazon Web Services cost and
    # usage data. Includes specifications for metrics, time periods,
    # granularity, grouping dimensions, and filtering conditions.
    #
    # @!attribute [rw] metrics
    #   The specific cost and usage metrics to retrieve.
    #
    #   <note markdown="1"> Valid values for CostAndUsageQuery metrics are `AmortizedCost`,
    #   `BlendedCost`, `NetAmortizedCost`, `NetUnblendedCost`,
    #   `NormalizedUsageAmount`, `UnblendedCost`, and `UsageQuantity`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] time_range
    #   The time period for which to retrieve data. Can be specified as
    #   absolute dates or relative time periods.
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] granularity
    #   The granularity of the retrieved data: `HOURLY`, `DAILY`, or
    #   `MONTHLY`.
    #   @return [String]
    #
    # @!attribute [rw] group_by
    #   Specifies how to group the retrieved data, such as by `SERVICE`,
    #   `ACCOUNT`, or `TAG`.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] filter
    #   The filter expression to be applied to the cost and usage data.
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/CostAndUsageQuery AWS API Documentation
    #
    class CostAndUsageQuery < Struct.new(
      :metrics,
      :time_range,
      :granularity,
      :group_by,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the values and match options for cost category-based
    # filtering in cost and usage queries.
    #
    # @!attribute [rw] key
    #   The key of the cost category to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for the specified cost category key.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_options
    #   The match options for cost category values, such as `EQUALS`,
    #   `CONTAINS`, `STARTS_WITH`, or `ENDS_WITH`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/CostCategoryValues AWS API Documentation
    #
    class CostCategoryValues < Struct.new(
      :key,
      :values,
      :match_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the dashboard. The name must be unique within your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the dashboard's purpose or contents.
    #   @return [String]
    #
    # @!attribute [rw] widgets
    #   An array of widget configurations that define the visualizations to
    #   be displayed in the dashboard. Each dashboard can contain up to 20
    #   widgets.
    #   @return [Array<Types::Widget>]
    #
    # @!attribute [rw] resource_tags
    #   The tags to apply to the dashboard resource for organization and
    #   management.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/CreateDashboardRequest AWS API Documentation
    #
    class CreateDashboardRequest < Struct.new(
      :name,
      :description,
      :widgets,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the newly created dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/CreateDashboardResponse AWS API Documentation
    #
    class CreateDashboardResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains basic information about a dashboard, including its ARN, name,
    # type, and timestamps.
    #
    # @!attribute [rw] arn
    #   The ARN of the referenced dashboard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the referenced dashboard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the referenced dashboard.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The dashboard type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the dashboard was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dashboard was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DashboardReference AWS API Documentation
    #
    class DashboardReference < Struct.new(
      :arn,
      :name,
      :description,
      :type,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a time period with explicit start and end times for data
    # queries.
    #
    # @!attribute [rw] start_time
    #   The start time of the date range for querying data.
    #   @return [Types::DateTimeValue]
    #
    # @!attribute [rw] end_time
    #   The end time of the date range for querying data.
    #   @return [Types::DateTimeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DateTimeRange AWS API Documentation
    #
    class DateTimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a point in time that can be specified as either an absolute
    # date (for example, "2025-07-01") or a relative time period using ISO
    # 8601 duration format (for example, "-P3M" for three months ago).
    #
    # @!attribute [rw] type
    #   The type of date/time value: `ABSOLUTE` for specific dates or
    #   `RELATIVE` for dynamic time periods.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The actual date/time value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DateTimeValue AWS API Documentation
    #
    class DateTimeValue < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the dashboard to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DeleteDashboardRequest AWS API Documentation
    #
    class DeleteDashboardRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the dashboard that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DeleteDashboardResponse AWS API Documentation
    #
    class DeleteDashboardResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the values and match options for dimension-based filtering
    # in cost and usage queries.
    #
    # @!attribute [rw] key
    #   The key of the dimension to filter on (for example, `SERVICE`,
    #   `USAGE_TYPE`, or `OPERATION`).
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for the specified dimension key.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_options
    #   The match options for dimension values, such as `EQUALS`,
    #   `CONTAINS`, `STARTS_WITH`, or `ENDS_WITH`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DimensionValues AWS API Documentation
    #
    class DimensionValues < Struct.new(
      :key,
      :values,
      :match_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how the widget's data should be visualized, including chart
    # type, color schemes, axis configurations, and other display
    # preferences.
    #
    # @note DisplayConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DisplayConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DisplayConfig corresponding to the set member.
    #
    # @!attribute [rw] graph
    #   The configuration for graphical display of the widget data,
    #   including chart type and visual options.
    #   @return [Hash<String,Types::GraphDisplayConfig>]
    #
    # @!attribute [rw] table
    #   The configuration for tabular display of the widget data.
    #   @return [Types::TableDisplayConfigStruct]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DisplayConfig AWS API Documentation
    #
    class DisplayConfig < Struct.new(
      :graph,
      :table,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Graph < DisplayConfig; end
      class Table < DisplayConfig; end
      class Unknown < DisplayConfig; end
    end

    # Defines complex filtering conditions using logical operators (`AND`,
    # `OR`, `NOT`) and various filter types.
    #
    # @!attribute [rw] or
    #   A list of expressions to combine with OR logic.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] and
    #   A list of expressions to combine with AND logic.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] not
    #   An expression to negate with NOT logic.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] dimensions
    #   The dimension values to include in the filter expression.
    #   @return [Types::DimensionValues]
    #
    # @!attribute [rw] tags
    #   The tag values to include in the filter expression.
    #   @return [Types::TagValues]
    #
    # @!attribute [rw] cost_categories
    #   The cost category values to include in the filter expression.
    #   @return [Types::CostCategoryValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/Expression AWS API Documentation
    #
    class Expression < Struct.new(
      :or,
      :and,
      :not,
      :dimensions,
      :tags,
      :cost_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the dashboard to retrieve. This is required to uniquely
    #   identify the dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GetDashboardRequest AWS API Documentation
    #
    class GetDashboardRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the retrieved dashboard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the retrieved dashboard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the retrieved dashboard.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates the dashboard type.
    #   @return [String]
    #
    # @!attribute [rw] widgets
    #   An array of widget configurations that make up the dashboard.
    #   @return [Array<Types::Widget>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the dashboard was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dashboard was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GetDashboardResponse AWS API Documentation
    #
    class GetDashboardResponse < Struct.new(
      :arn,
      :name,
      :description,
      :type,
      :widgets,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the dashboard whose resource-based policy you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the dashboard for which the resource-based policy was
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON policy document that represents the dashboard's
    #   resource-based policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the visual representation settings for widget data, including
    # the visualization type, styling options, and display preferences for
    # different metric types.
    #
    # @!attribute [rw] visual_type
    #   The type of visualization to use for the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GraphDisplayConfig AWS API Documentation
    #
    class GraphDisplayConfig < Struct.new(
      :visual_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how to group cost and usage data.
    #
    # @!attribute [rw] key
    #   The key to use for grouping cost and usage data.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of grouping to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GroupDefinition AWS API Documentation
    #
    class GroupDefinition < Struct.new(
      :key,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred while processing the request. Retry your
    # request. If the problem persists, contact Amazon Web Services Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. Use the value returned in
    #   the previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ListDashboardsRequest AWS API Documentation
    #
    class ListDashboardsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboards
    #   An array of dashboard references, containing basic information about
    #   each dashboard.
    #   @return [Array<Types::DashboardReference>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. Not returned
    #   if there are no more results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ListDashboardsResponse AWS API Documentation
    #
    class ListDashboardsResponse < Struct.new(
      :dashboards,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_tags
    #   The list of tags associated with the specified dashboard resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the data retrieval parameters for a widget.
    #
    # @note QueryParameters is a union - when making an API calls you must set exactly one of the members.
    #
    # @note QueryParameters is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of QueryParameters corresponding to the set member.
    #
    # @!attribute [rw] cost_and_usage
    #   The parameters for querying cost and usage data, including metrics,
    #   time range, granularity, grouping dimensions, and filters.
    #   @return [Types::CostAndUsageQuery]
    #
    # @!attribute [rw] savings_plans_coverage
    #   The parameters for querying Savings Plans coverage data, showing how
    #   much of your eligible compute usage is covered by Savings Plans.
    #   @return [Types::SavingsPlansCoverageQuery]
    #
    # @!attribute [rw] savings_plans_utilization
    #   The parameters for querying Savings Plans utilization data, showing
    #   how effectively your Savings Plans are being used.
    #   @return [Types::SavingsPlansUtilizationQuery]
    #
    # @!attribute [rw] reservation_coverage
    #   The parameters for querying Reserved Instance coverage data, showing
    #   how much of your eligible instance usage is covered by Reserved
    #   Instances.
    #   @return [Types::ReservationCoverageQuery]
    #
    # @!attribute [rw] reservation_utilization
    #   The parameters for querying Reserved Instance utilization data,
    #   showing how effectively your Reserved Instances are being used.
    #   @return [Types::ReservationUtilizationQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/QueryParameters AWS API Documentation
    #
    class QueryParameters < Struct.new(
      :cost_and_usage,
      :savings_plans_coverage,
      :savings_plans_utilization,
      :reservation_coverage,
      :reservation_utilization,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CostAndUsage < QueryParameters; end
      class SavingsPlansCoverage < QueryParameters; end
      class SavingsPlansUtilization < QueryParameters; end
      class ReservationCoverage < QueryParameters; end
      class ReservationUtilization < QueryParameters; end
      class Unknown < QueryParameters; end
    end

    # Defines the parameters for querying Reserved Instance coverage data,
    # including grouping options, metrics, and sorting preferences.
    #
    # @!attribute [rw] time_range
    #   Defines a time period with explicit start and end times for data
    #   queries.
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] group_by
    #   Specifies how to group the Reserved Instance coverage data, such as
    #   by service, Region, or instance type.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] granularity
    #   The time granularity of the retrieved data: `HOURLY`, `DAILY`, or
    #   `MONTHLY`.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Defines complex filtering conditions using logical operators (`AND`,
    #   `OR`, `NOT`) and various filter types.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] metrics
    #   The coverage metrics to include in the results.
    #
    #   <note markdown="1"> Valid values for ReservationCoverageQuery metrics are `Hour`,
    #   `Unit`, and `Cost`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ReservationCoverageQuery AWS API Documentation
    #
    class ReservationCoverageQuery < Struct.new(
      :time_range,
      :group_by,
      :granularity,
      :filter,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the parameters for querying Reserved Instance utilization
    # data, including grouping options and time granularity.
    #
    # @!attribute [rw] time_range
    #   Defines a time period with explicit start and end times for data
    #   queries.
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] group_by
    #   Specifies how to group the Reserved Instance utilization data, such
    #   as by service, Region, or instance type.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] granularity
    #   The time granularity of the retrieved data: `HOURLY`, `DAILY`, or
    #   `MONTHLY`.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Defines complex filtering conditions using logical operators (`AND`,
    #   `OR`, `NOT`) and various filter types.
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ReservationUtilizationQuery AWS API Documentation
    #
    class ReservationUtilizationQuery < Struct.new(
      :time_range,
      :group_by,
      :granularity,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource (dashboard, policy, or widget) was not found.
    # Verify the ARN and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that can be attached to a dashboard for organization
    # and management purposes.
    #
    # @!attribute [rw] key
    #   The key of the tag to be attached to the dashboard resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag to be attached to the dashboard resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the parameters for querying Savings Plans coverage data,
    # including metrics, grouping options, and time granularity.
    #
    # @!attribute [rw] time_range
    #   Defines a time period with explicit start and end times for data
    #   queries.
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] metrics
    #   The coverage metrics to include in the results.
    #
    #   <note markdown="1"> Valid value for SavingsPlansCoverageQuery metrics is
    #   `SpendCoveredBySavingsPlans`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] granularity
    #   The time granularity of the retrieved data: `HOURLY`, `DAILY`, or
    #   `MONTHLY`.
    #   @return [String]
    #
    # @!attribute [rw] group_by
    #   Specifies how to group the Savings Plans coverage data, such as by
    #   service or instance family.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] filter
    #   Defines complex filtering conditions using logical operators (`AND`,
    #   `OR`, `NOT`) and various filter types.
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/SavingsPlansCoverageQuery AWS API Documentation
    #
    class SavingsPlansCoverageQuery < Struct.new(
      :time_range,
      :metrics,
      :granularity,
      :group_by,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the parameters for querying Savings Plans utilization data,
    # including time granularity and sorting preferences.
    #
    # @!attribute [rw] time_range
    #   Defines a time period with explicit start and end times for data
    #   queries.
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] granularity
    #   The time granularity of the retrieved data: HOURLY, DAILY, or
    #   MONTHLY.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Defines complex filtering conditions using logical operators (`AND`,
    #   `OR`, `NOT`) and various filter types.
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/SavingsPlansUtilizationQuery AWS API Documentation
    #
    class SavingsPlansUtilizationQuery < Struct.new(
      :time_range,
      :granularity,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed service quotas. For example, attempting to
    # create more than 20 widgets in a dashboard or exceeding the maximum
    # number of dashboards per account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration structure for customizing the tabular display of widget
    # data.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/TableDisplayConfigStruct AWS API Documentation
    #
    class TableDisplayConfigStruct < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags to add to the dashboard resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Specifies tag-based filtering options for cost and usage queries.
    #
    # @!attribute [rw] key
    #   The key of the tag to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for the specified tag key.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_options
    #   The match options for tag values, such as `EQUALS`, `CONTAINS`,
    #   `STARTS_WITH`, or `ENDS_WITH`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/TagValues AWS API Documentation
    #
    class TagValues < Struct.new(
      :key,
      :values,
      :match_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling. Reduce the frequency
    # of requests and use exponential backoff.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_keys
    #   The keys of the tags to remove from the dashboard resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The ARN of the dashboard to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the dashboard. If not specified, the existing name
    #   is retained.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the dashboard. If not specified, the
    #   existing description is retained.
    #   @return [String]
    #
    # @!attribute [rw] widgets
    #   The updated array of widget configurations for the dashboard.
    #   Replaces all existing widgets.
    #   @return [Array<Types::Widget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/UpdateDashboardRequest AWS API Documentation
    #
    class UpdateDashboardRequest < Struct.new(
      :arn,
      :name,
      :description,
      :widgets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the updated dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/UpdateDashboardResponse AWS API Documentation
    #
    class UpdateDashboardResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters do not satisfy the requirements. Check the error
    # message for specific validation details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configurable visualization component within a dashboard that
    # displays specific cost and usage metrics. Each widget can show data as
    # charts or tables and includes settings for data querying, filtering,
    # and visual presentation.
    #
    # @!attribute [rw] id
    #   The unique identifier for the widget.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the widget.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the widget's purpose or the data it displays.
    #   @return [String]
    #
    # @!attribute [rw] width
    #   The width of the widget in column spans. The dashboard layout
    #   consists of a grid system.
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   The height of the widget in row spans. The dashboard layout consists
    #   of a grid system.
    #   @return [Integer]
    #
    # @!attribute [rw] horizontal_offset
    #   Specifies the starting column position of the widget in the
    #   dashboard's grid layout. Used to control widget placement.
    #   @return [Integer]
    #
    # @!attribute [rw] configs
    #   An array of configurations that define the data queries and display
    #   settings for the widget.
    #   @return [Array<Types::WidgetConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/Widget AWS API Documentation
    #
    class Widget < Struct.new(
      :id,
      :title,
      :description,
      :width,
      :height,
      :horizontal_offset,
      :configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the complete configuration for a widget, including data
    # retrieval settings and visualization preferences.
    #
    # @!attribute [rw] query_parameters
    #   The parameters that define what data the widget should retrieve and
    #   how it should be filtered or grouped.
    #   @return [Types::QueryParameters]
    #
    # @!attribute [rw] display_config
    #   The configuration that determines how the retrieved data should be
    #   visualized in the widget.
    #   @return [Types::DisplayConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/WidgetConfig AWS API Documentation
    #
    class WidgetConfig < Struct.new(
      :query_parameters,
      :display_config)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

