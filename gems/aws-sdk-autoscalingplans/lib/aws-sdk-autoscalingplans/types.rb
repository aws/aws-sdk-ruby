# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScalingPlans
  module Types

    # Represents an application source.
    #
    # @!attribute [rw] cloud_formation_stack_arn
    #   The Amazon Resource Name (ARN) of a AWS CloudFormation stack.
    #   @return [String]
    #
    # @!attribute [rw] tag_filters
    #   A set of tags (up to 50).
    #   @return [Array<Types::TagFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ApplicationSource AWS API Documentation
    #
    class ApplicationSource < Struct.new(
      :cloud_formation_stack_arn,
      :tag_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Concurrent updates caused an exception, for example, if you request an
    # update to a scaling plan that already has a pending update.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ConcurrentUpdateException AWS API Documentation
    #
    class ConcurrentUpdateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan. Names cannot contain vertical bars,
    #   colons, or forward slashes.
    #   @return [String]
    #
    # @!attribute [rw] application_source
    #   A CloudFormation stack or set of tags. You can create one scaling
    #   plan per application source.
    #
    #   For more information, see [ApplicationSource][1] in the *AWS Auto
    #   Scaling API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html
    #   @return [Types::ApplicationSource]
    #
    # @!attribute [rw] scaling_instructions
    #   The scaling instructions.
    #
    #   For more information, see [ScalingInstruction][1] in the *AWS Auto
    #   Scaling API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html
    #   @return [Array<Types::ScalingInstruction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CreateScalingPlanRequest AWS API Documentation
    #
    class CreateScalingPlanRequest < Struct.new(
      :scaling_plan_name,
      :application_source,
      :scaling_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan. This value is always `1`.
    #   Currently, you cannot have multiple scaling plan versions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CreateScalingPlanResponse AWS API Documentation
    #
    class CreateScalingPlanResponse < Struct.new(
      :scaling_plan_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a CloudWatch metric of your choosing that can be used for
    # predictive scaling.
    #
    # For predictive scaling to work with a customized load metric
    # specification, AWS Auto Scaling needs access to the `Sum` and
    # `Average` statistics that CloudWatch computes from metric data.
    #
    # When you choose a load metric, make sure that the required `Sum` and
    # `Average` statistics for your metric are available in CloudWatch and
    # that they provide relevant data for predictive scaling. The `Sum`
    # statistic must represent the total load on the resource, and the
    # `Average` statistic must represent the average load per capacity unit
    # of the resource. For example, there is a metric that counts the number
    # of requests processed by your Auto Scaling group. If the `Sum`
    # statistic represents the total request count processed by the group,
    # then the `Average` statistic for the specified metric must represent
    # the average request count processed by each instance of the group.
    #
    # If you publish your own metrics, you can aggregate the data points at
    # a given interval and then publish the aggregated data points to
    # CloudWatch. Before AWS Auto Scaling generates the forecast, it sums up
    # all the metric data points that occurred within each hour to match the
    # granularity period that is used in the forecast (60 minutes).
    #
    # For information about terminology, available metrics, or how to
    # publish new metrics, see [Amazon CloudWatch Concepts][1] in the
    # *Amazon CloudWatch User Guide*.
    #
    # After creating your scaling plan, you can use the AWS Auto Scaling
    # console to visualize forecasts for the specified metric. For more
    # information, see [View Scaling Information for a Resource][2] in the
    # *AWS Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    # [2]: https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions of the metric.
    #
    #   Conditional: If you published your metric with dimensions, you must
    #   specify the same dimensions in your customized load metric
    #   specification.
    #   @return [Array<Types::MetricDimension>]
    #
    # @!attribute [rw] statistic
    #   The statistic of the metric. The only valid value is `Sum`.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CustomizedLoadMetricSpecification AWS API Documentation
    #
    class CustomizedLoadMetricSpecification < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a CloudWatch metric of your choosing that can be used for
    # dynamic scaling as part of a target tracking scaling policy.
    #
    # To create your customized scaling metric specification:
    #
    # * Add values for each required parameter from CloudWatch. You can use
    #   an existing metric, or a new metric that you create. To use your own
    #   metric, you must first publish the metric to CloudWatch. For more
    #   information, see [Publish Custom Metrics][1] in the *Amazon
    #   CloudWatch User Guide*.
    #
    # * Choose a metric that changes proportionally with capacity. The value
    #   of the metric should increase or decrease in inverse proportion to
    #   the number of capacity units. That is, the value of the metric
    #   should decrease when capacity increases.
    #
    # For information about terminology, available metrics, or how to
    # publish new metrics, see [Amazon CloudWatch Concepts][2] in the
    # *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions of the metric.
    #
    #   Conditional: If you published your metric with dimensions, you must
    #   specify the same dimensions in your customized scaling metric
    #   specification.
    #   @return [Array<Types::MetricDimension>]
    #
    # @!attribute [rw] statistic
    #   The statistic of the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CustomizedScalingMetricSpecification AWS API Documentation
    #
    class CustomizedScalingMetricSpecification < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single value in the forecast data used for predictive
    # scaling.
    #
    # @!attribute [rw] timestamp
    #   The time stamp for the data point in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   The value of the data point.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/Datapoint AWS API Documentation
    #
    class Datapoint < Struct.new(
      :timestamp,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan. Currently, the only valid
    #   value is `1`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DeleteScalingPlanRequest AWS API Documentation
    #
    class DeleteScalingPlanRequest < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DeleteScalingPlanResponse AWS API Documentation
    #
    class DeleteScalingPlanResponse < Aws::EmptyStructure; end

    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan. Currently, the only valid
    #   value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable resources to return. The value must
    #   be between 1 and 50. The default value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlanResourcesRequest AWS API Documentation
    #
    class DescribeScalingPlanResourcesRequest < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_resources
    #   Information about the scalable resources.
    #   @return [Array<Types::ScalingPlanResource>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlanResourcesResponse AWS API Documentation
    #
    class DescribeScalingPlanResourcesResponse < Struct.new(
      :scaling_plan_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_names
    #   The names of the scaling plans (up to 10). If you specify
    #   application sources, you cannot specify scaling plan names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan. Currently, the only valid
    #   value is `1`.
    #
    #   <note markdown="1"> If you specify a scaling plan version, you must also specify a
    #   scaling plan name.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] application_sources
    #   The sources for the applications (up to 10). If you specify scaling
    #   plan names, you cannot specify application sources.
    #   @return [Array<Types::ApplicationSource>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable resources to return. This value can
    #   be between 1 and 50. The default value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlansRequest AWS API Documentation
    #
    class DescribeScalingPlansRequest < Struct.new(
      :scaling_plan_names,
      :scaling_plan_version,
      :application_sources,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plans
    #   Information about the scaling plans.
    #   @return [Array<Types::ScalingPlan>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlansResponse AWS API Documentation
    #
    class DescribeScalingPlansResponse < Struct.new(
      :scaling_plans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan. Currently, the only valid
    #   value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service. The only valid value is
    #   `autoscaling`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource. This string consists of a prefix
    #   (`autoScalingGroup`) followed by the name of a specified Auto
    #   Scaling group (`my-asg`). Example: `autoScalingGroup/my-asg`.
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension for the resource. The only valid value is
    #   `autoscaling:autoScalingGroup:DesiredCapacity`.
    #   @return [String]
    #
    # @!attribute [rw] forecast_data_type
    #   The type of forecast data to get.
    #
    #   * `LoadForecast`: The load metric forecast.
    #
    #   * `CapacityForecast`: The capacity forecast.
    #
    #   * `ScheduledActionMinCapacity`: The minimum capacity for each
    #     scheduled scaling action. This data is calculated as the larger of
    #     two values: the capacity forecast or the minimum capacity in the
    #     scaling instruction.
    #
    #   * `ScheduledActionMaxCapacity`: The maximum capacity for each
    #     scheduled scaling action. The calculation used is determined by
    #     the predictive scaling maximum capacity behavior setting in the
    #     scaling instruction.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The inclusive start time of the time range for the forecast data to
    #   get. The date and time can be at most 56 days before the current
    #   date and time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The exclusive end time of the time range for the forecast data to
    #   get. The maximum time duration between the start and end time is
    #   seven days.
    #
    #   Although this parameter can accept a date and time that is more than
    #   two days in the future, the availability of forecast data has
    #   limits. AWS Auto Scaling only issues forecasts for periods of two
    #   days in advance.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/GetScalingPlanResourceForecastDataRequest AWS API Documentation
    #
    class GetScalingPlanResourceForecastDataRequest < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :forecast_data_type,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datapoints
    #   The data points to return.
    #   @return [Array<Types::Datapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/GetScalingPlanResourceForecastDataResponse AWS API Documentation
    #
    class GetScalingPlanResourceForecastDataResponse < Struct.new(
      :datapoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an internal error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token provided is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your account exceeded a limit. This exception is thrown when a
    # per-account resource limit is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a dimension for a customized metric.
    #
    # @!attribute [rw] name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified object could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ObjectNotFoundException AWS API Documentation
    #
    class ObjectNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a predefined metric that can be used for predictive
    # scaling.
    #
    # After creating your scaling plan, you can use the AWS Auto Scaling
    # console to visualize forecasts for the specified metric. For more
    # information, see [View Scaling Information for a Resource][1] in the
    # *AWS Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource
    #
    # @!attribute [rw] predefined_load_metric_type
    #   The metric type.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   Identifies the resource associated with the metric type. You can't
    #   specify a resource label unless the metric type is
    #   `ALBTargetGroupRequestCount` and there is a target group for an
    #   Application Load Balancer attached to the Auto Scaling group.
    #
    #   You create the resource label by appending the final portion of the
    #   load balancer ARN and the final portion of the target group ARN into
    #   a single value, separated by a forward slash (/). The format is
    #   app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt;/targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt;,
    #   where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #
    #   This is an example:
    #   app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d.
    #
    #   To find the ARN for an Application Load Balancer, use the
    #   [DescribeLoadBalancers][1] API operation. To find the ARN for the
    #   target group, use the [DescribeTargetGroups][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/PredefinedLoadMetricSpecification AWS API Documentation
    #
    class PredefinedLoadMetricSpecification < Struct.new(
      :predefined_load_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a predefined metric that can be used for dynamic scaling as
    # part of a target tracking scaling policy.
    #
    # @!attribute [rw] predefined_scaling_metric_type
    #   The metric type. The `ALBRequestCountPerTarget` metric type applies
    #   only to Auto Scaling groups, Spot Fleet requests, and ECS services.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   Identifies the resource associated with the metric type. You can't
    #   specify a resource label unless the metric type is
    #   `ALBRequestCountPerTarget` and there is a target group for an
    #   Application Load Balancer attached to the Auto Scaling group, Spot
    #   Fleet request, or ECS service.
    #
    #   You create the resource label by appending the final portion of the
    #   load balancer ARN and the final portion of the target group ARN into
    #   a single value, separated by a forward slash (/). The format is
    #   app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt;/targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt;,
    #   where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #
    #   This is an example:
    #   app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d.
    #
    #   To find the ARN for an Application Load Balancer, use the
    #   [DescribeLoadBalancers][1] API operation. To find the ARN for the
    #   target group, use the [DescribeTargetGroups][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/PredefinedScalingMetricSpecification AWS API Documentation
    #
    class PredefinedScalingMetricSpecification < Struct.new(
      :predefined_scaling_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a scaling instruction for a scalable resource in a scaling
    # plan. Each scaling instruction applies to one resource.
    #
    # AWS Auto Scaling creates target tracking scaling policies based on the
    # scaling instructions. Target tracking scaling policies adjust the
    # capacity of your scalable resource as required to maintain resource
    # utilization at the target value that you specified.
    #
    # AWS Auto Scaling also configures predictive scaling for your Amazon
    # EC2 Auto Scaling groups using a subset of parameters, including the
    # load metric, the scaling metric, the target value for the scaling
    # metric, the predictive scaling mode (forecast and scale or forecast
    # only), and the desired behavior when the forecast capacity exceeds the
    # maximum capacity of the resource. With predictive scaling, AWS Auto
    # Scaling generates forecasts with traffic predictions for the two days
    # ahead and schedules scaling actions that proactively add and remove
    # resource capacity to match the forecast.
    #
    # We recommend waiting a minimum of 24 hours after creating an Auto
    # Scaling group to configure predictive scaling. At minimum, there must
    # be 24 hours of historical data to generate a forecast. For more
    # information, see [Best Practices for AWS Auto Scaling][1] in the *AWS
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-best-practices.html
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource. This string consists of the resource type
    #   and unique identifier.
    #
    #   * Auto Scaling group - The resource type is `autoScalingGroup` and
    #     the unique identifier is the name of the Auto Scaling group.
    #     Example: `autoScalingGroup/my-asg`.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension associated with the resource.
    #
    #   * `autoscaling:autoScalingGroup:DesiredCapacity` - The desired
    #     capacity of an Auto Scaling group.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   The minimum capacity of the resource.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity of the resource. The exception to this upper
    #   limit is if you specify a non-default setting for
    #   **PredictiveScalingMaxCapacityBehavior**.
    #   @return [Integer]
    #
    # @!attribute [rw] target_tracking_configurations
    #   The target tracking configurations (up to 10). Each of these
    #   structures must specify a unique scaling metric and a target value
    #   for the metric.
    #   @return [Array<Types::TargetTrackingConfiguration>]
    #
    # @!attribute [rw] predefined_load_metric_specification
    #   The predefined load metric to use for predictive scaling. This
    #   parameter or a **CustomizedLoadMetricSpecification** is required
    #   when configuring predictive scaling, and cannot be used otherwise.
    #   @return [Types::PredefinedLoadMetricSpecification]
    #
    # @!attribute [rw] customized_load_metric_specification
    #   The customized load metric to use for predictive scaling. This
    #   parameter or a **PredefinedLoadMetricSpecification** is required
    #   when configuring predictive scaling, and cannot be used otherwise.
    #   @return [Types::CustomizedLoadMetricSpecification]
    #
    # @!attribute [rw] scheduled_action_buffer_time
    #   The amount of time, in seconds, to buffer the run time of scheduled
    #   scaling actions when scaling out. For example, if the forecast says
    #   to add capacity at 10:00 AM, and the buffer time is 5 minutes, then
    #   the run time of the corresponding scheduled scaling action will be
    #   9:55 AM. The intention is to give resources time to be provisioned.
    #   For example, it can take a few minutes to launch an EC2 instance.
    #   The actual amount of time required depends on several factors, such
    #   as the size of the instance and whether there are startup scripts to
    #   complete.
    #
    #   The value must be less than the forecast interval duration of 3600
    #   seconds (60 minutes). The default is 300 seconds.
    #
    #   Only valid when configuring predictive scaling.
    #   @return [Integer]
    #
    # @!attribute [rw] predictive_scaling_max_capacity_behavior
    #   Defines the behavior that should be applied if the forecast capacity
    #   approaches or exceeds the maximum capacity specified for the
    #   resource. The default value is `SetForecastCapacityToMaxCapacity`.
    #
    #   The following are possible values:
    #
    #   * `SetForecastCapacityToMaxCapacity` - AWS Auto Scaling cannot scale
    #     resource capacity higher than the maximum capacity. The maximum
    #     capacity is enforced as a hard limit.
    #
    #   * `SetMaxCapacityToForecastCapacity` - AWS Auto Scaling may scale
    #     resource capacity higher than the maximum capacity to equal but
    #     not exceed forecast capacity.
    #
    #   * `SetMaxCapacityAboveForecastCapacity` - AWS Auto Scaling may scale
    #     resource capacity higher than the maximum capacity by a specified
    #     buffer value. The intention is to give the target tracking scaling
    #     policy extra capacity if unexpected traffic occurs.
    #
    #   Only valid when configuring predictive scaling.
    #   @return [String]
    #
    # @!attribute [rw] predictive_scaling_max_capacity_buffer
    #   The size of the capacity buffer to use when the forecast capacity is
    #   close to or exceeds the maximum capacity. The value is specified as
    #   a percentage relative to the forecast capacity. For example, if the
    #   buffer is 10, this means a 10 percent buffer, such that if the
    #   forecast capacity is 50, and the maximum capacity is 40, then the
    #   effective maximum capacity is 55.
    #
    #   Only valid when configuring predictive scaling. Required if the
    #   **PredictiveScalingMaxCapacityBehavior** is set to
    #   `SetMaxCapacityAboveForecastCapacity`, and cannot be used otherwise.
    #
    #   The range is 1-100.
    #   @return [Integer]
    #
    # @!attribute [rw] predictive_scaling_mode
    #   The predictive scaling mode. The default value is
    #   `ForecastAndScale`. Otherwise, AWS Auto Scaling forecasts capacity
    #   but does not create any scheduled scaling actions based on the
    #   capacity forecast.
    #   @return [String]
    #
    # @!attribute [rw] scaling_policy_update_behavior
    #   Controls whether a resource's externally created scaling policies
    #   are kept or replaced.
    #
    #   The default value is `KeepExternalPolicies`. If the parameter is set
    #   to `ReplaceExternalPolicies`, any scaling policies that are external
    #   to AWS Auto Scaling are deleted and new target tracking scaling
    #   policies created.
    #
    #   Only valid when configuring dynamic scaling.
    #
    #   Condition: The number of existing policies to be replaced must be
    #   less than or equal to 50. If there are more than 50 policies to be
    #   replaced, AWS Auto Scaling keeps all existing policies and does not
    #   create new ones.
    #   @return [String]
    #
    # @!attribute [rw] disable_dynamic_scaling
    #   Controls whether dynamic scaling by AWS Auto Scaling is disabled.
    #   When dynamic scaling is enabled, AWS Auto Scaling creates target
    #   tracking scaling policies based on the specified target tracking
    #   configurations.
    #
    #   The default is enabled (`false`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ScalingInstruction AWS API Documentation
    #
    class ScalingInstruction < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :target_tracking_configurations,
      :predefined_load_metric_specification,
      :customized_load_metric_specification,
      :scheduled_action_buffer_time,
      :predictive_scaling_max_capacity_behavior,
      :predictive_scaling_max_capacity_buffer,
      :predictive_scaling_mode,
      :scaling_policy_update_behavior,
      :disable_dynamic_scaling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scaling plan.
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan.
    #   @return [Integer]
    #
    # @!attribute [rw] application_source
    #   A CloudFormation stack or a set of tags. You can create one scaling
    #   plan per application source.
    #   @return [Types::ApplicationSource]
    #
    # @!attribute [rw] scaling_instructions
    #   The scaling instructions.
    #   @return [Array<Types::ScalingInstruction>]
    #
    # @!attribute [rw] status_code
    #   The status of the scaling plan.
    #
    #   * `Active` - The scaling plan is active.
    #
    #   * `ActiveWithProblems` - The scaling plan is active, but the scaling
    #     configuration for one or more resources could not be applied.
    #
    #   * `CreationInProgress` - The scaling plan is being created.
    #
    #   * `CreationFailed` - The scaling plan could not be created.
    #
    #   * `DeletionInProgress` - The scaling plan is being deleted.
    #
    #   * `DeletionFailed` - The scaling plan could not be deleted.
    #
    #   * `UpdateInProgress` - The scaling plan is being updated.
    #
    #   * `UpdateFailed` - The scaling plan could not be updated.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A simple message about the current status of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] status_start_time
    #   The Unix time stamp when the scaling plan entered the current
    #   status.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The Unix time stamp when the scaling plan was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ScalingPlan AWS API Documentation
    #
    class ScalingPlan < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :application_source,
      :scaling_instructions,
      :status_code,
      :status_message,
      :status_start_time,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scalable resource.
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan.
    #   @return [Integer]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource. This string consists of the resource type
    #   and unique identifier.
    #
    #   * Auto Scaling group - The resource type is `autoScalingGroup` and
    #     the unique identifier is the name of the Auto Scaling group.
    #     Example: `autoScalingGroup/my-asg`.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the resource ID. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the resource ID. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension for the resource.
    #
    #   * `autoscaling:autoScalingGroup:DesiredCapacity` - The desired
    #     capacity of an Auto Scaling group.
    #
    #   * `ecs:service:DesiredCount` - The desired task count of an ECS
    #     service.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet request.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #   @return [String]
    #
    # @!attribute [rw] scaling_policies
    #   The scaling policies.
    #   @return [Array<Types::ScalingPolicy>]
    #
    # @!attribute [rw] scaling_status_code
    #   The scaling status of the resource.
    #
    #   * `Active` - The scaling configuration is active.
    #
    #   * `Inactive` - The scaling configuration is not active because the
    #     scaling plan is being created or the scaling configuration could
    #     not be applied. Check the status message for more information.
    #
    #   * `PartiallyActive` - The scaling configuration is partially active
    #     because the scaling plan is being created or deleted or the
    #     scaling configuration could not be fully applied. Check the status
    #     message for more information.
    #   @return [String]
    #
    # @!attribute [rw] scaling_status_message
    #   A simple message about the current scaling status of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ScalingPlanResource AWS API Documentation
    #
    class ScalingPlanResource < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :scaling_policies,
      :scaling_status_code,
      :scaling_status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scaling policy.
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] target_tracking_configuration
    #   The target tracking scaling policy. Includes support for predefined
    #   or customized metrics.
    #   @return [Types::TargetTrackingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ScalingPolicy AWS API Documentation
    #
    class ScalingPolicy < Struct.new(
      :policy_name,
      :policy_type,
      :target_tracking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a tag.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The tag values (0 to 20).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target tracking configuration to use with AWS Auto
    # Scaling. Used with ScalingInstruction and ScalingPolicy.
    #
    # @!attribute [rw] predefined_scaling_metric_specification
    #   A predefined metric. You can specify either a predefined metric or a
    #   customized metric.
    #   @return [Types::PredefinedScalingMetricSpecification]
    #
    # @!attribute [rw] customized_scaling_metric_specification
    #   A customized metric. You can specify either a predefined metric or a
    #   customized metric.
    #   @return [Types::CustomizedScalingMetricSpecification]
    #
    # @!attribute [rw] target_value
    #   The target value for the metric. Although this property accepts
    #   numbers of type Double, it won't accept values that are either too
    #   small or too large. Values must be in the range of -2^360 to 2^360.
    #   @return [Float]
    #
    # @!attribute [rw] disable_scale_in
    #   Indicates whether scale in by the target tracking scaling policy is
    #   disabled. If the value is `true`, scale in is disabled and the
    #   target tracking scaling policy doesn't remove capacity from the
    #   scalable resource. Otherwise, scale in is enabled and the target
    #   tracking scaling policy can remove capacity from the scalable
    #   resource.
    #
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] scale_out_cooldown
    #   The amount of time, in seconds, to wait for a previous scale-out
    #   activity to take effect. This property is not used if the scalable
    #   resource is an Auto Scaling group.
    #
    #   With the *scale-out cooldown period*, the intention is to
    #   continuously (but not excessively) scale out. After Auto Scaling
    #   successfully scales out using a target tracking scaling policy, it
    #   starts to calculate the cooldown time. The scaling policy won't
    #   increase the desired capacity again unless either a larger scale out
    #   is triggered or the cooldown period ends.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_cooldown
    #   The amount of time, in seconds, after a scale-in activity completes
    #   before another scale-in activity can start. This property is not
    #   used if the scalable resource is an Auto Scaling group.
    #
    #   With the *scale-in cooldown period*, the intention is to scale in
    #   conservatively to protect your application’s availability, so
    #   scale-in activities are blocked until the cooldown period has
    #   expired. However, if another alarm triggers a scale-out activity
    #   during the scale-in cooldown period, Auto Scaling scales out the
    #   target immediately. In this case, the scale-in cooldown period stops
    #   and doesn't complete.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_instance_warmup
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics. This value is used only if the
    #   resource is an Auto Scaling group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/TargetTrackingConfiguration AWS API Documentation
    #
    class TargetTrackingConfiguration < Struct.new(
      :predefined_scaling_metric_specification,
      :customized_scaling_metric_specification,
      :target_value,
      :disable_scale_in,
      :scale_out_cooldown,
      :scale_in_cooldown,
      :estimated_instance_warmup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number of the scaling plan. The only valid value is `1`.
    #   Currently, you cannot have multiple scaling plan versions.
    #   @return [Integer]
    #
    # @!attribute [rw] application_source
    #   A CloudFormation stack or set of tags.
    #
    #   For more information, see [ApplicationSource][1] in the *AWS Auto
    #   Scaling API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html
    #   @return [Types::ApplicationSource]
    #
    # @!attribute [rw] scaling_instructions
    #   The scaling instructions.
    #
    #   For more information, see [ScalingInstruction][1] in the *AWS Auto
    #   Scaling API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html
    #   @return [Array<Types::ScalingInstruction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/UpdateScalingPlanRequest AWS API Documentation
    #
    class UpdateScalingPlanRequest < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :application_source,
      :scaling_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/UpdateScalingPlanResponse AWS API Documentation
    #
    class UpdateScalingPlanResponse < Aws::EmptyStructure; end

    # An exception was thrown for a validation issue. Review the parameters
    # provided.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
