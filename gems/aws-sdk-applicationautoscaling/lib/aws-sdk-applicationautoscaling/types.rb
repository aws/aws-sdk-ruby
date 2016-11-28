# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module ApplicationAutoScaling
    module Types

      # Represents a CloudWatch alarm associated with a scaling policy.
      # @!attribute [rw] alarm_name
      #   The name of the alarm.
      #   @return [String]
      #
      # @!attribute [rw] alarm_arn
      #   The Amazon Resource Name (ARN) of the alarm.
      #   @return [String]
      class Alarm < Struct.new(
        :alarm_name,
        :alarm_arn)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteScalingPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "ResourceIdMaxLen1600", # required
      #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2
      #         resource_id: "ResourceIdMaxLen1600", # required
      #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount
      #       }
      # @!attribute [rw] policy_name
      #   The name of the scaling policy.
      #   @return [String]
      #
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scalable target.
      #   This string consists of the resource type and unique identifier.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension. This string consists of the service
      #   namespace, resource type, and scaling property.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      class DeleteScalingPolicyRequest < Struct.new(
        :policy_name,
        :service_namespace,
        :resource_id,
        :scalable_dimension)
        include Aws::Structure
      end

      class DeleteScalingPolicyResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DeregisterScalableTargetRequest
      #   data as a hash:
      #
      #       {
      #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2
      #         resource_id: "ResourceIdMaxLen1600", # required
      #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount
      #       }
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scalable target.
      #   This string consists of the resource type and unique identifier.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension associated with the scalable target. This
      #   string consists of the service namespace, resource type, and scaling
      #   property.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      class DeregisterScalableTargetRequest < Struct.new(
        :service_namespace,
        :resource_id,
        :scalable_dimension)
        include Aws::Structure
      end

      class DeregisterScalableTargetResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DescribeScalableTargetsRequest
      #   data as a hash:
      #
      #       {
      #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2
      #         resource_ids: ["ResourceIdMaxLen1600"],
      #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount
      #         max_results: 1,
      #         next_token: "XmlString",
      #       }
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_ids
      #   The identifier of the resource associated with the scalable target.
      #   This string consists of the resource type and unique identifier. If
      #   you specify a scalable dimension, you must also specify a resource
      #   ID.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [Array<String>]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension associated with the scalable target. This
      #   string consists of the service namespace, resource type, and scaling
      #   property. If you specify a scalable dimension, you must also specify
      #   a resource ID.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   The maximum number of scalable target results. This value can be
      #   between 1 and 50. The default value is 50.
      #
      #   If this parameter is used, the operation returns up to `MaxResults`
      #   results at a time, along with a `NextToken` value. To get the next
      #   set of results, include the `NextToken` value in a subsequent call.
      #   If this parameter is not used, the operation returns up to 50
      #   results and a `NextToken` value, if applicable.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   The token for the next set of results.
      #   @return [String]
      class DescribeScalableTargetsRequest < Struct.new(
        :service_namespace,
        :resource_ids,
        :scalable_dimension,
        :max_results,
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] scalable_targets
      #   The list of scalable targets that matches the request parameters.
      #   @return [Array<Types::ScalableTarget>]
      #
      # @!attribute [rw] next_token
      #   The token required to get the next set of results. This value is
      #   `null` if there are no more results to return.
      #   @return [String]
      class DescribeScalableTargetsResponse < Struct.new(
        :scalable_targets,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeScalingActivitiesRequest
      #   data as a hash:
      #
      #       {
      #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2
      #         resource_id: "ResourceIdMaxLen1600",
      #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount
      #         max_results: 1,
      #         next_token: "XmlString",
      #       }
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scaling activity.
      #   This string consists of the resource type and unique identifier. If
      #   you specify a scalable dimension, you must also specify a resource
      #   ID.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension. This string consists of the service
      #   namespace, resource type, and scaling property. If you specify a
      #   scalable dimension, you must also specify a resource ID.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   The maximum number of scalable target results. This value can be
      #   between 1 and 50. The default value is 50.
      #
      #   If this parameter is used, the operation returns up to `MaxResults`
      #   results at a time, along with a `NextToken` value. To get the next
      #   set of results, include the `NextToken` value in a subsequent call.
      #   If this parameter is not used, the operation returns up to 50
      #   results and a `NextToken` value, if applicable.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   The token for the next set of results.
      #   @return [String]
      class DescribeScalingActivitiesRequest < Struct.new(
        :service_namespace,
        :resource_id,
        :scalable_dimension,
        :max_results,
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] scaling_activities
      #   A list of scaling activity objects.
      #   @return [Array<Types::ScalingActivity>]
      #
      # @!attribute [rw] next_token
      #   The token required to get the next set of results. This value is
      #   `null` if there are no more results to return.
      #   @return [String]
      class DescribeScalingActivitiesResponse < Struct.new(
        :scaling_activities,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeScalingPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         policy_names: ["ResourceIdMaxLen1600"],
      #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2
      #         resource_id: "ResourceIdMaxLen1600",
      #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount
      #         max_results: 1,
      #         next_token: "XmlString",
      #       }
      # @!attribute [rw] policy_names
      #   The names of the scaling policies to describe.
      #   @return [Array<String>]
      #
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scaling policy.
      #   This string consists of the resource type and unique identifier. If
      #   you specify a scalable dimension, you must also specify a resource
      #   ID.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension. This string consists of the service
      #   namespace, resource type, and scaling property. If you specify a
      #   scalable dimension, you must also specify a resource ID.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   The maximum number of scalable target results. This value can be
      #   between 1 and 50. The default value is 50.
      #
      #   If this parameter is used, the operation returns up to `MaxResults`
      #   results at a time, along with a `NextToken` value. To get the next
      #   set of results, include the `NextToken` value in a subsequent call.
      #   If this parameter is not used, the operation returns up to 50
      #   results and a `NextToken` value, if applicable.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   The token for the next set of results.
      #   @return [String]
      class DescribeScalingPoliciesRequest < Struct.new(
        :policy_names,
        :service_namespace,
        :resource_id,
        :scalable_dimension,
        :max_results,
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] scaling_policies
      #   A list of scaling policy objects.
      #   @return [Array<Types::ScalingPolicy>]
      #
      # @!attribute [rw] next_token
      #   The token required to get the next set of results. This value is
      #   `null` if there are no more results to return.
      #   @return [String]
      class DescribeScalingPoliciesResponse < Struct.new(
        :scaling_policies,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass PutScalingPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2
      #         resource_id: "ResourceIdMaxLen1600", # required
      #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount
      #         policy_type: "StepScaling", # accepts StepScaling
      #         step_scaling_policy_configuration: {
      #           adjustment_type: "ChangeInCapacity", # accepts ChangeInCapacity, PercentChangeInCapacity, ExactCapacity
      #           step_adjustments: [
      #             {
      #               metric_interval_lower_bound: 1.0,
      #               metric_interval_upper_bound: 1.0,
      #               scaling_adjustment: 1, # required
      #             },
      #           ],
      #           min_adjustment_magnitude: 1,
      #           cooldown: 1,
      #           metric_aggregation_type: "Average", # accepts Average, Minimum, Maximum
      #         },
      #       }
      # @!attribute [rw] policy_name
      #   The name of the scaling policy.
      #   @return [String]
      #
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scaling policy.
      #   This string consists of the resource type and unique identifier.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension. This string consists of the service
      #   namespace, resource type, and scaling property.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      #
      # @!attribute [rw] policy_type
      #   The policy type. If you are creating a new policy, this parameter is
      #   required. If you are updating a policy, this parameter is not
      #   required.
      #   @return [String]
      #
      # @!attribute [rw] step_scaling_policy_configuration
      #   The configuration for the step scaling policy. If you are creating a
      #   new policy, this parameter is required. If you are updating a
      #   policy, this parameter is not required. For more information, see
      #   StepScalingPolicyConfiguration and StepAdjustment.
      #   @return [Types::StepScalingPolicyConfiguration]
      class PutScalingPolicyRequest < Struct.new(
        :policy_name,
        :service_namespace,
        :resource_id,
        :scalable_dimension,
        :policy_type,
        :step_scaling_policy_configuration)
        include Aws::Structure
      end

      # @!attribute [rw] policy_arn
      #   The Amazon Resource Name (ARN) of the resulting scaling policy.
      #   @return [String]
      class PutScalingPolicyResponse < Struct.new(
        :policy_arn)
        include Aws::Structure
      end

      # @note When making an API call, pass RegisterScalableTargetRequest
      #   data as a hash:
      #
      #       {
      #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2
      #         resource_id: "ResourceIdMaxLen1600", # required
      #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount
      #         min_capacity: 1,
      #         max_capacity: 1,
      #         role_arn: "ResourceIdMaxLen1600",
      #       }
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scalable target.
      #   This string consists of the resource type and unique identifier.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension associated with the scalable target. This
      #   string consists of the service namespace, resource type, and scaling
      #   property.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      #
      # @!attribute [rw] min_capacity
      #   The minimum value to scale to in response to a scale in event. This
      #   parameter is required if you are registering a scalable target and
      #   optional if you are updating one.
      #   @return [Integer]
      #
      # @!attribute [rw] max_capacity
      #   The maximum value to scale to in response to a scale out event. This
      #   parameter is required if you are registering a scalable target and
      #   optional if you are updating one.
      #   @return [Integer]
      #
      # @!attribute [rw] role_arn
      #   The ARN of an IAM role that allows Application Auto Scaling to
      #   modify the scalable target on your behalf. This parameter is
      #   required when you register a scalable target and optional when you
      #   update one.
      #   @return [String]
      class RegisterScalableTargetRequest < Struct.new(
        :service_namespace,
        :resource_id,
        :scalable_dimension,
        :min_capacity,
        :max_capacity,
        :role_arn)
        include Aws::Structure
      end

      class RegisterScalableTargetResponse < Aws::EmptyStructure; end

      # Represents a scalable target.
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scalable target.
      #   This string consists of the resource type and unique identifier.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension associated with the scalable target. This
      #   string consists of the service namespace, resource type, and scaling
      #   property.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
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
      # @!attribute [rw] role_arn
      #   The ARN of an IAM role that allows Application Auto Scaling to
      #   modify the scalable target on your behalf.
      #   @return [String]
      #
      # @!attribute [rw] creation_time
      #   The Unix timestamp for when the scalable target was created.
      #   @return [Time]
      class ScalableTarget < Struct.new(
        :service_namespace,
        :resource_id,
        :scalable_dimension,
        :min_capacity,
        :max_capacity,
        :role_arn,
        :creation_time)
        include Aws::Structure
      end

      # Represents a scaling activity.
      # @!attribute [rw] activity_id
      #   The unique identifier of the scaling activity.
      #   @return [String]
      #
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scaling activity.
      #   This string consists of the resource type and unique identifier.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension. This string consists of the service
      #   namespace, resource type, and scaling property.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A simple description of what action the scaling activity intends to
      #   accomplish.
      #   @return [String]
      #
      # @!attribute [rw] cause
      #   A simple description of what caused the scaling activity to happen.
      #   @return [String]
      #
      # @!attribute [rw] start_time
      #   The Unix timestamp for when the scaling activity began.
      #   @return [Time]
      #
      # @!attribute [rw] end_time
      #   The Unix timestamp for when the scaling activity ended.
      #   @return [Time]
      #
      # @!attribute [rw] status_code
      #   Indicates the status of the scaling activity.
      #   @return [String]
      #
      # @!attribute [rw] status_message
      #   A simple message about the current status of the scaling activity.
      #   @return [String]
      #
      # @!attribute [rw] details
      #   The details about the scaling activity.
      #   @return [String]
      class ScalingActivity < Struct.new(
        :activity_id,
        :service_namespace,
        :resource_id,
        :scalable_dimension,
        :description,
        :cause,
        :start_time,
        :end_time,
        :status_code,
        :status_message,
        :details)
        include Aws::Structure
      end

      # Represents a scaling policy.
      # @!attribute [rw] policy_arn
      #   The Amazon Resource Name (ARN) of the scaling policy.
      #   @return [String]
      #
      # @!attribute [rw] policy_name
      #   The name of the scaling policy.
      #   @return [String]
      #
      # @!attribute [rw] service_namespace
      #   The namespace of the AWS service. For more information, see [AWS
      #   Service Namespaces][1] in the *Amazon Web Services General
      #   Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The identifier of the resource associated with the scaling policy.
      #   This string consists of the resource type and unique identifier.
      #
      #   * ECS service - The resource type is `service` and the unique
      #     identifier is the cluster name and service name. Example:
      #     `service/default/sample-webapp`.
      #
      #   * Spot fleet request - The resource type is `spot-fleet-request` and
      #     the unique identifier is the Spot fleet request ID. Example:
      #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
      #
      #   * EMR cluster - The resource type is `instancegroup` and the unique
      #     identifier is the cluster ID and instance group ID. Example:
      #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
      #   @return [String]
      #
      # @!attribute [rw] scalable_dimension
      #   The scalable dimension. This string consists of the service
      #   namespace, resource type, and scaling property.
      #
      #   * `ecs:service:DesiredCount` - The desired task count of an ECS
      #     service.
      #
      #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
      #     Spot fleet request.
      #
      #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
      #     count of an EMR Instance Group.
      #   @return [String]
      #
      # @!attribute [rw] policy_type
      #   The scaling policy type.
      #   @return [String]
      #
      # @!attribute [rw] step_scaling_policy_configuration
      #   The configuration for the step scaling policy.
      #   @return [Types::StepScalingPolicyConfiguration]
      #
      # @!attribute [rw] alarms
      #   The CloudWatch alarms associated with the scaling policy.
      #   @return [Array<Types::Alarm>]
      #
      # @!attribute [rw] creation_time
      #   The Unix timestamp for when the scaling policy was created.
      #   @return [Time]
      class ScalingPolicy < Struct.new(
        :policy_arn,
        :policy_name,
        :service_namespace,
        :resource_id,
        :scalable_dimension,
        :policy_type,
        :step_scaling_policy_configuration,
        :alarms,
        :creation_time)
        include Aws::Structure
      end

      # Represents a step adjustment for a StepScalingPolicyConfiguration.
      # Describes an adjustment based on the difference between the value of
      # the aggregated CloudWatch metric and the breach threshold that you've
      # defined for the alarm.
      #
      # For the following examples, suppose that you have an alarm with a
      # breach threshold of 50:
      #
      # * To trigger the adjustment when the metric is greater than or equal
      #   to 50 and less than 60, specify a lower bound of 0 and an upper
      #   bound of 10.
      #
      # * To trigger the adjustment when the metric is greater than 40 and
      #   less than or equal to 50, specify a lower bound of -10 and an upper
      #   bound of 0.
      #
      # There are a few rules for the step adjustments for your step policy:
      #
      # * The ranges of your step adjustments can't overlap or have a gap.
      #
      # * At most one step adjustment can have a null lower bound. If one step
      #   adjustment has a negative lower bound, then there must be a step
      #   adjustment with a null lower bound.
      #
      # * At most one step adjustment can have a null upper bound. If one step
      #   adjustment has a positive upper bound, then there must be a step
      #   adjustment with a null upper bound.
      #
      # * The upper and lower bound can't be null in the same step
      #   adjustment.
      # @note When making an API call, pass StepAdjustment
      #   data as a hash:
      #
      #       {
      #         metric_interval_lower_bound: 1.0,
      #         metric_interval_upper_bound: 1.0,
      #         scaling_adjustment: 1, # required
      #       }
      # @!attribute [rw] metric_interval_lower_bound
      #   The lower bound for the difference between the alarm threshold and
      #   the CloudWatch metric. If the metric value is above the breach
      #   threshold, the lower bound is inclusive (the metric must be greater
      #   than or equal to the threshold plus the lower bound). Otherwise, it
      #   is exclusive (the metric must be greater than the threshold plus the
      #   lower bound). A null value indicates negative infinity.
      #   @return [Float]
      #
      # @!attribute [rw] metric_interval_upper_bound
      #   The upper bound for the difference between the alarm threshold and
      #   the CloudWatch metric. If the metric value is above the breach
      #   threshold, the upper bound is exclusive (the metric must be less
      #   than the threshold plus the upper bound). Otherwise, it is inclusive
      #   (the metric must be less than or equal to the threshold plus the
      #   upper bound). A null value indicates positive infinity.
      #
      #   The upper bound must be greater than the lower bound.
      #   @return [Float]
      #
      # @!attribute [rw] scaling_adjustment
      #   The amount by which to scale, based on the specified adjustment
      #   type. A positive value adds to the current scalable dimension while
      #   a negative number removes from the current scalable dimension.
      #   @return [Integer]
      class StepAdjustment < Struct.new(
        :metric_interval_lower_bound,
        :metric_interval_upper_bound,
        :scaling_adjustment)
        include Aws::Structure
      end

      # Represents a step scaling policy configuration.
      # @note When making an API call, pass StepScalingPolicyConfiguration
      #   data as a hash:
      #
      #       {
      #         adjustment_type: "ChangeInCapacity", # accepts ChangeInCapacity, PercentChangeInCapacity, ExactCapacity
      #         step_adjustments: [
      #           {
      #             metric_interval_lower_bound: 1.0,
      #             metric_interval_upper_bound: 1.0,
      #             scaling_adjustment: 1, # required
      #           },
      #         ],
      #         min_adjustment_magnitude: 1,
      #         cooldown: 1,
      #         metric_aggregation_type: "Average", # accepts Average, Minimum, Maximum
      #       }
      # @!attribute [rw] adjustment_type
      #   The adjustment type, which specifies how the `ScalingAdjustment`
      #   parameter in a StepAdjustment is interpreted.
      #   @return [String]
      #
      # @!attribute [rw] step_adjustments
      #   A set of adjustments that enable you to scale based on the size of
      #   the alarm breach.
      #   @return [Array<Types::StepAdjustment>]
      #
      # @!attribute [rw] min_adjustment_magnitude
      #   The minimum number to adjust your scalable dimension as a result of
      #   a scaling activity. If the adjustment type is
      #   `PercentChangeInCapacity`, the scaling policy changes the scalable
      #   dimension of the scalable target by this amount.
      #   @return [Integer]
      #
      # @!attribute [rw] cooldown
      #   The amount of time, in seconds, after a scaling activity completes
      #   where previous trigger-related scaling activities can influence
      #   future scaling events.
      #
      #   For scale out policies, while `Cooldown` is in effect, the capacity
      #   that has been added by the previous scale out event that initiated
      #   the `Cooldown` is calculated as part of the desired capacity for the
      #   next scale out. The intention is to continuously (but not
      #   excessively) scale out. For example, an alarm triggers a step
      #   scaling policy to scale out an Amazon ECS service by 2 tasks, the
      #   scaling activity completes successfully, and a `Cooldown` period of
      #   5 minutes starts. During the `Cooldown` period, if the alarm
      #   triggers the same policy again but at a more aggressive step
      #   adjustment to scale out the service by 3 tasks, the 2 tasks that
      #   were added in the previous scale out event are considered part of
      #   that capacity and only 1 additional task is added to the desired
      #   count.
      #
      #   For scale in policies, the `Cooldown` period is used to block
      #   subsequent scale in requests until it has expired. The intention is
      #   to scale in conservatively to protect your application's
      #   availability. However, if another alarm triggers a scale out policy
      #   during the `Cooldown` period after a scale-in, Application Auto
      #   Scaling scales out your scalable target immediately.
      #   @return [Integer]
      #
      # @!attribute [rw] metric_aggregation_type
      #   The aggregation type for the CloudWatch metrics. Valid values are
      #   `Minimum`, `Maximum`, and `Average`.
      #   @return [String]
      class StepScalingPolicyConfiguration < Struct.new(
        :adjustment_type,
        :step_adjustments,
        :min_adjustment_magnitude,
        :cooldown,
        :metric_aggregation_type)
        include Aws::Structure
      end

    end
  end
end
