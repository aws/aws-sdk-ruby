# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScalingPlans
  module Types

    # Represents an application source.
    #
    # @note When making an API call, you may pass ApplicationSource
    #   data as a hash:
    #
    #       {
    #         cloud_formation_stack_arn: "XmlString",
    #         tag_filters: [
    #           {
    #             key: "XmlStringMaxLen128",
    #             values: ["XmlStringMaxLen256"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cloud_formation_stack_arn
    #   The Amazon Resource Name (ARN) of a CloudFormation stack.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateScalingPlanRequest
    #   data as a hash:
    #
    #       {
    #         scaling_plan_name: "ScalingPlanName", # required
    #         application_source: { # required
    #           cloud_formation_stack_arn: "XmlString",
    #           tag_filters: [
    #             {
    #               key: "XmlStringMaxLen128",
    #               values: ["XmlStringMaxLen256"],
    #             },
    #           ],
    #         },
    #         scaling_instructions: [ # required
    #           {
    #             service_namespace: "autoscaling", # required, accepts autoscaling, ecs, ec2, rds, dynamodb
    #             resource_id: "ResourceIdMaxLen1600", # required
    #             scalable_dimension: "autoscaling:autoScalingGroup:DesiredCapacity", # required, accepts autoscaling:autoScalingGroup:DesiredCapacity, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #             target_tracking_configurations: [ # required
    #               {
    #                 predefined_scaling_metric_specification: {
    #                   predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #                   resource_label: "ResourceLabel",
    #                 },
    #                 customized_scaling_metric_specification: {
    #                   metric_name: "MetricName", # required
    #                   namespace: "MetricNamespace", # required
    #                   dimensions: [
    #                     {
    #                       name: "MetricDimensionName", # required
    #                       value: "MetricDimensionValue", # required
    #                     },
    #                   ],
    #                   statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #                   unit: "MetricUnit",
    #                 },
    #                 target_value: 1.0, # required
    #                 disable_scale_in: false,
    #                 scale_out_cooldown: 1,
    #                 scale_in_cooldown: 1,
    #                 estimated_instance_warmup: 1,
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan. Names cannot contain vertical bars,
    #   colons, or forward slashes.
    #   @return [String]
    #
    # @!attribute [rw] application_source
    #   A CloudFormation stack or set of tags. You can create one scaling
    #   plan per application source.
    #   @return [Types::ApplicationSource]
    #
    # @!attribute [rw] scaling_instructions
    #   The scaling instructions.
    #   @return [Array<Types::ScalingInstruction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CreateScalingPlanRequest AWS API Documentation
    #
    class CreateScalingPlanRequest < Struct.new(
      :scaling_plan_name,
      :application_source,
      :scaling_instructions)
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_version
    #   The version of the scaling plan. This value is always 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CreateScalingPlanResponse AWS API Documentation
    #
    class CreateScalingPlanResponse < Struct.new(
      :scaling_plan_version)
      include Aws::Structure
    end

    # Represents a customized metric for a target tracking policy.
    #
    # @note When making an API call, you may pass CustomizedScalingMetricSpecification
    #   data as a hash:
    #
    #       {
    #         metric_name: "MetricName", # required
    #         namespace: "MetricNamespace", # required
    #         dimensions: [
    #           {
    #             name: "MetricDimensionName", # required
    #             value: "MetricDimensionValue", # required
    #           },
    #         ],
    #         statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #         unit: "MetricUnit",
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteScalingPlanRequest
    #   data as a hash:
    #
    #       {
    #         scaling_plan_name: "ScalingPlanName", # required
    #         scaling_plan_version: 1, # required
    #       }
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version of the scaling plan.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DeleteScalingPlanRequest AWS API Documentation
    #
    class DeleteScalingPlanRequest < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DeleteScalingPlanResponse AWS API Documentation
    #
    class DeleteScalingPlanResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeScalingPlanResourcesRequest
    #   data as a hash:
    #
    #       {
    #         scaling_plan_name: "ScalingPlanName", # required
    #         scaling_plan_version: 1, # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version of the scaling plan.
    #   @return [Integer]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlanResourcesRequest AWS API Documentation
    #
    class DescribeScalingPlanResourcesRequest < Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :max_results,
      :next_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScalingPlansRequest
    #   data as a hash:
    #
    #       {
    #         scaling_plan_names: ["ScalingPlanName"],
    #         scaling_plan_version: 1,
    #         application_sources: [
    #           {
    #             cloud_formation_stack_arn: "XmlString",
    #             tag_filters: [
    #               {
    #                 key: "XmlStringMaxLen128",
    #                 values: ["XmlStringMaxLen256"],
    #               },
    #             ],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] scaling_plan_names
    #   The names of the scaling plans (up to 10). If you specify
    #   application sources, you cannot specify scaling plan names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version of the scaling plan. If you specify a scaling plan
    #   version, you must also specify a scaling plan name.
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
      include Aws::Structure
    end

    # Represents a dimension for a customized metric.
    #
    # @note When making an API call, you may pass MetricDimension
    #   data as a hash:
    #
    #       {
    #         name: "MetricDimensionName", # required
    #         value: "MetricDimensionValue", # required
    #       }
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
      include Aws::Structure
    end

    # Represents a predefined metric for a target tracking policy.
    #
    # @note When making an API call, you may pass PredefinedScalingMetricSpecification
    #   data as a hash:
    #
    #       {
    #         predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #         resource_label: "ResourceLabel",
    #       }
    #
    # @!attribute [rw] predefined_scaling_metric_type
    #   The metric type. The `ALBRequestCountPerTarget` metric type applies
    #   only to Auto Scaling groups, Sport Fleet requests, and ECS services.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   Identifies the resource associated with the metric type. You can't
    #   specify a resource label unless the metric type is
    #   `ALBRequestCountPerTarget` and there is a target group for an
    #   Application Load Balancer attached to the Auto Scaling group, Spot
    #   Fleet request, or ECS service.
    #
    #   The format is
    #   app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt;/targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt;,
    #   where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/PredefinedScalingMetricSpecification AWS API Documentation
    #
    class PredefinedScalingMetricSpecification < Struct.new(
      :predefined_scaling_metric_type,
      :resource_label)
      include Aws::Structure
    end

    # Specifies the scaling configuration for a scalable resource.
    #
    # @note When making an API call, you may pass ScalingInstruction
    #   data as a hash:
    #
    #       {
    #         service_namespace: "autoscaling", # required, accepts autoscaling, ecs, ec2, rds, dynamodb
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "autoscaling:autoScalingGroup:DesiredCapacity", # required, accepts autoscaling:autoScalingGroup:DesiredCapacity, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #         target_tracking_configurations: [ # required
    #           {
    #             predefined_scaling_metric_specification: {
    #               predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #               resource_label: "ResourceLabel",
    #             },
    #             customized_scaling_metric_specification: {
    #               metric_name: "MetricName", # required
    #               namespace: "MetricNamespace", # required
    #               dimensions: [
    #                 {
    #                   name: "MetricDimensionName", # required
    #                   value: "MetricDimensionValue", # required
    #                 },
    #               ],
    #               statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #               unit: "MetricUnit",
    #             },
    #             target_value: 1.0, # required
    #             disable_scale_in: false,
    #             scale_out_cooldown: 1,
    #             scale_in_cooldown: 1,
    #             estimated_instance_warmup: 1,
    #           },
    #         ],
    #       }
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     Spot fleet request.
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
    #     edition.
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   The minimum value to scale to in response to a scale in event.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum value to scale to in response to a scale out event.
    #   @return [Integer]
    #
    # @!attribute [rw] target_tracking_configurations
    #   The target tracking scaling policies (up to 10).
    #   @return [Array<Types::TargetTrackingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ScalingInstruction AWS API Documentation
    #
    class ScalingInstruction < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :target_tracking_configurations)
      include Aws::Structure
    end

    # Represents a scaling plan.
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version of the scaling plan.
    #   @return [Integer]
    #
    # @!attribute [rw] application_source
    #   The application source.
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
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A simple message about the current status of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] status_start_time
    #   The Unix timestamp when the scaling plan entered the current status.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The Unix timestamp when the scaling plan was created.
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
      include Aws::Structure
    end

    # Represents a scalable resource.
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version of the scaling plan.
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
    #   * Spot fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot fleet request ID. Example:
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
    #     Spot fleet request.
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
    #     edition.
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
    #   The target tracking scaling policy.
    #   @return [Types::TargetTrackingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ScalingPolicy AWS API Documentation
    #
    class ScalingPolicy < Struct.new(
      :policy_name,
      :policy_type,
      :target_tracking_configuration)
      include Aws::Structure
    end

    # Represents a tag.
    #
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         key: "XmlStringMaxLen128",
    #         values: ["XmlStringMaxLen256"],
    #       }
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
      include Aws::Structure
    end

    # Represents a target tracking scaling policy.
    #
    # @note When making an API call, you may pass TargetTrackingConfiguration
    #   data as a hash:
    #
    #       {
    #         predefined_scaling_metric_specification: {
    #           predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #           resource_label: "ResourceLabel",
    #         },
    #         customized_scaling_metric_specification: {
    #           metric_name: "MetricName", # required
    #           namespace: "MetricNamespace", # required
    #           dimensions: [
    #             {
    #               name: "MetricDimensionName", # required
    #               value: "MetricDimensionValue", # required
    #             },
    #           ],
    #           statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #           unit: "MetricUnit",
    #         },
    #         target_value: 1.0, # required
    #         disable_scale_in: false,
    #         scale_out_cooldown: 1,
    #         scale_in_cooldown: 1,
    #         estimated_instance_warmup: 1,
    #       }
    #
    # @!attribute [rw] predefined_scaling_metric_specification
    #   A predefined metric.
    #   @return [Types::PredefinedScalingMetricSpecification]
    #
    # @!attribute [rw] customized_scaling_metric_specification
    #   A customized metric.
    #   @return [Types::CustomizedScalingMetricSpecification]
    #
    # @!attribute [rw] target_value
    #   The target value for the metric. The range is 8.515920e-109 to
    #   1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
    #   @return [Float]
    #
    # @!attribute [rw] disable_scale_in
    #   Indicates whether scale in by the target tracking policy is
    #   disabled. If the value is `true`, scale in is disabled and the
    #   target tracking policy won't remove capacity from the scalable
    #   resource. Otherwise, scale in is enabled and the target tracking
    #   policy can remove capacity from the scalable resource. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] scale_out_cooldown
    #   The amount of time, in seconds, after a scale out activity completes
    #   before another scale out activity can start. This value is not used
    #   if the scalable resource is an Auto Scaling group.
    #
    #   While the cooldown period is in effect, the capacity that has been
    #   added by the previous scale out event that initiated the cooldown is
    #   calculated as part of the desired capacity for the next scale out.
    #   The intention is to continuously (but not excessively) scale out.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_cooldown
    #   The amount of time, in seconds, after a scale in activity completes
    #   before another scale in activity can start. This value is not used
    #   if the scalable resource is an Auto Scaling group.
    #
    #   The cooldown period is used to block subsequent scale in requests
    #   until it has expired. The intention is to scale in conservatively to
    #   protect your application's availability. However, if another alarm
    #   triggers a scale out policy during the cooldown period after a
    #   scale-in, AWS Auto Scaling scales out your scalable target
    #   immediately.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateScalingPlanRequest
    #   data as a hash:
    #
    #       {
    #         application_source: {
    #           cloud_formation_stack_arn: "XmlString",
    #           tag_filters: [
    #             {
    #               key: "XmlStringMaxLen128",
    #               values: ["XmlStringMaxLen256"],
    #             },
    #           ],
    #         },
    #         scaling_plan_name: "ScalingPlanName", # required
    #         scaling_instructions: [
    #           {
    #             service_namespace: "autoscaling", # required, accepts autoscaling, ecs, ec2, rds, dynamodb
    #             resource_id: "ResourceIdMaxLen1600", # required
    #             scalable_dimension: "autoscaling:autoScalingGroup:DesiredCapacity", # required, accepts autoscaling:autoScalingGroup:DesiredCapacity, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #             target_tracking_configurations: [ # required
    #               {
    #                 predefined_scaling_metric_specification: {
    #                   predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #                   resource_label: "ResourceLabel",
    #                 },
    #                 customized_scaling_metric_specification: {
    #                   metric_name: "MetricName", # required
    #                   namespace: "MetricNamespace", # required
    #                   dimensions: [
    #                     {
    #                       name: "MetricDimensionName", # required
    #                       value: "MetricDimensionValue", # required
    #                     },
    #                   ],
    #                   statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #                   unit: "MetricUnit",
    #                 },
    #                 target_value: 1.0, # required
    #                 disable_scale_in: false,
    #                 scale_out_cooldown: 1,
    #                 scale_in_cooldown: 1,
    #                 estimated_instance_warmup: 1,
    #               },
    #             ],
    #           },
    #         ],
    #         scaling_plan_version: 1, # required
    #       }
    #
    # @!attribute [rw] application_source
    #   A CloudFormation stack or set of tags.
    #   @return [Types::ApplicationSource]
    #
    # @!attribute [rw] scaling_plan_name
    #   The name of the scaling plan.
    #   @return [String]
    #
    # @!attribute [rw] scaling_instructions
    #   The scaling instructions.
    #   @return [Array<Types::ScalingInstruction>]
    #
    # @!attribute [rw] scaling_plan_version
    #   The version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/UpdateScalingPlanRequest AWS API Documentation
    #
    class UpdateScalingPlanRequest < Struct.new(
      :application_source,
      :scaling_plan_name,
      :scaling_instructions,
      :scaling_plan_version)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/UpdateScalingPlanResponse AWS API Documentation
    #
    class UpdateScalingPlanResponse < Aws::EmptyStructure; end

  end
end
