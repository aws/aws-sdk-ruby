# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DevOpsGuru
  module Types

    # You don't have permissions to perform the requested operation. The
    # user or role that is making the request must have at least one IAM
    # permissions policy attached that grants the required permissions. For
    # more information, see [Access Management][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddNotificationChannelRequest
    #   data as a hash:
    #
    #       {
    #         config: { # required
    #           sns: { # required
    #             topic_arn: "TopicArn",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] config
    #   A `NotificationChannelConfig` object that specifies what type of
    #   notification channel to add. The one supported notification channel
    #   is Amazon Simple Notification Service (Amazon SNS).
    #   @return [Types::NotificationChannelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AddNotificationChannelRequest AWS API Documentation
    #
    class AddNotificationChannelRequest < Struct.new(
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the added notification channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AddNotificationChannelResponse AWS API Documentation
    #
    class AddNotificationChannelResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time range that specifies when DevOps Guru opens and then closes an
    # anomaly. This is different from `AnomalyTimeRange`, which specifies
    # the time range when DevOps Guru actually observes the anomalous
    # behavior.
    #
    # @!attribute [rw] open_time
    #   The time when an anomaly is opened.
    #   @return [Time]
    #
    # @!attribute [rw] close_time
    #   The time when an anomaly is closed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AnomalyReportedTimeRange AWS API Documentation
    #
    class AnomalyReportedTimeRange < Struct.new(
      :open_time,
      :close_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the source of the anomalous operational data that
    # triggered the anomaly. The one supported source is Amazon CloudWatch
    # metrics.
    #
    # @!attribute [rw] cloud_watch_metrics
    #   An array of `CloudWatchMetricsDetail` object that contains
    #   information about the analyzed metrics that displayed anomalous
    #   behavior.
    #   @return [Array<Types::CloudWatchMetricsDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AnomalySourceDetails AWS API Documentation
    #
    class AnomalySourceDetails < Struct.new(
      :cloud_watch_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time range that specifies when the observed unusual behavior in an
    # anomaly started and ended. This is different from
    # `AnomalyReportedTimeRange`, which specifies the time range when DevOps
    # Guru opens and then closes an anomaly.
    #
    # @!attribute [rw] start_time
    #   The time when the anomalous behavior started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the anomalous behavior ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AnomalyTimeRange AWS API Documentation
    #
    class AnomalyTimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about AWS CloudFormation stacks. You can use up to 500
    # stacks to specify which AWS resources in your account to analyze. For
    # more information, see [Stacks][1] in the *AWS CloudFormation User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html
    #
    # @note When making an API call, you may pass CloudFormationCollection
    #   data as a hash:
    #
    #       {
    #         stack_names: ["StackName"],
    #       }
    #
    # @!attribute [rw] stack_names
    #   An array of CloudFormation stack names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudFormationCollection AWS API Documentation
    #
    class CloudFormationCollection < Struct.new(
      :stack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about AWS CloudFormation stacks. You can use up to 500
    # stacks to specify which AWS resources in your account to analyze. For
    # more information, see [Stacks][1] in the *AWS CloudFormation User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html
    #
    # @!attribute [rw] stack_names
    #   An array of CloudFormation stack names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudFormationCollectionFilter AWS API Documentation
    #
    class CloudFormationCollectionFilter < Struct.new(
      :stack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an AWS CloudFormation stack used to create a monthly
    # cost estimate for DevOps Guru to analyze AWS resources. The maximum
    # number of stacks you can specify for a cost estimate is one. The
    # estimate created is for the cost to analyze the AWS resources defined
    # by the stack. For more information, see [Stacks][1] in the *AWS
    # CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html
    #
    # @note When making an API call, you may pass CloudFormationCostEstimationResourceCollectionFilter
    #   data as a hash:
    #
    #       {
    #         stack_names: ["StackName"],
    #       }
    #
    # @!attribute [rw] stack_names
    #   An array of CloudFormation stack names. Its size is fixed at 1 item.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudFormationCostEstimationResourceCollectionFilter AWS API Documentation
    #
    class CloudFormationCostEstimationResourceCollectionFilter < Struct.new(
      :stack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the health of AWS resources in your account that are
    # specified by an AWS CloudFormation stack.
    #
    # @!attribute [rw] stack_name
    #   The name of the CloudFormation stack.
    #   @return [String]
    #
    # @!attribute [rw] insight
    #   Information about the health of the AWS resources in your account
    #   that are specified by an AWS CloudFormation stack, including the
    #   number of open proactive, open reactive insights, and the Mean Time
    #   to Recover (MTTR) of closed insights.
    #   @return [Types::InsightHealth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudFormationHealth AWS API Documentation
    #
    class CloudFormationHealth < Struct.new(
      :stack_name,
      :insight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon CloudWatch metric.
    #
    # @!attribute [rw] metric_name
    #   The name of the CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the CloudWatch metric. A namespace is a container
    #   for CloudWatch metrics.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   An array of CloudWatch dimensions associated with
    #   @return [Array<Types::CloudWatchMetricsDimension>]
    #
    # @!attribute [rw] stat
    #   The type of statistic associated with the CloudWatch metric. For
    #   more information, see [Statistics][1] in the *Amazon CloudWatch User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of measure used for the CloudWatch metric. For example,
    #   `Bytes`, `Seconds`, `Count`, and `Percent`.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The length of time associated with the CloudWatch metric in number
    #   of seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudWatchMetricsDetail AWS API Documentation
    #
    class CloudWatchMetricsDetail < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :stat,
      :unit,
      :period)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimension of a Amazon CloudWatch metric that is used when DevOps
    # Guru analyzes the resources in your account for operational problems
    # and anomalous behavior. A dimension is a name/value pair that is part
    # of the identity of a metric. A metric can have up to 10 dimensions.
    # For more information, see [Dimensions][1] in the *Amazon CloudWatch
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension
    #
    # @!attribute [rw] name
    #   The name of the CloudWatch dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the CloudWatch dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudWatchMetricsDimension AWS API Documentation
    #
    class CloudWatchMetricsDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception that is thrown when a conflict occurs.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the AWS resource in which a conflict occurred.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the AWS resource in which a conflict occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a filter used to specify which AWS resources are
    # analyzed to create a monthly DevOps Guru cost estimate. For more
    # information, see [Estimate your Amazon DevOps Guru costs][1] and
    # [Amazon DevOps Guru pricing][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html
    # [2]: http://aws.amazon.com/devops-guru/pricing/
    #
    # @note When making an API call, you may pass CostEstimationResourceCollectionFilter
    #   data as a hash:
    #
    #       {
    #         cloud_formation: {
    #           stack_names: ["StackName"],
    #         },
    #       }
    #
    # @!attribute [rw] cloud_formation
    #   An object that specifies the CloudFormation stack that defines the
    #   AWS resources used to create a monthly estimate for DevOps Guru.
    #   @return [Types::CloudFormationCostEstimationResourceCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CostEstimationResourceCollectionFilter AWS API Documentation
    #
    class CostEstimationResourceCollectionFilter < Struct.new(
      :cloud_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time range of a cost estimation.
    #
    # @!attribute [rw] start_time
    #   The start time of the cost estimation.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the cost estimation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CostEstimationTimeRange AWS API Documentation
    #
    class CostEstimationTimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountHealthRequest AWS API Documentation
    #
    class DescribeAccountHealthRequest < Aws::EmptyStructure; end

    # @!attribute [rw] open_reactive_insights
    #   An integer that specifies the number of open reactive insights in
    #   your AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] open_proactive_insights
    #   An integer that specifies the number of open proactive insights in
    #   your AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] metrics_analyzed
    #   An integer that specifies the number of metrics that have been
    #   analyzed in your AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_hours
    #   The number of Amazon DevOps Guru resource analysis hours billed to
    #   the current AWS account in the last hour.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountHealthResponse AWS API Documentation
    #
    class DescribeAccountHealthResponse < Struct.new(
      :open_reactive_insights,
      :open_proactive_insights,
      :metrics_analyzed,
      :resource_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAccountOverviewRequest
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now, # required
    #         to_time: Time.now,
    #       }
    #
    # @!attribute [rw] from_time
    #   The start of the time range passed in. The start time granularity is
    #   at the day level. The floor of the start time is used. Returned
    #   information occurred after this day.
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   The end of the time range passed in. The start time granularity is
    #   at the day level. The floor of the start time is used. Returned
    #   information occurred before this day. If this is not specified, then
    #   the current day is used.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountOverviewRequest AWS API Documentation
    #
    class DescribeAccountOverviewRequest < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reactive_insights
    #   An integer that specifies the number of open reactive insights in
    #   your AWS account that were created during the time range passed in.
    #   @return [Integer]
    #
    # @!attribute [rw] proactive_insights
    #   An integer that specifies the number of open proactive insights in
    #   your AWS account that were created during the time range passed in.
    #   @return [Integer]
    #
    # @!attribute [rw] mean_time_to_recover_in_milliseconds
    #   The Mean Time to Recover (MTTR) for all closed insights that were
    #   created during the time range passed in.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountOverviewResponse AWS API Documentation
    #
    class DescribeAccountOverviewResponse < Struct.new(
      :reactive_insights,
      :proactive_insights,
      :mean_time_to_recover_in_milliseconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAnomalyRequest
    #   data as a hash:
    #
    #       {
    #         id: "AnomalyId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the anomaly.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAnomalyRequest AWS API Documentation
    #
    class DescribeAnomalyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proactive_anomaly
    #   A `ReactiveAnomaly` object that represents the requested anomaly.
    #   @return [Types::ProactiveAnomaly]
    #
    # @!attribute [rw] reactive_anomaly
    #   A `ProactiveAnomaly` object that represents the requested anomaly.
    #   @return [Types::ReactiveAnomaly]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAnomalyResponse AWS API Documentation
    #
    class DescribeAnomalyResponse < Struct.new(
      :proactive_anomaly,
      :reactive_anomaly)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         insight_id: "InsightId",
    #       }
    #
    # @!attribute [rw] insight_id
    #   The ID of the insight for which the feedback was provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeFeedbackRequest AWS API Documentation
    #
    class DescribeFeedbackRequest < Struct.new(
      :insight_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_feedback
    #   Information about insight feedback received from a customer.
    #   @return [Types::InsightFeedback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeFeedbackResponse AWS API Documentation
    #
    class DescribeFeedbackResponse < Struct.new(
      :insight_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInsightRequest
    #   data as a hash:
    #
    #       {
    #         id: "InsightId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeInsightRequest AWS API Documentation
    #
    class DescribeInsightRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proactive_insight
    #   A `ProactiveInsight` object that represents the requested insight.
    #   @return [Types::ProactiveInsight]
    #
    # @!attribute [rw] reactive_insight
    #   A `ReactiveInsight` object that represents the requested insight.
    #   @return [Types::ReactiveInsight]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeInsightResponse AWS API Documentation
    #
    class DescribeInsightResponse < Struct.new(
      :proactive_insight,
      :reactive_insight)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResourceCollectionHealthRequest
    #   data as a hash:
    #
    #       {
    #         resource_collection_type: "AWS_CLOUD_FORMATION", # required, accepts AWS_CLOUD_FORMATION, AWS_SERVICE
    #         next_token: "UuidNextToken",
    #       }
    #
    # @!attribute [rw] resource_collection_type
    #   An AWS resource collection type. This type specifies how analyzed
    #   AWS resources are defined. The one type of AWS resource collection
    #   supported is AWS CloudFormation stacks. DevOps Guru can be
    #   configured to analyze only the AWS resources that are defined in the
    #   stacks. You can specify up to 500 AWS CloudFormation stacks.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeResourceCollectionHealthRequest AWS API Documentation
    #
    class DescribeResourceCollectionHealthRequest < Struct.new(
      :resource_collection_type,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_formation
    #   The returned `CloudFormationHealthOverview` object that contains an
    #   `InsightHealthOverview` object with the requested system health
    #   information.
    #   @return [Array<Types::CloudFormationHealth>]
    #
    # @!attribute [rw] service
    #   An array of `ServiceHealth` objects that describes the health of the
    #   AWS services associated with the resources in the collection.
    #   @return [Array<Types::ServiceHealth>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeResourceCollectionHealthResponse AWS API Documentation
    #
    class DescribeResourceCollectionHealthResponse < Struct.new(
      :cloud_formation,
      :service,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeServiceIntegrationRequest AWS API Documentation
    #
    class DescribeServiceIntegrationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] service_integration
    #   Information about the integration of DevOps Guru with another AWS
    #   service, such as AWS Systems Manager.
    #   @return [Types::ServiceIntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeServiceIntegrationResponse AWS API Documentation
    #
    class DescribeServiceIntegrationResponse < Struct.new(
      :service_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of time that specifies when anomalous behavior in an anomaly
    # or insight ended.
    #
    # @note When making an API call, you may pass EndTimeRange
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now,
    #         to_time: Time.now,
    #       }
    #
    # @!attribute [rw] from_time
    #   The earliest end time in the time range.
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   The latest end time in the time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/EndTimeRange AWS API Documentation
    #
    class EndTimeRange < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS resource event. AWS resource events and metrics are analyzed by
    # DevOps Guru to find anomalous behavior and provide recommendations to
    # improve your operational solutions.
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] id
    #   The ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   A `Timestamp` that specifies the time the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] event_source
    #   The AWS source that emitted the event.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The source, `AWS_CLOUD_TRAIL` or `AWS_CODE_DEPLOY`, where DevOps
    #   Guru analysis found the event.
    #   @return [String]
    #
    # @!attribute [rw] event_class
    #   The class of the event. The class specifies what the event is
    #   related to, such as an infrastructure change, a deployment, or a
    #   schema change.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   An `EventResource` object that contains information about the
    #   resource that emitted the event.
    #   @return [Array<Types::EventResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :resource_collection,
      :id,
      :time,
      :event_source,
      :name,
      :data_source,
      :event_class,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS resource that emitted an event. AWS resource events and
    # metrics are analyzed by DevOps Guru to find anomalous behavior and
    # provide recommendations to improve your operational solutions.
    #
    # @!attribute [rw] type
    #   The type of resource that emitted an event.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource that emitted an event.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that emitted an
    #   event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/EventResource AWS API Documentation
    #
    class EventResource < Struct.new(
      :type,
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time range during which an AWS event occurred. AWS resource events
    # and metrics are analyzed by DevOps Guru to find anomalous behavior and
    # provide recommendations to improve your operational solutions.
    #
    # @note When making an API call, you may pass EventTimeRange
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now, # required
    #         to_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] from_time
    #   The time when the event started.
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   The time when the event ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/EventTimeRange AWS API Documentation
    #
    class EventTimeRange < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCostEstimationRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "UuidNextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetCostEstimationRequest AWS API Documentation
    #
    class GetCostEstimationRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_collection
    #   The collection of the AWS resources used to create your monthly
    #   DevOps Guru cost estimate.
    #   @return [Types::CostEstimationResourceCollectionFilter]
    #
    # @!attribute [rw] status
    #   The status of creating this cost estimate. If it's still in
    #   progress, the status `ONGOING` is returned. If it is finished, the
    #   status `COMPLETED` is returned.
    #   @return [String]
    #
    # @!attribute [rw] costs
    #   An array of `ResourceCost` objects that each contains details about
    #   the monthly cost estimate to analyze one of your AWS resources.
    #   @return [Array<Types::ServiceResourceCost>]
    #
    # @!attribute [rw] time_range
    #   The start and end time of the cost estimation.
    #   @return [Types::CostEstimationTimeRange]
    #
    # @!attribute [rw] total_cost
    #   The estimated monthly cost to analyze the AWS resources. This value
    #   is the sum of the estimated costs to analyze each resource in the
    #   `Costs` object in this response.
    #   @return [Float]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetCostEstimationResponse AWS API Documentation
    #
    class GetCostEstimationResponse < Struct.new(
      :resource_collection,
      :status,
      :costs,
      :time_range,
      :total_cost,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         resource_collection_type: "AWS_CLOUD_FORMATION", # required, accepts AWS_CLOUD_FORMATION, AWS_SERVICE
    #         next_token: "UuidNextToken",
    #       }
    #
    # @!attribute [rw] resource_collection_type
    #   The type of AWS resource collections to return. The one valid value
    #   is `CLOUD_FORMATION` for AWS CloudFormation stacks.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetResourceCollectionRequest AWS API Documentation
    #
    class GetResourceCollectionRequest < Struct.new(
      :resource_collection_type,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_collection
    #   The requested list of AWS resource collections. The one type of AWS
    #   resource collection supported is AWS CloudFormation stacks. DevOps
    #   Guru can be configured to analyze only the AWS resources that are
    #   defined in the stacks. You can specify up to 500 AWS CloudFormation
    #   stacks.
    #   @return [Types::ResourceCollectionFilter]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetResourceCollectionResponse AWS API Documentation
    #
    class GetResourceCollectionResponse < Struct.new(
      :resource_collection,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about insight feedback received from a customer.
    #
    # @note When making an API call, you may pass InsightFeedback
    #   data as a hash:
    #
    #       {
    #         id: "InsightId",
    #         feedback: "VALID_COLLECTION", # accepts VALID_COLLECTION, RECOMMENDATION_USEFUL, ALERT_TOO_SENSITIVE, DATA_NOISY_ANOMALY, DATA_INCORRECT
    #       }
    #
    # @!attribute [rw] id
    #   The insight feedback ID.
    #   @return [String]
    #
    # @!attribute [rw] feedback
    #   The feedback provided by the customer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InsightFeedback AWS API Documentation
    #
    class InsightFeedback < Struct.new(
      :id,
      :feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the number of open reactive and proactive insights
    # that can be used to gauge the health of your system.
    #
    # @!attribute [rw] open_proactive_insights
    #   The number of open proactive insights.
    #   @return [Integer]
    #
    # @!attribute [rw] open_reactive_insights
    #   The number of open reactive insights.
    #   @return [Integer]
    #
    # @!attribute [rw] mean_time_to_recover_in_milliseconds
    #   The Meant Time to Recover (MTTR) for the insight.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InsightHealth AWS API Documentation
    #
    class InsightHealth < Struct.new(
      :open_proactive_insights,
      :open_reactive_insights,
      :mean_time_to_recover_in_milliseconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time ranged that specifies when the observed behavior in an insight
    # started and ended.
    #
    # @!attribute [rw] start_time
    #   The time when the behavior described in an insight started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the behavior described in an insight ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InsightTimeRange AWS API Documentation
    #
    class InsightTimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal failure in an Amazon service occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds after which the action that caused the
    #   internal server exception can be retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAnomaliesForInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_id: "InsightId", # required
    #         start_time_range: {
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #         max_results: 1,
    #         next_token: "UuidNextToken",
    #       }
    #
    # @!attribute [rw] insight_id
    #   The ID of the insight. The returned anomalies belong to this
    #   insight.
    #   @return [String]
    #
    # @!attribute [rw] start_time_range
    #   A time range used to specify when the requested anomalies started.
    #   All returned anomalies started during this time range.
    #   @return [Types::StartTimeRange]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListAnomaliesForInsightRequest AWS API Documentation
    #
    class ListAnomaliesForInsightRequest < Struct.new(
      :insight_id,
      :start_time_range,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proactive_anomalies
    #   An array of `ProactiveAnomalySummary` objects that represent the
    #   requested anomalies
    #   @return [Array<Types::ProactiveAnomalySummary>]
    #
    # @!attribute [rw] reactive_anomalies
    #   An array of `ReactiveAnomalySummary` objects that represent the
    #   requested anomalies
    #   @return [Array<Types::ReactiveAnomalySummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListAnomaliesForInsightResponse AWS API Documentation
    #
    class ListAnomaliesForInsightResponse < Struct.new(
      :proactive_anomalies,
      :reactive_anomalies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters you can use to specify which events are returned when
    # `ListEvents` is called.
    #
    # @note When making an API call, you may pass ListEventsFilters
    #   data as a hash:
    #
    #       {
    #         insight_id: "InsightId",
    #         event_time_range: {
    #           from_time: Time.now, # required
    #           to_time: Time.now, # required
    #         },
    #         event_class: "INFRASTRUCTURE", # accepts INFRASTRUCTURE, DEPLOYMENT, SECURITY_CHANGE, CONFIG_CHANGE, SCHEMA_CHANGE
    #         event_source: "EventSource",
    #         data_source: "AWS_CLOUD_TRAIL", # accepts AWS_CLOUD_TRAIL, AWS_CODE_DEPLOY
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] insight_id
    #   An ID of an insight that is related to the events you want to filter
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] event_time_range
    #   A time range during which you want the filtered events to have
    #   occurred.
    #   @return [Types::EventTimeRange]
    #
    # @!attribute [rw] event_class
    #   The class of the events you want to filter for, such as an
    #   infrastructure change, a deployment, or a schema change.
    #   @return [String]
    #
    # @!attribute [rw] event_source
    #   The AWS source that emitted the events you want to filter for.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The source, `AWS_CLOUD_TRAIL` or `AWS_CODE_DEPLOY`, of the events
    #   you want returned.
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListEventsFilters AWS API Documentation
    #
    class ListEventsFilters < Struct.new(
      :insight_id,
      :event_time_range,
      :event_class,
      :event_source,
      :data_source,
      :resource_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventsRequest
    #   data as a hash:
    #
    #       {
    #         filters: { # required
    #           insight_id: "InsightId",
    #           event_time_range: {
    #             from_time: Time.now, # required
    #             to_time: Time.now, # required
    #           },
    #           event_class: "INFRASTRUCTURE", # accepts INFRASTRUCTURE, DEPLOYMENT, SECURITY_CHANGE, CONFIG_CHANGE, SCHEMA_CHANGE
    #           event_source: "EventSource",
    #           data_source: "AWS_CLOUD_TRAIL", # accepts AWS_CLOUD_TRAIL, AWS_CODE_DEPLOY
    #           resource_collection: {
    #             cloud_formation: {
    #               stack_names: ["StackName"],
    #             },
    #           },
    #         },
    #         max_results: 1,
    #         next_token: "UuidNextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   A `ListEventsFilters` object used to specify which events to return.
    #   @return [Types::ListEventsFilters]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListEventsRequest AWS API Documentation
    #
    class ListEventsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   A list of the requested events.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListEventsResponse AWS API Documentation
    #
    class ListEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to filter for insights that have any status.
    #
    # @note When making an API call, you may pass ListInsightsAnyStatusFilter
    #   data as a hash:
    #
    #       {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   Use to filter for either `REACTIVE` or `PROACTIVE` insights.
    #   @return [String]
    #
    # @!attribute [rw] start_time_range
    #   A time range used to specify when the behavior of the filtered
    #   insights started.
    #   @return [Types::StartTimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsAnyStatusFilter AWS API Documentation
    #
    class ListInsightsAnyStatusFilter < Struct.new(
      :type,
      :start_time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to filter for insights that have the status `CLOSED`.
    #
    # @note When making an API call, you may pass ListInsightsClosedStatusFilter
    #   data as a hash:
    #
    #       {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         end_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   Use to filter for either `REACTIVE` or `PROACTIVE` insights.
    #   @return [String]
    #
    # @!attribute [rw] end_time_range
    #   A time range used to specify when the behavior of the filtered
    #   insights ended.
    #   @return [Types::EndTimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsClosedStatusFilter AWS API Documentation
    #
    class ListInsightsClosedStatusFilter < Struct.new(
      :type,
      :end_time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to filter for insights that have the status `ONGOING`.
    #
    # @note When making an API call, you may pass ListInsightsOngoingStatusFilter
    #   data as a hash:
    #
    #       {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       }
    #
    # @!attribute [rw] type
    #   Use to filter for either `REACTIVE` or `PROACTIVE` insights.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsOngoingStatusFilter AWS API Documentation
    #
    class ListInsightsOngoingStatusFilter < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInsightsRequest
    #   data as a hash:
    #
    #       {
    #         status_filter: { # required
    #           ongoing: {
    #             type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #           },
    #           closed: {
    #             type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #             end_time_range: { # required
    #               from_time: Time.now,
    #               to_time: Time.now,
    #             },
    #           },
    #           any: {
    #             type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #             start_time_range: { # required
    #               from_time: Time.now,
    #               to_time: Time.now,
    #             },
    #           },
    #         },
    #         max_results: 1,
    #         next_token: "UuidNextToken",
    #       }
    #
    # @!attribute [rw] status_filter
    #   A filter used to filter the returned insights by their status. You
    #   can specify one status filter.
    #   @return [Types::ListInsightsStatusFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsRequest AWS API Documentation
    #
    class ListInsightsRequest < Struct.new(
      :status_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proactive_insights
    #   The returned list of proactive insights.
    #   @return [Array<Types::ProactiveInsightSummary>]
    #
    # @!attribute [rw] reactive_insights
    #   The returned list of reactive insights.
    #   @return [Array<Types::ReactiveInsightSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsResponse AWS API Documentation
    #
    class ListInsightsResponse < Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used by `ListInsights` to specify which insights to return.
    #
    # @note When making an API call, you may pass ListInsightsStatusFilter
    #   data as a hash:
    #
    #       {
    #         ongoing: {
    #           type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         },
    #         closed: {
    #           type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #           end_time_range: { # required
    #             from_time: Time.now,
    #             to_time: Time.now,
    #           },
    #         },
    #         any: {
    #           type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #           start_time_range: { # required
    #             from_time: Time.now,
    #             to_time: Time.now,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] ongoing
    #   A `ListInsightsAnyStatusFilter` that specifies ongoing insights that
    #   are either `REACTIVE` or `PROACTIVE`.
    #   @return [Types::ListInsightsOngoingStatusFilter]
    #
    # @!attribute [rw] closed
    #   A `ListInsightsClosedStatusFilter` that specifies closed insights
    #   that are either `REACTIVE` or `PROACTIVE`.
    #   @return [Types::ListInsightsClosedStatusFilter]
    #
    # @!attribute [rw] any
    #   A `ListInsightsAnyStatusFilter` that specifies insights of any
    #   status that are either `REACTIVE` or `PROACTIVE`.
    #   @return [Types::ListInsightsAnyStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsStatusFilter AWS API Documentation
    #
    class ListInsightsStatusFilter < Struct.new(
      :ongoing,
      :closed,
      :any)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNotificationChannelsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "UuidNextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListNotificationChannelsRequest AWS API Documentation
    #
    class ListNotificationChannelsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   An array that contains the requested notification channels.
    #   @return [Array<Types::NotificationChannel>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListNotificationChannelsResponse AWS API Documentation
    #
    class ListNotificationChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         insight_id: "InsightId", # required
    #         next_token: "UuidNextToken",
    #         locale: "DE_DE", # accepts DE_DE, EN_US, EN_GB, ES_ES, FR_FR, IT_IT, JA_JP, KO_KR, PT_BR, ZH_CN, ZH_TW
    #       }
    #
    # @!attribute [rw] insight_id
    #   The ID of the requested insight.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   A locale that specifies the language to use for recommendations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListRecommendationsRequest AWS API Documentation
    #
    class ListRecommendationsRequest < Struct.new(
      :insight_id,
      :next_token,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendations
    #   An array of the requested recommendations.
    #   @return [Array<Types::Recommendation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListRecommendationsResponse AWS API Documentation
    #
    class ListRecommendationsResponse < Struct.new(
      :recommendations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a notification channel. A notification channel is
    # used to notify you when DevOps Guru creates an insight. The one
    # supported notification channel is Amazon Simple Notification Service
    # (Amazon SNS).
    #
    # If you use an Amazon SNS topic in another account, you must attach a
    # policy to it that grants DevOps Guru permission to it notifications.
    # DevOps Guru adds the required policy on your behalf to send
    # notifications using Amazon SNS in your account. For more information,
    # see [Permissions for cross account Amazon SNS topics][1].
    #
    # If you use an Amazon SNS topic that is encrypted by an AWS Key
    # Management Service customer-managed key (CMK), then you must add
    # permissions to the CMK. For more information, see [Permissions for AWS
    # KMS–encrypted Amazon SNS topics][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html
    # [2]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html
    #
    # @!attribute [rw] id
    #   The ID of a notification channel.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   A `NotificationChannelConfig` object that contains information about
    #   configured notification channels.
    #   @return [Types::NotificationChannelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/NotificationChannel AWS API Documentation
    #
    class NotificationChannel < Struct.new(
      :id,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about notification channels you have configured with
    # DevOps Guru. The one supported notification channel is Amazon Simple
    # Notification Service (Amazon SNS).
    #
    # @note When making an API call, you may pass NotificationChannelConfig
    #   data as a hash:
    #
    #       {
    #         sns: { # required
    #           topic_arn: "TopicArn",
    #         },
    #       }
    #
    # @!attribute [rw] sns
    #   Information about a notification channel configured in DevOps Guru
    #   to send notifications when insights are created.
    #
    #   If you use an Amazon SNS topic in another account, you must attach a
    #   policy to it that grants DevOps Guru permission to it notifications.
    #   DevOps Guru adds the required policy on your behalf to send
    #   notifications using Amazon SNS in your account. For more
    #   information, see [Permissions for cross account Amazon SNS
    #   topics][1].
    #
    #   If you use an Amazon SNS topic that is encrypted by an AWS Key
    #   Management Service customer-managed key (CMK), then you must add
    #   permissions to the CMK. For more information, see [Permissions for
    #   AWS KMS–encrypted Amazon SNS topics][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html
    #   [2]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html
    #   @return [Types::SnsChannelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/NotificationChannelConfig AWS API Documentation
    #
    class NotificationChannelConfig < Struct.new(
      :sns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about whether DevOps Guru is configured to create an
    # OpsItem in AWS Systems Manager OpsCenter for each created insight.
    #
    # @!attribute [rw] opt_in_status
    #   Specifies if DevOps Guru is enabled to create an AWS Systems Manager
    #   OpsItem for each created insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/OpsCenterIntegration AWS API Documentation
    #
    class OpsCenterIntegration < Struct.new(
      :opt_in_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about whether DevOps Guru is configured to create an
    # OpsItem in AWS Systems Manager OpsCenter for each created insight.
    #
    # @note When making an API call, you may pass OpsCenterIntegrationConfig
    #   data as a hash:
    #
    #       {
    #         opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] opt_in_status
    #   Specifies if DevOps Guru is enabled to create an AWS Systems Manager
    #   OpsItem for each created insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/OpsCenterIntegrationConfig AWS API Documentation
    #
    class OpsCenterIntegrationConfig < Struct.new(
      :opt_in_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time range during which anomalous behavior in a proactive anomaly
    # or an insight is expected to occur.
    #
    # @!attribute [rw] start_time
    #   The time range during which a metric limit is expected to be
    #   exceeded. This applies to proactive insights only.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the behavior in a proactive insight is expected to
    #   end.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/PredictionTimeRange AWS API Documentation
    #
    class PredictionTimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an anomaly. This object is returned by
    # `ListAnomalies`.
    #
    # @!attribute [rw] id
    #   The ID of a proactive anomaly.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of a proactive anomaly.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a proactive anomaly.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time of the anomaly's most recent update.
    #   @return [Time]
    #
    # @!attribute [rw] anomaly_time_range
    #   A time range that specifies when the observed unusual behavior in an
    #   anomaly started and ended. This is different from
    #   `AnomalyReportedTimeRange`, which specifies the time range when
    #   DevOps Guru opens and then closes an anomaly.
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] anomaly_reported_time_range
    #   A `AnomalyReportedTimeRange` object that specifies the time range
    #   between when the anomaly is opened and the time when it is closed.
    #   @return [Types::AnomalyReportedTimeRange]
    #
    # @!attribute [rw] prediction_time_range
    #   The time range during which anomalous behavior in a proactive
    #   anomaly or an insight is expected to occur.
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] source_details
    #   Details about the source of the analyzed operational data that
    #   triggered the anomaly. The one supported source is Amazon CloudWatch
    #   metrics.
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] associated_insight_id
    #   The ID of the insight that contains this anomaly. An insight is
    #   composed of related anomalies.
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] limit
    #   A threshold that was exceeded by behavior in analyzed resources.
    #   Exceeding this threshold is related to the anomalous behavior that
    #   generated this anomaly.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveAnomaly AWS API Documentation
    #
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
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a proactive anomaly. This object is returned by
    # `DescribeAnomaly.`
    #
    # @!attribute [rw] id
    #   The ID of the anomaly.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the anomaly.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the anomaly.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time of the anomaly's most recent update.
    #   @return [Time]
    #
    # @!attribute [rw] anomaly_time_range
    #   A time range that specifies when the observed unusual behavior in an
    #   anomaly started and ended. This is different from
    #   `AnomalyReportedTimeRange`, which specifies the time range when
    #   DevOps Guru opens and then closes an anomaly.
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] anomaly_reported_time_range
    #   A `AnomalyReportedTimeRange` object that specifies the time range
    #   between when the anomaly is opened and the time when it is closed.
    #   @return [Types::AnomalyReportedTimeRange]
    #
    # @!attribute [rw] prediction_time_range
    #   The time range during which anomalous behavior in a proactive
    #   anomaly or an insight is expected to occur.
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] source_details
    #   Details about the source of the analyzed operational data that
    #   triggered the anomaly. The one supported source is Amazon CloudWatch
    #   metrics.
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] associated_insight_id
    #   The ID of the insight that contains this anomaly. An insight is
    #   composed of related anomalies.
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] limit
    #   A threshold that was exceeded by behavior in analyzed resources.
    #   Exceeding this threshold is related to the anomalous behavior that
    #   generated this anomaly.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveAnomalySummary AWS API Documentation
    #
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
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a proactive insight. This object is returned by
    # `ListInsights`.
    #
    # @!attribute [rw] id
    #   The ID of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   A time ranged that specifies when the observed behavior in an
    #   insight started and ended.
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] prediction_time_range
    #   The time range during which anomalous behavior in a proactive
    #   anomaly or an insight is expected to occur.
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] ssm_ops_item_id
    #   The ID of the AWS System Manager OpsItem created for this insight.
    #   You must enable the creation of OpstItems insights before they are
    #   created for each insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveInsight AWS API Documentation
    #
    class ProactiveInsight < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :ssm_ops_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a proactive insight. This object is returned by
    # `DescribeInsight.`
    #
    # @!attribute [rw] id
    #   The ID of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the proactive insight.
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   A time ranged that specifies when the observed behavior in an
    #   insight started and ended.
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] prediction_time_range
    #   The time range during which anomalous behavior in a proactive
    #   anomaly or an insight is expected to occur.
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] service_collection
    #   A collection of the names of AWS services.
    #   @return [Types::ServiceCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveInsightSummary AWS API Documentation
    #
    class ProactiveInsightSummary < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :service_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         insight_feedback: {
    #           id: "InsightId",
    #           feedback: "VALID_COLLECTION", # accepts VALID_COLLECTION, RECOMMENDATION_USEFUL, ALERT_TOO_SENSITIVE, DATA_NOISY_ANOMALY, DATA_INCORRECT
    #         },
    #       }
    #
    # @!attribute [rw] insight_feedback
    #   The feedback from customers is about the recommendations in this
    #   insight.
    #   @return [Types::InsightFeedback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/PutFeedbackRequest AWS API Documentation
    #
    class PutFeedbackRequest < Struct.new(
      :insight_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/PutFeedbackResponse AWS API Documentation
    #
    class PutFeedbackResponse < Aws::EmptyStructure; end

    # Details about a reactive anomaly. This object is returned by
    # `ListAnomalies`.
    #
    # @!attribute [rw] id
    #   The ID of the reactive anomaly.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the anomaly.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the anomaly.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_time_range
    #   A time range that specifies when the observed unusual behavior in an
    #   anomaly started and ended. This is different from
    #   `AnomalyReportedTimeRange`, which specifies the time range when
    #   DevOps Guru opens and then closes an anomaly.
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] anomaly_reported_time_range
    #   A `AnomalyReportedTimeRange` object that specifies the time range
    #   between when the anomaly is opened and the time when it is closed.
    #   @return [Types::AnomalyReportedTimeRange]
    #
    # @!attribute [rw] source_details
    #   Details about the source of the analyzed operational data that
    #   triggered the anomaly. The one supported source is Amazon CloudWatch
    #   metrics.
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] associated_insight_id
    #   The ID of the insight that contains this anomaly. An insight is
    #   composed of related anomalies.
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveAnomaly AWS API Documentation
    #
    class ReactiveAnomaly < Struct.new(
      :id,
      :severity,
      :status,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a reactive anomaly. This object is returned by
    # `DescribeAnomaly.`
    #
    # @!attribute [rw] id
    #   The ID of the reactive anomaly.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the reactive anomaly.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the reactive anomaly.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_time_range
    #   A time range that specifies when the observed unusual behavior in an
    #   anomaly started and ended. This is different from
    #   `AnomalyReportedTimeRange`, which specifies the time range when
    #   DevOps Guru opens and then closes an anomaly.
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] anomaly_reported_time_range
    #   A `AnomalyReportedTimeRange` object that specifies the time range
    #   between when the anomaly is opened and the time when it is closed.
    #   @return [Types::AnomalyReportedTimeRange]
    #
    # @!attribute [rw] source_details
    #   Details about the source of the analyzed operational data that
    #   triggered the anomaly. The one supported source is Amazon CloudWatch
    #   metrics.
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] associated_insight_id
    #   The ID of the insight that contains this anomaly. An insight is
    #   composed of related anomalies.
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveAnomalySummary AWS API Documentation
    #
    class ReactiveAnomalySummary < Struct.new(
      :id,
      :severity,
      :status,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a reactive insight. This object is returned by
    # `ListInsights`.
    #
    # @!attribute [rw] id
    #   The ID of a reactive insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a reactive insight.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of a reactive insight.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a reactive insight.
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   A time ranged that specifies when the observed behavior in an
    #   insight started and ended.
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] ssm_ops_item_id
    #   The ID of the AWS System Manager OpsItem created for this insight.
    #   You must enable the creation of OpstItems insights before they are
    #   created for each insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveInsight AWS API Documentation
    #
    class ReactiveInsight < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :ssm_ops_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a reactive insight. This object is returned by
    # `DescribeInsight.`
    #
    # @!attribute [rw] id
    #   The ID of a reactive summary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a reactive insight.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of a reactive insight.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a reactive insight.
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   A time ranged that specifies when the observed behavior in an
    #   insight started and ended.
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] service_collection
    #   A collection of the names of AWS services.
    #   @return [Types::ServiceCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveInsightSummary AWS API Documentation
    #
    class ReactiveInsightSummary < Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :service_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Recommendation information to help you remediate detected anomalous
    # behavior that generated an insight.
    #
    # @!attribute [rw] description
    #   A description of the problem.
    #   @return [String]
    #
    # @!attribute [rw] link
    #   A hyperlink to information to help you address the problem.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason DevOps Guru flagged the anomalous behavior as a problem.
    #   @return [String]
    #
    # @!attribute [rw] related_events
    #   Events that are related to the problem. Use these events to learn
    #   more about what's happening and to help address the issue.
    #   @return [Array<Types::RecommendationRelatedEvent>]
    #
    # @!attribute [rw] related_anomalies
    #   Anomalies that are related to the problem. Use these Anomalies to
    #   learn more about what's happening and to help address the issue.
    #   @return [Array<Types::RecommendationRelatedAnomaly>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :description,
      :link,
      :name,
      :reason,
      :related_events,
      :related_anomalies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an anomaly that is related to a recommendation.
    #
    # @!attribute [rw] resources
    #   An array of objects that represent resources in which DevOps Guru
    #   detected anomalous behavior. Each object contains the name and type
    #   of the resource.
    #   @return [Array<Types::RecommendationRelatedAnomalyResource>]
    #
    # @!attribute [rw] source_details
    #   Information about where the anomalous behavior related the
    #   recommendation was found. For example, details in Amazon CloudWatch
    #   metrics.
    #   @return [Array<Types::RecommendationRelatedAnomalySourceDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedAnomaly AWS API Documentation
    #
    class RecommendationRelatedAnomaly < Struct.new(
      :resources,
      :source_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource in which DevOps Guru detected anomalous
    # behavior.
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedAnomalyResource AWS API Documentation
    #
    class RecommendationRelatedAnomalyResource < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array of
    # `RecommendationRelatedCloudWatchMetricsSourceDetail` objects that
    # contain the name and namespace of an Amazon CloudWatch metric.
    #
    # @!attribute [rw] cloud_watch_metrics
    #   An array of `CloudWatchMetricsDetail` objects that contains
    #   information about the analyzed metrics that displayed anomalous
    #   behavior.
    #   @return [Array<Types::RecommendationRelatedCloudWatchMetricsSourceDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedAnomalySourceDetail AWS API Documentation
    #
    class RecommendationRelatedAnomalySourceDetail < Struct.new(
      :cloud_watch_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon CloudWatch metric that is analyzed by
    # DevOps Guru. It is one of many analyzed metrics that are used to
    # generate insights.
    #
    # @!attribute [rw] metric_name
    #   The name of the CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the CloudWatch metric. A namespace is a container
    #   for CloudWatch metrics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedCloudWatchMetricsSourceDetail AWS API Documentation
    #
    class RecommendationRelatedCloudWatchMetricsSourceDetail < Struct.new(
      :metric_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an event that is related to a recommendation.
    #
    # @!attribute [rw] name
    #   The name of the event. This corresponds to the `Name` field in an
    #   `Event` object.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   A `ResourceCollection` object that contains arrays of the names of
    #   AWS CloudFormation stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Array<Types::RecommendationRelatedEventResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedEvent AWS API Documentation
    #
    class RecommendationRelatedEvent < Struct.new(
      :name,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an AWS resource that emitted and event that is
    # related to a recommendation in an insight.
    #
    # @!attribute [rw] name
    #   The name of the resource that emitted the event. This corresponds to
    #   the `Name` field in an `EventResource` object.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource that emitted the event. This corresponds to
    #   the `Type` field in an `EventResource` object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedEventResource AWS API Documentation
    #
    class RecommendationRelatedEventResource < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveNotificationChannelRequest
    #   data as a hash:
    #
    #       {
    #         id: "NotificationChannelId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the notification channel to be removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RemoveNotificationChannelRequest AWS API Documentation
    #
    class RemoveNotificationChannelRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RemoveNotificationChannelResponse AWS API Documentation
    #
    class RemoveNotificationChannelResponse < Aws::EmptyStructure; end

    # A collection of AWS resources supported by DevOps Guru. The one type
    # of AWS resource collection supported is AWS CloudFormation stacks.
    # DevOps Guru can be configured to analyze only the AWS resources that
    # are defined in the stacks. You can specify up to 500 AWS
    # CloudFormation stacks.
    #
    # @note When making an API call, you may pass ResourceCollection
    #   data as a hash:
    #
    #       {
    #         cloud_formation: {
    #           stack_names: ["StackName"],
    #         },
    #       }
    #
    # @!attribute [rw] cloud_formation
    #   An array of the names of AWS CloudFormation stacks. The stacks
    #   define AWS resources that DevOps Guru analyzes. You can specify up
    #   to 500 AWS CloudFormation stacks.
    #   @return [Types::CloudFormationCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ResourceCollection AWS API Documentation
    #
    class ResourceCollection < Struct.new(
      :cloud_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a filter used to specify which AWS resources are
    # analyzed for anomalous behavior by DevOps Guru.
    #
    # @!attribute [rw] cloud_formation
    #   Information about AWS CloudFormation stacks. You can use up to 500
    #   stacks to specify which AWS resources in your account to analyze.
    #   For more information, see [Stacks][1] in the *AWS CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html
    #   @return [Types::CloudFormationCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ResourceCollectionFilter AWS API Documentation
    #
    class ResourceCollectionFilter < Struct.new(
      :cloud_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A requested resource could not be found
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the AWS resource that could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the AWS resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one or more severity values and one or more status values
    # that are used to search for insights.
    #
    # @note When making an API call, you may pass SearchInsightsFilters
    #   data as a hash:
    #
    #       {
    #         severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #         statuses: ["ONGOING"], # accepts ONGOING, CLOSED
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"],
    #           },
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY"], # accepts API_GATEWAY, APPLICATION_ELB, AUTO_SCALING_GROUP, CLOUD_FRONT, DYNAMO_DB, EC2, ECS, EKS, ELASTIC_BEANSTALK, ELASTI_CACHE, ELB, ES, KINESIS, LAMBDA, NAT_GATEWAY, NETWORK_ELB, RDS, REDSHIFT, ROUTE_53, S3, SAGE_MAKER, SNS, SQS, STEP_FUNCTIONS, SWF
    #         },
    #       }
    #
    # @!attribute [rw] severities
    #   An array of severity values used to search for insights.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   An array of status values used to search for insights.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_collection
    #   A collection of AWS resources supported by DevOps Guru. The one type
    #   of AWS resource collection supported is AWS CloudFormation stacks.
    #   DevOps Guru can be configured to analyze only the AWS resources that
    #   are defined in the stacks. You can specify up to 500 AWS
    #   CloudFormation stacks.
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] service_collection
    #   A collection of the names of AWS services.
    #   @return [Types::ServiceCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsightsFilters AWS API Documentation
    #
    class SearchInsightsFilters < Struct.new(
      :severities,
      :statuses,
      :resource_collection,
      :service_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchInsightsRequest
    #   data as a hash:
    #
    #       {
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #         filters: {
    #           severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #           statuses: ["ONGOING"], # accepts ONGOING, CLOSED
    #           resource_collection: {
    #             cloud_formation: {
    #               stack_names: ["StackName"],
    #             },
    #           },
    #           service_collection: {
    #             service_names: ["API_GATEWAY"], # accepts API_GATEWAY, APPLICATION_ELB, AUTO_SCALING_GROUP, CLOUD_FRONT, DYNAMO_DB, EC2, ECS, EKS, ELASTIC_BEANSTALK, ELASTI_CACHE, ELB, ES, KINESIS, LAMBDA, NAT_GATEWAY, NETWORK_ELB, RDS, REDSHIFT, ROUTE_53, S3, SAGE_MAKER, SNS, SQS, STEP_FUNCTIONS, SWF
    #           },
    #         },
    #         max_results: 1,
    #         next_token: "UuidNextToken",
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       }
    #
    # @!attribute [rw] start_time_range
    #   The start of the time range passed in. Returned insights occurred
    #   after this time.
    #   @return [Types::StartTimeRange]
    #
    # @!attribute [rw] filters
    #   A `SearchInsightsFilters` object that is used to set the severity
    #   and status filters on your insight search.
    #   @return [Types::SearchInsightsFilters]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of insights you are searching for (`REACTIVE` or
    #   `PROACTIVE`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsightsRequest AWS API Documentation
    #
    class SearchInsightsRequest < Struct.new(
      :start_time_range,
      :filters,
      :max_results,
      :next_token,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proactive_insights
    #   The returned proactive insights.
    #   @return [Array<Types::ProactiveInsightSummary>]
    #
    # @!attribute [rw] reactive_insights
    #   The returned reactive insights.
    #   @return [Array<Types::ReactiveInsightSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsightsResponse AWS API Documentation
    #
    class SearchInsightsResponse < Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of the names of AWS services.
    #
    # @note When making an API call, you may pass ServiceCollection
    #   data as a hash:
    #
    #       {
    #         service_names: ["API_GATEWAY"], # accepts API_GATEWAY, APPLICATION_ELB, AUTO_SCALING_GROUP, CLOUD_FRONT, DYNAMO_DB, EC2, ECS, EKS, ELASTIC_BEANSTALK, ELASTI_CACHE, ELB, ES, KINESIS, LAMBDA, NAT_GATEWAY, NETWORK_ELB, RDS, REDSHIFT, ROUTE_53, S3, SAGE_MAKER, SNS, SQS, STEP_FUNCTIONS, SWF
    #       }
    #
    # @!attribute [rw] service_names
    #   An array of strings that each specifies the name of an AWS service.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceCollection AWS API Documentation
    #
    class ServiceCollection < Struct.new(
      :service_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the health of an AWS service.
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service.
    #   @return [String]
    #
    # @!attribute [rw] insight
    #   Represents the health of an AWS service. This is a
    #   `ServiceInsightHealth` that contains the number of open proactive
    #   and reactive insights for this service.
    #   @return [Types::ServiceInsightHealth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceHealth AWS API Documentation
    #
    class ServiceHealth < Struct.new(
      :service_name,
      :insight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the number of open proactive and reactive insights in an
    # analyzed AWS service.
    #
    # @!attribute [rw] open_proactive_insights
    #   The number of open proactive insights in the AWS service
    #   @return [Integer]
    #
    # @!attribute [rw] open_reactive_insights
    #   The number of open reactive insights in the AWS service
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceInsightHealth AWS API Documentation
    #
    class ServiceInsightHealth < Struct.new(
      :open_proactive_insights,
      :open_reactive_insights)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the integration of DevOps Guru with another AWS
    # service, such as AWS Systems Manager.
    #
    # @!attribute [rw] ops_center
    #   Information about whether DevOps Guru is configured to create an
    #   OpsItem in AWS Systems Manager OpsCenter for each created insight.
    #   @return [Types::OpsCenterIntegration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceIntegrationConfig AWS API Documentation
    #
    class ServiceIntegrationConfig < Struct.new(
      :ops_center)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains a value that exceeds a maximum quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the estimated monthly cost
    # to analyze an AWS resource. For more information, see [Estimate your
    # Amazon DevOps Guru costs][1] and [Amazon DevOps Guru pricing][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html
    # [2]: http://aws.amazon.com/devops-guru/pricing/
    #
    # @!attribute [rw] type
    #   The type of the AWS resource.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the resource. The resource is `ACTIVE` if it produces
    #   metrics, events, or logs within an hour, otherwise it is `INACTIVE`.
    #   You pay for the number of active AWS resource hours analyzed for
    #   each resource. Inactive resources are not charged.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of active resources analyzed for this service to create a
    #   monthly cost estimate.
    #   @return [Integer]
    #
    # @!attribute [rw] unit_cost
    #   The price per hour to analyze the resources in the service. For more
    #   information, see [Estimate your Amazon DevOps Guru costs][1] and
    #   [Amazon DevOps Guru pricing][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html
    #   [2]: http://aws.amazon.com/devops-guru/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] cost
    #   The total estimated monthly cost to analyze the active resources for
    #   this resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceResourceCost AWS API Documentation
    #
    class ServiceResourceCost < Struct.new(
      :type,
      :state,
      :count,
      :unit_cost,
      :cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Amazon Resource Name (ARN) of an Amazon Simple
    # Notification Service topic.
    #
    # If you use an Amazon SNS topic in another account, you must attach a
    # policy to it that grants DevOps Guru permission to it notifications.
    # DevOps Guru adds the required policy on your behalf to send
    # notifications using Amazon SNS in your account. For more information,
    # see [Permissions for cross account Amazon SNS topics][1].
    #
    # If you use an Amazon SNS topic that is encrypted by an AWS Key
    # Management Service customer-managed key (CMK), then you must add
    # permissions to the CMK. For more information, see [Permissions for AWS
    # KMS–encrypted Amazon SNS topics][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html
    # [2]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html
    #
    # @note When making an API call, you may pass SnsChannelConfig
    #   data as a hash:
    #
    #       {
    #         topic_arn: "TopicArn",
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of an Amazon Simple Notification
    #   Service topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SnsChannelConfig AWS API Documentation
    #
    class SnsChannelConfig < Struct.new(
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartCostEstimationRequest
    #   data as a hash:
    #
    #       {
    #         resource_collection: { # required
    #           cloud_formation: {
    #             stack_names: ["StackName"],
    #           },
    #         },
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] resource_collection
    #   The collection of AWS resources used to create a monthly DevOps Guru
    #   cost estimate.
    #   @return [Types::CostEstimationResourceCollectionFilter]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to identify each cost estimate request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/StartCostEstimationRequest AWS API Documentation
    #
    class StartCostEstimationRequest < Struct.new(
      :resource_collection,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/StartCostEstimationResponse AWS API Documentation
    #
    class StartCostEstimationResponse < Aws::EmptyStructure; end

    # A time range used to specify when the behavior of an insight or
    # anomaly started.
    #
    # @note When making an API call, you may pass StartTimeRange
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now,
    #         to_time: Time.now,
    #       }
    #
    # @!attribute [rw] from_time
    #   The start time of the time range.
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   The end time of the time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/StartTimeRange AWS API Documentation
    #
    class StartTimeRange < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to a request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota that was exceeded, causing the throttling
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code of the service that caused the throttling exception.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds after which the action that caused the
    #   throttling exception can be retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of AWS CloudFormation stacks used to update a
    # collection of stacks. You can specify up to 500 AWS CloudFormation
    # stacks.
    #
    # @note When making an API call, you may pass UpdateCloudFormationCollectionFilter
    #   data as a hash:
    #
    #       {
    #         stack_names: ["StackName"],
    #       }
    #
    # @!attribute [rw] stack_names
    #   An array of the names of the AWS CloudFormation stacks to update.
    #   You can specify up to 500 AWS CloudFormation stacks.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateCloudFormationCollectionFilter AWS API Documentation
    #
    class UpdateCloudFormationCollectionFilter < Struct.new(
      :stack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information used to update a collection of AWS resources.
    #
    # @note When making an API call, you may pass UpdateResourceCollectionFilter
    #   data as a hash:
    #
    #       {
    #         cloud_formation: {
    #           stack_names: ["StackName"],
    #         },
    #       }
    #
    # @!attribute [rw] cloud_formation
    #   An collection of AWS CloudFormation stacks. You can specify up to
    #   500 AWS CloudFormation stacks.
    #   @return [Types::UpdateCloudFormationCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateResourceCollectionFilter AWS API Documentation
    #
    class UpdateResourceCollectionFilter < Struct.new(
      :cloud_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResourceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         action: "ADD", # required, accepts ADD, REMOVE
    #         resource_collection: { # required
    #           cloud_formation: {
    #             stack_names: ["StackName"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specifies if the resource collection in the request is added or
    #   deleted to the resource collection.
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   Contains information used to update a collection of AWS resources.
    #   @return [Types::UpdateResourceCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateResourceCollectionRequest AWS API Documentation
    #
    class UpdateResourceCollectionRequest < Struct.new(
      :action,
      :resource_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateResourceCollectionResponse AWS API Documentation
    #
    class UpdateResourceCollectionResponse < Aws::EmptyStructure; end

    # Information about updating the integration status of an AWS service,
    # such as AWS Systems Manager, with DevOps Guru.
    #
    # @note When making an API call, you may pass UpdateServiceIntegrationConfig
    #   data as a hash:
    #
    #       {
    #         ops_center: {
    #           opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] ops_center
    #   Information about whether DevOps Guru is configured to create an
    #   OpsItem in AWS Systems Manager OpsCenter for each created insight.
    #   @return [Types::OpsCenterIntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateServiceIntegrationConfig AWS API Documentation
    #
    class UpdateServiceIntegrationConfig < Struct.new(
      :ops_center)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         service_integration: { # required
    #           ops_center: {
    #             opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] service_integration
    #   An `IntegratedServiceConfig` object used to specify the integrated
    #   service you want to update, and whether you want to update it to
    #   enabled or disabled.
    #   @return [Types::UpdateServiceIntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateServiceIntegrationRequest AWS API Documentation
    #
    class UpdateServiceIntegrationRequest < Struct.new(
      :service_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateServiceIntegrationResponse AWS API Documentation
    #
    class UpdateServiceIntegrationResponse < Aws::EmptyStructure; end

    # Contains information about data passed in to a field during a request
    # that is not valid.
    #
    # @!attribute [rw] message
    #   A message that describes the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the validation exception was thrown.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   An array of fields that are associated with the validation
    #   exception.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field associated with the validation exception.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with the validation exception with
    #   information to help determine its cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
