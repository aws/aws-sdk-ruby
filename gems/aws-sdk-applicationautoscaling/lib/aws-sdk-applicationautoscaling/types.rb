# frozen_string_literal: true

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
      SENSITIVE = []
      include Aws::Structure
    end

    # Concurrent updates caused an exception, for example, if you request an
    # update to an Application Auto Scaling resource that already has a
    # pending update.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ConcurrentUpdateException AWS API Documentation
    #
    class ConcurrentUpdateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a CloudWatch metric of your choosing for a target tracking
    # scaling policy to use with Application Auto Scaling.
    #
    # For information about the available metrics for a service, see [AWS
    # Services That Publish CloudWatch Metrics][1] in the *Amazon CloudWatch
    # User Guide*.
    #
    # To create your customized metric specification:
    #
    # * Add values for each required parameter from CloudWatch. You can use
    #   an existing metric, or a new metric that you create. To use your own
    #   metric, you must first publish the metric to CloudWatch. For more
    #   information, see [Publish Custom Metrics][2] in the *Amazon
    #   CloudWatch User Guide*.
    #
    # * Choose a metric that changes proportionally with capacity. The value
    #   of the metric should increase or decrease in inverse proportion to
    #   the number of capacity units. That is, the value of the metric
    #   should decrease when capacity increases, and increase when capacity
    #   decreases.
    #
    # For more information about CloudWatch, see [Amazon CloudWatch
    # Concepts][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
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
    #
    #   Conditional: If you published your metric with dimensions, you must
    #   specify the same dimensions in your scaling policy.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteScalingPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "ResourceIdMaxLen1600", # required
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicyRequest AWS API Documentation
    #
    class DeleteScalingPolicyRequest < Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicyResponse AWS API Documentation
    #
    class DeleteScalingPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteScheduledActionRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         scheduled_action_name: "ResourceIdMaxLen1600", # required
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledActionRequest AWS API Documentation
    #
    class DeleteScheduledActionRequest < Struct.new(
      :service_namespace,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledActionResponse AWS API Documentation
    #
    class DeleteScheduledActionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterScalableTargetRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTargetRequest AWS API Documentation
    #
    class DeregisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTargetResponse AWS API Documentation
    #
    class DeregisterScalableTargetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeScalableTargetsRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_ids: ["ResourceIdMaxLen1600"],
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScalingActivitiesRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_id: "ResourceIdMaxLen1600",
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScalingPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         policy_names: ["ResourceIdMaxLen1600"],
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_id: "ResourceIdMaxLen1600",
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] policy_names
    #   The names of the scaling policies to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScheduledActionsRequest
    #   data as a hash:
    #
    #       {
    #         scheduled_action_names: ["ResourceIdMaxLen1600"],
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_id: "ResourceIdMaxLen1600",
    #         scalable_dimension: "ecs:service:DesiredCount", # accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #         max_results: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] scheduled_action_names
    #   The names of the scheduled actions to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Failed access to resources caused an exception. This exception is
    # thrown when Application Auto Scaling is unable to retrieve the alarms
    # associated with a scaling policy due to a client error, for example,
    # if the role ARN specified for a scalable target does not have
    # permission to call the CloudWatch [DescribeAlarms][1] on your behalf.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/FailedResourceAccessException AWS API Documentation
    #
    class FailedResourceAccessException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an internal error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The next token supplied was invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A per-account resource limit is exceeded. For more information, see
    # [Application Auto Scaling Limits][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ApplicationAutoScaling/latest/userguide/application-auto-scaling-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the dimension names and values associated with a metric.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified object could not be found. For any operation that
    # depends on the existence of a scalable target, this exception is
    # thrown if the scalable target with the specified service namespace,
    # resource ID, and scalable dimension does not exist. For any operation
    # that deletes or deregisters a resource, this exception is thrown if
    # the resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ObjectNotFoundException AWS API Documentation
    #
    class ObjectNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a predefined metric for a target tracking scaling policy to
    # use with Application Auto Scaling.
    #
    # Only the AWS services that you're using send metrics to Amazon
    # CloudWatch. To determine whether a desired metric already exists by
    # looking up its namespace and dimension using the CloudWatch metrics
    # dashboard in the console, follow the procedure in [Building Dashboards
    # with CloudWatch][1] in the *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/monitoring-cloudwatch.html
    #
    # @note When making an API call, you may pass PredefinedMetricSpecification
    #   data as a hash:
    #
    #       {
    #         predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, AppStreamAverageCapacityUtilization, ComprehendInferenceUtilization, LambdaProvisionedConcurrencyUtilization, CassandraReadCapacityUtilization, CassandraWriteCapacityUtilization, KafkaBrokerStorageUtilization
    #         resource_label: "ResourceLabel",
    #       }
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type. The `ALBRequestCountPerTarget` metric type applies
    #   only to Spot Fleet requests and ECS services.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   Identifies the resource associated with the metric type. You can't
    #   specify a resource label unless the metric type is
    #   `ALBRequestCountPerTarget` and there is a target group attached to
    #   the Spot Fleet request or ECS service.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredefinedMetricSpecification AWS API Documentation
    #
    class PredefinedMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutScalingPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
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
    #             predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, AppStreamAverageCapacityUtilization, ComprehendInferenceUtilization, LambdaProvisionedConcurrencyUtilization, CassandraReadCapacityUtilization, CassandraWriteCapacityUtilization, KafkaBrokerStorageUtilization
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
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type. This parameter is required if you are creating a
    #   scaling policy.
    #
    #   The following policy types are supported:
    #
    #   `TargetTrackingScaling`—Not supported for Amazon EMR
    #
    #   `StepScaling`—Not supported for DynamoDB, Amazon Comprehend, Lambda,
    #   Amazon Keyspaces (for Apache Cassandra), or Amazon MSK.
    #
    #   For more information, see [Target Tracking Scaling Policies][1] and
    #   [Step Scaling Policies][2] in the *Application Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
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
    #   A target tracking scaling policy. Includes support for predefined or
    #   customized metrics.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resulting scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms created for the target tracking scaling
    #   policy.
    #   @return [Array<Types::Alarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicyResponse AWS API Documentation
    #
    class PutScalingPolicyResponse < Struct.new(
      :policy_arn,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutScheduledActionRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         schedule: "ResourceIdMaxLen1600",
    #         scheduled_action_name: "ScheduledActionName", # required
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         scalable_target_action: {
    #           min_capacity: 1,
    #           max_capacity: 1,
    #         },
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - "`at(yyyy-mm-ddThh:mm:ss)`"
    #
    #   * Rate expressions - "`rate(value unit)`"
    #
    #   * Cron expressions - "`cron(fields)`"
    #
    #   At expressions are useful for one-time schedules. Specify the time
    #   in UTC.
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information about cron expressions, see [Cron
    #   Expressions][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #   For examples of using these expressions, see [Scheduled Scaling][2]
    #   in the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action. This name must be unique among all
    #   other scheduled actions on the specified scalable target.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time for this scheduled action to start.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the recurring schedule to end.
    #   @return [Time]
    #
    # @!attribute [rw] scalable_target_action
    #   The new minimum and maximum capacity. You can set both values or
    #   just one. At the scheduled time, if the current capacity is below
    #   the minimum capacity, Application Auto Scaling scales out to the
    #   minimum capacity. If the current capacity is above the maximum
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScheduledActionResponse AWS API Documentation
    #
    class PutScheduledActionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RegisterScalableTargetRequest
    #   data as a hash:
    #
    #       {
    #         service_namespace: "ecs", # required, accepts ecs, elasticmapreduce, ec2, appstream, dynamodb, rds, sagemaker, custom-resource, comprehend, lambda, cassandra, kafka
    #         resource_id: "ResourceIdMaxLen1600", # required
    #         scalable_dimension: "ecs:service:DesiredCount", # required, accepts ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, elasticmapreduce:instancegroup:InstanceCount, appstream:fleet:DesiredCapacity, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, rds:cluster:ReadReplicaCount, sagemaker:variant:DesiredInstanceCount, custom-resource:ResourceType:Property, comprehend:document-classifier-endpoint:DesiredInferenceUnits, comprehend:entity-recognizer-endpoint:DesiredInferenceUnits, lambda:function:ProvisionedConcurrency, cassandra:table:ReadCapacityUnits, cassandra:table:WriteCapacityUnits, kafka:broker-storage:VolumeSize
    #         min_capacity: 1,
    #         max_capacity: 1,
    #         role_arn: "ResourceIdMaxLen1600",
    #         suspended_state: {
    #           dynamic_scaling_in_suspended: false,
    #           dynamic_scaling_out_suspended: false,
    #           scheduled_scaling_suspended: false,
    #         },
    #       }
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource. For a
    #   resource provided by your own application or service, use
    #   `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that is associated with the scalable
    #   target. This string consists of the resource type and unique
    #   identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/default/sample-webapp`.
    #
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   The minimum value that you plan to scale in to. When a scaling
    #   policy is in effect, Application Auto Scaling can scale in
    #   (contract) as needed to the minimum capacity limit in response to
    #   changing demand.
    #
    #   This parameter is required if you are registering a scalable target.
    #   For certain resources, the minimum value allowed is 0. This includes
    #   Lambda provisioned concurrency, Spot Fleet, ECS services, Aurora DB
    #   clusters, EMR clusters, and custom resources. For all other
    #   resources, the minimum value allowed is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum value that you plan to scale out to. When a scaling
    #   policy is in effect, Application Auto Scaling can scale out (expand)
    #   as needed to the maximum capacity limit in response to changing
    #   demand.
    #
    #   This parameter is required if you are registering a scalable target.
    #
    #   Although you can specify a large maximum capacity, note that service
    #   quotas may impose lower limits. Each service has its own default
    #   quotas for the maximum capacity of the resource. If you want to
    #   specify a higher limit, you can request an increase. For more
    #   information, consult the documentation for that service. For
    #   information about the default quotas for each service, see [Service
    #   Endpoints and Quotas][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   This parameter is required for services that do not support
    #   service-linked roles (such as Amazon EMR), and it must specify the
    #   ARN of an IAM role that allows Application Auto Scaling to modify
    #   the scalable target on your behalf.
    #
    #   If the service supports service-linked roles, Application Auto
    #   Scaling uses a service-linked role, which it creates if it does not
    #   yet exist. For more information, see [Application Auto Scaling IAM
    #   Roles][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles
    #   @return [String]
    #
    # @!attribute [rw] suspended_state
    #   An embedded object that contains attributes and attribute values
    #   that are used to suspend and resume automatic scaling. Setting the
    #   value of an attribute to `true` suspends the specified scaling
    #   activities. Setting it to `false` (default) resumes the specified
    #   scaling activities.
    #
    #   **Suspension Outcomes**
    #
    #   * For `DynamicScalingInSuspended`, while a suspension is in effect,
    #     all scale-in activities that are triggered by a scaling policy are
    #     suspended.
    #
    #   * For `DynamicScalingOutSuspended`, while a suspension is in effect,
    #     all scale-out activities that are triggered by a scaling policy
    #     are suspended.
    #
    #   * For `ScheduledScalingSuspended`, while a suspension is in effect,
    #     all scaling activities that involve scheduled actions are
    #     suspended.
    #
    #   For more information, see [Suspending and Resuming Scaling][1] in
    #   the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html
    #   @return [Types::SuspendedState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTargetRequest AWS API Documentation
    #
    class RegisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :role_arn,
      :suspended_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTargetResponse AWS API Documentation
    #
    class RegisterScalableTargetResponse < Aws::EmptyStructure; end

    # Represents a scalable target.
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource, or a
    #   `custom-resource`.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   The minimum value to scale to in response to a scale-in activity.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum value to scale to in response to a scale-out activity.
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
    # @!attribute [rw] suspended_state
    #   Specifies whether the scaling activities for a scalable target are
    #   in a suspended state.
    #   @return [Types::SuspendedState]
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
      :creation_time,
      :suspended_state)
      SENSITIVE = []
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
    #
    #   For certain resources, the minimum value allowed is 0. This includes
    #   Lambda provisioned concurrency, Spot Fleet, ECS services, Aurora DB
    #   clusters, EMR clusters, and custom resources. For all other
    #   resources, the minimum value allowed is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity.
    #
    #   Although you can specify a large maximum capacity, note that service
    #   quotas may impose lower limits. Each service has its own default
    #   quotas for the maximum capacity of the resource. If you want to
    #   specify a higher limit, you can request an increase. For more
    #   information, consult the documentation for that service. For
    #   information about the default quotas for each service, see [Service
    #   Endpoints and Quotas][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalableTargetAction AWS API Documentation
    #
    class ScalableTargetAction < Struct.new(
      :min_capacity,
      :max_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scaling activity.
    #
    # @!attribute [rw] activity_id
    #   The unique identifier of the scaling activity.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the AWS service that provides the resource, or a
    #   `custom-resource`.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scaling policy to use with Application Auto Scaling.
    #
    # For more information about configuring scaling policies for a specific
    # service, see [Getting started with Application Auto Scaling][1] in the
    # *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/getting-started.html
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
    #   The namespace of the AWS service that provides the resource, or a
    #   `custom-resource`.
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
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
    #   A target tracking scaling policy.
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
      SENSITIVE = []
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
    #   The namespace of the AWS service that provides the resource, or a
    #   `custom-resource`.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - "`at(yyyy-mm-ddThh:mm:ss)`"
    #
    #   * Rate expressions - "`rate(value unit)`"
    #
    #   * Cron expressions - "`cron(fields)`"
    #
    #   At expressions are useful for one-time schedules. Specify the time
    #   in UTC.
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information about cron expressions, see [Cron
    #   Expressions][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #   For examples of using these expressions, see [Scheduled Scaling][2]
    #   in the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html
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
    #   * Spot Fleet request - The resource type is `spot-fleet-request` and
    #     the unique identifier is the Spot Fleet request ID. Example:
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
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * Amazon SageMaker endpoint variant - The resource type is `variant`
    #     and the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
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
    #     Spot Fleet request.
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
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for an Amazon SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
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
    #   just one. At the scheduled time, if the current capacity is below
    #   the minimum capacity, Application Auto Scaling scales out to the
    #   minimum capacity. If the current capacity is above the maximum
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a step adjustment for a
    # [StepScalingPolicyConfiguration][1]. Describes an adjustment based on
    # the difference between the value of the aggregated CloudWatch metric
    # and the breach threshold that you've defined for the alarm.
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
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepScalingPolicyConfiguration.html
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
    #   type. A positive value adds to the current capacity while a negative
    #   number removes from the current capacity. For exact capacity, you
    #   must specify a positive value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/StepAdjustment AWS API Documentation
    #
    class StepAdjustment < Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a step scaling policy configuration to use with Application
    # Auto Scaling.
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
    #   Specifies how the `ScalingAdjustment` value in a [StepAdjustment][1]
    #   is interpreted (for example, an absolute number or a percentage).
    #   The valid values are `ChangeInCapacity`, `ExactCapacity`, and
    #   `PercentChangeInCapacity`.
    #
    #   `AdjustmentType` is required if you are adding a new step scaling
    #   policy configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepAdjustment.html
    #   @return [String]
    #
    # @!attribute [rw] step_adjustments
    #   A set of adjustments that enable you to scale based on the size of
    #   the alarm breach.
    #
    #   At least one step adjustment is required if you are adding a new
    #   step scaling policy configuration.
    #   @return [Array<Types::StepAdjustment>]
    #
    # @!attribute [rw] min_adjustment_magnitude
    #   The minimum value to scale by when the adjustment type is
    #   `PercentChangeInCapacity`. For example, suppose that you create a
    #   step scaling policy to scale out an Amazon ECS service by 25 percent
    #   and you specify a `MinAdjustmentMagnitude` of 2. If the service has
    #   4 tasks and the scaling policy is performed, 25 percent of 4 is 1.
    #   However, because you specified a `MinAdjustmentMagnitude` of 2,
    #   Application Auto Scaling scales out the service by 2 tasks.
    #   @return [Integer]
    #
    # @!attribute [rw] cooldown
    #   The amount of time, in seconds, to wait for a previous scaling
    #   activity to take effect.
    #
    #   With scale-out policies, the intention is to continuously (but not
    #   excessively) scale out. After Application Auto Scaling successfully
    #   scales out using a step scaling policy, it starts to calculate the
    #   cooldown time. The scaling policy won't increase the desired
    #   capacity again unless either a larger scale out is triggered or the
    #   cooldown period ends. While the cooldown period is in effect,
    #   capacity added by the initiating scale-out activity is calculated as
    #   part of the desired capacity for the next scale-out activity. For
    #   example, when an alarm triggers a step scaling policy to increase
    #   the capacity by 2, the scaling activity completes successfully, and
    #   a cooldown period starts. If the alarm triggers again during the
    #   cooldown period but at a more aggressive step adjustment of 3, the
    #   previous increase of 2 is considered part of the current capacity.
    #   Therefore, only 1 is added to the capacity.
    #
    #   With scale-in policies, the intention is to scale in conservatively
    #   to protect your application’s availability, so scale-in activities
    #   are blocked until the cooldown period has expired. However, if
    #   another alarm triggers a scale-out activity during the cooldown
    #   period after a scale-in activity, Application Auto Scaling scales
    #   out the target immediately. In this case, the cooldown period for
    #   the scale-in activity stops and doesn't complete.
    #
    #   Application Auto Scaling provides a default value of 300 for the
    #   following scalable targets:
    #
    #   * ECS services
    #
    #   * Spot Fleet requests
    #
    #   * EMR clusters
    #
    #   * AppStream 2.0 fleets
    #
    #   * Aurora DB clusters
    #
    #   * Amazon SageMaker endpoint variants
    #
    #   * Custom resources
    #
    #   For all other scalable targets, the default value is 0:
    #
    #   * DynamoDB tables
    #
    #   * DynamoDB global secondary indexes
    #
    #   * Amazon Comprehend document classification and entity recognizer
    #     endpoints
    #
    #   * Lambda provisioned concurrency
    #
    #   * Amazon Keyspaces tables
    #
    #   * Amazon MSK cluster storage
    #   @return [Integer]
    #
    # @!attribute [rw] metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. Valid values are
    #   `Minimum`, `Maximum`, and `Average`. If the aggregation type is
    #   null, the value is treated as `Average`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether the scaling activities for a scalable target are in
    # a suspended state.
    #
    # @note When making an API call, you may pass SuspendedState
    #   data as a hash:
    #
    #       {
    #         dynamic_scaling_in_suspended: false,
    #         dynamic_scaling_out_suspended: false,
    #         scheduled_scaling_suspended: false,
    #       }
    #
    # @!attribute [rw] dynamic_scaling_in_suspended
    #   Whether scale in by a target tracking scaling policy or a step
    #   scaling policy is suspended. Set the value to `true` if you don't
    #   want Application Auto Scaling to remove capacity when a scaling
    #   policy is triggered. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] dynamic_scaling_out_suspended
    #   Whether scale out by a target tracking scaling policy or a step
    #   scaling policy is suspended. Set the value to `true` if you don't
    #   want Application Auto Scaling to add capacity when a scaling policy
    #   is triggered. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] scheduled_scaling_suspended
    #   Whether scheduled scaling is suspended. Set the value to `true` if
    #   you don't want Application Auto Scaling to add or remove capacity
    #   by initiating scheduled actions. The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/SuspendedState AWS API Documentation
    #
    class SuspendedState < Struct.new(
      :dynamic_scaling_in_suspended,
      :dynamic_scaling_out_suspended,
      :scheduled_scaling_suspended)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target tracking scaling policy configuration to use with
    # Application Auto Scaling.
    #
    # @note When making an API call, you may pass TargetTrackingScalingPolicyConfiguration
    #   data as a hash:
    #
    #       {
    #         target_value: 1.0, # required
    #         predefined_metric_specification: {
    #           predefined_metric_type: "DynamoDBReadCapacityUtilization", # required, accepts DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, SageMakerVariantInvocationsPerInstance, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, AppStreamAverageCapacityUtilization, ComprehendInferenceUtilization, LambdaProvisionedConcurrencyUtilization, CassandraReadCapacityUtilization, CassandraWriteCapacityUtilization, KafkaBrokerStorageUtilization
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
    #   A predefined metric. You can specify either a predefined metric or a
    #   customized metric.
    #   @return [Types::PredefinedMetricSpecification]
    #
    # @!attribute [rw] customized_metric_specification
    #   A customized metric. You can specify either a predefined metric or a
    #   customized metric.
    #   @return [Types::CustomizedMetricSpecification]
    #
    # @!attribute [rw] scale_out_cooldown
    #   The amount of time, in seconds, to wait for a previous scale-out
    #   activity to take effect.
    #
    #   With the *scale-out cooldown period*, the intention is to
    #   continuously (but not excessively) scale out. After Application Auto
    #   Scaling successfully scales out using a target tracking scaling
    #   policy, it starts to calculate the cooldown time. The scaling policy
    #   won't increase the desired capacity again unless either a larger
    #   scale out is triggered or the cooldown period ends. While the
    #   cooldown period is in effect, the capacity added by the initiating
    #   scale-out activity is calculated as part of the desired capacity for
    #   the next scale-out activity.
    #
    #   Application Auto Scaling provides a default value of 300 for the
    #   following scalable targets:
    #
    #   * ECS services
    #
    #   * Spot Fleet requests
    #
    #   * EMR clusters
    #
    #   * AppStream 2.0 fleets
    #
    #   * Aurora DB clusters
    #
    #   * Amazon SageMaker endpoint variants
    #
    #   * Custom resources
    #
    #   For all other scalable targets, the default value is 0:
    #
    #   * DynamoDB tables
    #
    #   * DynamoDB global secondary indexes
    #
    #   * Amazon Comprehend document classification and entity recognizer
    #     endpoints
    #
    #   * Lambda provisioned concurrency
    #
    #   * Amazon Keyspaces tables
    #
    #   * Amazon MSK cluster storage
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_cooldown
    #   The amount of time, in seconds, after a scale-in activity completes
    #   before another scale-in activity can start.
    #
    #   With the *scale-in cooldown period*, the intention is to scale in
    #   conservatively to protect your application’s availability, so
    #   scale-in activities are blocked until the cooldown period has
    #   expired. However, if another alarm triggers a scale-out activity
    #   during the scale-in cooldown period, Application Auto Scaling scales
    #   out the target immediately. In this case, the scale-in cooldown
    #   period stops and doesn't complete.
    #
    #   Application Auto Scaling provides a default value of 300 for the
    #   following scalable targets:
    #
    #   * ECS services
    #
    #   * Spot Fleet requests
    #
    #   * EMR clusters
    #
    #   * AppStream 2.0 fleets
    #
    #   * Aurora DB clusters
    #
    #   * Amazon SageMaker endpoint variants
    #
    #   * Custom resources
    #
    #   For all other scalable targets, the default value is 0:
    #
    #   * DynamoDB tables
    #
    #   * DynamoDB global secondary indexes
    #
    #   * Amazon Comprehend document classification and entity recognizer
    #     endpoints
    #
    #   * Lambda provisioned concurrency
    #
    #   * Amazon Keyspaces tables
    #
    #   * Amazon MSK cluster storage
    #   @return [Integer]
    #
    # @!attribute [rw] disable_scale_in
    #   Indicates whether scale in by the target tracking scaling policy is
    #   disabled. If the value is `true`, scale in is disabled and the
    #   target tracking scaling policy won't remove capacity from the
    #   scalable target. Otherwise, scale in is enabled and the target
    #   tracking scaling policy can remove capacity from the scalable
    #   target. The default value is `false`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception was thrown for a validation issue. Review the available
    # parameters for the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
