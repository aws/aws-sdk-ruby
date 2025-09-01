# frozen_string_literal: true

# This is generated code!

module Aws::DevOpsGuru
  # This module contains the types returned by client operations.
  module Types

    # <p> You don't have permissions to perform the requested operation. The user or role that
    # 			is making the request must have at least one IAM permissions policy attached that grants
    # 			the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the
    # 				<i>IAM User Guide</i>. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Returns the number of open reactive insights, the number of open proactive insights,
    # 			and the number of metrics analyzed in your Amazon Web Services account. Use these numbers to gauge the
    # 			health of operations in your Amazon Web Services account. </p>
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute insight
    #   <p> Information about the health of the Amazon Web Services resources in your account, including the
    #   			number of open proactive, open reactive insights, and the Mean Time to Recover (MTTR) of closed insights.
    #   		</p>
    #   @return [Types::AccountInsightHealth]
    class AccountHealth < Struct.new(
      :account_id,
      :insight,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the number of open reactive and proactive insights that can be used
    # 			to gauge the health of your system. </p>
    # @!attribute open_proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Integer]
    # @!attribute open_reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Integer]
    class AccountInsightHealth < Struct.new(
      :open_proactive_insights,
      :open_reactive_insights,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:open_proactive_insights] = 0 unless options.key?(:open_proactive_insights)
        options[:open_reactive_insights] = 0 unless options.key?(:open_reactive_insights)
        super
      end
    end

    # @!attribute config
    #   <p> A <code>NotificationChannelConfig</code> object that specifies what type of
    #   			notification channel to add. The one 
    #         	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    #   @return [Types::NotificationChannelConfig]
    class AddNotificationChannelRequest < Struct.new(
      :config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the added notification channel. </p>
    #   @return [String]
    class AddNotificationChannelResponse < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about your account's integration with Amazon CodeGuru Profiler. This
    # 			returns whether DevOps Guru is configured to consume recommendations generated from Amazon
    # 			CodeGuru Profiler.</p>
    # @!attribute status
    #   <p>The status of the CodeGuru Profiler integration. Specifies if DevOps Guru is enabled to
    #   			consume recommendations that are generated from Amazon CodeGuru Profiler.</p>
    #   @return [String]
    class AmazonCodeGuruProfilerIntegration < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # 			An Amazon CloudWatch log group that contains log anomalies and is used to generate an insight.
    # 		</p>
    # @!attribute log_group_name
    #   <p>
    #   			The name of the CloudWatch log group.
    #   		</p>
    #   @return [String]
    # @!attribute impact_start_time
    #   <p>
    #   			The time the anomalous log events began. The impact start time indicates the time of the first log anomaly event that occurs.
    #   		</p>
    #   @return [Time]
    # @!attribute impact_end_time
    #   <p>
    #   			The time the anomalous log events stopped.
    #   		</p>
    #   @return [Time]
    # @!attribute number_of_log_lines_scanned
    #   <p>
    #   			The number of log lines that were scanned for anomalous log events.
    #   		</p>
    #   @return [Integer]
    # @!attribute log_anomaly_showcases
    #   <p>
    #   			The log anomalies in the log group. Each log anomaly displayed represents a cluster of similar anomalous log events.
    #   		</p>
    #   @return [Array<Types::LogAnomalyShowcase>]
    class AnomalousLogGroup < Struct.new(
      :log_group_name,
      :impact_start_time,
      :impact_end_time,
      :number_of_log_lines_scanned,
      :log_anomaly_showcases,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_log_lines_scanned] = 0 unless options.key?(:number_of_log_lines_scanned)
        super
      end
    end

    # <p> A time range that specifies when DevOps Guru opens and then closes an anomaly. This
    # 			is different from <code>AnomalyTimeRange</code>, which specifies the time range when
    # 			DevOps Guru actually observes the anomalous behavior. </p>
    # @!attribute open_time
    #   <p> The time when an anomaly is opened. </p>
    #   @return [Time]
    # @!attribute close_time
    #   <p> The time when an anomaly is closed. </p>
    #   @return [Time]
    class AnomalyReportedTimeRange < Struct.new(
      :open_time,
      :close_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services resources in which DevOps Guru detected unusual behavior that resulted in the
    # 			generation of an anomaly. When DevOps Guru detects multiple related anomalies, it creates and
    # 			insight with details about the anomalous behavior and suggestions about how to correct
    # 			the problem.</p>
    # @!attribute name
    #   <p>The name of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Amazon Web Services resource.</p>
    #   @return [String]
    class AnomalyResource < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnomalySeverity
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
    end

    # <p> Details about the source of the anomalous operational data that triggered the
    # 			anomaly.</p>
    # @!attribute cloud_watch_metrics
    #   <p>An array of <code>CloudWatchMetricsDetail</code> objects that contain information
    #   			about analyzed CloudWatch metrics that show anomalous behavior. </p>
    #   @return [Array<Types::CloudWatchMetricsDetail>]
    # @!attribute performance_insights_metrics
    #   <p>An array of <code>PerformanceInsightsMetricsDetail</code> objects that contain
    #   			information about analyzed Performance Insights metrics that show anomalous behavior.</p>
    #   @return [Array<Types::PerformanceInsightsMetricsDetail>]
    class AnomalySourceDetails < Struct.new(
      :cloud_watch_metrics,
      :performance_insights_metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata about the detection source that generates proactive anomalies. The anomaly is
    # 			detected using analysis of the metric data  over a period of time</p>
    # @!attribute source
    #   <p>The source of the anomaly.</p>
    #   @return [String]
    # @!attribute source_resource_name
    #   <p>The name of the anomaly's resource.</p>
    #   @return [String]
    # @!attribute source_resource_type
    #   <p>The anomaly's resource type.</p>
    #   @return [String]
    class AnomalySourceMetadata < Struct.new(
      :source,
      :source_resource_name,
      :source_resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnomalyStatus
      ONGOING = 'ONGOING'
      CLOSED = 'CLOSED'
    end

    # <p> A time range that specifies when the observed unusual behavior in an anomaly started
    # 			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    # 			the time range when DevOps Guru opens and then closes an anomaly. </p>
    # @!attribute start_time
    #   <p> The time when the anomalous behavior started. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The time when the anomalous behavior ended. </p>
    #   @return [Time]
    class AnomalyTimeRange < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnomalyType
      CAUSAL = 'CAUSAL'
      CONTEXTUAL = 'CONTEXTUAL'
    end

    # <p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
    # 			stacks to specify which Amazon Web Services resources in your account to analyze. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>. </p>
    # @!attribute stack_names
    #   <p> An array of CloudFormation stack names. </p>
    #   @return [Array<String>]
    class CloudFormationCollection < Struct.new(
      :stack_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
    # 			stacks to specify which Amazon Web Services resources in your account to analyze. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>. </p>
    # @!attribute stack_names
    #   <p> An array of CloudFormation stack names. </p>
    #   @return [Array<String>]
    class CloudFormationCollectionFilter < Struct.new(
      :stack_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an Amazon Web Services CloudFormation stack used to create a monthly cost estimate
    # 			for DevOps Guru to analyze Amazon Web Services resources. The maximum number of stacks you can specify for a
    # 			cost estimate is one. The estimate created is for the cost to analyze the Amazon Web Services
    # 			resources defined by the stack. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>.</p>
    # @!attribute stack_names
    #   <p>An array of CloudFormation stack names. Its size is fixed at 1 item.</p>
    #   @return [Array<String>]
    class CloudFormationCostEstimationResourceCollectionFilter < Struct.new(
      :stack_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the health of Amazon Web Services resources in your account that are specified by
    # 			an Amazon Web Services CloudFormation stack. </p>
    # @!attribute stack_name
    #   <p> The name of the CloudFormation stack. </p>
    #   @return [String]
    # @!attribute insight
    #   <p> Information about the health of the Amazon Web Services resources in your account that are
    #   			specified by an Amazon Web Services CloudFormation stack, including the number of open proactive, open reactive
    #   			insights, and the Mean Time to Recover (MTTR) of closed insights. </p>
    #   @return [Types::InsightHealth]
    # @!attribute analyzed_resource_count
    #   <p>
    #   			Number of resources that DevOps Guru is monitoring in your account that are specified by an Amazon Web Services CloudFormation stack.
    #   		</p>
    #   @return [Integer]
    class CloudFormationHealth < Struct.new(
      :stack_name,
      :insight,
      :analyzed_resource_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CloudWatchMetricDataStatusCode
      COMPLETE = 'Complete'
      INTERNAL_ERROR = 'InternalError'
      PARTIAL_DATA = 'PartialData'
    end

    # <p>Contains information about the analyzed metrics that displayed anomalous behavior.
    # 		</p>
    # @!attribute timestamp_metric_value_pair_list
    #   <p>This is a list of Amazon CloudWatch metric values at given timestamp.</p>
    #   @return [Array<Types::TimestampMetricValuePair>]
    # @!attribute status_code
    #   <p>This is an enum of the status showing whether the metric value pair list has partial
    #   			or complete data, or if there was an error.</p>
    #   @return [String]
    class CloudWatchMetricsDataSummary < Struct.new(
      :timestamp_metric_value_pair_list,
      :status_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about an Amazon CloudWatch metric. </p>
    # @!attribute metric_name
    #   <p> The name of the CloudWatch metric. </p>
    #   @return [String]
    # @!attribute namespace
    #   <p> The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.
    #   		</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p> An array of CloudWatch dimensions associated with </p>
    #   @return [Array<Types::CloudWatchMetricsDimension>]
    # @!attribute stat
    #   <p> The type of statistic associated with the CloudWatch metric. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
    #   @return [String]
    # @!attribute unit
    #   <p> The unit of measure used for the CloudWatch metric. For example, <code>Bytes</code>,
    #   				<code>Seconds</code>, <code>Count</code>, and <code>Percent</code>. </p>
    #   @return [String]
    # @!attribute period
    #   <p> The length of time associated with the CloudWatch metric in number of seconds. </p>
    #   @return [Integer]
    # @!attribute metric_data_summary
    #   <p>This object returns anomaly metric data.</p>
    #   @return [Types::CloudWatchMetricsDataSummary]
    class CloudWatchMetricsDetail < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :stat,
      :unit,
      :period,
      :metric_data_summary,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:period] = 0 unless options.key?(:period)
        super
      end
    end

    # <p> The dimension of an Amazon CloudWatch metric that is used when DevOps Guru analyzes the resources in
    # 			your account for operational problems and anomalous behavior. A dimension is a
    # 			name/value pair that is part of the identity of a metric. A metric can have up to 10
    # 			dimensions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension">Dimensions</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
    # @!attribute name
    #   <p> The name of the CloudWatch dimension. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value of the CloudWatch dimension. </p>
    #   @return [String]
    class CloudWatchMetricsDimension < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CloudWatchMetricsStat
      SUM = 'Sum'
      AVERAGE = 'Average'
      SAMPLE_COUNT = 'SampleCount'
      MINIMUM = 'Minimum'
      MAXIMUM = 'Maximum'
      P99 = 'p99'
      P90 = 'p90'
      P50 = 'p50'
    end

    # <p> An exception that is thrown when a conflict occurs. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The ID of the Amazon Web Services resource in which a conflict occurred. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the Amazon Web Services resource in which a conflict occurred. </p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a filter used to specify which Amazon Web Services resources are analyzed to
    # 			create a monthly DevOps Guru cost estimate. For more information, 
    # 			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your 
    # 			Amazon DevOps Guru costs</a> and 
    # 			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>. </p>
    # @!attribute cloud_formation
    #   <p>An object that specifies the CloudFormation stack that defines the Amazon Web Services resources
    #   			used to create a monthly estimate for DevOps Guru.</p>
    #   @return [Types::CloudFormationCostEstimationResourceCollectionFilter]
    # @!attribute tags
    #   <p>The Amazon Web Services tags used to filter the resource collection that is used for a cost
    #   			estimate.</p>
    #            <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #      			best practices</a> whitepaper. </p>
    #            <p>Each Amazon Web Services tag has two parts. </p>
    #            <ul>
    #               <li>
    #                  <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [Array<Types::TagCostEstimationResourceCollectionFilter>]
    class CostEstimationResourceCollectionFilter < Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CostEstimationServiceResourceState
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
    end

    module CostEstimationStatus
      ONGOING = 'ONGOING'
      COMPLETED = 'COMPLETED'
    end

    # <p>The time range of a cost estimation.</p>
    # @!attribute start_time
    #   <p>The start time of the cost estimation.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the cost estimation.</p>
    #   @return [Time]
    class CostEstimationTimeRange < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the insight.</p>
    #   @return [String]
    class DeleteInsightRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteInsightResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DescribeAccountHealthRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_reactive_insights
    #   <p> An integer that specifies the number of open reactive insights in your Amazon Web Services account.
    #   		</p>
    #   @return [Integer]
    # @!attribute open_proactive_insights
    #   <p> An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account. </p>
    #   @return [Integer]
    # @!attribute metrics_analyzed
    #   <p> An integer that specifies the number of metrics that have been analyzed in your Amazon Web Services
    #   			account. </p>
    #   @return [Integer]
    # @!attribute resource_hours
    #   <p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in
    #   			the last hour. </p>
    #   @return [Integer]
    # @!attribute analyzed_resource_count
    #   <p>
    #   			Number of resources that DevOps Guru is monitoring in your Amazon Web Services account.
    #   		</p>
    #   @return [Integer]
    class DescribeAccountHealthResponse < Struct.new(
      :open_reactive_insights,
      :open_proactive_insights,
      :metrics_analyzed,
      :resource_hours,
      :analyzed_resource_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:open_reactive_insights] = 0 unless options.key?(:open_reactive_insights)
        options[:open_proactive_insights] = 0 unless options.key?(:open_proactive_insights)
        options[:metrics_analyzed] = 0 unless options.key?(:metrics_analyzed)
        super
      end
    end

    # @!attribute from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    #   @return [Time]
    # @!attribute to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    #   @return [Time]
    class DescribeAccountOverviewRequest < Struct.new(
      :from_time,
      :to_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reactive_insights
    #   <p> An integer that specifies the number of open reactive insights in your Amazon Web Services account
    #   			that were created during the time range passed in. </p>
    #   @return [Integer]
    # @!attribute proactive_insights
    #   <p> An integer that specifies the number of open proactive insights in your Amazon Web Services account
    #   			that were created during the time range passed in. </p>
    #   @return [Integer]
    # @!attribute mean_time_to_recover_in_milliseconds
    #   <p> The Mean Time to Recover (MTTR) for all closed insights that were created during the time range passed in.
    #   		</p>
    #   @return [Integer]
    class DescribeAccountOverviewResponse < Struct.new(
      :reactive_insights,
      :proactive_insights,
      :mean_time_to_recover_in_milliseconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:reactive_insights] = 0 unless options.key?(:reactive_insights)
        options[:proactive_insights] = 0 unless options.key?(:proactive_insights)
        super
      end
    end

    # @!attribute id
    #   <p> The ID of the anomaly. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the member account.</p>
    #   @return [String]
    class DescribeAnomalyRequest < Struct.new(
      :id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proactive_anomaly
    #   <p> A <code>ProactiveAnomaly</code> object that represents the requested anomaly. </p>
    #   @return [Types::ProactiveAnomaly]
    # @!attribute reactive_anomaly
    #   <p> A <code>ReactiveAnomaly</code> object that represents the requested anomaly. </p>
    #   @return [Types::ReactiveAnomaly]
    class DescribeAnomalyResponse < Struct.new(
      :proactive_anomaly,
      :reactive_anomaly,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DescribeEventSourcesConfigRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_sources
    #   <p>Lists the event sources in the configuration.</p>
    #   @return [Types::EventSourcesConfig]
    class DescribeEventSourcesConfigResponse < Struct.new(
      :event_sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p> The ID of the insight for which the feedback was provided. </p>
    #   @return [String]
    class DescribeFeedbackRequest < Struct.new(
      :insight_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute insight_feedback
    #   <p> Information about insight feedback received from a customer. </p>
    #   @return [Types::InsightFeedback]
    class DescribeFeedbackResponse < Struct.new(
      :insight_feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the insight. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the member account in the organization.</p>
    #   @return [String]
    class DescribeInsightRequest < Struct.new(
      :id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proactive_insight
    #   <p> A <code>ProactiveInsight</code> object that represents the requested insight. </p>
    #   @return [Types::ProactiveInsight]
    # @!attribute reactive_insight
    #   <p> A <code>ReactiveInsight</code> object that represents the requested insight. </p>
    #   @return [Types::ReactiveInsight]
    class DescribeInsightResponse < Struct.new(
      :proactive_insight,
      :reactive_insight,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [Array<String>]
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #   @return [Array<String>]
    class DescribeOrganizationHealthRequest < Struct.new(
      :account_ids,
      :organizational_unit_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Integer]
    # @!attribute open_proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Integer]
    # @!attribute metrics_analyzed
    #   <p>An integer that specifies the number of metrics that have been analyzed in your
    #   			organization.</p>
    #   @return [Integer]
    # @!attribute resource_hours
    #   <p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in
    #   			the last hour. </p>
    #   @return [Integer]
    class DescribeOrganizationHealthResponse < Struct.new(
      :open_reactive_insights,
      :open_proactive_insights,
      :metrics_analyzed,
      :resource_hours,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:open_reactive_insights] = 0 unless options.key?(:open_reactive_insights)
        options[:open_proactive_insights] = 0 unless options.key?(:open_proactive_insights)
        options[:metrics_analyzed] = 0 unless options.key?(:metrics_analyzed)
        super
      end
    end

    # @!attribute from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    #   @return [Time]
    # @!attribute to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    #   @return [Time]
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [Array<String>]
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #   @return [Array<String>]
    class DescribeOrganizationOverviewRequest < Struct.new(
      :from_time,
      :to_time,
      :account_ids,
      :organizational_unit_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Integer]
    # @!attribute proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Integer]
    class DescribeOrganizationOverviewResponse < Struct.new(
      :reactive_insights,
      :proactive_insights,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:reactive_insights] = 0 unless options.key?(:reactive_insights)
        options[:proactive_insights] = 0 unless options.key?(:proactive_insights)
        super
      end
    end

    # @!attribute organization_resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [Array<String>]
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    class DescribeOrganizationResourceCollectionHealthRequest < Struct.new(
      :organization_resource_collection_type,
      :account_ids,
      :organizational_unit_ids,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cloud_formation
    #   <p>The returned <code>CloudFormationHealthOverview</code> object that contains an
    #   				<code>InsightHealthOverview</code> object with the requested system health
    #   			information.</p>
    #   @return [Array<Types::CloudFormationHealth>]
    # @!attribute service
    #   <p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services
    #   			services associated with the resources in the collection.</p>
    #   @return [Array<Types::ServiceHealth>]
    # @!attribute account
    #   <p>The name of the organization's account.</p>
    #   @return [Array<Types::AccountHealth>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #      			best practices</a> whitepaper. </p>
    #            <p>Each Amazon Web Services tag has two parts. </p>
    #            <ul>
    #               <li>
    #                  <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [Array<Types::TagHealth>]
    class DescribeOrganizationResourceCollectionHealthResponse < Struct.new(
      :cloud_formation,
      :service,
      :account,
      :next_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeResourceCollectionHealthRequest < Struct.new(
      :resource_collection_type,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cloud_formation
    #   <p> The returned <code>CloudFormationHealthOverview</code> object that contains an
    #   				<code>InsightHealthOverview</code> object with the requested system health
    #   			information. </p>
    #   @return [Array<Types::CloudFormationHealth>]
    # @!attribute service
    #   <p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services
    #   			services associated with the resources in the collection.</p>
    #   @return [Array<Types::ServiceHealth>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The Amazon Web Services tags that are used by resources in the resource collection.</p>
    #            <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #      			best practices</a> whitepaper. </p>
    #            <p>Each Amazon Web Services tag has two parts. </p>
    #            <ul>
    #               <li>
    #                  <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [Array<Types::TagHealth>]
    class DescribeResourceCollectionHealthResponse < Struct.new(
      :cloud_formation,
      :service,
      :next_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DescribeServiceIntegrationRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_integration
    #   <p> Information about the integration of DevOps Guru with another Amazon Web Services service, such as
    #   			Amazon Web Services Systems Manager. </p>
    #   @return [Types::ServiceIntegrationConfig]
    class DescribeServiceIntegrationResponse < Struct.new(
      :service_integration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A range of time that specifies when anomalous behavior in an anomaly or insight
    # 			ended. </p>
    # @!attribute from_time
    #   <p> The earliest end time in the time range. </p>
    #   @return [Time]
    # @!attribute to_time
    #   <p> The latest end time in the time range. </p>
    #   @return [Time]
    class EndTimeRange < Struct.new(
      :from_time,
      :to_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> An Amazon Web Services resource event. Amazon Web Services resource events and metrics are analyzed by DevOps Guru to
    # 			find anomalous behavior and provide recommendations to improve your operational
    # 			solutions. </p>
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute id
    #   <p> The ID of the event. </p>
    #   @return [String]
    # @!attribute time
    #   <p> A <code>Timestamp</code> that specifies the time the event occurred. </p>
    #   @return [Time]
    # @!attribute event_source
    #   <p> The Amazon Web Services source that emitted the event. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the event. </p>
    #   @return [String]
    # @!attribute data_source
    #   <p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, where DevOps Guru
    #   			analysis found the event. </p>
    #   @return [String]
    # @!attribute event_class
    #   <p> The class of the event. The class specifies what the event is related to, such as an
    #   			infrastructure change, a deployment, or a schema change. </p>
    #   @return [String]
    # @!attribute resources
    #   <p> An <code>EventResource</code> object that contains information about the resource
    #   			that emitted the event. </p>
    #   @return [Array<Types::EventResource>]
    class Event < Struct.new(
      :resource_collection,
      :id,
      :time,
      :event_source,
      :name,
      :data_source,
      :event_class,
      :resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventClass
      INFRASTRUCTURE = 'INFRASTRUCTURE'
      DEPLOYMENT = 'DEPLOYMENT'
      SECURITY_CHANGE = 'SECURITY_CHANGE'
      CONFIG_CHANGE = 'CONFIG_CHANGE'
      SCHEMA_CHANGE = 'SCHEMA_CHANGE'
    end

    module EventDataSource
      AWS_CLOUD_TRAIL = 'AWS_CLOUD_TRAIL'
      AWS_CODE_DEPLOY = 'AWS_CODE_DEPLOY'
    end

    # <p> The Amazon Web Services resource that emitted an event. Amazon Web Services resource events and metrics are
    # 			analyzed by DevOps Guru to find anomalous behavior and provide recommendations to improve your
    # 			operational solutions. </p>
    # @!attribute type
    #   <p> The type of resource that emitted an event. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the resource that emitted an event. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the resource that emitted an event. </p>
    #   @return [String]
    class EventResource < Struct.new(
      :type,
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventSourceOptInStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Information about the integration of DevOps Guru as consumer with another AWS service, such
    # 			as AWS CodeGuru Profiler via EventBridge.</p>
    # @!attribute amazon_code_guru_profiler
    #   <p>Information about whether DevOps Guru is configured to consume recommendations which
    #   			are generated from AWS CodeGuru Profiler.</p>
    #   @return [Types::AmazonCodeGuruProfilerIntegration]
    class EventSourcesConfig < Struct.new(
      :amazon_code_guru_profiler,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The time range during which an Amazon Web Services event occurred. Amazon Web Services resource events and
    # 			metrics are analyzed by DevOps Guru to find anomalous behavior and provide recommendations to
    # 			improve your operational solutions. </p>
    # @!attribute from_time
    #   <p> The time when the event started. </p>
    #   @return [Time]
    # @!attribute to_time
    #   <p> The time when the event ended. </p>
    #   @return [Time]
    class EventTimeRange < Struct.new(
      :from_time,
      :to_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class GetCostEstimationRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_collection
    #   <p>The collection of the Amazon Web Services resources used to create your monthly DevOps Guru cost
    #   			estimate.</p>
    #   @return [Types::CostEstimationResourceCollectionFilter]
    # @!attribute status
    #   <p>The status of creating this cost estimate. If it's still in progress, the status
    #   				<code>ONGOING</code> is returned. If it is finished, the status
    #   				<code>COMPLETED</code> is returned.</p>
    #   @return [String]
    # @!attribute costs
    #   <p>An array of <code>ResourceCost</code> objects that each contains details about the
    #   			monthly cost estimate to analyze one of your Amazon Web Services resources.</p>
    #   @return [Array<Types::ServiceResourceCost>]
    # @!attribute time_range
    #   <p>The start and end time of the cost estimation.</p>
    #   @return [Types::CostEstimationTimeRange]
    # @!attribute total_cost
    #   <p>The estimated monthly cost to analyze the Amazon Web Services resources. This value is the sum of
    #   			the estimated costs to analyze each resource in the <code>Costs</code> object in this
    #   			response.</p>
    #   @return [Float]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class GetCostEstimationResponse < Struct.new(
      :resource_collection,
      :status,
      :costs,
      :time_range,
      :total_cost,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_cost] = 0 unless options.key?(:total_cost)
        super
      end
    end

    # @!attribute resource_collection_type
    #   <p> The type of Amazon Web Services resource collections to return. The one valid value is
    #   				<code>CLOUD_FORMATION</code> for Amazon Web Services CloudFormation stacks. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class GetResourceCollectionRequest < Struct.new(
      :resource_collection_type,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_collection
    #   <p> The requested list of Amazon Web Services resource collections.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollectionFilter]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class GetResourceCollectionResponse < Struct.new(
      :resource_collection,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about insight feedback received from a customer. </p>
    # @!attribute id
    #   <p> The insight feedback ID. </p>
    #   @return [String]
    # @!attribute feedback
    #   <p> The feedback provided by the customer. </p>
    #   @return [String]
    class InsightFeedback < Struct.new(
      :id,
      :feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InsightFeedbackOption
      VALID_COLLECTION = 'VALID_COLLECTION'
      RECOMMENDATION_USEFUL = 'RECOMMENDATION_USEFUL'
      ALERT_TOO_SENSITIVE = 'ALERT_TOO_SENSITIVE'
      DATA_NOISY_ANOMALY = 'DATA_NOISY_ANOMALY'
      DATA_INCORRECT = 'DATA_INCORRECT'
    end

    # <p> Information about the number of open reactive and proactive insights that can be used
    # 			to gauge the health of your system. </p>
    # @!attribute open_proactive_insights
    #   <p> The number of open proactive insights. </p>
    #   @return [Integer]
    # @!attribute open_reactive_insights
    #   <p> The number of open reactive insights. </p>
    #   @return [Integer]
    # @!attribute mean_time_to_recover_in_milliseconds
    #   <p> The Meant Time to Recover (MTTR) for the insight. </p>
    #   @return [Integer]
    class InsightHealth < Struct.new(
      :open_proactive_insights,
      :open_reactive_insights,
      :mean_time_to_recover_in_milliseconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:open_proactive_insights] = 0 unless options.key?(:open_proactive_insights)
        options[:open_reactive_insights] = 0 unless options.key?(:open_reactive_insights)
        super
      end
    end

    module InsightSeverity
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
    end

    module InsightStatus
      ONGOING = 'ONGOING'
      CLOSED = 'CLOSED'
    end

    # <p> A time ranged that specifies when the observed behavior in an insight started and
    # 			ended. </p>
    # @!attribute start_time
    #   <p> The time when the behavior described in an insight started. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The time when the behavior described in an insight ended. </p>
    #   @return [Time]
    class InsightTimeRange < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InsightType
      REACTIVE = 'REACTIVE'
      PROACTIVE = 'PROACTIVE'
    end

    # <p>An internal failure in an Amazon service occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p> The number of seconds after which the action that caused the internal server
    #   			exception can be retried. </p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>
    # 			Information about the KMS encryption used with DevOps Guru.
    # 		</p>
    # @!attribute kms_key_id
    #   <p>
    #   			Describes the specified KMS key.
    #   		</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, 
    #   			alias name, or alias ARN. When using an alias name,
    #   			prefix it with "alias/". If you specify a predefined Amazon Web Services alias
    #   			(an Amazon Web Services alias with no key ID), Amazon Web Services KMS associates the alias with an
    #   			Amazon Web Services managed key and returns its KeyId and Arn in the response. 
    #   			To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example: </p>
    #            <p>Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p>
    #            <p>Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p>
    #            <p>Alias name: alias/ExampleAlias</p>
    #            <p>Alias ARN: arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</p>
    #   @return [String]
    # @!attribute opt_in_status
    #   <p>
    #   			Specifies if DevOps Guru is enabled for customer managed keys.
    #   		</p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   			The type of KMS key used. Customer managed keys are the KMS keys that you create. Amazon Web Services owned keys are keys that are owned and managed by DevOps Guru.
    #   		</p>
    #   @return [String]
    class KMSServerSideEncryptionIntegration < Struct.new(
      :kms_key_id,
      :opt_in_status,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # 			Information about whether DevOps Guru is configured to encrypt server-side data using KMS. 
    # 		</p>
    # @!attribute kms_key_id
    #   <p>
    #   				Describes the specified KMS key.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, 
    #   				alias name, or alias ARN. When using an alias name,
    #   				prefix it with "alias/". If you specify a predefined Amazon Web Services alias
    #   				(an Amazon Web Services alias with no key ID), Amazon Web Services KMS associates the alias with an
    #   				Amazon Web Services managed key and returns its KeyId and Arn in the response. 
    #   				To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example: </p>
    #            <p>Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p>
    #            <p>Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p>
    #            <p>Alias name: alias/ExampleAlias</p>
    #            <p>Alias ARN: arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</p>
    #   @return [String]
    # @!attribute opt_in_status
    #   <p>
    #   			Specifies if DevOps Guru is enabled for KMS integration.
    #   		</p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   			The type of KMS key used. Customer managed keys are the KMS keys that you create. Amazon Web Services owned keys are keys that are owned and managed by DevOps Guru.
    #   		</p>
    #   @return [String]
    class KMSServerSideEncryptionIntegrationConfig < Struct.new(
      :kms_key_id,
      :opt_in_status,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # 			Specifies one or more service names that are used to list anomalies. 
    # 		</p>
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #   @return [Types::ServiceCollection]
    class ListAnomaliesForInsightFilters < Struct.new(
      :service_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p> The ID of the insight. The returned anomalies belong to this insight. </p>
    #   @return [String]
    # @!attribute start_time_range
    #   <p> A time range used to specify when the requested anomalies started. All returned
    #   			anomalies started during this time range. </p>
    #   @return [Types::StartTimeRange]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>
    #   			Specifies one or more service names that are used to list anomalies. 
    #   		</p>
    #   @return [Types::ListAnomaliesForInsightFilters]
    class ListAnomaliesForInsightRequest < Struct.new(
      :insight_id,
      :start_time_range,
      :max_results,
      :next_token,
      :account_id,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proactive_anomalies
    #   <p> An array of <code>ProactiveAnomalySummary</code> objects that represent the requested
    #   			anomalies </p>
    #   @return [Array<Types::ProactiveAnomalySummary>]
    # @!attribute reactive_anomalies
    #   <p> An array of <code>ReactiveAnomalySummary</code> objects that represent the requested
    #   			anomalies </p>
    #   @return [Array<Types::ReactiveAnomalySummary>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListAnomaliesForInsightResponse < Struct.new(
      :proactive_anomalies,
      :reactive_anomalies,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p>
    #   			The ID of the insight containing the log groups.
    #   		</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class ListAnomalousLogGroupsRequest < Struct.new(
      :insight_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p>
    #   			The ID of the insight containing the log groups.
    #   		</p>
    #   @return [String]
    # @!attribute anomalous_log_groups
    #   <p>
    #   			The list of Amazon CloudWatch log groups that are related to an insight.
    #   		</p>
    #   @return [Array<Types::AnomalousLogGroup>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListAnomalousLogGroupsResponse < Struct.new(
      :insight_id,
      :anomalous_log_groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Filters you can use to specify which events are returned when <code>ListEvents</code>
    # 			is called. </p>
    # @!attribute insight_id
    #   <p> An ID of an insight that is related to the events you want to filter for. </p>
    #   @return [String]
    # @!attribute event_time_range
    #   <p> A time range during which you want the filtered events to have occurred. </p>
    #   @return [Types::EventTimeRange]
    # @!attribute event_class
    #   <p> The class of the events you want to filter for, such as an infrastructure change, a
    #   			deployment, or a schema change. </p>
    #   @return [String]
    # @!attribute event_source
    #   <p> The Amazon Web Services source that emitted the events you want to filter for. </p>
    #   @return [String]
    # @!attribute data_source
    #   <p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, of the
    #   			events you want returned. </p>
    #   @return [String]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    class ListEventsFilters < Struct.new(
      :insight_id,
      :event_time_range,
      :event_class,
      :event_source,
      :data_source,
      :resource_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> A <code>ListEventsFilters</code> object used to specify which events to return.
    #   		</p>
    #   @return [Types::ListEventsFilters]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #   @return [String]
    class ListEventsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p> A list of the requested events. </p>
    #   @return [Array<Types::Event>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListEventsResponse < Struct.new(
      :events,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Used to filter for insights that have any status. </p>
    # @!attribute type
    #   <p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
    #   		</p>
    #   @return [String]
    # @!attribute start_time_range
    #   <p> A time range used to specify when the behavior of the filtered insights started.
    #   		</p>
    #   @return [Types::StartTimeRange]
    class ListInsightsAnyStatusFilter < Struct.new(
      :type,
      :start_time_range,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Used to filter for insights that have the status <code>CLOSED</code>. </p>
    # @!attribute type
    #   <p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
    #   		</p>
    #   @return [String]
    # @!attribute end_time_range
    #   <p> A time range used to specify when the behavior of the filtered insights ended.
    #   		</p>
    #   @return [Types::EndTimeRange]
    class ListInsightsClosedStatusFilter < Struct.new(
      :type,
      :end_time_range,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Used to filter for insights that have the status <code>ONGOING</code>. </p>
    # @!attribute type
    #   <p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
    #   		</p>
    #   @return [String]
    class ListInsightsOngoingStatusFilter < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status_filter
    #   <p> A filter used to filter the returned insights by their status. You can specify one
    #   			status filter. </p>
    #   @return [Types::ListInsightsStatusFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class ListInsightsRequest < Struct.new(
      :status_filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proactive_insights
    #   <p> The returned list of proactive insights. </p>
    #   @return [Array<Types::ProactiveInsightSummary>]
    # @!attribute reactive_insights
    #   <p> The returned list of reactive insights. </p>
    #   @return [Array<Types::ReactiveInsightSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListInsightsResponse < Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A filter used by <code>ListInsights</code> to specify which insights to return.
    # 		</p>
    # @!attribute ongoing
    #   <p> A <code>ListInsightsAnyStatusFilter</code> that specifies ongoing insights that are
    #   			either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>
    #   @return [Types::ListInsightsOngoingStatusFilter]
    # @!attribute closed
    #   <p> A <code>ListInsightsClosedStatusFilter</code> that specifies closed insights that are
    #   			either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>
    #   @return [Types::ListInsightsClosedStatusFilter]
    # @!attribute any
    #   <p> A <code>ListInsightsAnyStatusFilter</code> that specifies insights of any status that
    #   			are either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>
    #   @return [Types::ListInsightsAnyStatusFilter]
    class ListInsightsStatusFilter < Struct.new(
      :ongoing,
      :closed,
      :any,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # 			Filters to determine which monitored resources you want to retrieve. You can filter by resource type or resource permission status.
    # 		</p>
    # @!attribute resource_permission
    #   <p>
    #   			The permission status of a resource.
    #   		</p>
    #   @return [String]
    # @!attribute resource_type_filters
    #   <p>
    #   			The type of resource that you wish to retrieve, such as log groups. 
    #   		</p>
    #   @return [Array<String>]
    class ListMonitoredResourcesFilters < Struct.new(
      :resource_permission,
      :resource_type_filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>
    #   			Filters to determine which monitored resources you want to retrieve. You can filter by resource type or resource permission status.
    #   		</p>
    #   @return [Types::ListMonitoredResourcesFilters]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class ListMonitoredResourcesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitored_resource_identifiers
    #   <p>
    #   			Information about the resource that is being monitored, including the name of the resource, the type of resource, and whether or not permission is given to DevOps Guru to access that resource.
    #   		</p>
    #   @return [Array<Types::MonitoredResourceIdentifier>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListMonitoredResourcesResponse < Struct.new(
      :monitored_resource_identifiers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class ListNotificationChannelsRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p> An array that contains the requested notification channels. </p>
    #   @return [Array<Types::NotificationChannel>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListNotificationChannelsResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status_filter
    #   <p> A filter used by <code>ListInsights</code> to specify which insights to return.
    #   		</p>
    #   @return [Types::ListInsightsStatusFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    #   @return [Array<String>]
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class ListOrganizationInsightsRequest < Struct.new(
      :status_filter,
      :max_results,
      :account_ids,
      :organizational_unit_ids,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Array<Types::ProactiveOrganizationInsightSummary>]
    # @!attribute reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Array<Types::ReactiveOrganizationInsightSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListOrganizationInsightsResponse < Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p> The ID of the requested insight. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>A locale that specifies the language to use for recommendations.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #   @return [String]
    class ListRecommendationsRequest < Struct.new(
      :insight_id,
      :next_token,
      :locale,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendations
    #   <p> An array of the requested recommendations. </p>
    #   @return [Array<Types::Recommendation>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListRecommendationsResponse < Struct.new(
      :recommendations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Locale
      DE_DE = 'DE_DE'
      EN_US = 'EN_US'
      EN_GB = 'EN_GB'
      ES_ES = 'ES_ES'
      FR_FR = 'FR_FR'
      IT_IT = 'IT_IT'
      JA_JP = 'JA_JP'
      KO_KR = 'KO_KR'
      PT_BR = 'PT_BR'
      ZH_CN = 'ZH_CN'
      ZH_TW = 'ZH_TW'
    end

    # <p>
    # 			Information about an anomalous log event found within a log group.
    # 		</p>
    # @!attribute log_stream_name
    #   <p>
    #   			The name of the Amazon CloudWatch log stream that the anomalous log event belongs to. A log stream is a sequence of log events that share the same source.
    #   		</p>
    #   @return [String]
    # @!attribute log_anomaly_type
    #   <p>
    #   			The type of log anomaly that has been detected. 
    #   		</p>
    #   @return [String]
    # @!attribute log_anomaly_token
    #   <p>
    #   			The token where the anomaly was detected. This may refer to an exception or another location, or it may be blank for log anomalies such as format anomalies.
    #   		</p>
    #   @return [String]
    # @!attribute log_event_id
    #   <p>
    #   			The ID of the log event.
    #   		</p>
    #   @return [String]
    # @!attribute explanation
    #   <p>
    #   			The explanation for why the log event is considered an anomaly.
    #   		</p>
    #   @return [String]
    # @!attribute number_of_log_lines_occurrences
    #   <p>
    #   			The number of log lines where this anomalous log event occurs.
    #   		</p>
    #   @return [Integer]
    # @!attribute log_event_timestamp
    #   <p>
    #   			The time of the first occurrence of the anomalous log event.
    #   		</p>
    #   @return [Time]
    class LogAnomalyClass < Struct.new(
      :log_stream_name,
      :log_anomaly_type,
      :log_anomaly_token,
      :log_event_id,
      :explanation,
      :number_of_log_lines_occurrences,
      :log_event_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_log_lines_occurrences] = 0 unless options.key?(:number_of_log_lines_occurrences)
        super
      end
    end

    # <p>
    # 			A cluster of similar anomalous log events found within a log group.
    # 		</p>
    # @!attribute log_anomaly_classes
    #   <p>
    #   			A list of anomalous log events that may be related.
    #   		</p>
    #   @return [Array<Types::LogAnomalyClass>]
    class LogAnomalyShowcase < Struct.new(
      :log_anomaly_classes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LogAnomalyType
      KEYWORD = 'KEYWORD'
      KEYWORD_TOKEN = 'KEYWORD_TOKEN'
      FORMAT = 'FORMAT'
      HTTP_CODE = 'HTTP_CODE'
      BLOCK_FORMAT = 'BLOCK_FORMAT'
      NUMERICAL_POINT = 'NUMERICAL_POINT'
      NUMERICAL_NAN = 'NUMERICAL_NAN'
      NEW_FIELD_NAME = 'NEW_FIELD_NAME'
    end

    # <p>
    # 			Information about the integration of DevOps Guru with CloudWatch log groups for log anomaly detection.
    # 		</p>
    # @!attribute opt_in_status
    #   <p>Specifies if DevOps Guru is configured to perform log anomaly detection on CloudWatch log groups.</p>
    #   @return [String]
    class LogsAnomalyDetectionIntegration < Struct.new(
      :opt_in_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # 			Information about the integration of DevOps Guru with CloudWatch log groups for log anomaly detection. You can use this to update the configuration.
    # 		</p>
    # @!attribute opt_in_status
    #   <p>Specifies if DevOps Guru is configured to perform log anomaly detection on CloudWatch log groups.</p>
    #   @return [String]
    class LogsAnomalyDetectionIntegrationConfig < Struct.new(
      :opt_in_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # 			Information about the resource that is being monitored, including the name of the resource, the type of resource, and whether or not permission is given to DevOps Guru to access that resource.
    # 		</p>
    # @!attribute monitored_resource_name
    #   <p>
    #   			The name of the resource being monitored.
    #   		</p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   			The type of resource being monitored.
    #   		</p>
    #   @return [String]
    # @!attribute resource_permission
    #   <p>
    #   			The permission status of a resource.
    #   		</p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>
    #   			The time at which DevOps Guru last updated this resource.
    #   		</p>
    #   @return [Time]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    class MonitoredResourceIdentifier < Struct.new(
      :monitored_resource_name,
      :type,
      :resource_permission,
      :last_updated,
      :resource_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a notification channel. A notification channel is used to notify
    # 			you when DevOps Guru creates an insight. The one 
    #       	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    #          <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
    # 				to send it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics. 
    # 				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions 
    # 				for Amazon SNS topics</a>.</p>
    #          <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions 
    # 				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for 
    # 				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    # @!attribute id
    #   <p> The ID of a notification channel. </p>
    #   @return [String]
    # @!attribute config
    #   <p> A <code>NotificationChannelConfig</code> object that contains information about
    #   			configured notification channels. </p>
    #   @return [Types::NotificationChannelConfig]
    class NotificationChannel < Struct.new(
      :id,
      :config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about notification channels you have configured with DevOps Guru.
    # 			The one 
    #       	supported notification channel is Amazon Simple Notification Service (Amazon SNS).</p>
    # @!attribute sns
    #   <p> Information about a notification channel configured in DevOps Guru to send notifications
    #   			when insights are created. </p>
    #            <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
    #   				to send it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics. 
    #   				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions 
    #   				for Amazon SNS topics</a>.</p>
    #            <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions 
    #   				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for 
    #   				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    #   @return [Types::SnsChannelConfig]
    # @!attribute filters
    #   <p>
    #   			The filter configurations for the Amazon SNS notification topic you use with DevOps Guru. 
    #   			If you do not provide filter configurations, the default configurations are to receive notifications for all message types of <code>High</code> or <code>Medium</code> severity.
    #   		</p>
    #   @return [Types::NotificationFilterConfig]
    class NotificationChannelConfig < Struct.new(
      :sns,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # 			The filter configurations for the Amazon SNS notification topic you use with DevOps Guru. You can choose to specify which events or message types to receive notifications for.
    # 			You can also choose to specify which severity levels to receive notifications for. 
    # 		</p>
    # @!attribute severities
    #   <p>
    #   			The severity levels that you want to receive notifications for. For example, you can choose to receive notifications only for insights with <code>HIGH</code> and <code>MEDIUM</code> severity levels. 
    #   			For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding insight severities</a>.
    #   		</p>
    #   @return [Array<String>]
    # @!attribute message_types
    #   <p>
    #   			The events that you want to receive notifications for. For example, you can choose to receive notifications only when the severity level is upgraded or a new insight is created.
    #   		</p>
    #   @return [Array<String>]
    class NotificationFilterConfig < Struct.new(
      :severities,
      :message_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NotificationMessageType
      NEW_INSIGHT = 'NEW_INSIGHT'
      CLOSED_INSIGHT = 'CLOSED_INSIGHT'
      NEW_ASSOCIATION = 'NEW_ASSOCIATION'
      SEVERITY_UPGRADED = 'SEVERITY_UPGRADED'
      NEW_RECOMMENDATION = 'NEW_RECOMMENDATION'
    end

    # <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    # 			OpsCenter for each created insight. </p>
    # @!attribute opt_in_status
    #   <p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
    #   			insight. </p>
    #   @return [String]
    class OpsCenterIntegration < Struct.new(
      :opt_in_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    # 			OpsCenter for each created insight. You can use this to update the configuration.</p>
    # @!attribute opt_in_status
    #   <p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
    #   			insight. </p>
    #   @return [String]
    class OpsCenterIntegrationConfig < Struct.new(
      :opt_in_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
    # 			insight. </p>
    module OptInStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module OrganizationResourceCollectionType
      AWS_CLOUD_FORMATION = 'AWS_CLOUD_FORMATION'
      AWS_SERVICE = 'AWS_SERVICE'
      AWS_ACCOUNT = 'AWS_ACCOUNT'
      AWS_TAGS = 'AWS_TAGS'
    end

    # <p>A logical grouping of Performance Insights metrics for a related subject area. For example, the
    # 				<code>db.sql</code> dimension group consists of the following dimensions:
    # 				<code>db.sql.id</code>, <code>db.sql.db_id</code>, <code>db.sql.statement</code>,
    # 			and <code>db.sql.tokenized_id</code>.</p>
    #          <note>
    #             <p>Each response element returns a maximum of 500 bytes. For larger elements, such as
    # 				SQL statements, only the first 500 bytes are returned.</p>
    #          </note>
    #          <p>Amazon RDS Performance Insights enables you to monitor and explore different 
    #    		dimensions of database load based on data captured from a running DB instance. 
    #    		DB load is measured as average active sessions. Performance Insights provides the 
    #    		data to API consumers as a two-dimensional time-series dataset. The time dimension 
    #    		provides DB load data for each time point in the queried time range. Each time point 
    #    		decomposes overall load in relation to the requested dimensions, measured at that 
    #    		time point. Examples include SQL, Wait event, User, and Host. </p>
    #          <ul>
    #             <li>
    #                <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>.
    #    			</p>
    #             </li>
    #             <li>
    #                <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>.
    #    			</p>
    #             </li>
    #          </ul>
    # @!attribute group
    #   <p>The name of the dimension group. Its valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db</code> - The name of the database to which the client is connected
    #   					(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.application</code> - The name of the application that is connected to
    #   					the database (only Aurora PostgreSQL and RDS PostgreSQL)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.host</code> - The host name of the connected client (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.session_type</code> - The type of the current session (only Aurora PostgreSQL
    #   					and RDS PostgreSQL)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql</code> - The SQL that is currently executing (all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql_tokenized</code> - The SQL digest (all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.wait_event</code> - The event for which the database backend is waiting
    #   					(all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.wait_event_type</code> - The type of event for which the database
    #   					backend is waiting (all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.user</code> - The user logged in to the database (all engines)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute dimensions
    #   <p>A list of specific dimensions from a dimension group. If this parameter is not
    #   			present, then it signifies that all of the dimensions in the group were requested or are
    #   			present in the response.</p>
    #            <p>Valid values for elements in the <code>Dimensions</code> array are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db.application.name</code> - The name of the application that is connected
    #   					to the database (only Aurora PostgreSQL and RDS PostgreSQL)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.host.id</code> - The host ID of the connected client (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.host.name</code> - The host name of the connected client (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.name</code> - The name of the database to which the client is connected
    #   					(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.session_type.name</code> - The type of the current session (only Aurora
    #   					PostgreSQL and RDS PostgreSQL)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql.id</code> - The SQL ID generated by Performance Insights (all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql.db_id</code> - The SQL ID generated by the database (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql.statement</code> - The SQL text that is being executed (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql.tokenized_id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql_tokenized.id</code> - The SQL digest ID generated by Performance Insights (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql_tokenized.db_id</code> - SQL digest ID generated by the database
    #   					(all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql_tokenized.statement</code> - The SQL digest text (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.user.id</code> - The ID of the user logged in to the database (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.user.name</code> - The name of the user logged in to the database (all
    #   					engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.wait_event.name</code> - The event for which the backend is waiting
    #   					(all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.wait_event.type</code> - The type of event for which the backend is
    #   					waiting (all engines)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.wait_event_type.name</code> - The name of the event type for which the
    #   					backend is waiting (all engines)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of items to fetch for this dimension group.</p>
    #   @return [Integer]
    class PerformanceInsightsMetricDimensionGroup < Struct.new(
      :group,
      :dimensions,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A single query to be processed. Use these parameters to query the Performance Insights
    # 				<code>GetResourceMetrics</code> API to retrieve the metrics for an anomaly. For more
    # 			information, see <code>
    #                <a href="https://docs.aws.amazon.com/performance-insights/latest/APIReference/API_GetResourceMetrics.html">GetResourceMetrics</a>
    #             </code> in the <i>Amazon RDS Performance Insights API
    # 				Reference</i>.</p>
    #          <p>Amazon RDS Performance Insights enables you to monitor and explore different 
    #    		dimensions of database load based on data captured from a running DB instance. 
    #    		DB load is measured as average active sessions. Performance Insights provides the 
    #    		data to API consumers as a two-dimensional time-series dataset. The time dimension 
    #    		provides DB load data for each time point in the queried time range. Each time point 
    #    		decomposes overall load in relation to the requested dimensions, measured at that 
    #    		time point. Examples include SQL, Wait event, User, and Host. </p>
    #          <ul>
    #             <li>
    #                <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>.
    #    			</p>
    #             </li>
    #             <li>
    #                <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>.
    #    			</p>
    #             </li>
    #          </ul>
    # @!attribute metric
    #   <p>The name of the meteric used used when querying an Performance Insights
    #   				<code>GetResourceMetrics</code> API for anomaly metrics.</p>
    #            <p>Valid values for <code>Metric</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db.load.avg</code> - a scaled representation of the number of active sessions for the
    #   					database engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sampledload.avg</code> - the raw number of active sessions for the database
    #   					engine.</p>
    #               </li>
    #            </ul>
    #            <p>If the number of active sessions is less than an internal Performance Insights threshold,
    #   				<code>db.load.avg</code> and <code>db.sampledload.avg</code> are the same value. If
    #   			the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with
    #   				<code>db.load.avg</code> showing the scaled values, <code>db.sampledload.avg</code>
    #   			showing the raw values, and <code>db.sampledload.avg</code> less than
    #   				<code>db.load.avg</code>. For most use cases, you can query <code>db.load.avg</code>
    #   			only. </p>
    #   @return [String]
    # @!attribute group_by
    #   <p>The specification for how to aggregate the data points from a Performance Insights
    #   				<code>GetResourceMetrics</code> API query. The Performance Insights query returns all of the
    #   			dimensions within that group, unless you provide the names of specific dimensions within
    #   			that group. You can also request that Performance Insights return a limited number of values for a
    #   			dimension.</p>
    #   @return [Types::PerformanceInsightsMetricDimensionGroup]
    # @!attribute filter
    #   <p>One or more filters to apply to a Performance Insights <code>GetResourceMetrics</code> API query.
    #   			Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Any number of filters by the same dimension, as specified in the
    #   						<code>GroupBy</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>A single filter for any other dimension in this dimension group.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class PerformanceInsightsMetricQuery < Struct.new(
      :metric,
      :group_by,
      :filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about Performance Insights metrics.</p>
    #          <p>Amazon RDS Performance Insights enables you to monitor and explore different 
    #    		dimensions of database load based on data captured from a running DB instance. 
    #    		DB load is measured as average active sessions. Performance Insights provides the 
    #    		data to API consumers as a two-dimensional time-series dataset. The time dimension 
    #    		provides DB load data for each time point in the queried time range. Each time point 
    #    		decomposes overall load in relation to the requested dimensions, measured at that 
    #    		time point. Examples include SQL, Wait event, User, and Host. </p>
    #          <ul>
    #             <li>
    #                <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>.
    #    			</p>
    #             </li>
    #             <li>
    #                <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>.
    #    			</p>
    #             </li>
    #          </ul>
    # @!attribute metric_display_name
    #   <p>The name used for a specific Performance Insights metric.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of measure for a metric. For example, a session or a process.</p>
    #   @return [String]
    # @!attribute metric_query
    #   <p>A single query to be processed for the metric. For more information, see <code>
    #                  <a href="https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsMetricQuery.html">PerformanceInsightsMetricQuery</a>
    #               </code>.</p>
    #   @return [Types::PerformanceInsightsMetricQuery]
    # @!attribute reference_data
    #   <p> For more information, see <code>
    #                  <a href="https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceData.html">PerformanceInsightsReferenceData</a>
    #               </code>. </p>
    #   @return [Array<Types::PerformanceInsightsReferenceData>]
    # @!attribute stats_at_anomaly
    #   <p>The metric statistics during the anomalous period detected by DevOps Guru;</p>
    #   @return [Array<Types::PerformanceInsightsStat>]
    # @!attribute stats_at_baseline
    #   <p>Typical metric statistics that are not considered anomalous. When DevOps Guru analyzes
    #   			metrics, it compares them to <code>StatsAtBaseline</code> to help determine if they are
    #   			anomalous.</p>
    #   @return [Array<Types::PerformanceInsightsStat>]
    class PerformanceInsightsMetricsDetail < Struct.new(
      :metric_display_name,
      :unit,
      :metric_query,
      :reference_data,
      :stats_at_anomaly,
      :stats_at_baseline,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Reference scalar values and other metrics that DevOps Guru displays on a graph in its
    # 			console along with the actual metrics it analyzed. Compare these reference values to
    # 			your actual metrics to help you understand anomalous behavior that DevOps Guru
    # 			detected.</p>
    # @!attribute reference_scalar
    #   <p>A scalar value DevOps Guru for a metric that DevOps Guru compares to actual metric values. This
    #   			reference value is used to determine if an actual metric value should be considered
    #   			anomalous.</p>
    #   @return [Types::PerformanceInsightsReferenceScalar]
    # @!attribute reference_metric
    #   <p>A metric that DevOps Guru compares to actual metric values. This reference metric is used to
    #   			determine if an actual metric should be considered anomalous.</p>
    #   @return [Types::PerformanceInsightsReferenceMetric]
    class PerformanceInsightsReferenceComparisonValues < Struct.new(
      :reference_scalar,
      :reference_metric,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Reference data used to evaluate Performance Insights to determine if its performance is anomalous or
    # 			not.</p>
    # @!attribute name
    #   <p>The name of the reference data.</p>
    #   @return [String]
    # @!attribute comparison_values
    #   <p>The specific reference values used to evaluate the Performance Insights. For more information, see
    #   					<code>
    #                  <a href="https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceComparisonValues.html">PerformanceInsightsReferenceComparisonValues</a>
    #               </code>. </p>
    #   @return [Types::PerformanceInsightsReferenceComparisonValues]
    class PerformanceInsightsReferenceData < Struct.new(
      :name,
      :comparison_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a reference metric used to evaluate Performance Insights.</p>
    # @!attribute metric_query
    #   <p>A query to be processed on the metric.</p>
    #   @return [Types::PerformanceInsightsMetricQuery]
    class PerformanceInsightsReferenceMetric < Struct.new(
      :metric_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A reference value to compare Performance Insights metrics against to determine if the metrics
    # 			demonstrate anomalous behavior.</p>
    # @!attribute value
    #   <p>The reference value.</p>
    #   @return [Float]
    class PerformanceInsightsReferenceScalar < Struct.new(
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A statistic in a Performance Insights collection.</p>
    # @!attribute type
    #   <p>The statistic type.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the statistic.</p>
    #   @return [Float]
    class PerformanceInsightsStat < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    # 			is expected to occur. </p>
    # @!attribute start_time
    #   <p> The time range during which a metric limit is expected to be exceeded. This applies
    #   			to proactive insights only. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The time when the behavior in a proactive insight is expected to end. </p>
    #   @return [Time]
    class PredictionTimeRange < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an anomaly. This object is returned by
    # 			<code>ListAnomalies</code>.</p>
    # @!attribute id
    #   <p> The ID of a proactive anomaly. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate 
    #   	an insight determine that insight's severity. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of a proactive anomaly. </p>
    #   @return [String]
    # @!attribute update_time
    #   <p> The time of the anomaly's most recent update. </p>
    #   @return [Time]
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #   @return [Types::AnomalyTimeRange]
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #   @return [Types::AnomalyReportedTimeRange]
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #   @return [Types::PredictionTimeRange]
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #   @return [Types::AnomalySourceDetails]
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #   @return [String]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute limit
    #   <p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this
    #   			threshold is related to the anomalous behavior that generated this anomaly. </p>
    #   @return [Float]
    # @!attribute source_metadata
    #   <p>The metadata for the anomaly.</p>
    #   @return [Types::AnomalySourceMetadata]
    # @!attribute anomaly_resources
    #   <p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>
    #   @return [Array<Types::AnomalyResource>]
    # @!attribute description
    #   <p>
    #   			A description of the proactive anomaly.
    #   		</p>
    #   @return [String]
    class ProactiveAnomaly < Struct.new(
      :id,
      :severity,
      :status,
      :update_time,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :prediction_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :limit,
      :source_metadata,
      :anomaly_resources,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a proactive anomaly. This object is returned by
    # 				<code>DescribeAnomaly.</code>
    #          </p>
    # @!attribute id
    #   <p>The ID of the anomaly.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate 
    #   	an insight determine that insight's severity. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the anomaly.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p> The time of the anomaly's most recent update. </p>
    #   @return [Time]
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #   @return [Types::AnomalyTimeRange]
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #   @return [Types::AnomalyReportedTimeRange]
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #   @return [Types::PredictionTimeRange]
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #   @return [Types::AnomalySourceDetails]
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #   @return [String]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute limit
    #   <p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this
    #   			threshold is related to the anomalous behavior that generated this anomaly. </p>
    #   @return [Float]
    # @!attribute source_metadata
    #   <p>The metadata of the source which detects proactive anomalies.</p>
    #   @return [Types::AnomalySourceMetadata]
    # @!attribute anomaly_resources
    #   <p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>
    #   @return [Array<Types::AnomalyResource>]
    # @!attribute description
    #   <p>
    #   			A description of the proactive anomaly.
    #   		</p>
    #   @return [String]
    class ProactiveAnomalySummary < Struct.new(
      :id,
      :severity,
      :status,
      :update_time,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :prediction_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :limit,
      :source_metadata,
      :anomaly_resources,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a proactive insight. This object is returned by
    # 				<code>ListInsights</code>.</p>
    # @!attribute id
    #   <p>The ID of the proactive insight. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the proactive insight. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the proactive insight. </p>
    #   @return [String]
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #   @return [Types::InsightTimeRange]
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #   @return [Types::PredictionTimeRange]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute ssm_ops_item_id
    #   <p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable
    #   			the creation of OpstItems insights before they are created for each insight. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the proactive insight.</p>
    #   @return [String]
    class ProactiveInsight < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :ssm_ops_item_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a proactive insight. This object is returned by
    # 				<code>DescribeInsight.</code>
    #          </p>
    # @!attribute id
    #   <p>The ID of the proactive insight. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the proactive insight. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the proactive insight. </p>
    #   @return [String]
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #   @return [Types::InsightTimeRange]
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #   @return [Types::PredictionTimeRange]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #   @return [Types::ServiceCollection]
    # @!attribute associated_resource_arns
    #   <p>The Amazon Resource Names (ARNs) 
    #   	of the Amazon Web Services resources that generated this insight.</p>
    #   @return [Array<String>]
    class ProactiveInsightSummary < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :service_collection,
      :associated_resource_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a proactive insight. This object is returned by
    # 				<code>DescribeInsight</code>.</p>
    # @!attribute id
    #   <p>The ID of the insight summary.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The ID of the organizational unit.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the insight summary.</p>
    #   @return [String]
    # @!attribute severity
    #   <p> An array of severity values used to search for insights.
    #   			For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p> An array of status values used to search for insights. </p>
    #   @return [String]
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #   @return [Types::InsightTimeRange]
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #   @return [Types::PredictionTimeRange]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #   @return [Types::ServiceCollection]
    class ProactiveOrganizationInsightSummary < Struct.new(
      :id,
      :account_id,
      :organizational_unit_id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :service_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute insight_feedback
    #   <p> The feedback from customers is about the recommendations in this insight. </p>
    #   @return [Types::InsightFeedback]
    class PutFeedbackRequest < Struct.new(
      :insight_feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutFeedbackResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a reactive anomaly. This object is returned by
    # 				<code>ListAnomalies</code>.</p>
    # @!attribute id
    #   <p>The ID of the reactive anomaly. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate 
    #   	an insight determine that insight's severity. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the anomaly. </p>
    #   @return [String]
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #   @return [Types::AnomalyTimeRange]
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #   @return [Types::AnomalyReportedTimeRange]
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #   @return [Types::AnomalySourceDetails]
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #   @return [String]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute type
    #   <p>The type of the reactive anomaly. It can be one of the following types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAUSAL</code> - the anomaly can cause a new insight.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the reactive anomaly.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the reactive anomaly.</p>
    #   @return [String]
    # @!attribute causal_anomaly_id
    #   <p>The ID of the causal anomaly that is associated with this 
    #         reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>
    #   @return [String]
    # @!attribute anomaly_resources
    #   <p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>
    #   @return [Array<Types::AnomalyResource>]
    class ReactiveAnomaly < Struct.new(
      :id,
      :severity,
      :status,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :type,
      :name,
      :description,
      :causal_anomaly_id,
      :anomaly_resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a reactive anomaly. This object is returned by
    # 				<code>DescribeAnomaly.</code>
    #          </p>
    # @!attribute id
    #   <p> The ID of the reactive anomaly. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate 
    #   	an insight determine that insight's severity. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the reactive anomaly. </p>
    #   @return [String]
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #   @return [Types::AnomalyTimeRange]
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #   @return [Types::AnomalyReportedTimeRange]
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #   @return [Types::AnomalySourceDetails]
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #   @return [String]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute type
    #   <p>The type of the reactive anomaly. It can be one of the following types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAUSAL</code> - the anomaly can cause a new insight.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the reactive anomaly.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the reactive anomaly.</p>
    #   @return [String]
    # @!attribute causal_anomaly_id
    #   <p>The ID of the causal anomaly that is associated with this 
    #         reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>
    #   @return [String]
    # @!attribute anomaly_resources
    #   <p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>
    #   @return [Array<Types::AnomalyResource>]
    class ReactiveAnomalySummary < Struct.new(
      :id,
      :severity,
      :status,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :type,
      :name,
      :description,
      :causal_anomaly_id,
      :anomaly_resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a reactive insight. This object is returned by
    # 				<code>ListInsights</code>. </p>
    # @!attribute id
    #   <p> The ID of a reactive insight. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of a reactive insight. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of a reactive insight. </p>
    #   @return [String]
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #   @return [Types::InsightTimeRange]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute ssm_ops_item_id
    #   <p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable
    #   			the creation of OpstItems insights before they are created for each insight. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the reactive insight.</p>
    #   @return [String]
    class ReactiveInsight < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :ssm_ops_item_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a reactive insight. This object is returned by
    # 				<code>DescribeInsight.</code>
    #          </p>
    # @!attribute id
    #   <p> The ID of a reactive summary. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of a reactive insight. </p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of a reactive insight. </p>
    #   @return [String]
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #   @return [Types::InsightTimeRange]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #   @return [Types::ServiceCollection]
    # @!attribute associated_resource_arns
    #   <p>The Amazon Resource Names (ARNs) 
    #   	of the Amazon Web Services resources that generated this insight.</p>
    #   @return [Array<String>]
    class ReactiveInsightSummary < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :service_collection,
      :associated_resource_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a reactive insight. This object is returned by
    # 				<code>DescribeInsight</code>.</p>
    # @!attribute id
    #   <p>The ID of the insight summary.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The ID of the organizational unit.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the insight summary.</p>
    #   @return [String]
    # @!attribute severity
    #   <p> An array of severity values used to search for insights.
    #   			For more information, see 
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities">Understanding 
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p> An array of status values used to search for insights. </p>
    #   @return [String]
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #   @return [Types::InsightTimeRange]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #   @return [Types::ServiceCollection]
    class ReactiveOrganizationInsightSummary < Struct.new(
      :id,
      :account_id,
      :organizational_unit_id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :service_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Recommendation information to help you remediate detected anomalous behavior that
    # 			generated an insight. </p>
    # @!attribute description
    #   <p> A description of the problem. </p>
    #   @return [String]
    # @!attribute link
    #   <p> A hyperlink to information to help you address the problem. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the recommendation. </p>
    #   @return [String]
    # @!attribute reason
    #   <p> The reason DevOps Guru flagged the anomalous behavior as a problem. </p>
    #   @return [String]
    # @!attribute related_events
    #   <p> Events that are related to the problem. Use these events to learn more about what's
    #   			happening and to help address the issue. </p>
    #   @return [Array<Types::RecommendationRelatedEvent>]
    # @!attribute related_anomalies
    #   <p> Anomalies that are related to the problem. Use these Anomalies to learn more about
    #   			what's happening and to help address the issue. </p>
    #   @return [Array<Types::RecommendationRelatedAnomaly>]
    # @!attribute category
    #   <p>The category type of the recommendation.</p>
    #   @return [String]
    class Recommendation < Struct.new(
      :description,
      :link,
      :name,
      :reason,
      :related_events,
      :related_anomalies,
      :category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about an anomaly that is related to a recommendation. </p>
    # @!attribute resources
    #   <p> An array of objects that represent resources in which DevOps Guru detected anomalous
    #   			behavior. Each object contains the name and type of the resource. </p>
    #   @return [Array<Types::RecommendationRelatedAnomalyResource>]
    # @!attribute source_details
    #   <p> Information about where the anomalous behavior related the recommendation was found.
    #   			For example, details in Amazon CloudWatch metrics. </p>
    #   @return [Array<Types::RecommendationRelatedAnomalySourceDetail>]
    # @!attribute anomaly_id
    #   <p>The ID of an anomaly that generated the insight with this recommendation.</p>
    #   @return [String]
    class RecommendationRelatedAnomaly < Struct.new(
      :resources,
      :source_details,
      :anomaly_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a resource in which DevOps Guru detected anomalous behavior. </p>
    # @!attribute name
    #   <p> The name of the resource. </p>
    #   @return [String]
    # @!attribute type
    #   <p> The type of the resource. Resource types take the same form that is used by Amazon Web Services CloudFormation
    #   			resource type identifiers, <code>service-provider::service-name::data-type-name</code>.
    #   			For example, <code>AWS::RDS::DBCluster</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services
    #   				resource and property types reference</a> in the <i>Amazon Web Services CloudFormation User
    #   				Guide</i>.</p>
    #   @return [String]
    class RecommendationRelatedAnomalyResource < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains an array of <code>RecommendationRelatedCloudWatchMetricsSourceDetail</code>
    # 			objects that contain the name and namespace of an Amazon CloudWatch metric. </p>
    # @!attribute cloud_watch_metrics
    #   <p> An array of <code>CloudWatchMetricsDetail</code> objects that contains information
    #   			about the analyzed metrics that displayed anomalous behavior. </p>
    #   @return [Array<Types::RecommendationRelatedCloudWatchMetricsSourceDetail>]
    class RecommendationRelatedAnomalySourceDetail < Struct.new(
      :cloud_watch_metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about an Amazon CloudWatch metric that is analyzed by DevOps Guru. It is one of many
    # 			analyzed metrics that are used to generate insights. </p>
    # @!attribute metric_name
    #   <p>The name of the CloudWatch metric.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.</p>
    #   @return [String]
    class RecommendationRelatedCloudWatchMetricsSourceDetail < Struct.new(
      :metric_name,
      :namespace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about an event that is related to a recommendation. </p>
    # @!attribute name
    #   <p> The name of the event. This corresponds to the <code>Name</code> field in an
    #   				<code>Event</code> object. </p>
    #   @return [String]
    # @!attribute resources
    #   <p> A <code>ResourceCollection</code> object that contains arrays of the names of Amazon Web Services
    #   			CloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Array<Types::RecommendationRelatedEventResource>]
    class RecommendationRelatedEvent < Struct.new(
      :name,
      :resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about an Amazon Web Services resource that emitted and event that is related to a
    # 			recommendation in an insight. </p>
    # @!attribute name
    #   <p> The name of the resource that emitted the event. This corresponds to the
    #   				<code>Name</code> field in an <code>EventResource</code> object. </p>
    #   @return [String]
    # @!attribute type
    #   <p> The type of the resource that emitted the event. This corresponds to the
    #   				<code>Type</code> field in an <code>EventResource</code> object. </p>
    #   @return [String]
    class RecommendationRelatedEventResource < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the notification channel to be removed. </p>
    #   @return [String]
    class RemoveNotificationChannelRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RemoveNotificationChannelResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    # 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    # @!attribute cloud_formation
    #   <p> An array of the names of Amazon Web Services CloudFormation stacks. The stacks define Amazon Web Services resources that
    #   			DevOps Guru analyzes. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::CloudFormationCollection]
    # @!attribute tags
    #   <p>The Amazon Web Services tags that are used by resources in the resource collection.</p>
    #            <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #      			best practices</a> whitepaper. </p>
    #            <p>Each Amazon Web Services tag has two parts. </p>
    #            <ul>
    #               <li>
    #                  <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [Array<Types::TagCollection>]
    class ResourceCollection < Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a filter used to specify which Amazon Web Services resources are analyzed for
    # 			anomalous behavior by DevOps Guru. </p>
    # @!attribute cloud_formation
    #   <p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
    #   			stacks to specify which Amazon Web Services resources in your account to analyze. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    #   				<i>Amazon Web Services CloudFormation User Guide</i>. </p>
    #   @return [Types::CloudFormationCollectionFilter]
    # @!attribute tags
    #   <p>The Amazon Web Services tags used to filter the resources in the resource collection.</p>
    #            <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #      			best practices</a> whitepaper. </p>
    #            <p>Each Amazon Web Services tag has two parts. </p>
    #            <ul>
    #               <li>
    #                  <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [Array<Types::TagCollectionFilter>]
    class ResourceCollectionFilter < Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceCollectionType
      AWS_CLOUD_FORMATION = 'AWS_CLOUD_FORMATION'
      AWS_SERVICE = 'AWS_SERVICE'
      AWS_TAGS = 'AWS_TAGS'
    end

    # <p>A requested resource could not be found</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The ID of the Amazon Web Services resource that could not be found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the Amazon Web Services resource that could not be found. </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourcePermission
      FULL_PERMISSION = 'FULL_PERMISSION'
      MISSING_PERMISSION = 'MISSING_PERMISSION'
    end

    module ResourceTypeFilter
      LOG_GROUPS = 'LOG_GROUPS'
      CLOUDFRONT_DISTRIBUTION = 'CLOUDFRONT_DISTRIBUTION'
      DYNAMODB_TABLE = 'DYNAMODB_TABLE'
      EC2_NAT_GATEWAY = 'EC2_NAT_GATEWAY'
      ECS_CLUSTER = 'ECS_CLUSTER'
      ECS_SERVICE = 'ECS_SERVICE'
      EKS_CLUSTER = 'EKS_CLUSTER'
      ELASTIC_BEANSTALK_ENVIRONMENT = 'ELASTIC_BEANSTALK_ENVIRONMENT'
      ELASTIC_LOAD_BALANCER_LOAD_BALANCER = 'ELASTIC_LOAD_BALANCER_LOAD_BALANCER'
      ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER = 'ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER'
      ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP = 'ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP'
      ELASTICACHE_CACHE_CLUSTER = 'ELASTICACHE_CACHE_CLUSTER'
      ELASTICSEARCH_DOMAIN = 'ELASTICSEARCH_DOMAIN'
      KINESIS_STREAM = 'KINESIS_STREAM'
      LAMBDA_FUNCTION = 'LAMBDA_FUNCTION'
      OPEN_SEARCH_SERVICE_DOMAIN = 'OPEN_SEARCH_SERVICE_DOMAIN'
      RDS_DB_INSTANCE = 'RDS_DB_INSTANCE'
      RDS_DB_CLUSTER = 'RDS_DB_CLUSTER'
      REDSHIFT_CLUSTER = 'REDSHIFT_CLUSTER'
      ROUTE53_HOSTED_ZONE = 'ROUTE53_HOSTED_ZONE'
      ROUTE53_HEALTH_CHECK = 'ROUTE53_HEALTH_CHECK'
      S3_BUCKET = 'S3_BUCKET'
      SAGEMAKER_ENDPOINT = 'SAGEMAKER_ENDPOINT'
      SNS_TOPIC = 'SNS_TOPIC'
      SQS_QUEUE = 'SQS_QUEUE'
      STEP_FUNCTIONS_ACTIVITY = 'STEP_FUNCTIONS_ACTIVITY'
      STEP_FUNCTIONS_STATE_MACHINE = 'STEP_FUNCTIONS_STATE_MACHINE'
    end

    # <p>Specifies values used to filter responses when searching for insights. 
    # 			You can use a <code>ResourceCollection</code>, <code>ServiceCollection</code>, array of severities, and an array of status values. 
    # 			Each filter type contains one or more values to search for. If you specify multiple filter types, 
    # 			the filter types are joined with an <code>AND</code>, and the request returns only results that match all of the specified filters.</p>
    # @!attribute severities
    #   <p> An array of severity values used to search for insights. </p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p> An array of status values used to search for insights. </p>
    #   @return [Array<String>]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #   @return [Types::ServiceCollection]
    class SearchInsightsFilters < Struct.new(
      :severities,
      :statuses,
      :resource_collection,
      :service_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute start_time_range
    #   <p> The start of the time range passed in. Returned insights occurred after this time.
    #   		</p>
    #   @return [Types::StartTimeRange]
    # @!attribute filters
    #   <p> A <code>SearchInsightsFilters</code> object that is used to set the severity and
    #   			status filters on your insight search. </p>
    #   @return [Types::SearchInsightsFilters]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    #   @return [String]
    class SearchInsightsRequest < Struct.new(
      :start_time_range,
      :filters,
      :max_results,
      :next_token,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proactive_insights
    #   <p> The returned proactive insights. </p>
    #   @return [Array<Types::ProactiveInsightSummary>]
    # @!attribute reactive_insights
    #   <p> The returned reactive insights. </p>
    #   @return [Array<Types::ReactiveInsightSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class SearchInsightsResponse < Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Filters you can use to specify which events are returned when <code>ListEvents</code>
    # 			is called. </p>
    # @!attribute severities
    #   <p> An array of severity values used to search for insights. </p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p> An array of status values used to search for insights. </p>
    #   @return [Array<String>]
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::ResourceCollection]
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #   @return [Types::ServiceCollection]
    class SearchOrganizationInsightsFilters < Struct.new(
      :severities,
      :statuses,
      :resource_collection,
      :service_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    #   @return [Array<String>]
    # @!attribute start_time_range
    #   <p> A time range used to specify when the behavior of an insight or anomaly started.
    #   		</p>
    #   @return [Types::StartTimeRange]
    # @!attribute filters
    #   <p> A <code>SearchOrganizationInsightsFilters</code> object that is used to set the
    #   			severity and status filters on your insight search. </p>
    #   @return [Types::SearchOrganizationInsightsFilters]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    #   @return [String]
    class SearchOrganizationInsightsRequest < Struct.new(
      :account_ids,
      :start_time_range,
      :filters,
      :max_results,
      :next_token,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Array<Types::ProactiveInsightSummary>]
    # @!attribute reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #   @return [Array<Types::ReactiveInsightSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class SearchOrganizationInsightsResponse < Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ServerSideEncryptionType
      CUSTOMER_MANAGED_KEY = 'CUSTOMER_MANAGED_KEY'
      AWS_OWNED_KMS_KEY = 'AWS_OWNED_KMS_KEY'
    end

    # <p>A collection of the names of Amazon Web Services services.</p>
    # @!attribute service_names
    #   <p>An array of strings that each specifies the name of an Amazon Web Services service.</p>
    #   @return [Array<String>]
    class ServiceCollection < Struct.new(
      :service_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the health of an Amazon Web Services service.</p>
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service.</p>
    #   @return [String]
    # @!attribute insight
    #   <p>Represents the health of an Amazon Web Services service. This is a <code>ServiceInsightHealth</code>
    #   			that contains the number of open proactive and reactive insights for this
    #   			service.</p>
    #   @return [Types::ServiceInsightHealth]
    # @!attribute analyzed_resource_count
    #   <p>
    #   			Number of resources that DevOps Guru is monitoring in an analyzed Amazon Web Services service.
    #   		</p>
    #   @return [Integer]
    class ServiceHealth < Struct.new(
      :service_name,
      :insight,
      :analyzed_resource_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the number of open proactive and reactive insights in an analyzed Amazon Web Services
    # 			service.</p>
    # @!attribute open_proactive_insights
    #   <p>The number of open proactive insights in the Amazon Web Services service</p>
    #   @return [Integer]
    # @!attribute open_reactive_insights
    #   <p>The number of open reactive insights in the Amazon Web Services service</p>
    #   @return [Integer]
    class ServiceInsightHealth < Struct.new(
      :open_proactive_insights,
      :open_reactive_insights,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:open_proactive_insights] = 0 unless options.key?(:open_proactive_insights)
        options[:open_reactive_insights] = 0 unless options.key?(:open_reactive_insights)
        super
      end
    end

    # <p> Information about the integration of DevOps Guru with another Amazon Web Services service, such as
    # 			Amazon Web Services Systems Manager. </p>
    # @!attribute ops_center
    #   <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    #   			OpsCenter for each created insight. </p>
    #   @return [Types::OpsCenterIntegration]
    # @!attribute logs_anomaly_detection
    #   <p>
    #   			Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups.
    #   		</p>
    #   @return [Types::LogsAnomalyDetectionIntegration]
    # @!attribute kms_server_side_encryption
    #   <p>
    #   			Information about whether DevOps Guru is configured to encrypt server-side data using KMS. 
    #   		</p>
    #   @return [Types::KMSServerSideEncryptionIntegration]
    class ServiceIntegrationConfig < Struct.new(
      :ops_center,
      :logs_anomaly_detection,
      :kms_server_side_encryption,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ServiceName
      API_GATEWAY = 'API_GATEWAY'
      APPLICATION_ELB = 'APPLICATION_ELB'
      AUTO_SCALING_GROUP = 'AUTO_SCALING_GROUP'
      CLOUD_FRONT = 'CLOUD_FRONT'
      DYNAMO_DB = 'DYNAMO_DB'
      EC2 = 'EC2'
      ECS = 'ECS'
      EKS = 'EKS'
      ELASTIC_BEANSTALK = 'ELASTIC_BEANSTALK'
      ELASTI_CACHE = 'ELASTI_CACHE'
      ELB = 'ELB'
      ES = 'ES'
      KINESIS = 'KINESIS'
      LAMBDA = 'LAMBDA'
      NAT_GATEWAY = 'NAT_GATEWAY'
      NETWORK_ELB = 'NETWORK_ELB'
      RDS = 'RDS'
      REDSHIFT = 'REDSHIFT'
      ROUTE_53 = 'ROUTE_53'
      S3 = 'S3'
      SAGE_MAKER = 'SAGE_MAKER'
      SNS = 'SNS'
      SQS = 'SQS'
      STEP_FUNCTIONS = 'STEP_FUNCTIONS'
      SWF = 'SWF'
    end

    # <p>The request contains a value that exceeds a maximum quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains information about the estimated monthly cost to analyze an
    # 			Amazon Web Services resource. For more information, 
    # 			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your 
    # 			Amazon DevOps Guru costs</a> and 
    # 			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>.</p>
    # @!attribute type
    #   <p>The type of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the resource. The resource is <code>ACTIVE</code> if it produces metrics,
    #   			events, or logs within an hour, otherwise it is <code>INACTIVE</code>. You pay for the
    #   			number of active Amazon Web Services resource hours analyzed for each resource. Inactive resources are
    #   			not charged. </p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of active resources analyzed for this service to create a monthly cost
    #   			estimate.</p>
    #   @return [Integer]
    # @!attribute unit_cost
    #   <p>The price per hour to analyze the resources in the service.
    #   			For more information, 
    #   			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your 
    #   			Amazon DevOps Guru costs</a> and 
    #   			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>.</p>
    #   @return [Float]
    # @!attribute cost
    #   <p>The total estimated monthly cost to analyze the active resources for this
    #   			resource.</p>
    #   @return [Float]
    class ServiceResourceCost < Struct.new(
      :type,
      :state,
      :count,
      :unit_cost,
      :cost,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:unit_cost] = 0 unless options.key?(:unit_cost)
        options[:cost] = 0 unless options.key?(:cost)
        super
      end
    end

    # <p> Contains the Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>
    #          <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
    # 				to send it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics. 
    # 				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions 
    # 				for Amazon SNS topics</a>.</p>
    #          <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions 
    # 				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for 
    # 				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    # @!attribute topic_arn
    #   <p> The Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>
    #   @return [String]
    class SnsChannelConfig < Struct.new(
      :topic_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_collection
    #   <p>The collection of Amazon Web Services resources used to create a monthly DevOps Guru cost estimate.</p>
    #   @return [Types::CostEstimationResourceCollectionFilter]
    # @!attribute client_token
    #   <p>The idempotency token used to identify each cost estimate request.</p>
    #   @return [String]
    class StartCostEstimationRequest < Struct.new(
      :resource_collection,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StartCostEstimationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A time range used to specify when the behavior of an insight or anomaly started.
    # 		</p>
    # @!attribute from_time
    #   <p> The start time of the time range. </p>
    #   @return [Time]
    # @!attribute to_time
    #   <p> The end time of the time range. </p>
    #   @return [Time]
    class StartTimeRange < Struct.new(
      :from_time,
      :to_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A collection of Amazon Web Services tags.</p>
    #          <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #    		tagging, so you can assign the same tag to resources from different services to indicate
    #    		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #    		table resource that you assign to an Lambda function. For more information about
    #    		using tags, see the <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #    			best practices</a> whitepaper. </p>
    #          <p>Each Amazon Web Services tag has two parts. </p>
    #          <ul>
    #             <li>
    #                <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #    				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #    				<i>keys</i> are case-sensitive.</p>
    #             </li>
    #             <li>
    #                <p>An optional field known as a tag <i>value</i> (for example,
    #    				<code>111122223333</code>, <code>Production</code>, or a team
    #    				name). Omitting the tag <i>value</i> is the same as using an empty
    #    				string. Like tag <i>keys</i>, tag <i>values</i> are
    #    				case-sensitive.</p>
    #             </li>
    #          </ul>
    #          <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #          <important>
    #             <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    # 			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    # 			<code>DevOps-Guru-deployment-application</code> or
    # 			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    # 			 For example, DevOps Guru works with a
    # 			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    # 			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    # 			application might be <code>Devops-Guru-production-application/RDS</code> or
    # 			<code>Devops-Guru-production-application/containers</code>.</p>
    #          </important>
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with 
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #   @return [Array<String>]
    class TagCollection < Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A collection of Amazon Web Services tags used to filter insights. This is used to return insights
    # 			generated from only resources that contain the tags in the tag collection.</p>
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with 
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #   @return [Array<String>]
    class TagCollectionFilter < Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a collection of Amazon Web Services resources that are identified by an Amazon Web Services tag.
    # 			This collection of resources is used to create a monthly cost estimate for DevOps Guru to
    # 			analyze Amazon Web Services resources. The maximum number of tags you can specify for a cost estimate
    # 			is one. The estimate created is for the cost to analyze the Amazon Web Services resources defined by
    # 			the tag. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>.</p>
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with 
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #   @return [Array<String>]
    class TagCostEstimationResourceCollectionFilter < Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the health of Amazon Web Services resources in your account that are specified by
    # 			an Amazon Web Services tag <i>key</i>. </p>
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The value in an Amazon Web Services tag.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with 
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #   @return [String]
    # @!attribute insight
    #   <p>Information about the health of the Amazon Web Services resources in your account that are specified
    #   			by an Amazon Web Services tag, including the number of open proactive, open reactive insights, and the
    #   			Mean Time to Recover (MTTR) of closed insights. </p>
    #   @return [Types::InsightHealth]
    # @!attribute analyzed_resource_count
    #   <p>
    #   			Number of resources that DevOps Guru is monitoring in your account that are specified by an Amazon Web Services tag.
    #   		</p>
    #   @return [Integer]
    class TagHealth < Struct.new(
      :app_boundary_key,
      :tag_value,
      :insight,
      :analyzed_resource_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to a request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p> The code of the quota that was exceeded, causing the throttling exception. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p> The code of the service that caused the throttling exception. </p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p> The number of seconds after which the action that caused the throttling exception can
    #   			be retried. </p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>A pair that contains metric values at the respective timestamp.</p>
    # @!attribute timestamp
    #   <p>A <code>Timestamp</code> that specifies the time the event occurred. </p>
    #   @return [Time]
    # @!attribute metric_value
    #   <p>Value of the anomalous metric data point at respective Timestamp.</p>
    #   @return [Float]
    class TimestampMetricValuePair < Struct.new(
      :timestamp,
      :metric_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains the names of Amazon Web Services CloudFormation stacks used to update a collection of stacks.
    # 			You can specify up to 500 Amazon Web Services CloudFormation stacks.</p>
    # @!attribute stack_names
    #   <p> An array of the names of the Amazon Web Services CloudFormation stacks to update. You can specify up to 500 Amazon Web Services CloudFormation stacks.
    #   		</p>
    #   @return [Array<String>]
    class UpdateCloudFormationCollectionFilter < Struct.new(
      :stack_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_sources
    #   <p>Configuration information about the integration of DevOps Guru as the Consumer via
    #   			EventBridge with another AWS Service.</p>
    #   @return [Types::EventSourcesConfig]
    class UpdateEventSourcesConfigRequest < Struct.new(
      :event_sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateEventSourcesConfigResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UpdateResourceCollectionAction
      ADD = 'ADD'
      REMOVE = 'REMOVE'
    end

    # <p> Contains information used to update a collection of Amazon Web Services resources. </p>
    # @!attribute cloud_formation
    #   <p> A collection of Amazon Web Services CloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #   @return [Types::UpdateCloudFormationCollectionFilter]
    # @!attribute tags
    #   <p>The updated Amazon Web Services tags used to filter the resources in the resource collection.</p>
    #            <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #      			best practices</a> whitepaper. </p>
    #            <p>Each Amazon Web Services tag has two parts. </p>
    #            <ul>
    #               <li>
    #                  <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [Array<Types::UpdateTagCollectionFilter>]
    class UpdateResourceCollectionFilter < Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p> Specifies if the resource collection in the request is added or deleted to the
    #   			resource collection. </p>
    #   @return [String]
    # @!attribute resource_collection
    #   <p> Contains information used to update a collection of Amazon Web Services resources. </p>
    #   @return [Types::UpdateResourceCollectionFilter]
    class UpdateResourceCollectionRequest < Struct.new(
      :action,
      :resource_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateResourceCollectionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about updating the integration status of an Amazon Web Services service, such as
    # 			Amazon Web Services Systems Manager, with DevOps Guru. </p>
    # @!attribute ops_center
    #   <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    #   			OpsCenter for each created insight. You can use this to update the configuration.</p>
    #   @return [Types::OpsCenterIntegrationConfig]
    # @!attribute logs_anomaly_detection
    #   <p>
    #   			Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups.
    #   		</p>
    #   @return [Types::LogsAnomalyDetectionIntegrationConfig]
    # @!attribute kms_server_side_encryption
    #   <p>
    #   			Information about whether DevOps Guru is configured to encrypt server-side data using KMS. 
    #   		</p>
    #   @return [Types::KMSServerSideEncryptionIntegrationConfig]
    class UpdateServiceIntegrationConfig < Struct.new(
      :ops_center,
      :logs_anomaly_detection,
      :kms_server_side_encryption,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_integration
    #   <p> An <code>IntegratedServiceConfig</code> object used to specify the integrated service
    #   			you want to update, and whether you want to update it to enabled or disabled. </p>
    #   @return [Types::UpdateServiceIntegrationConfig]
    class UpdateServiceIntegrationRequest < Struct.new(
      :service_integration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateServiceIntegrationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A new collection of Amazon Web Services resources that are defined by an Amazon Web Services tag or tag
    # 			<i>key</i>/<i>value</i> pair.</p>
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #               <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>DevOps-Guru-deployment-application</code> or
    #   			<code>devops-guru-rds-application</code>. When you create a <i>key</i>, the case of characters in the <i>key</i> can be whatever you choose. After you create a <i>key</i>, it is case-sensitive.
    #   			 For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>, and these act as two different <i>keys</i>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with 
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #   @return [Array<String>]
    class UpdateTagCollectionFilter < Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains information about data passed in to a field during a request that is not
    # 			valid. </p>
    # @!attribute message
    #   <p> A message that describes the validation exception. </p>
    #   @return [String]
    # @!attribute reason
    #   <p> The reason the validation exception was thrown. </p>
    #   @return [String]
    # @!attribute fields
    #   <p> An array of fields that are associated with the validation exception. </p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The field associated with the validation exception. </p>
    # @!attribute name
    #   <p> The name of the field. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The message associated with the validation exception with information to help
    #   			determine its cause. </p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      UNKNOWN_OPERATION = 'UNKNOWN_OPERATION'
      CANNOT_PARSE = 'CANNOT_PARSE'
      FIELD_VALIDATION_FAILED = 'FIELD_VALIDATION_FAILED'
      OTHER = 'OTHER'
      INVALID_PARAMETER_COMBINATION = 'INVALID_PARAMETER_COMBINATION'
      PARAMETER_INCONSISTENT_WITH_SERVICE_STATE = 'PARAMETER_INCONSISTENT_WITH_SERVICE_STATE'
    end

  end
end
