# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScalingPlans
  module Types

    # @note When making an API call, you may pass ApplicationSource
    #   data as a hash:
    #
    #       {
    #         cloud_formation_stack_arn: "XmlString",
    #       }
    #
    # @!attribute [rw] cloud_formation_stack_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/ApplicationSource AWS API Documentation
    #
    class ApplicationSource < Struct.new(
      :cloud_formation_stack_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateScalingPlanRequest
    #   data as a hash:
    #
    #       {
    #         scaling_plan_name: "ScalingPlanName", # required
    #         application_source: { # required
    #           cloud_formation_stack_arn: "XmlString",
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
    #   @return [String]
    #
    # @!attribute [rw] application_source
    #   @return [Types::ApplicationSource]
    #
    # @!attribute [rw] scaling_instructions
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
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CreateScalingPlanResponse AWS API Documentation
    #
    class CreateScalingPlanResponse < Struct.new(
      :scaling_plan_version)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   @return [Array<Types::MetricDimension>]
    #
    # @!attribute [rw] statistic
    #   @return [String]
    #
    # @!attribute [rw] unit
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
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
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
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
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
    #   @return [Array<Types::ScalingPlanResource>]
    #
    # @!attribute [rw] next_token
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
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] scaling_plan_names
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_plan_version
    #   @return [Integer]
    #
    # @!attribute [rw] application_sources
    #   @return [Array<Types::ApplicationSource>]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
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
    #   @return [Array<Types::ScalingPlan>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlansResponse AWS API Documentation
    #
    class DescribeScalingPlansResponse < Struct.new(
      :scaling_plans,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass MetricDimension
    #   data as a hash:
    #
    #       {
    #         name: "MetricDimensionName", # required
    #         value: "MetricDimensionValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PredefinedScalingMetricSpecification
    #   data as a hash:
    #
    #       {
    #         predefined_scaling_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
    #         resource_label: "ResourceLabel",
    #       }
    #
    # @!attribute [rw] predefined_scaling_metric_type
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/PredefinedScalingMetricSpecification AWS API Documentation
    #
    class PredefinedScalingMetricSpecification < Struct.new(
      :predefined_scaling_metric_type,
      :resource_label)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   @return [Integer]
    #
    # @!attribute [rw] target_tracking_configurations
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

    # @!attribute [rw] scaling_plan_name
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   @return [Integer]
    #
    # @!attribute [rw] application_source
    #   @return [Types::ApplicationSource]
    #
    # @!attribute [rw] scaling_instructions
    #   @return [Array<Types::ScalingInstruction>]
    #
    # @!attribute [rw] status_code
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @!attribute [rw] creation_time
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
      :creation_time)
      include Aws::Structure
    end

    # @!attribute [rw] scaling_plan_name
    #   @return [String]
    #
    # @!attribute [rw] scaling_plan_version
    #   @return [Integer]
    #
    # @!attribute [rw] service_namespace
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   @return [String]
    #
    # @!attribute [rw] scaling_policies
    #   @return [Array<Types::ScalingPolicy>]
    #
    # @!attribute [rw] scaling_status_code
    #   @return [String]
    #
    # @!attribute [rw] scaling_status_message
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

    # @!attribute [rw] policy_name
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   @return [String]
    #
    # @!attribute [rw] target_tracking_configuration
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
    #   @return [Types::PredefinedScalingMetricSpecification]
    #
    # @!attribute [rw] customized_scaling_metric_specification
    #   @return [Types::CustomizedScalingMetricSpecification]
    #
    # @!attribute [rw] target_value
    #   @return [Float]
    #
    # @!attribute [rw] disable_scale_in
    #   @return [Boolean]
    #
    # @!attribute [rw] scale_out_cooldown
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_cooldown
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_instance_warmup
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

  end
end
