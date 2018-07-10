# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationAutoScaling
  module Types

    # Represents a CloudWatch alarm associated with a scaling policy.
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/Alarm AWS API Documentation
    #
    class Alarm < Struct.new(
      :alarm_name,
      :alarm_arn)
      include Aws::Structure
    end

    # Configures a customized metric for a target tracking policy.
    #
    # @note When making an API call, you may pass CustomizedMetricSpecification
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/CustomizedMetricSpecification AWS API Documentation
    #
    class CustomizedMetricSpecification < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteScalingPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "ResourceIdMaxLen1600", # required
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicyRequest AWS API Documentation
    #
    class DeleteScalingPolicyRequest < Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicyResponse AWS API Documentation
    #
    class DeleteScalingPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteScheduledActionRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         scheduled_action_name: "ResourceIdMaxLen1600", # required
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scheduled action.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledActionRequest AWS API Documentation
    #
    class DeleteScheduledActionRequest < Struct.new(
      :service_namespace,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledActionResponse AWS API Documentation
    #
    class DeleteScheduledActionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterScalableTargetRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTargetRequest AWS API Documentation
    #
    class DeregisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTargetResponse AWS API Documentation
    #
    class DeregisterScalableTargetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeScalableTargetsRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_ids: ["ResourceIdMaxLen1600"],
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalableTargetsRequest AWS API Documentation
    #
    class DescribeScalableTargetsRequest < Struct.new(
      :service_namespace,
      :resource_ids,
      :scalable_dimension,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] scalable_targets
    #   The scalable targets that match the request parameters.
    #   @return [Array<Types::ScalableTarget>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalableTargetsResponse AWS API Documentation
    #
    class DescribeScalableTargetsResponse < Struct.new(
      :scalable_targets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScalingActivitiesRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_id: "ResourceIdMaxLen1600",
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingActivitiesRequest AWS API Documentation
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingActivitiesResponse AWS API Documentation
    #
    class DescribeScalingActivitiesResponse < Struct.new(
      :scaling_activities,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScalingPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         policy_names: ["ResourceIdMaxLen1600"],
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_id: "ResourceIdMaxLen1600",
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] policy_names
    #   The names of the scaling policies to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingPoliciesRequest AWS API Documentation
    #
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
    #   Information about the scaling policies.
    #   @return [Array<Types::ScalingPolicy>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingPoliciesResponse AWS API Documentation
    #
    class DescribeScalingPoliciesResponse < Struct.new(
      :scaling_policies,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScheduledActionsRequest
    #   data as a hash:
    #
    #       {
    #         scheduled_action_names: ["ResourceIdMaxLen1600"],
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_id: "ResourceIdMaxLen1600",
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] scheduled_action_names
    #   The names of the scheduled actions to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scheduled action.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scheduled action results. This value can be
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScheduledActionsRequest AWS API Documentation
    #
    class DescribeScheduledActionsRequest < Struct.new(
      :scheduled_action_names,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_actions
    #   Information about the scheduled actions.
    #   @return [Array<Types::ScheduledAction>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScheduledActionsResponse AWS API Documentation
    #
    class DescribeScheduledActionsResponse < Struct.new(
      :scheduled_actions,
      :next_token)
      include Aws::Structure
    end

    # Describes the dimension of a metric.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # Configures a predefined metric for a target tracking policy.
    #
    # @note When making an API call, you may pass PredefinedMetricSpecification
    #   data as a hash:
    #
    #       {
    #         predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization
    #         resource_label: "ResourceLabel",
    #       }
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type. The `ALBRequestCountPerTarget` metric type applies
    #   only to Spot fleet requests and ECS services.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   Identifies the resource associated with the metric type. You can't
    #   specify a resource label unless the metric type is
    #   `ALBRequestCountPerTarget` and there is a target group attached to
    #   the Spot fleet request or ECS service.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredefinedMetricSpecification AWS API Documentation
    #
    class PredefinedMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutScalingPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #         policy_type: "StepScaling", # accepts StepScaling, TargetTrackingScaling
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
    #         target_tracking_scaling_policy_configuration: {
    #           target_value: 1.0, # required
    #           predefined_metric_specification: {
    #             predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization
    #             resource_label: "ResourceLabel",
    #           },
    #           customized_metric_specification: {
    #             metric_name: "MetricName", # required
    #             namespace: "MetricNamespace", # required
    #             dimensions: [
    #               {
    #                 name: "MetricDimensionName", # required
    #                 value: "MetricDimensionValue", # required
    #               },
    #             ],
    #             statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #             unit: "MetricUnit",
    #           },
    #           scale_out_cooldown: 1,
    #           scale_in_cooldown: 1,
    #           disable_scale_in: false,
    #         },
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type. This parameter is required if you are creating a
    #   policy.
    #
    #   For DynamoDB, only `TargetTrackingScaling` is supported. For Amazon
    #   ECS, Spot Fleet, and Amazon RDS, both `StepScaling` and
    #   `TargetTrackingScaling` are supported. For any other service, only
    #   `StepScaling` is supported.
    #   @return [String]
    #
    # @!attribute [rw] step_scaling_policy_configuration
    #   A step scaling policy.
    #
    #   This parameter is required if you are creating a policy and the
    #   policy type is `StepScaling`.
    #   @return [Types::StepScalingPolicyConfiguration]
    #
    # @!attribute [rw] target_tracking_scaling_policy_configuration
    #   A target tracking policy.
    #
    #   This parameter is required if you are creating a policy and the
    #   policy type is `TargetTrackingScaling`.
    #   @return [Types::TargetTrackingScalingPolicyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicyRequest AWS API Documentation
    #
    class PutScalingPolicyRequest < Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resulting scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms created for the target tracking policy.
    #   @return [Array<Types::Alarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicyResponse AWS API Documentation
    #
    class PutScalingPolicyResponse < Struct.new(
      :policy_arn,
      :alarms)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutScheduledActionRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         schedule: "ResourceIdMaxLen1600",
    #         scheduled_action_name: "ScheduledActionName", # required
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         scalable_target_action: {
    #           min_capacity: 1,
    #           max_capacity: 1,
    #         },
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * Rate expressions - `rate(value unit)`
    #
    #   * Cron expressions - `cron(fields)`
    #
    #   At expressions are useful for one-time schedules. Specify the time,
    #   in UTC.
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information about cron expressions, see [Cron
    #   Expressions][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scheduled action.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This parameter is required if you are
    #   creating a scheduled action. This string consists of the service
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time for the scheduled action to start.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the scheduled action to end.
    #   @return [Time]
    #
    # @!attribute [rw] scalable_target_action
    #   The new minimum and maximum capacity. You can set both values or
    #   just one. During the scheduled time, if the current capacity is
    #   below the minimum capacity, Application Auto Scaling scales out to
    #   the minimum capacity. If the current capacity is above the maximum
    #   capacity, Application Auto Scaling scales in to the maximum
    #   capacity.
    #   @return [Types::ScalableTargetAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScheduledActionRequest AWS API Documentation
    #
    class PutScheduledActionRequest < Struct.new(
      :service_namespace,
      :schedule,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScheduledActionResponse AWS API Documentation
    #
    class PutScheduledActionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RegisterScalableTargetRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property
    #         min_capacity: 1,
    #         max_capacity: 1,
    #         role_arn: "ResourceIdMaxLen1600",
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   The minimum value to scale to in response to a scale in event. This
    #   parameter is required if you are registering a scalable target.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum value to scale to in response to a scale out event. This
    #   parameter is required if you are registering a scalable target.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   Application Auto Scaling creates a service-linked role that grants
    #   it permissions to modify the scalable target on your behalf. For
    #   more information, see [Service-Linked Roles for Application Auto
    #   Scaling][1].
    #
    #   For resources that are not supported using a service-linked role,
    #   this parameter is required and must specify the ARN of an IAM role
    #   that allows Application Auto Scaling to modify the scalable target
    #   on your behalf.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/application/userguide/application-autoscaling-service-linked-roles.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTargetRequest AWS API Documentation
    #
    class RegisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :role_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTargetResponse AWS API Documentation
    #
    class RegisterScalableTargetResponse < Aws::EmptyStructure; end

    # Represents a scalable target.
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalableTarget AWS API Documentation
    #
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

    # Represents the minimum and maximum capacity for a scheduled action.
    #
    # @note When making an API call, you may pass ScalableTargetAction
    #   data as a hash:
    #
    #       {
    #         min_capacity: 1,
    #         max_capacity: 1,
    #       }
    #
    # @!attribute [rw] min_capacity
    #   The minimum capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalableTargetAction AWS API Documentation
    #
    class ScalableTargetAction < Struct.new(
      :min_capacity,
      :max_capacity)
      include Aws::Structure
    end

    # Represents a scaling activity.
    #
    # @!attribute [rw] activity_id
    #   The unique identifier of the scaling activity.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalingActivity AWS API Documentation
    #
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
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The scaling policy type.
    #   @return [String]
    #
    # @!attribute [rw] step_scaling_policy_configuration
    #   A step scaling policy.
    #   @return [Types::StepScalingPolicyConfiguration]
    #
    # @!attribute [rw] target_tracking_scaling_policy_configuration
    #   A target tracking policy.
    #   @return [Types::TargetTrackingScalingPolicyConfiguration]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms associated with the scaling policy.
    #   @return [Array<Types::Alarm>]
    #
    # @!attribute [rw] creation_time
    #   The Unix timestamp for when the scaling policy was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalingPolicy AWS API Documentation
    #
    class ScalingPolicy < Struct.new(
      :policy_arn,
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration,
      :alarms,
      :creation_time)
      include Aws::Structure
    end

    # Represents a scheduled action.
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_arn
    #   The Amazon Resource Name (ARN) of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource or
    #   `custom-resource` for a resource provided by your own application or
    #   service. For more information, see [AWS Service Namespaces][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * Rate expressions - `rate(value unit)`
    #
    #   * Cron expressions - `cron(fields)`
    #
    #   At expressions are useful for one-time schedules. Specify the time,
    #   in UTC.
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information about cron expressions, see [Cron
    #   Expressions][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
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
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
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
    #
    #   * Amazon SageMaker endpoint variants - The resource type is
    #     `variant` and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider.
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
    #
    #   * `appstream:fleet:DesiredCapacity` - The desired capacity of an
    #     AppStream 2.0 fleet.
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
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the action is scheduled to begin.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the action is scheduled to end.
    #   @return [Time]
    #
    # @!attribute [rw] scalable_target_action
    #   The new minimum and maximum capacity. You can set both values or
    #   just one. During the scheduled time, if the current capacity is
    #   below the minimum capacity, Application Auto Scaling scales out to
    #   the minimum capacity. If the current capacity is above the maximum
    #   capacity, Application Auto Scaling scales in to the maximum
    #   capacity.
    #   @return [Types::ScalableTargetAction]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the scheduled action was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScheduledAction AWS API Documentation
    #
    class ScheduledAction < Struct.new(
      :scheduled_action_name,
      :scheduled_action_arn,
      :service_namespace,
      :schedule,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action,
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
    #
    # @note When making an API call, you may pass StepAdjustment
    #   data as a hash:
    #
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1, # required
    #       }
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/StepAdjustment AWS API Documentation
    #
    class StepAdjustment < Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment)
      include Aws::Structure
    end

    # Represents a step scaling policy configuration.
    #
    # @note When making an API call, you may pass StepScalingPolicyConfiguration
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
    #
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
    #   For scale out policies, while the cooldown period is in effect, the
    #   capacity that has been added by the previous scale out event that
    #   initiated the cooldown is calculated as part of the desired capacity
    #   for the next scale out. The intention is to continuously (but not
    #   excessively) scale out. For example, an alarm triggers a step
    #   scaling policy to scale out an Amazon ECS service by 2 tasks, the
    #   scaling activity completes successfully, and a cooldown period of 5
    #   minutes starts. During the Cooldown period, if the alarm triggers
    #   the same policy again but at a more aggressive step adjustment to
    #   scale out the service by 3 tasks, the 2 tasks that were added in the
    #   previous scale out event are considered part of that capacity and
    #   only 1 additional task is added to the desired count.
    #
    #   For scale in policies, the cooldown period is used to block
    #   subsequent scale in requests until it has expired. The intention is
    #   to scale in conservatively to protect your application's
    #   availability. However, if another alarm triggers a scale out policy
    #   during the cooldown period after a scale-in, Application Auto
    #   Scaling scales out your scalable target immediately.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. Valid values are
    #   `Minimum`, `Maximum`, and `Average`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/StepScalingPolicyConfiguration AWS API Documentation
    #
    class StepScalingPolicyConfiguration < Struct.new(
      :adjustment_type,
      :step_adjustments,
      :min_adjustment_magnitude,
      :cooldown,
      :metric_aggregation_type)
      include Aws::Structure
    end

    # Represents a target tracking scaling policy configuration.
    #
    # @note When making an API call, you may pass TargetTrackingScalingPolicyConfiguration
    #   data as a hash:
    #
    #       {
    #         target_value: 1.0, # required
    #         predefined_metric_specification: {
    #           predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization
    #           resource_label: "ResourceLabel",
    #         },
    #         customized_metric_specification: {
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
    #         scale_out_cooldown: 1,
    #         scale_in_cooldown: 1,
    #         disable_scale_in: false,
    #       }
    #
    # @!attribute [rw] target_value
    #   The target value for the metric. The range is 8.515920e-109 to
    #   1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
    #   @return [Float]
    #
    # @!attribute [rw] predefined_metric_specification
    #   A predefined metric.
    #   @return [Types::PredefinedMetricSpecification]
    #
    # @!attribute [rw] customized_metric_specification
    #   A customized metric.
    #   @return [Types::CustomizedMetricSpecification]
    #
    # @!attribute [rw] scale_out_cooldown
    #   The amount of time, in seconds, after a scale out activity completes
    #   before another scale out activity can start.
    #
    #   While the cooldown period is in effect, the capacity that has been
    #   added by the previous scale out event that initiated the cooldown is
    #   calculated as part of the desired capacity for the next scale out.
    #   The intention is to continuously (but not excessively) scale out.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_cooldown
    #   The amount of time, in seconds, after a scale in activity completes
    #   before another scale in activity can start.
    #
    #   The cooldown period is used to block subsequent scale in requests
    #   until it has expired. The intention is to scale in conservatively to
    #   protect your application's availability. However, if another alarm
    #   triggers a scale out policy during the cooldown period after a
    #   scale-in, Application Auto Scaling scales out your scalable target
    #   immediately.
    #   @return [Integer]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TargetTrackingScalingPolicyConfiguration AWS API Documentation
    #
    class TargetTrackingScalingPolicyConfiguration < Struct.new(
      :target_value,
      :predefined_metric_specification,
      :customized_metric_specification,
      :scale_out_cooldown,
      :scale_in_cooldown,
      :disable_scale_in)
      include Aws::Structure
    end

  end
end
