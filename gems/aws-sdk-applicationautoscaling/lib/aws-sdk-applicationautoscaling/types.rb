# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationAutoScaling
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents a CloudWatch alarm associated with a scaling policy.</p>
    # @!attribute alarm_name
    #   <p>The name of the alarm.</p>
    #   @return [String]
    # @!attribute alarm_arn
    #   <p>The Amazon Resource Name (ARN) of the alarm.</p>
    #   @return [String]
    class Alarm < Struct.new(
      :alarm_name,
      :alarm_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          A <code>GetPredictiveScalingForecast</code> call returns the capacity forecast for a
    #          predictive scaling policy. This structure includes the data points for that capacity
    #          forecast, along with the timestamps of those data points.
    #       </p>
    # @!attribute timestamps
    #   <p>
    #            The timestamps for the data points, in UTC format.
    #         </p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>
    #            The values of the data points.
    #         </p>
    #   @return [Array<Float>]
    class CapacityForecast < Struct.new(
      :timestamps,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Concurrent updates caused an exception, for example, if you request an update to an
    #          Application Auto Scaling resource that already has a pending update.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentUpdateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use
    #          with Application Auto Scaling.</p>
    #          <p>For information about the available metrics for a service, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #             services that publish CloudWatch metrics</a> in the <i>Amazon CloudWatch User
    #             Guide</i>.</p>
    #          <p>To create your customized metric specification:</p>
    #          <ul>
    #             <li>
    #                <p>Add values for each required parameter from CloudWatch. You can use an existing metric,
    #                or a new metric that you create. To use your own metric, you must first publish the
    #                metric to CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publish custom
    #                   metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Choose a metric that changes proportionally with capacity. The value of the metric
    #                should increase or decrease in inverse proportion to the number of capacity units.
    #                That is, the value of the metric should decrease when capacity increases, and
    #                increase when capacity decreases. </p>
    #             </li>
    #          </ul>
    #          <p>For more information about the CloudWatch terminology below, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #             concepts</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
    # @!attribute metric_name
    #   <p>The name of the metric. To get the exact metric name, namespace, and dimensions, inspect
    #            the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html">Metric</a> object that's returned by a call to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the metric.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>The dimensions of the metric. </p>
    #            <p>Conditional: If you published your metric with dimensions, you must specify the same
    #            dimensions in your scaling policy.</p>
    #   @return [Array<Types::MetricDimension>]
    # @!attribute statistic
    #   <p>The statistic of the metric.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of the metric. For a complete list of the units that CloudWatch supports, see the
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a> data
    #            type in the <i>Amazon CloudWatch API Reference</i>.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>The metrics to include in the target tracking scaling policy, as a metric data query.
    #            This can include both raw metric and metric math expressions.</p>
    #   @return [Array<Types::TargetTrackingMetricDataQuery>]
    class CustomizedMetricSpecification < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #   @return [String]
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteScalingPolicyRequest < Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteScalingPolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteScheduledActionRequest < Struct.new(
      :service_namespace,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteScheduledActionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeregisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterScalableTargetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class DescribeScalableTargetsRequest < Struct.new(
      :service_namespace,
      :resource_ids,
      :scalable_dimension,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scalable_targets
    #   <p>The scalable targets that match the request parameters.</p>
    #   @return [Array<Types::ScalableTarget>]
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #   @return [String]
    class DescribeScalableTargetsResponse < Struct.new(
      :scalable_targets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scaling activity.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute include_not_scaled_activities
    #   <p>Specifies whether to include activities that aren't scaled (<i>not scaled
    #               activities</i>) in the response. Not scaled activities are activities that aren't
    #            completed or started for various reasons, such as preventing infinite scaling loops. For
    #            help interpreting the not scaled reason details in the response, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html">Scaling activities for Application Auto Scaling</a>.</p>
    #   @return [Boolean]
    class DescribeScalingActivitiesRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token,
      :include_not_scaled_activities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scaling_activities
    #   <p>A list of scaling activity objects.</p>
    #   @return [Array<Types::ScalingActivity>]
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #   @return [String]
    class DescribeScalingActivitiesResponse < Struct.new(
      :scaling_activities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_names
    #   <p>The names of the scaling policies to describe.</p>
    #   @return [Array<String>]
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and 10. The default
    #            value is 10.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 10 results and a <code>NextToken</code> value, if
    #            applicable.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class DescribeScalingPoliciesRequest < Struct.new(
      :policy_names,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scaling_policies
    #   <p>Information about the scaling policies.</p>
    #   @return [Array<Types::ScalingPolicy>]
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #   @return [String]
    class DescribeScalingPoliciesResponse < Struct.new(
      :scaling_policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action_names
    #   <p>The names of the scheduled actions to describe.</p>
    #   @return [Array<String>]
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of scheduled action results. This value can be between
    #            1 and 50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class DescribeScheduledActionsRequest < Struct.new(
      :scheduled_action_names,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_actions
    #   <p>Information about the scheduled actions.</p>
    #   @return [Array<Types::ScheduledAction>]
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #   @return [String]
    class DescribeScheduledActionsResponse < Struct.new(
      :scheduled_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling
    #          is unable to retrieve the alarms associated with a scaling policy due to a client error,
    #          for example, if the role ARN specified for a scalable target does not have permission to
    #          call the CloudWatch <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> on your behalf.</p>
    # @!attribute message
    #   @return [String]
    class FailedResourceAccessException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_namespace
    #   <p>
    #            The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead. 
    #         </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>
    #            The identifier of the resource.
    #         </p>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>
    #            The scalable dimension.
    #         </p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #            The inclusive start time of the time range for the forecast data to get. At most, the
    #            date and time can be one year before the current date and time
    #         </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #            The exclusive end time of the time range for the forecast data to get. The maximum
    #            time duration between the start and end time is 30 days. 
    #         </p>
    #   @return [Time]
    class GetPredictiveScalingForecastRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_name,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_forecast
    #   <p>
    #            The load forecast.
    #         </p>
    #   @return [Array<Types::LoadForecast>]
    # @!attribute capacity_forecast
    #   <p>
    #            The capacity forecast.
    #         </p>
    #   @return [Types::CapacityForecast]
    # @!attribute update_time
    #   <p>
    #           The time the forecast was made.
    #         </p>
    #   @return [Time]
    class GetPredictiveScalingForecastResponse < Struct.new(
      :load_forecast,
      :capacity_forecast,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an internal error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The next token supplied was invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A per-account resource limit is exceeded. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html">Application Auto Scaling service quotas</a>.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specify the ARN of the scalable target.</p>
    #            <p>For example:
    #               <code>arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123</code>
    #            </p>
    #            <p>To get the ARN for a scalable target, use <a>DescribeScalableTargets</a>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags. Each tag consists of a tag key and a tag value.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          A <code>GetPredictiveScalingForecast</code> call returns the load forecast for a
    #          predictive scaling policy. This structure includes the data points for that load
    #          forecast, along with the timestamps of those data points and the metric specification.
    #       </p>
    # @!attribute timestamps
    #   <p>
    #            The timestamps for the data points, in UTC format.
    #         </p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>
    #            The values of the data points.
    #         </p>
    #   @return [Array<Float>]
    # @!attribute metric_specification
    #   <p>
    #            The metric specification for the load forecast.
    #         </p>
    #   @return [Types::PredictiveScalingMetricSpecification]
    class LoadForecast < Struct.new(
      :timestamps,
      :values,
      :metric_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the dimension names and values associated with a metric.</p>
    # @!attribute name
    #   <p>The name of the dimension.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #   @return [String]
    class MetricDimension < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the reason for an activity that isn't scaled (<i>not scaled
    #             activity</i>), in machine-readable format. For help interpreting the not scaled
    #          reason details, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html">Scaling activities for Application Auto Scaling</a> in the
    #          <i>Application Auto Scaling User Guide</i>.</p>
    # @!attribute code
    #   <p>A code that represents the reason for not scaling.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>AutoScalingAnticipatedFlapping</p>
    #               </li>
    #               <li>
    #                  <p>TargetServicePutResourceAsUnscalable</p>
    #               </li>
    #               <li>
    #                  <p>AlreadyAtMaxCapacity</p>
    #               </li>
    #               <li>
    #                  <p>AlreadyAtMinCapacity</p>
    #               </li>
    #               <li>
    #                  <p>AlreadyAtDesiredCapacity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_capacity
    #   <p>The maximum capacity.</p>
    #   @return [Integer]
    # @!attribute min_capacity
    #   <p>The minimum capacity.</p>
    #   @return [Integer]
    # @!attribute current_capacity
    #   <p>The current capacity.</p>
    #   @return [Integer]
    class NotScaledReason < Struct.new(
      :code,
      :max_capacity,
      :min_capacity,
      :current_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified object could not be found. For any operation that depends on the existence
    #          of a scalable target, this exception is thrown if the scalable target with the specified
    #          service namespace, resource ID, and scalable dimension does not exist. For any operation
    #          that deletes or deregisters a resource, this exception is thrown if the resource cannot be
    #          found.</p>
    # @!attribute message
    #   @return [String]
    class ObjectNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a predefined metric for a target tracking scaling policy to use with
    #          Application Auto Scaling.</p>
    #          <p>For more information, <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/monitoring-cloudwatch.html#predefined-metrics">Predefined metrics for target tracking scaling policies</a> in the
    #             <i>Application Auto Scaling User Guide</i>.</p>
    # @!attribute predefined_metric_type
    #   <p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to
    #            Spot Fleets and ECS services.</p>
    #   @return [String]
    # @!attribute resource_label
    #   <p>Identifies the resource associated with the metric type. You can't specify a resource
    #            label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target
    #            group attached to the Spot Fleet or ECS service.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #            <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #            <p>Where:</p>
    #            <ul>
    #               <li>
    #                  <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                  <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #            <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #   @return [String]
    class PredefinedMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Represents a CloudWatch metric of your choosing for a predictive scaling policy.
    #       </p>
    # @!attribute metric_data_queries
    #   <p>
    #            One or more metric data queries to provide data points for a metric specification.
    #         </p>
    #   @return [Array<Types::PredictiveScalingMetricDataQuery>]
    class PredictiveScalingCustomizedMetricSpecification < Struct.new(
      :metric_data_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes the scaling metric.
    #       </p>
    # @!attribute dimensions
    #   <p>
    #            Describes the dimensions of the metric.
    #         </p>
    #   @return [Array<Types::PredictiveScalingMetricDimension>]
    # @!attribute metric_name
    #   <p>
    #            The name of the metric.
    #         </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>
    #            The namespace of the metric.
    #         </p>
    #   @return [String]
    class PredictiveScalingMetric < Struct.new(
      :dimensions,
      :metric_name,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          The metric data to return. Also defines whether this call is returning data for one
    #          metric only, or whether it is performing a math expression on the values of returned
    #          metric statistics to create a new time series. A time series is a series of data points,
    #          each of which is associated with a timestamp.
    #       </p>
    # @!attribute id
    #   <p>
    #            A short name that identifies the object's results in the response. This name must be
    #            unique among all <code>MetricDataQuery</code> objects specified for a single scaling
    #            policy. If you are performing math expressions on this set of data, this name represents
    #            that data and can serve as a variable in the mathematical expression. The valid
    #            characters are letters, numbers, and underscores. The first character must be a
    #            lowercase letter.
    #         </p>
    #   @return [String]
    # @!attribute expression
    #   <p>
    #            The math expression to perform on the returned data, if this object is performing a
    #            math expression. This expression can use the <code>Id</code> of the other metrics to
    #            refer to those metrics, and can also use the <code>Id</code> of other expressions to use
    #            the result of those expressions.
    #         </p>
    #            <p>Conditional: Within each <code>MetricDataQuery</code> object, you must specify either
    #            <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [String]
    # @!attribute metric_stat
    #   <p>
    #            Information about the metric data to return.
    #         </p>
    #            <p>Conditional: Within each <code>MetricDataQuery</code> object, you must specify either
    #            <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [Types::PredictiveScalingMetricStat]
    # @!attribute label
    #   <p>
    #            A human-readable label for this metric or expression. This is especially useful if
    #            this is a math expression, so that you know what the value represents.
    #         </p>
    #   @return [String]
    # @!attribute return_data
    #   <p>
    #            Indicates whether to return the timestamps and raw data values of this metric.
    #         </p>
    #            <p>If you use any math expressions, specify <code>true</code> for this value for only the
    #            final math expression that the metric specification is based on. You must specify
    #            <code>false</code> for <code>ReturnData</code> for all the other metrics and
    #            expressions used in the metric specification.</p>
    #            <p>If you are only retrieving metrics and not performing any math expressions, do not
    #            specify anything for <code>ReturnData</code>. This sets it to its default
    #            (<code>true</code>).</p>
    #   @return [Boolean]
    class PredictiveScalingMetricDataQuery < Struct.new(
      :id,
      :expression,
      :metric_stat,
      :label,
      :return_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes the dimension of a metric.
    #       </p>
    # @!attribute name
    #   <p>
    #            The name of the dimension.
    #         </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #            The value of the dimension.
    #         </p>
    #   @return [String]
    class PredictiveScalingMetricDimension < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          This structure specifies the metrics and target utilization settings for a predictive
    #          scaling policy.
    #       </p>
    #          <p>You must specify either a metric pair, or a load metric and a scaling metric
    #          individually. Specifying a metric pair instead of individual metrics provides a simpler
    #          way to configure metrics for a scaling policy. You choose the metric pair, and the
    #          policy automatically knows the correct sum and average statistics to use for the load
    #          metric and the scaling metric.</p>
    # @!attribute target_value
    #   <p>
    #            Specifies the target utilization.
    #         </p>
    #   @return [Float]
    # @!attribute predefined_metric_pair_specification
    #   <p>
    #            The predefined metric pair specification that determines the appropriate scaling metric and load metric to use.
    #         </p>
    #   @return [Types::PredictiveScalingPredefinedMetricPairSpecification]
    # @!attribute predefined_scaling_metric_specification
    #   <p>
    #            The predefined scaling metric specification.
    #         </p>
    #   @return [Types::PredictiveScalingPredefinedScalingMetricSpecification]
    # @!attribute predefined_load_metric_specification
    #   <p>
    #            The predefined load metric specification.
    #         </p>
    #   @return [Types::PredictiveScalingPredefinedLoadMetricSpecification]
    # @!attribute customized_scaling_metric_specification
    #   <p>
    #            The customized scaling metric specification.
    #         </p>
    #   @return [Types::PredictiveScalingCustomizedMetricSpecification]
    # @!attribute customized_load_metric_specification
    #   <p>
    #            The customized load metric specification.
    #         </p>
    #   @return [Types::PredictiveScalingCustomizedMetricSpecification]
    # @!attribute customized_capacity_metric_specification
    #   <p>
    #            The customized capacity metric specification.
    #         </p>
    #   @return [Types::PredictiveScalingCustomizedMetricSpecification]
    class PredictiveScalingMetricSpecification < Struct.new(
      :target_value,
      :predefined_metric_pair_specification,
      :predefined_scaling_metric_specification,
      :predefined_load_metric_specification,
      :customized_scaling_metric_specification,
      :customized_load_metric_specification,
      :customized_capacity_metric_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          This structure defines the CloudWatch metric to return, along with the statistic and unit.
    #       </p>
    # @!attribute metric
    #   <p>
    #            The CloudWatch metric to return, including the metric name, namespace, and dimensions. To
    #            get the exact metric name, namespace, and dimensions, inspect the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html">Metric</a> object that is returned by a call to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.    
    #         </p>
    #   @return [Types::PredictiveScalingMetric]
    # @!attribute stat
    #   <p>
    #            The statistic to return. It can include any CloudWatch statistic or extended statistic. For
    #            a list of valid values, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>.
    #         </p>
    #            <p>The most commonly used metrics for predictive scaling are <code>Average</code> and
    #            <code>Sum</code>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>
    #            The unit to use for the returned data points. For a complete list of the units that
    #            CloudWatch supports, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a> 
    #            data type in the <i>Amazon CloudWatch API Reference</i>.
    #         </p>
    #   @return [String]
    class PredictiveScalingMetricStat < Struct.new(
      :metric,
      :stat,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Represents a predictive scaling policy configuration. Predictive scaling is supported on Amazon ECS services.
    #       </p>
    # @!attribute metric_specifications
    #   <p>
    #            This structure includes the metrics and target utilization to use for predictive scaling.
    #         </p>
    #            <p>This is an array, but we currently only support a single metric specification. That
    #            is, you can specify a target value and a single metric pair, or a target value and one
    #            scaling metric and one load metric.</p>
    #   @return [Array<Types::PredictiveScalingMetricSpecification>]
    # @!attribute mode
    #   <p>
    #            The predictive scaling mode. Defaults to <code>ForecastOnly</code> if not specified.
    #         </p>
    #   @return [String]
    # @!attribute scheduling_buffer_time
    #   <p>
    #            The amount of time, in seconds, that the start time can be advanced.
    #         </p>
    #            <p>The value must be less than the forecast interval duration of 3600 seconds (60
    #            minutes). Defaults to 300 seconds if not specified. </p>
    #   @return [Integer]
    # @!attribute max_capacity_breach_behavior
    #   <p>
    #            Defines the behavior that should be applied if the forecast capacity approaches or
    #            exceeds the maximum capacity. Defaults to
    #            <code>HonorMaxCapacity</code> if not specified.
    #         </p>
    #   @return [String]
    # @!attribute max_capacity_buffer
    #   <p>
    #            The size of the capacity buffer to use when the forecast capacity is close to or
    #            exceeds the maximum capacity. The value is specified as a percentage relative to the
    #            forecast capacity. For example, if the buffer is 10, this means a 10 percent buffer,
    #            such that if the forecast capacity is 50, and the maximum capacity is 40, then the
    #            effective maximum capacity is 55.
    #         </p>
    #            <p>Required if the <code>MaxCapacityBreachBehavior</code> property is set to
    #            <code>IncreaseMaxCapacity</code>, and cannot be used otherwise.</p>
    #   @return [Integer]
    class PredictiveScalingPolicyConfiguration < Struct.new(
      :metric_specifications,
      :mode,
      :scheduling_buffer_time,
      :max_capacity_breach_behavior,
      :max_capacity_buffer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes a load metric for a predictive scaling policy.
    #       </p>
    #          <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
    #          predictive scaling policy uses individually specified load and scaling metrics instead
    #          of a metric pair.</p>
    #          <p>The following predefined metrics are available for predictive scaling:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ECSServiceAverageCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceAverageMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceTotalCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceTotalMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ALBRequestCount</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ALBRequestCountPerTarget</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TotalALBRequestCount</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute predefined_metric_type
    #   <p>
    #            The metric type.
    #         </p>
    #   @return [String]
    # @!attribute resource_label
    #   <p>
    #            A label that uniquely identifies a target group.
    #         </p>
    #   @return [String]
    class PredictiveScalingPredefinedLoadMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Represents a metric pair for a predictive scaling policy.
    #       </p>
    #          <p>The following predefined metrics are available for predictive scaling:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ECSServiceAverageCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceAverageMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceTotalCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceTotalMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ALBRequestCount</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ALBRequestCountPerTarget</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TotalALBRequestCount</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute predefined_metric_type
    #   <p>
    #            Indicates which metrics to use. There are two different types of metrics for each
    #            metric type: one is a load metric and one is a scaling metric.
    #         </p>
    #   @return [String]
    # @!attribute resource_label
    #   <p>
    #            A label that uniquely identifies a specific target group from which to determine
    #            the total and average request count.
    #         </p>
    #   @return [String]
    class PredictiveScalingPredefinedMetricPairSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes a scaling metric for a predictive scaling policy.
    #       </p>
    #          <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
    #          predictive scaling policy uses individually specified load and scaling metrics instead
    #          of a metric pair.</p>
    #          <p>The following predefined metrics are available for predictive scaling:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ECSServiceAverageCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceAverageMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceTotalCPUUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ECSServiceTotalMemoryUtilization</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ALBRequestCount</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ALBRequestCountPerTarget</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TotalALBRequestCount</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute predefined_metric_type
    #   <p>
    #            The metric type.
    #         </p>
    #   @return [String]
    # @!attribute resource_label
    #   <p>
    #            A label that uniquely identifies a specific target group from which to determine
    #            the average request count. 
    #         </p>
    #   @return [String]
    class PredictiveScalingPredefinedScalingMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #            <p>You cannot change the name of a scaling policy, but you can delete the original scaling
    #            policy and create a new scaling policy with the same settings and a different name.</p>
    #   @return [String]
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The scaling policy type. This parameter is required if you are creating a scaling
    #         policy.</p>
    #            <p>The following policy types are supported: </p>
    #            <p>
    #               <code>TargetTrackingScaling</code>—Not supported for Amazon EMR.</p>
    #            <p>
    #               <code>StepScaling</code>—Not supported for DynamoDB, Amazon Comprehend, Lambda, Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or
    #         Neptune.</p>
    #            <p>
    #               <code>PredictiveScaling</code>—Only supported for Amazon ECS.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target
    #           tracking scaling policies</a>, <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a>, and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/aas-create-predictive-scaling-policy.html">Predictive scaling policies</a> 
    #           in the <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute step_scaling_policy_configuration
    #   <p>A step scaling policy.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>StepScaling</code>.</p>
    #   @return [Types::StepScalingPolicyConfiguration]
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>A target tracking scaling policy. Includes support for predefined or customized
    #            metrics.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>TargetTrackingScaling</code>.</p>
    #   @return [Types::TargetTrackingScalingPolicyConfiguration]
    # @!attribute predictive_scaling_policy_configuration
    #   <p>
    #            The configuration of the predictive scaling policy.
    #         </p>
    #   @return [Types::PredictiveScalingPolicyConfiguration]
    class PutScalingPolicyRequest < Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration,
      :predictive_scaling_policy_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resulting scaling policy.</p>
    #   @return [String]
    # @!attribute alarms
    #   <p>The CloudWatch alarms created for the target tracking scaling policy.</p>
    #   @return [Array<Types::Alarm>]
    class PutScalingPolicyResponse < Struct.new(
      :policy_arn,
      :alarms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule for this action. The following formats are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>At expressions - "<code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Rate expressions - "<code>rate(<i>value</i>
    #                        <i>unit</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Cron expressions - "<code>cron(<i>fields</i>)</code>"</p>
    #               </li>
    #            </ul>
    #            <p>At expressions are useful for one-time schedules. Cron expressions are useful for 
    #            scheduled actions that run periodically at a specified date and time, and rate expressions 
    #            are useful for scheduled actions that run at a regular interval.</p>
    #            <p>At and cron expressions use Universal Coordinated Time (UTC) by
    #            default.</p>
    #            <p>The cron format consists of six fields separated by white spaces: [Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].</p>
    #            <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is 
    #            <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-using-cron-expressions.html">Schedule recurring scaling actions using cron expressions</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>Specifies the time zone used when setting a scheduled action by using an at or cron
    #            expression. If a time zone is not provided, UTC is used by default.</p>
    #            <p>Valid values are the canonical names of the IANA time zones supported by Joda-Time (such
    #            as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For more information, see <a href="https://www.joda.org/joda-time/timezones.html">https://www.joda.org/joda-time/timezones.html</a>.</p>
    #   @return [String]
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action. This name must be unique among all other scheduled
    #            actions on the specified scalable target. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time for this scheduled action to start, in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    #   @return [Time]
    # @!attribute scalable_target_action
    #   <p>The new minimum and maximum capacity. You can set both values or just one. At the
    #            scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
    #            to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
    #            scales in to the maximum capacity.</p>
    #   @return [Types::ScalableTargetAction]
    class PutScheduledActionRequest < Struct.new(
      :service_namespace,
      :schedule,
      :timezone,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutScheduledActionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that is associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute min_capacity
    #   <p>The minimum value that you plan to scale in to. When a scaling policy is in effect,
    #         Application Auto Scaling can scale in (contract) as needed to the minimum capacity limit in response to
    #         changing demand. This property is required when registering a new scalable target.</p>
    #            <p>For the following resources, the minimum value allowed is 0.</p>
    #            <ul>
    #               <li>
    #                  <p>AppStream 2.0 fleets</p>
    #               </li>
    #               <li>
    #                  <p> Aurora DB clusters</p>
    #               </li>
    #               <li>
    #                  <p>ECS services</p>
    #               </li>
    #               <li>
    #                  <p>EMR clusters</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variants</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference components</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint provisioned concurrency</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleets</p>
    #               </li>
    #               <li>
    #                  <p>custom resources</p>
    #               </li>
    #            </ul>
    #            <p>It's strongly recommended that you specify a value greater than 0. A value greater than 0
    #         means that data points are continuously reported to CloudWatch that scaling policies can use to
    #         scale on a metric like average CPU utilization.</p>
    #            <p>For all other resources, the minimum allowed value depends on the type of resource that
    #         you are using. If you provide a value that is lower than what a resource can accept, an error
    #         occurs. In which case, the error message will provide the minimum value that the resource can
    #         accept.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>The maximum value that you plan to scale out to. When a scaling policy is in effect,
    #            Application Auto Scaling can scale out (expand) as needed to the maximum capacity limit in response to
    #            changing demand. This property is required when registering a new scalable target.</p>
    #            <p>Although you can specify a large maximum capacity, note that service quotas might impose
    #            lower limits. Each service has its own default quotas for the maximum capacity of the
    #            resource. If you want to specify a higher limit, you can request an increase. For more
    #            information, consult the documentation for that service. For information about the default
    #            quotas for each service, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html">Service endpoints and
    #               quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Integer]
    # @!attribute role_arn
    #   <p>This parameter is required for services that do not support service-linked roles (such as
    #         Amazon EMR), and it must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable
    #         target on your behalf. </p>
    #            <p>If the service supports service-linked roles, Application Auto Scaling uses a service-linked role, which
    #         it creates if it does not yet exist. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html">How Application Auto Scaling works with IAM</a>.</p>
    #   @return [String]
    # @!attribute suspended_state
    #   <p>An embedded object that contains attributes and attribute values that are used to
    #            suspend and resume automatic scaling. Setting the value of an attribute to
    #               <code>true</code> suspends the specified scaling activities. Setting it to
    #               <code>false</code> (default) resumes the specified scaling activities. </p>
    #            <p>
    #               <b>Suspension Outcomes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>DynamicScalingInSuspended</code>, while a suspension is in effect, all
    #                  scale-in activities that are triggered by a scaling policy are suspended.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>DynamicScalingOutSuspended</code>, while a suspension is in effect, all
    #                  scale-out activities that are triggered by a scaling policy are suspended.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>ScheduledScalingSuspended</code>, while a suspension is in effect, all
    #                  scaling activities that involve scheduled actions are suspended. </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html">Suspend and resume scaling</a> in the <i>Application Auto Scaling User
    #            Guide</i>.</p>
    #   @return [Types::SuspendedState]
    # @!attribute tags
    #   <p>Assigns one or more tags to the scalable target. Use this parameter to tag the scalable
    #            target when it is created. To tag an existing scalable target, use the <a>TagResource</a> operation.</p>
    #            <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are
    #            required. You cannot have more than one tag on a scalable target with the same tag
    #            key.</p>
    #            <p>Use tags to control access to a scalable target. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html">Tagging support
    #               for Application Auto Scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class RegisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :role_arn,
      :suspended_state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scalable_target_arn
    #   <p>The ARN of the scalable target.</p>
    #   @return [String]
    class RegisterScalableTargetResponse < Struct.new(
      :scalable_target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Application Auto Scaling resource. This value is an Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a scalable target.</p>
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute min_capacity
    #   <p>The minimum value to scale to in response to a scale-in activity.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>The maximum value to scale to in response to a scale-out activity.</p>
    #   @return [Integer]
    # @!attribute predicted_capacity
    #   <p>
    #            The predicted capacity of the scalable target.
    #         </p>
    #   @return [Integer]
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your
    #            behalf.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The Unix timestamp for when the scalable target was created.</p>
    #   @return [Time]
    # @!attribute suspended_state
    #   <p>Specifies whether the scaling activities for a scalable target are in a suspended
    #            state.</p>
    #   @return [Types::SuspendedState]
    # @!attribute scalable_target_arn
    #   <p>The ARN of the scalable target.</p>
    #   @return [String]
    class ScalableTarget < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :predicted_capacity,
      :role_arn,
      :creation_time,
      :suspended_state,
      :scalable_target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the minimum and maximum capacity for a scheduled action.</p>
    # @!attribute min_capacity
    #   <p>The minimum capacity.</p>
    #            <p>When the scheduled action runs, the resource will have at least this much capacity, but it
    #         might have more depending on other settings, such as the target utilization level of a target
    #         tracking scaling policy.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>The maximum capacity.</p>
    #            <p>Although you can specify a large maximum capacity, note that service quotas may impose
    #            lower limits. Each service has its own default quotas for the maximum capacity of the
    #            resource. If you want to specify a higher limit, you can request an increase. For more
    #            information, consult the documentation for that service. For information about the default
    #            quotas for each service, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html">Service endpoints and
    #               quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Integer]
    class ScalableTargetAction < Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a scaling activity.</p>
    # @!attribute activity_id
    #   <p>The unique identifier of the scaling activity.</p>
    #   @return [String]
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scaling activity.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A simple description of what action the scaling activity intends to accomplish.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>A simple description of what caused the scaling activity to happen.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The Unix timestamp for when the scaling activity began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The Unix timestamp for when the scaling activity ended.</p>
    #   @return [Time]
    # @!attribute status_code
    #   <p>Indicates the status of the scaling activity.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A simple message about the current status of the scaling activity.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details about the scaling activity.</p>
    #   @return [String]
    # @!attribute not_scaled_reasons
    #   <p>Machine-readable data that describes the reason for a not scaled activity. Only
    #            available when <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalingActivities.html">DescribeScalingActivities</a> includes not scaled activities.</p>
    #   @return [Array<Types::NotScaledReason>]
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
      :details,
      :not_scaled_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a scaling policy to use with Application Auto Scaling.</p>
    #          <p>For more information about configuring scaling policies for a specific service, see
    #             <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/integrated-services-list.html">Amazon Web Services services
    #             that you can use with Application Auto Scaling</a> in the
    #          <i>Application Auto Scaling User Guide</i>.</p>
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the scaling policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #   @return [String]
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The scaling policy type.</p>
    #            <p>The following policy types are supported: </p>
    #            <p>
    #               <code>TargetTrackingScaling</code>—Not supported for Amazon EMR</p>
    #            <p>
    #               <code>StepScaling</code>—Not supported for DynamoDB, Amazon Comprehend, Lambda, Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or
    #         Neptune.</p>
    #            <p>
    #               <code>PredictiveScaling</code>—Only supported for Amazon ECS</p>
    #   @return [String]
    # @!attribute step_scaling_policy_configuration
    #   <p>A step scaling policy.</p>
    #   @return [Types::StepScalingPolicyConfiguration]
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>A target tracking scaling policy.</p>
    #   @return [Types::TargetTrackingScalingPolicyConfiguration]
    # @!attribute predictive_scaling_policy_configuration
    #   <p>
    #            The predictive scaling policy configuration.
    #         </p>
    #   @return [Types::PredictiveScalingPolicyConfiguration]
    # @!attribute alarms
    #   <p>The CloudWatch alarms associated with the scaling policy.</p>
    #   @return [Array<Types::Alarm>]
    # @!attribute creation_time
    #   <p>The Unix timestamp for when the scaling policy was created.</p>
    #   @return [Time]
    class ScalingPolicy < Struct.new(
      :policy_arn,
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration,
      :predictive_scaling_policy_configuration,
      :alarms,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a scheduled action.</p>
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #   @return [String]
    # @!attribute scheduled_action_arn
    #   <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
    #   @return [String]
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule for this action. The following formats are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>At expressions - "<code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Rate expressions - "<code>rate(<i>value</i>
    #                        <i>unit</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Cron expressions - "<code>cron(<i>fields</i>)</code>"</p>
    #               </li>
    #            </ul>
    #            <p>At expressions are useful for one-time schedules. Cron expressions are useful for 
    #            scheduled actions that run periodically at a specified date and time, and rate expressions 
    #            are useful for scheduled actions that run at a regular interval.</p>
    #            <p>At and cron expressions use Universal Coordinated Time (UTC) by
    #            default.</p>
    #            <p>The cron format consists of six fields separated by white spaces: [Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].</p>
    #            <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is 
    #            <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-using-cron-expressions.html">Schedule recurring scaling actions using cron expressions</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>The time zone used when referring to the date and time of a scheduled action, when the
    #            scheduled action uses an at or cron expression.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
    #                  and service name. Example: <code>service/my-cluster/my-service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>table/my-table</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon ElastiCache cache cluster - The resource type is <code>cache-cluster</code> and the unique identifier is the cache cluster name.
    #                  Example: <code>cache-cluster/mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker serverless endpoint - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #               </li>
    #               <li>
    #                  <p>SageMaker inference component - The resource type is <code>inference-component</code> and the unique identifier is the resource ID.
    #                  Example: <code>inference-component/my-inference-component</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Pool of WorkSpaces - The resource type is <code>workspacespool</code> and the unique identifier is the pool ID. 
    #                  Example: <code>workspacespool/wspool-123456</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The task count of an ECS service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The capacity of an AppStream 2.0 fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for a SageMaker model endpoint variant.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:cache-cluster:Nodes</code> - The number of nodes for an Amazon ElastiCache cache cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredProvisionedConcurrency</code> - The provisioned concurrency for a SageMaker serverless endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:inference-component:DesiredCopyCount</code> - The number of copies across an endpoint for a SageMaker inference component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>workspaces:workspacespool:DesiredUserSessions</code> - The number of user sessions for the WorkSpaces in the pool.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time that the action is scheduled to begin, in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time that the action is scheduled to end, in UTC.</p>
    #   @return [Time]
    # @!attribute scalable_target_action
    #   <p>The new minimum and maximum capacity. You can set both values or just one. At the
    #            scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
    #            to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
    #            scales in to the maximum capacity.</p>
    #   @return [Types::ScalableTargetAction]
    # @!attribute creation_time
    #   <p>The date and time that the scheduled action was created.</p>
    #   @return [Time]
    class ScheduledAction < Struct.new(
      :scheduled_action_name,
      :scheduled_action_arn,
      :service_namespace,
      :schedule,
      :timezone,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a step adjustment for a <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepScalingPolicyConfiguration.html">StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference
    #          between the value of the aggregated CloudWatch metric and the breach threshold that you've
    #          defined for the alarm. </p>
    #          <p>For the following examples, suppose that you have an alarm with a breach threshold of
    #          50:</p>
    #          <ul>
    #             <li>
    #                <p>To initiate the adjustment when the metric is greater than or equal to 50 and less
    #                than 60, specify a lower bound of <code>0</code> and an upper bound of
    #                   <code>10</code>.</p>
    #             </li>
    #             <li>
    #                <p>To initiate the adjustment when the metric is greater than 40 and less than or
    #                equal to 50, specify a lower bound of <code>-10</code> and an upper bound of
    #                   <code>0</code>.</p>
    #             </li>
    #          </ul>
    #          <p>There are a few rules for the step adjustments for your step policy:</p>
    #          <ul>
    #             <li>
    #                <p>The ranges of your step adjustments can't overlap or have a gap.</p>
    #             </li>
    #             <li>
    #                <p>At most one step adjustment can have a null lower bound. If one step adjustment
    #                has a negative lower bound, then there must be a step adjustment with a null lower
    #                bound.</p>
    #             </li>
    #             <li>
    #                <p>At most one step adjustment can have a null upper bound. If one step adjustment
    #                has a positive upper bound, then there must be a step adjustment with a null upper
    #                bound.</p>
    #             </li>
    #             <li>
    #                <p>The upper and lower bound can't be null in the same step adjustment.</p>
    #             </li>
    #          </ul>
    # @!attribute metric_interval_lower_bound
    #   <p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If
    #            the metric value is above the breach threshold, the lower bound is inclusive (the metric
    #            must be greater than or equal to the threshold plus the lower bound). Otherwise, it's
    #            exclusive (the metric must be greater than the threshold plus the lower bound). A null
    #            value indicates negative infinity.</p>
    #   @return [Float]
    # @!attribute metric_interval_upper_bound
    #   <p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If
    #            the metric value is above the breach threshold, the upper bound is exclusive (the metric
    #            must be less than the threshold plus the upper bound). Otherwise, it's inclusive (the
    #            metric must be less than or equal to the threshold plus the upper bound). A null value
    #            indicates positive infinity.</p>
    #            <p>The upper bound must be greater than the lower bound.</p>
    #   @return [Float]
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #            adds to the current capacity while a negative number removes from the current capacity. For
    #            exact capacity, you must specify a non-negative value.</p>
    #   @return [Integer]
    class StepAdjustment < Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a step scaling policy configuration to use with Application Auto Scaling.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    # @!attribute adjustment_type
    #   <p>Specifies how the <code>ScalingAdjustment</code> value in a <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepAdjustment.html">StepAdjustment</a> is interpreted (for example, an absolute number or a
    #            percentage). The valid values are <code>ChangeInCapacity</code>,
    #            <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>. </p>
    #            <p>
    #               <code>AdjustmentType</code> is required if you are adding a new step scaling policy
    #            configuration.</p>
    #   @return [String]
    # @!attribute step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #            breach.</p>
    #            <p>At least one step adjustment is required if you are adding a new step scaling policy
    #            configuration.</p>
    #   @return [Array<Types::StepAdjustment>]
    # @!attribute min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #               <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
    #            scaling policy to scale out an Amazon ECS service by 25 percent and you specify a
    #               <code>MinAdjustmentMagnitude</code> of 2. If the service has 4 tasks and the scaling
    #            policy is performed, 25 percent of 4 is 1. However, because you specified a
    #               <code>MinAdjustmentMagnitude</code> of 2, Application Auto Scaling scales out the service by 2
    #            tasks.</p>
    #   @return [Integer]
    # @!attribute cooldown
    #   <p>The amount of time, in seconds, to wait for a previous scaling activity to take effect. If
    #         not specified, the default value is 300. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/step-scaling-policy-overview.html#step-scaling-cooldown">Cooldown period</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. Valid values are <code>Minimum</code>,
    #               <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
    #            value is treated as <code>Average</code>.</p>
    #   @return [String]
    class StepScalingPolicyConfiguration < Struct.new(
      :adjustment_type,
      :step_adjustments,
      :min_adjustment_magnitude,
      :cooldown,
      :metric_aggregation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether the scaling activities for a scalable target are in a suspended state.
    #       </p>
    # @!attribute dynamic_scaling_in_suspended
    #   <p>Whether scale in by a target tracking scaling policy or a step scaling policy is
    #            suspended. Set the value to <code>true</code> if you don't want Application Auto Scaling to remove capacity
    #            when a scaling policy is triggered. The default is <code>false</code>. </p>
    #   @return [Boolean]
    # @!attribute dynamic_scaling_out_suspended
    #   <p>Whether scale out by a target tracking scaling policy or a step scaling policy is
    #            suspended. Set the value to <code>true</code> if you don't want Application Auto Scaling to add capacity
    #            when a scaling policy is triggered. The default is <code>false</code>. </p>
    #   @return [Boolean]
    # @!attribute scheduled_scaling_suspended
    #   <p>Whether scheduled scaling is suspended. Set the value to <code>true</code> if you don't
    #            want Application Auto Scaling to add or remove capacity by initiating scheduled actions. The default is
    #               <code>false</code>. </p>
    #   @return [Boolean]
    class SuspendedState < Struct.new(
      :dynamic_scaling_in_suspended,
      :dynamic_scaling_out_suspended,
      :scheduled_scaling_suspended,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Identifies the Application Auto Scaling scalable target that you want to apply tags to.</p>
    #            <p>For example:
    #               <code>arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123</code>
    #            </p>
    #            <p>To get the ARN for a scalable target, use <a>DescribeScalableTargets</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services
    #            resource.</p>
    #            <p>Each tag consists of a tag key and a tag value.</p>
    #            <p>You cannot have more than one tag on an Application Auto Scaling scalable target with the same tag key.
    #            If you specify an existing tag key with a different tag value, Application Auto Scaling replaces the
    #            current tag value with the specified one.</p>
    #            <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-defined tag
    #               restrictions</a> in the <i>Amazon Web Services Billing User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a specific metric.</p>
    #          <p>Metric is a property of the <a>TargetTrackingMetricStat</a> object.</p>
    # @!attribute dimensions
    #   <p>The dimensions for the metric. For the list of available dimensions, see the Amazon Web Services
    #            documentation available from the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #               services that publish CloudWatch metrics </a> in the <i>Amazon CloudWatch User
    #               Guide</i>. </p>
    #            <p>Conditional: If you published your metric with dimensions, you must specify the same
    #            dimensions in your scaling policy.</p>
    #   @return [Array<Types::TargetTrackingMetricDimension>]
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the metric. For more information, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #               services that publish CloudWatch metrics </a> in the <i>Amazon CloudWatch User
    #               Guide</i>.</p>
    #   @return [String]
    class TargetTrackingMetric < Struct.new(
      :dimensions,
      :metric_name,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metric data to return. Also defines whether this call is returning data for one
    #          metric only, or whether it is performing a math expression on the values of returned metric
    #          statistics to create a new time series. A time series is a series of data points, each of
    #          which is associated with a timestamp.</p>
    #          <p>For more information and examples, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking-metric-math.html">Create a target tracking scaling policy for Application Auto Scaling using metric math</a> in the
    #             <i>Application Auto Scaling User Guide</i>.</p>
    # @!attribute expression
    #   <p>The math expression to perform on the returned data, if this object is performing a math
    #            expression. This expression can use the <code>Id</code> of the other metrics to refer to
    #            those metrics, and can also use the <code>Id</code> of other expressions to use the result
    #            of those expressions. </p>
    #            <p>Conditional: Within each <code>TargetTrackingMetricDataQuery</code> object, you must
    #            specify either <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A short name that identifies the object's results in the response. This name must be
    #            unique among all <code>MetricDataQuery</code> objects specified for a single scaling
    #            policy. If you are performing math expressions on this set of data, this name represents
    #            that data and can serve as a variable in the mathematical expression. The valid characters
    #            are letters, numbers, and underscores. The first character must be a lowercase letter.
    #         </p>
    #   @return [String]
    # @!attribute label
    #   <p>A human-readable label for this metric or expression. This is especially useful if this
    #            is a math expression, so that you know what the value represents.</p>
    #   @return [String]
    # @!attribute metric_stat
    #   <p>Information about the metric data to return.</p>
    #            <p>Conditional: Within each <code>MetricDataQuery</code> object, you must specify either
    #               <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [Types::TargetTrackingMetricStat]
    # @!attribute return_data
    #   <p>Indicates whether to return the timestamps and raw data values of this metric. </p>
    #            <p>If you use any math expressions, specify <code>true</code> for this value for only the
    #            final math expression that the metric specification is based on. You must specify
    #               <code>false</code> for <code>ReturnData</code> for all the other metrics and expressions
    #            used in the metric specification.</p>
    #            <p>If you are only retrieving metrics and not performing any math expressions, do not
    #            specify anything for <code>ReturnData</code>. This sets it to its default
    #               (<code>true</code>).</p>
    #   @return [Boolean]
    class TargetTrackingMetricDataQuery < Struct.new(
      :expression,
      :id,
      :label,
      :metric_stat,
      :return_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the dimension of a metric.</p>
    # @!attribute name
    #   <p>The name of the dimension.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #   @return [String]
    class TargetTrackingMetricDimension < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the CloudWatch metric to return, along with the statistic and
    #          unit.</p>
    #          <p>For more information about the CloudWatch terminology below, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #             concepts</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    # @!attribute metric
    #   <p>The CloudWatch metric to return, including the metric name, namespace, and dimensions. To get
    #            the exact metric name, namespace, and dimensions, inspect the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html">Metric</a> object that is
    #            returned by a call to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #   @return [Types::TargetTrackingMetric]
    # @!attribute stat
    #   <p>The statistic to return. It can include any CloudWatch statistic or extended statistic. For a
    #            list of valid values, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #            <p>The most commonly used metric for scaling is <code>Average</code>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit to use for the returned data points. For a complete list of the units that CloudWatch
    #            supports, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a> data
    #            type in the <i>Amazon CloudWatch API Reference</i>.</p>
    #   @return [String]
    class TargetTrackingMetricStat < Struct.new(
      :metric,
      :stat,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a target tracking scaling policy configuration to use with Application Auto Scaling.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target tracking scaling policies</a> in the
    #          <i>Application Auto Scaling User Guide</i>.</p>
    # @!attribute target_value
    #   <p>The target value for the metric. Although this property accepts numbers of type Double,
    #            it won't accept values that are either too small or too large. Values must be in the range
    #            of -2^360 to 2^360. The value must be a valid number based on the choice of metric. For
    #            example, if the metric is CPU utilization, then the target value is a percent value that
    #            represents how much of the CPU can be used before scaling out. </p>
    #            <note>
    #               <p>If the scaling policy specifies the <code>ALBRequestCountPerTarget</code> predefined
    #               metric, specify the target utilization as the optimal average request count per target
    #               during any one-minute interval.</p>
    #            </note>
    #   @return [Float]
    # @!attribute predefined_metric_specification
    #   <p>A predefined metric. You can specify either a predefined metric or a customized
    #            metric.</p>
    #   @return [Types::PredefinedMetricSpecification]
    # @!attribute customized_metric_specification
    #   <p>A customized metric. You can specify either a predefined metric or a customized
    #            metric.</p>
    #   @return [Types::CustomizedMetricSpecification]
    # @!attribute scale_out_cooldown
    #   <p>The amount of time, in seconds, to wait for a previous scale-out activity to take effect.
    #         For more information and for default values, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/target-tracking-scaling-policy-overview.html#target-tracking-cooldown">Define cooldown periods</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute scale_in_cooldown
    #   <p>The amount of time, in seconds, after a scale-in activity completes before another
    #         scale-in activity can start. For more information and for default values, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/target-tracking-scaling-policy-overview.html#target-tracking-cooldown">Define cooldown periods</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute disable_scale_in
    #   <p>Indicates whether scale in by the target tracking scaling policy is disabled. If the
    #            value is <code>true</code>, scale in is disabled and the target tracking scaling policy
    #            won't remove capacity from the scalable target. Otherwise, scale in is enabled and the
    #            target tracking scaling policy can remove capacity from the scalable target. The default
    #            value is <code>false</code>.</p>
    #   @return [Boolean]
    class TargetTrackingScalingPolicyConfiguration < Struct.new(
      :target_value,
      :predefined_metric_specification,
      :customized_metric_specification,
      :scale_out_cooldown,
      :scale_in_cooldown,
      :disable_scale_in,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains too many tags. Try the request again with fewer tags.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Application Auto Scaling resource. This value is an Amazon Resource Name (ARN).</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Identifies the Application Auto Scaling scalable target from which to remove tags.</p>
    #            <p>For example:
    #               <code>arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123</code>
    #            </p>
    #            <p>To get the ARN for a scalable target, use <a>DescribeScalableTargets</a>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception was thrown for a validation issue. Review the available parameters for the
    #          API request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
