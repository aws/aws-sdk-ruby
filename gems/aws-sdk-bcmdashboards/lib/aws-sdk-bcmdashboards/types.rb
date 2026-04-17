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

    # The request could not be completed due to a conflict with the current
    # state of the resource. For example, attempting to create a resource
    # that already exists or is being created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
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

    # @!attribute [rw] scheduled_report
    #   The configuration for the scheduled report, including the dashboard
    #   to report on, the schedule, and the execution role that the service
    #   will use to generate the dashboard snapshot.
    #   @return [Types::ScheduledReportInput]
    #
    # @!attribute [rw] resource_tags
    #   The tags to apply to the scheduled report resource for organization
    #   and management.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/CreateScheduledReportRequest AWS API Documentation
    #
    class CreateScheduledReportRequest < Struct.new(
      :scheduled_report,
      :resource_tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the newly created scheduled report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/CreateScheduledReportResponse AWS API Documentation
    #
    class CreateScheduledReportResponse < Struct.new(
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

    # @!attribute [rw] arn
    #   The ARN of the scheduled report to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DeleteScheduledReportRequest AWS API Documentation
    #
    class DeleteScheduledReportRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the scheduled report that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/DeleteScheduledReportResponse AWS API Documentation
    #
    class DeleteScheduledReportResponse < Struct.new(
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

    # @!attribute [rw] arn
    #   The ARN of the scheduled report to execute.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   When set to `true`, validates the scheduled report configuration
    #   without triggering an actual execution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ExecuteScheduledReportRequest AWS API Documentation
    #
    class ExecuteScheduledReportRequest < Struct.new(
      :arn,
      :client_token,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] health_status
    #   The health status of the scheduled report after the execution
    #   request.
    #   @return [Types::HealthStatus]
    #
    # @!attribute [rw] execution_triggered
    #   Indicates whether the execution was successfully triggered.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ExecuteScheduledReportResponse AWS API Documentation
    #
    class ExecuteScheduledReportResponse < Struct.new(
      :health_status,
      :execution_triggered)
      SENSITIVE = []
      include Aws::Structure
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

    # @!attribute [rw] arn
    #   The ARN of the scheduled report to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GetScheduledReportRequest AWS API Documentation
    #
    class GetScheduledReportRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_report
    #   The scheduled report configuration and metadata.
    #   @return [Types::ScheduledReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/GetScheduledReportResponse AWS API Documentation
    #
    class GetScheduledReportResponse < Struct.new(
      :scheduled_report)
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

    # Contains the health status information for a scheduled report,
    # including the status code and any reasons for an unhealthy state.
    #
    # @!attribute [rw] status_code
    #   The health status code. `HEALTHY` indicates the scheduled report is
    #   configured properly and has all required permissions to execute.
    #   `UNHEALTHY` indicates the scheduled report is unable to deliver the
    #   notification to the default Amazon EventBridge EventBus in your
    #   account and your action is needed. The reason for the unhealthy
    #   state is captured in the health status reasons.
    #   @return [String]
    #
    # @!attribute [rw] last_refreshed_at
    #   The timestamp when the health status was last refreshed.
    #   @return [Time]
    #
    # @!attribute [rw] status_reasons
    #   The list of reasons for the current health status. Only present when
    #   the status is `UNHEALTHY`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/HealthStatus AWS API Documentation
    #
    class HealthStatus < Struct.new(
      :status_code,
      :last_refreshed_at,
      :status_reasons)
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

    # @!attribute [rw] next_token
    #   The token for the next page of results. Use the value returned in
    #   the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range is 1 to 100. The default value is 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ListScheduledReportsRequest AWS API Documentation
    #
    class ListScheduledReportsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_reports
    #   An array of scheduled report summaries, containing basic information
    #   about each scheduled report.
    #   @return [Array<Types::ScheduledReportSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. Not returned
    #   if there are no more results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ListScheduledReportsResponse AWS API Documentation
    #
    class ListScheduledReportsResponse < Struct.new(
      :scheduled_reports,
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
    #   The time granularity of the retrieved data: `HOURLY`, `DAILY`, or
    #   `MONTHLY`.
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

    # Defines the schedule for a scheduled report, including the cron
    # expression, time zone, active period, and the schedule state.
    #
    # @!attribute [rw] schedule_expression
    #   The schedule expression that specifies when to trigger the scheduled
    #   report run. This value must be a cron expression consisting of six
    #   fields separated by white spaces: `cron(minutes hours day_of_month
    #   month day_of_week year)`.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_time_zone
    #   The time zone for the schedule expression, for example, `UTC`.
    #   @return [String]
    #
    # @!attribute [rw] schedule_period
    #   The time period during which the schedule is active.
    #   @return [Types::SchedulePeriod]
    #
    # @!attribute [rw] state
    #   The state of the schedule. `ENABLED` means the scheduled report runs
    #   according to its schedule expression. `DISABLED` means the scheduled
    #   report is paused and will not run until re-enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ScheduleConfig AWS API Documentation
    #
    class ScheduleConfig < Struct.new(
      :schedule_expression,
      :schedule_expression_time_zone,
      :schedule_period,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the active time period for execution of the scheduled report.
    #
    # @!attribute [rw] start_time
    #   The start time of the schedule period. If not specified, defaults to
    #   the time of the create or update request. The start time cannot be
    #   more than 5 minutes before the time of the request.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the schedule period. If not specified, defaults to 3
    #   years from the time of the create or update request. The maximum
    #   allowed value is 3 years from the current time. Setting an end time
    #   beyond this limit returns a `ValidationException`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/SchedulePeriod AWS API Documentation
    #
    class SchedulePeriod < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the full configuration and metadata of a scheduled report.
    #
    # @!attribute [rw] arn
    #   The ARN of the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The ARN of the dashboard associated with the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_report_execution_role_arn
    #   The ARN of the IAM role that the scheduled report uses to execute.
    #   Amazon Web Services Billing and Cost Management Dashboards will
    #   assume this IAM role while executing the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] schedule_config
    #   The schedule configuration that defines when and how often the
    #   report is generated.
    #   @return [Types::ScheduleConfig]
    #
    # @!attribute [rw] description
    #   A description of the scheduled report's purpose or contents.
    #   @return [String]
    #
    # @!attribute [rw] widget_ids
    #   The list of widget identifiers included in the scheduled report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] widget_date_range_override
    #   The date range override applied to widgets in the scheduled report.
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the scheduled report was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the scheduled report was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_execution_at
    #   The timestamp of the most recent execution of the scheduled report.
    #   @return [Time]
    #
    # @!attribute [rw] health_status
    #   The health status of the scheduled report at last refresh time.
    #   @return [Types::HealthStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ScheduledReport AWS API Documentation
    #
    class ScheduledReport < Struct.new(
      :arn,
      :name,
      :dashboard_arn,
      :scheduled_report_execution_role_arn,
      :schedule_config,
      :description,
      :widget_ids,
      :widget_date_range_override,
      :created_at,
      :updated_at,
      :last_execution_at,
      :health_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the configuration for creating a new scheduled report,
    # including the dashboard, schedule, execution role, and optional widget
    # settings.
    #
    # @!attribute [rw] name
    #   The name of the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The ARN of the dashboard to generate the scheduled report from.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_report_execution_role_arn
    #   The ARN of the IAM role that the scheduled report uses to execute.
    #   Amazon Web Services Billing and Cost Management Dashboards will
    #   assume this IAM role while executing the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] schedule_config
    #   The schedule configuration that defines when and how often the
    #   report is generated. If the schedule state is not specified, it
    #   defaults to `ENABLED`.
    #   @return [Types::ScheduleConfig]
    #
    # @!attribute [rw] description
    #   A description of the scheduled report's purpose or contents.
    #   @return [String]
    #
    # @!attribute [rw] widget_ids
    #   The list of widget identifiers to include in the scheduled report.
    #   If not specified, all widgets in the dashboard are included.
    #   @return [Array<String>]
    #
    # @!attribute [rw] widget_date_range_override
    #   The date range override to apply to widgets in the scheduled report.
    #   @return [Types::DateTimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ScheduledReportInput AWS API Documentation
    #
    class ScheduledReportInput < Struct.new(
      :name,
      :dashboard_arn,
      :scheduled_report_execution_role_arn,
      :schedule_config,
      :description,
      :widget_ids,
      :widget_date_range_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information for a scheduled report.
    #
    # @!attribute [rw] arn
    #   The ARN of the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The ARN of the dashboard associated with the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The schedule expression that defines when the report runs.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the schedule: `ENABLED` or `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The health status of the scheduled report as of its last refresh
    #   time.
    #   @return [Types::HealthStatus]
    #
    # @!attribute [rw] schedule_expression_time_zone
    #   The time zone for the schedule expression, for example, `UTC`.
    #   @return [String]
    #
    # @!attribute [rw] widget_ids
    #   The list of widget identifiers included in the scheduled report.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/ScheduledReportSummary AWS API Documentation
    #
    class ScheduledReportSummary < Struct.new(
      :arn,
      :name,
      :dashboard_arn,
      :schedule_expression,
      :state,
      :health_status,
      :schedule_expression_time_zone,
      :widget_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota. Review the service quotas
    # for Amazon Web Services Billing and Cost Management Dashboards and
    # retry your request.
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
    #   The new name for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the dashboard.
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

    # @!attribute [rw] arn
    #   The ARN of the scheduled report to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The ARN of the dashboard to associate with the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_report_execution_role_arn
    #   The ARN of the IAM role that the scheduled report uses to execute.
    #   Amazon Web Services Billing and Cost Management Dashboards will
    #   assume this IAM role while executing the scheduled report.
    #   @return [String]
    #
    # @!attribute [rw] schedule_config
    #   The updated schedule configuration for the report.
    #   @return [Types::ScheduleConfig]
    #
    # @!attribute [rw] widget_ids
    #   The list of widget identifiers to include in the scheduled report.
    #   If not specified, all widgets in the dashboard are included.
    #   @return [Array<String>]
    #
    # @!attribute [rw] widget_date_range_override
    #   The date range override to apply to widgets in the scheduled report.
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] clear_widget_ids
    #   Set to true to clear existing widgetIds.
    #   @return [Boolean]
    #
    # @!attribute [rw] clear_widget_date_range_override
    #   Set to true to clear existing widgetDateRangeOverride.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/UpdateScheduledReportRequest AWS API Documentation
    #
    class UpdateScheduledReportRequest < Struct.new(
      :arn,
      :name,
      :description,
      :dashboard_arn,
      :scheduled_report_execution_role_arn,
      :schedule_config,
      :widget_ids,
      :widget_date_range_override,
      :clear_widget_ids,
      :clear_widget_date_range_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the updated scheduled report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-dashboards-2025-08-18/UpdateScheduledReportResponse AWS API Documentation
    #
    class UpdateScheduledReportResponse < Struct.new(
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

