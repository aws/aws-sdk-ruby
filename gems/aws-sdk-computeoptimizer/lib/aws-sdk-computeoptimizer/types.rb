# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComputeOptimizer
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the enrollment status of an organization's member accounts
    # in Compute Optimizer.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The account enrollment status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the account enrollment status.
    #
    #   For example, an account might show a status of `Pending` because
    #   member accounts of an organization require more time to be enrolled
    #   in the service.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The Unix epoch timestamp, in seconds, of when the account enrollment
    #   status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AccountEnrollmentStatus AWS API Documentation
    #
    class AccountEnrollmentStatus < Struct.new(
      :account_id,
      :status,
      :status_reason,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of an Auto Scaling group.
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity, or number of instances, for the Auto Scaling
    #   group.
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   The minimum size, or minimum number of instances, for the Auto
    #   Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size, or maximum number of instances, for the Auto
    #   Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AutoScalingGroupConfiguration AWS API Documentation
    #
    class AutoScalingGroupConfiguration < Struct.new(
      :desired_capacity,
      :min_size,
      :max_size,
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Auto Scaling group recommendation.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_arn
    #   The Amazon Resource Name (ARN) of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] finding
    #   The finding classification of the Auto Scaling group.
    #
    #   Findings for Auto Scaling groups include:
    #
    #   * <b> <code>NotOptimized</code> </b>—An Auto Scaling group is
    #     considered not optimized when Compute Optimizer identifies a
    #     recommendation that can provide better performance for your
    #     workload.
    #
    #   * <b> <code>Optimized</code> </b>—An Auto Scaling group is
    #     considered optimized when Compute Optimizer determines that the
    #     group is correctly provisioned to run your workload based on the
    #     chosen instance type. For optimized resources, Compute Optimizer
    #     might recommend a new generation instance type.
    #   @return [String]
    #
    # @!attribute [rw] utilization_metrics
    #   An array of objects that describe the utilization metrics of the
    #   Auto Scaling group.
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] look_back_period_in_days
    #   The number of days for which utilization metrics were analyzed for
    #   the Auto Scaling group.
    #   @return [Float]
    #
    # @!attribute [rw] current_configuration
    #   An array of objects that describe the current configuration of the
    #   Auto Scaling group.
    #   @return [Types::AutoScalingGroupConfiguration]
    #
    # @!attribute [rw] recommendation_options
    #   An array of objects that describe the recommendation options for the
    #   Auto Scaling group.
    #   @return [Array<Types::AutoScalingGroupRecommendationOption>]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The timestamp of when the Auto Scaling group recommendation was last
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] current_performance_risk
    #   The risk of the current Auto Scaling group not meeting the
    #   performance needs of its workloads. The higher the risk, the more
    #   likely the current Auto Scaling group configuration has insufficient
    #   capacity and cannot meet workload requirements.
    #   @return [String]
    #
    # @!attribute [rw] effective_recommendation_preferences
    #   An object that describes the effective recommendation preferences
    #   for the Auto Scaling group.
    #   @return [Types::EffectiveRecommendationPreferences]
    #
    # @!attribute [rw] inferred_workload_types
    #   The applications that might be running on the instances in the Auto
    #   Scaling group as inferred by Compute Optimizer.
    #
    #   Compute Optimizer can infer if one of the following applications
    #   might be running on the instances:
    #
    #   * `AmazonEmr` - Infers that Amazon EMR might be running on the
    #     instances.
    #
    #   * `ApacheCassandra` - Infers that Apache Cassandra might be running
    #     on the instances.
    #
    #   * `ApacheHadoop` - Infers that Apache Hadoop might be running on the
    #     instances.
    #
    #   * `Memcached` - Infers that Memcached might be running on the
    #     instances.
    #
    #   * `NGINX` - Infers that NGINX might be running on the instances.
    #
    #   * `PostgreSql` - Infers that PostgreSQL might be running on the
    #     instances.
    #
    #   * `Redis` - Infers that Redis might be running on the instances.
    #
    #   * `Kafka` - Infers that Kafka might be running on the instance.
    #
    #   * `SQLServer` - Infers that SQLServer might be running on the
    #     instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AutoScalingGroupRecommendation AWS API Documentation
    #
    class AutoScalingGroupRecommendation < Struct.new(
      :account_id,
      :auto_scaling_group_arn,
      :auto_scaling_group_name,
      :finding,
      :utilization_metrics,
      :look_back_period_in_days,
      :current_configuration,
      :recommendation_options,
      :last_refresh_timestamp,
      :current_performance_risk,
      :effective_recommendation_preferences,
      :inferred_workload_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation option for an Auto Scaling group.
    #
    # @!attribute [rw] configuration
    #   An array of objects that describe an Auto Scaling group
    #   configuration.
    #   @return [Types::AutoScalingGroupConfiguration]
    #
    # @!attribute [rw] projected_utilization_metrics
    #   An array of objects that describe the projected utilization metrics
    #   of the Auto Scaling group recommendation option.
    #
    #   <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    #   metrics returned. Additionally, the `Memory` metric is returned only
    #   for resources that have the unified CloudWatch agent installed on
    #   them. For more information, see [Enabling Memory Utilization with
    #   the CloudWatch Agent][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] performance_risk
    #   The performance risk of the Auto Scaling group configuration
    #   recommendation.
    #
    #   Performance risk indicates the likelihood of the recommended
    #   instance type not meeting the resource needs of your workload.
    #   Compute Optimizer calculates an individual performance risk score
    #   for each specification of the recommended instance, including CPU,
    #   memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS,
    #   network throughput, and network PPS. The performance risk of the
    #   recommended instance is calculated as the maximum performance risk
    #   score across the analyzed resource specifications.
    #
    #   The value ranges from `0` - `4`, with `0` meaning that the
    #   recommended resource is predicted to always provide enough hardware
    #   capability. The higher the performance risk is, the more likely you
    #   should validate whether the recommendation will meet the performance
    #   requirements of your workload before migrating your resource.
    #   @return [Float]
    #
    # @!attribute [rw] rank
    #   The rank of the Auto Scaling group recommendation option.
    #
    #   The top recommendation option is ranked as `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] savings_opportunity
    #   An object that describes the savings opportunity for the Auto
    #   Scaling group recommendation option. Savings opportunity includes
    #   the estimated monthly savings amount and percentage.
    #   @return [Types::SavingsOpportunity]
    #
    # @!attribute [rw] migration_effort
    #   The level of effort required to migrate from the current instance
    #   type to the recommended instance type.
    #
    #   For example, the migration effort is `Low` if Amazon EMR is the
    #   inferred workload type and an Amazon Web Services Graviton instance
    #   type is recommended. The migration effort is `Medium` if a workload
    #   type couldn't be inferred but an Amazon Web Services Graviton
    #   instance type is recommended. The migration effort is `VeryLow` if
    #   both the current and recommended instance types are of the same CPU
    #   architecture.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AutoScalingGroupRecommendationOption AWS API Documentation
    #
    class AutoScalingGroupRecommendationOption < Struct.new(
      :configuration,
      :projected_utilization_metrics,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :migration_effort)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the container configurations within the tasks of your Amazon
    # ECS service.
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] memory_size_configuration
    #   The memory size configurations for the container.
    #   @return [Types::MemorySizeConfiguration]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units reserved for the container.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ContainerConfiguration AWS API Documentation
    #
    class ContainerConfiguration < Struct.new(
      :container_name,
      :memory_size_configuration,
      :cpu)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CPU and memory recommendations for a container within the tasks of
    # your Amazon ECS service.
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] memory_size_configuration
    #   The recommended memory size configurations for the container.
    #   @return [Types::MemorySizeConfiguration]
    #
    # @!attribute [rw] cpu
    #   The recommended number of CPU units reserved for the container.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ContainerRecommendation AWS API Documentation
    #
    class ContainerRecommendation < Struct.new(
      :container_name,
      :memory_size_configuration,
      :cpu)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the performance risk ratings for a given resource type.
    #
    # Resources with a `high` or `medium` rating are at risk of not meeting
    # the performance needs of their workloads, while resources with a `low`
    # rating are performing well in their workloads.
    #
    # @!attribute [rw] high
    #   A count of the applicable resource types with a high performance
    #   risk rating.
    #   @return [Integer]
    #
    # @!attribute [rw] medium
    #   A count of the applicable resource types with a medium performance
    #   risk rating.
    #   @return [Integer]
    #
    # @!attribute [rw] low
    #   A count of the applicable resource types with a low performance risk
    #   rating.
    #   @return [Integer]
    #
    # @!attribute [rw] very_low
    #   A count of the applicable resource types with a very low performance
    #   risk rating.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/CurrentPerformanceRiskRatings AWS API Documentation
    #
    class CurrentPerformanceRiskRatings < Struct.new(
      :high,
      :medium,
      :low,
      :very_low)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The target resource type of the recommendation preference to delete.
    #
    #   The `Ec2Instance` option encompasses standalone instances and
    #   instances that are part of Auto Scaling groups. The
    #   `AutoScalingGroup` option encompasses only instances that are part
    #   of an Auto Scaling group.
    #
    #   <note markdown="1"> The valid values for this parameter are `Ec2Instance` and
    #   `AutoScalingGroup`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   An object that describes the scope of the recommendation preference
    #   to delete.
    #
    #   You can delete recommendation preferences that are created at the
    #   organization level (for management accounts of an organization
    #   only), account level, and resource level. For more information, see
    #   [Activating enhanced infrastructure metrics][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [Types::Scope]
    #
    # @!attribute [rw] recommendation_preference_names
    #   The name of the recommendation preference to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DeleteRecommendationPreferencesRequest AWS API Documentation
    #
    class DeleteRecommendationPreferencesRequest < Struct.new(
      :resource_type,
      :scope,
      :recommendation_preference_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DeleteRecommendationPreferencesResponse AWS API Documentation
    #
    class DeleteRecommendationPreferencesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] job_ids
    #   The identification numbers of the export jobs to return.
    #
    #   An export job ID is returned when you create an export using the
    #   ExportAutoScalingGroupRecommendations or
    #   ExportEC2InstanceRecommendations actions.
    #
    #   All export jobs created in the last seven days are returned if this
    #   parameter is omitted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of export jobs.
    #   @return [Array<Types::JobFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of export jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of export jobs to return with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DescribeRecommendationExportJobsRequest AWS API Documentation
    #
    class DescribeRecommendationExportJobsRequest < Struct.new(
      :job_ids,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_export_jobs
    #   An array of objects that describe recommendation export jobs.
    #   @return [Array<Types::RecommendationExportJob>]
    #
    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of export jobs.
    #
    #   This value is null when there are no more pages of export jobs to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DescribeRecommendationExportJobsResponse AWS API Documentation
    #
    class DescribeRecommendationExportJobsResponse < Struct.new(
      :recommendation_export_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of Amazon Elastic
    # Block Store (Amazon EBS) volume recommendations. Use this filter with
    # the GetEBSVolumeRecommendations action.
    #
    # You can use `LambdaFunctionRecommendationFilter` with the
    # GetLambdaFunctionRecommendations action, `JobFilter` with the
    # DescribeRecommendationExportJobs action, and `Filter` with the
    # GetAutoScalingGroupRecommendations and GetEC2InstanceRecommendations
    # actions.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `Finding` to return recommendations with a specific finding
    #   classification (for example, `NotOptimized`).
    #
    #   You can filter your Amazon EBS volume recommendations by `tag:key`
    #   and `tag-key` tags.
    #
    #   A `tag:key` is a key and value combination of a tag assigned to your
    #   Amazon EBS volume recommendations. Use the tag key in the filter
    #   name and the tag value as the filter value. For example, to find all
    #   Amazon EBS volume recommendations that have a tag with the key of
    #   `Owner` and the value of `TeamA`, specify `tag:Owner` for the filter
    #   name and `TeamA` for the filter value.
    #
    #   A `tag-key` is the key of a tag assigned to your Amazon EBS volume
    #   recommendations. Use this filter to find all of your Amazon EBS
    #   volume recommendations that have a tag with a specific key. This
    #   doesn’t consider the tag value. For example, you can find your
    #   Amazon EBS volume recommendations with a tag key value of `Owner` or
    #   without any tag keys assigned.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   The valid values are `Optimized`, or `NotOptimized`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/EBSFilter AWS API Documentation
    #
    class EBSFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a utilization metric of an Amazon Elastic Block Store
    # (Amazon EBS) volume.
    #
    # Compare the utilization metric data of your resource against its
    # projected utilization metric data to determine the performance
    # difference between your current resource and the recommended option.
    #
    # @!attribute [rw] name
    #   The name of the utilization metric.
    #
    #   The following utilization metrics are available:
    #
    #   * `VolumeReadOpsPerSecond` - The completed read operations per
    #     second from the volume in a specified period of time.
    #
    #     Unit: Count
    #
    #   * `VolumeWriteOpsPerSecond` - The completed write operations per
    #     second to the volume in a specified period of time.
    #
    #     Unit: Count
    #
    #   * `VolumeReadBytesPerSecond` - The bytes read per second from the
    #     volume in a specified period of time.
    #
    #     Unit: Bytes
    #
    #   * `VolumeWriteBytesPerSecond` - The bytes written to the volume in a
    #     specified period of time.
    #
    #     Unit: Bytes
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic of the utilization metric.
    #
    #   The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #   return utilization metrics using only the `Maximum` statistic, which
    #   is the highest value observed during the specified period.
    #
    #   The Compute Optimizer console displays graphs for some utilization
    #   metrics using the `Average` statistic, which is the value of `Sum` /
    #   `SampleCount` during the specified period. For more information, see
    #   [Viewing resource recommendations][1] in the *Compute Optimizer User
    #   Guide*. You can also get averaged utilization metric data for your
    #   resources using Amazon CloudWatch. For more information, see the
    #   [Amazon CloudWatch User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the utilization metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/EBSUtilizationMetric AWS API Documentation
    #
    class EBSUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the projected metrics of an Amazon ECS service
    # recommendation option.
    #
    # To determine the performance difference between your current Amazon
    # ECS service and the recommended option, compare the metric data of
    # your service against its projected metric data.
    #
    # @!attribute [rw] name
    #   The name of the projected metric.
    #
    #   The following metrics are available:
    #
    #   * `Cpu` — The percentage of allocated compute units that are
    #     currently in use on the service tasks.
    #
    #   * `Memory` — The percentage of memory that's currently in use on
    #     the service tasks.
    #   @return [String]
    #
    # @!attribute [rw] timestamps
    #   The timestamps of the projected metric.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] upper_bound_values
    #   The upper bound values for the projected metric.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] lower_bound_values
    #   The lower bound values for the projected metric.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ECSServiceProjectedMetric AWS API Documentation
    #
    class ECSServiceProjectedMetric < Struct.new(
      :name,
      :timestamps,
      :upper_bound_values,
      :lower_bound_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the projected utilization metrics of an Amazon ECS service
    # recommendation option.
    #
    # To determine the performance difference between your current Amazon
    # ECS service and the recommended option, compare the utilization metric
    # data of your service against its projected utilization metric data.
    #
    # @!attribute [rw] name
    #   The name of the projected utilization metric.
    #
    #   The following utilization metrics are available:
    #
    #   * `Cpu` — The percentage of allocated compute units that are
    #     currently in use on the service tasks.
    #
    #   * `Memory` — The percentage of memory that's currently in use on
    #     the service tasks.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic of the projected utilization metric.
    #
    #   The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #   return utilization metrics using only the `Maximum` statistic, which
    #   is the highest value observed during the specified period.
    #
    #   The Compute Optimizer console displays graphs for some utilization
    #   metrics using the `Average` statistic, which is the value of `Sum` /
    #   `SampleCount` during the specified period. For more information, see
    #   [Viewing resource recommendations][1] in the *Compute Optimizer User
    #   Guide*. You can also get averaged utilization metric data for your
    #   resources using Amazon CloudWatch. For more information, see the
    #   [Amazon CloudWatch User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
    #   @return [String]
    #
    # @!attribute [rw] lower_bound_value
    #   The lower bound values for the projected utilization metrics.
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound_value
    #   The upper bound values for the projected utilization metrics.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ECSServiceProjectedUtilizationMetric AWS API Documentation
    #
    class ECSServiceProjectedUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :lower_bound_value,
      :upper_bound_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon ECS service recommendation.
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the current Amazon ECS service.
    #
    #   The following is the format of the ARN:
    #
    #   `arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name`
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Amazon ECS service.
    #   @return [String]
    #
    # @!attribute [rw] current_service_configuration
    #   The configuration of the current Amazon ECS service.
    #   @return [Types::ServiceConfiguration]
    #
    # @!attribute [rw] utilization_metrics
    #   An array of objects that describe the utilization metrics of the
    #   Amazon ECS service.
    #   @return [Array<Types::ECSServiceUtilizationMetric>]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The number of days the Amazon ECS service utilization metrics were
    #   analyzed.
    #   @return [Float]
    #
    # @!attribute [rw] launch_type
    #   The launch type the Amazon ECS service is using.
    #
    #   <note markdown="1"> Compute Optimizer only supports the Fargate launch type.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The timestamp of when the Amazon ECS service recommendation was last
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] finding
    #   The finding classification of an Amazon ECS service.
    #
    #   Findings for Amazon ECS services include:
    #
    #   * <b> <code>Underprovisioned</code> </b> — When Compute Optimizer
    #     detects that there’s not enough memory or CPU, an Amazon ECS
    #     service is considered under-provisioned. An under-provisioned
    #     service might result in poor application performance.
    #
    #   * <b> <code>Overprovisioned</code> </b> — When Compute Optimizer
    #     detects that there’s excessive memory or CPU, an Amazon ECS
    #     service is considered over-provisioned. An over-provisioned
    #     service might result in additional infrastructure costs.
    #
    #   * <b> <code>Optimized</code> </b> — When both the CPU and memory of
    #     your Amazon ECS service meet the performance requirements of your
    #     workload, the service is considered optimized.
    #   @return [String]
    #
    # @!attribute [rw] finding_reason_codes
    #   The reason for the finding classification of an Amazon ECS service.
    #
    #   Finding reason codes for Amazon ECS services include:
    #
    #   * <b> <code>CPUUnderprovisioned</code> </b> — The service CPU
    #     configuration can be sized up to enhance the performance of your
    #     workload. This is identified by analyzing the `CPUUtilization`
    #     metric of the current service during the look-back period.
    #
    #   * <b> <code>CPUOverprovisioned</code> </b> — The service CPU
    #     configuration can be sized down while still meeting the
    #     performance requirements of your workload. This is identified by
    #     analyzing the `CPUUtilization` metric of the current service
    #     during the look-back period.
    #
    #   * <b> <code>MemoryUnderprovisioned</code> </b> — The service memory
    #     configuration can be sized up to enhance the performance of your
    #     workload. This is identified by analyzing the `MemoryUtilization`
    #     metric of the current service during the look-back period.
    #
    #   * <b> <code>MemoryOverprovisioned</code> </b> — The service memory
    #     configuration can be sized down while still meeting the
    #     performance requirements of your workload. This is identified by
    #     analyzing the `MemoryUtilization` metric of the current service
    #     during the look-back period.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_recommendation_options
    #   An array of objects that describe the recommendation options for the
    #   Amazon ECS service.
    #   @return [Array<Types::ECSServiceRecommendationOption>]
    #
    # @!attribute [rw] current_performance_risk
    #   The risk of the current Amazon ECS service not meeting the
    #   performance needs of its workloads. The higher the risk, the more
    #   likely the current service can't meet the performance requirements
    #   of its workload.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags assigned to your Amazon ECS service recommendations.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ECSServiceRecommendation AWS API Documentation
    #
    class ECSServiceRecommendation < Struct.new(
      :service_arn,
      :account_id,
      :current_service_configuration,
      :utilization_metrics,
      :lookback_period_in_days,
      :launch_type,
      :last_refresh_timestamp,
      :finding,
      :finding_reason_codes,
      :service_recommendation_options,
      :current_performance_risk,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of Amazon ECS
    # service recommendations. Use this filter with the
    # GetECSServiceRecommendations action.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `Finding` to return recommendations with a specific finding
    #   classification.
    #
    #   Specify `FindingReasonCode` to return recommendations with a
    #   specific finding reason code.
    #
    #   You can filter your Amazon ECS service recommendations by `tag:key`
    #   and `tag-key` tags.
    #
    #   A `tag:key` is a key and value combination of a tag assigned to your
    #   Amazon ECS service recommendations. Use the tag key in the filter
    #   name and the tag value as the filter value. For example, to find all
    #   Amazon ECS service recommendations that have a tag with the key of
    #   `Owner` and the value of `TeamA`, specify `tag:Owner` for the filter
    #   name and `TeamA` for the filter value.
    #
    #   A `tag-key` is the key of a tag assigned to your Amazon ECS service
    #   recommendations. Use this filter to find all of your Amazon ECS
    #   service recommendations that have a tag with a specific key. This
    #   doesn’t consider the tag value. For example, you can find your
    #   Amazon ECS service recommendations with a tag key value of `Owner`
    #   or without any tag keys assigned.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   The valid values for this parameter are as follows:
    #
    #   * If you specify the `name` parameter as `Finding`, specify
    #     `Optimized`, `NotOptimized`, or `Unavailable`.
    #
    #   * If you specify the `name` parameter as `FindingReasonCode`,
    #     specify `CPUUnderprovisioned`, `CPUOverprovisioned`,
    #     `MemoryUnderprovisioned`, or `MemoryOverprovisioned`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ECSServiceRecommendationFilter AWS API Documentation
    #
    class ECSServiceRecommendationFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the recommendation options for an Amazon ECS service.
    #
    # @!attribute [rw] memory
    #   The memory size of the Amazon ECS service recommendation option.
    #   @return [Integer]
    #
    # @!attribute [rw] cpu
    #   The CPU size of the Amazon ECS service recommendation option.
    #   @return [Integer]
    #
    # @!attribute [rw] savings_opportunity
    #   Describes the savings opportunity for recommendations of a given
    #   resource type or for the recommendation option of an individual
    #   resource.
    #
    #   Savings opportunity represents the estimated monthly savings you can
    #   achieve by implementing a given Compute Optimizer recommendation.
    #
    #   Savings opportunity data requires that you opt in to Cost Explorer,
    #   as well as activate **Receive Amazon EC2 resource recommendations**
    #   in the Cost Explorer preferences page. That creates a connection
    #   between Cost Explorer and Compute Optimizer. With this connection,
    #   Cost Explorer generates savings estimates considering the price of
    #   existing resources, the price of recommended resources, and
    #   historical usage data. Estimated monthly savings reflects the
    #   projected dollar savings associated with each of the recommendations
    #   generated. For more information, see [Enabling Cost Explorer][1] and
    #   [Optimizing your cost with Rightsizing Recommendations][2] in the
    #   *Cost Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html
    #   [2]: https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html
    #   @return [Types::SavingsOpportunity]
    #
    # @!attribute [rw] projected_utilization_metrics
    #   An array of objects that describe the projected utilization metrics
    #   of the Amazon ECS service recommendation option.
    #   @return [Array<Types::ECSServiceProjectedUtilizationMetric>]
    #
    # @!attribute [rw] container_recommendations
    #   The CPU and memory size recommendations for the containers within
    #   the task of your Amazon ECS service.
    #   @return [Array<Types::ContainerRecommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ECSServiceRecommendationOption AWS API Documentation
    #
    class ECSServiceRecommendationOption < Struct.new(
      :memory,
      :cpu,
      :savings_opportunity,
      :projected_utilization_metrics,
      :container_recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the projected metrics of an Amazon ECS service
    # recommendation option.
    #
    # To determine the performance difference between your current Amazon
    # ECS service and the recommended option, compare the metric data of
    # your service against its projected metric data.
    #
    # @!attribute [rw] recommended_cpu_units
    #   The recommended CPU size for the Amazon ECS service.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_memory_size
    #   The recommended memory size for the Amazon ECS service.
    #   @return [Integer]
    #
    # @!attribute [rw] projected_metrics
    #   An array of objects that describe the projected metric.
    #   @return [Array<Types::ECSServiceProjectedMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ECSServiceRecommendedOptionProjectedMetric AWS API Documentation
    #
    class ECSServiceRecommendedOptionProjectedMetric < Struct.new(
      :recommended_cpu_units,
      :recommended_memory_size,
      :projected_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the utilization metric of an Amazon ECS service.
    #
    # To determine the performance difference between your current Amazon
    # ECS service and the recommended option, compare the utilization metric
    # data of your service against its projected utilization metric data.
    #
    # @!attribute [rw] name
    #   The name of the utilization metric.
    #
    #   The following utilization metrics are available:
    #
    #   * `Cpu` — The amount of CPU capacity that's used in the service.
    #
    #   * `Memory` — The amount of memory that's used in the service.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic of the utilization metric.
    #
    #   The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #   return utilization metrics using only the `Maximum` statistic, which
    #   is the highest value observed during the specified period.
    #
    #   The Compute Optimizer console displays graphs for some utilization
    #   metrics using the `Average` statistic, which is the value of `Sum` /
    #   `SampleCount` during the specified period. For more information, see
    #   [Viewing resource recommendations][1] in the *Compute Optimizer User
    #   Guide*. You can also get averaged utilization metric data for your
    #   resources using Amazon CloudWatch. For more information, see the
    #   [Amazon CloudWatch User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the utilization metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ECSServiceUtilizationMetric AWS API Documentation
    #
    class ECSServiceUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the effective recommendation preferences for a resource.
    #
    # @!attribute [rw] cpu_vendor_architectures
    #   Describes the CPU vendor and architecture for an instance or Auto
    #   Scaling group recommendations.
    #
    #   For example, when you specify `AWS_ARM64` with:
    #
    #   * A GetEC2InstanceRecommendations or
    #     GetAutoScalingGroupRecommendations request, Compute Optimizer
    #     returns recommendations that consist of Graviton2 instance types
    #     only.
    #
    #   * A GetEC2RecommendationProjectedMetrics request, Compute Optimizer
    #     returns projected utilization metrics for Graviton2 instance type
    #     recommendations only.
    #
    #   * A ExportEC2InstanceRecommendations or
    #     ExportAutoScalingGroupRecommendations request, Compute Optimizer
    #     exports recommendations that consist of Graviton2 instance types
    #     only.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enhanced_infrastructure_metrics
    #   Describes the activation status of the enhanced infrastructure
    #   metrics preference.
    #
    #   A status of `Active` confirms that the preference is applied in the
    #   latest recommendation refresh, and a status of `Inactive` confirms
    #   that it's not yet applied to recommendations.
    #
    #   For more information, see [Enhanced infrastructure metrics][1] in
    #   the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] inferred_workload_types
    #   Describes the activation status of the inferred workload types
    #   preference.
    #
    #   A status of `Active` confirms that the preference is applied in the
    #   latest recommendation refresh. A status of `Inactive` confirms that
    #   it's not yet applied to recommendations.
    #   @return [String]
    #
    # @!attribute [rw] external_metrics_preference
    #   An object that describes the external metrics recommendation
    #   preference.
    #
    #   If the preference is applied in the latest recommendation refresh,
    #   an object with a valid `source` value appears in the response. If
    #   the preference isn't applied to the recommendations already, then
    #   this object doesn't appear in the response.
    #   @return [Types::ExternalMetricsPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/EffectiveRecommendationPreferences AWS API Documentation
    #
    class EffectiveRecommendationPreferences < Struct.new(
      :cpu_vendor_architectures,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      :external_metrics_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of account
    # enrollment statuses. Use this filter with the
    # GetEnrollmentStatusesForOrganization action.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `Status` to return accounts with a specific enrollment
    #   status (for example, `Active`).
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   The valid values are `Active`, `Inactive`, `Pending`, and `Failed`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/EnrollmentFilter AWS API Documentation
    #
    class EnrollmentFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the estimated monthly savings amount possible, based on
    # On-Demand instance pricing, by adopting Compute Optimizer
    # recommendations for a given resource.
    #
    # For more information, see [Estimated monthly savings and savings
    # opportunities][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/view-ec2-recommendations.html#ec2-savings-calculation
    #
    # @!attribute [rw] currency
    #   The currency of the estimated monthly savings.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the estimated monthly savings.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/EstimatedMonthlySavings AWS API Documentation
    #
    class EstimatedMonthlySavings < Struct.new(
      :currency,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The IDs of the Amazon Web Services accounts for which to export Auto
    #   Scaling group recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   export recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the include member accounts parameter, is
    #   omitted.
    #
    #   You can specify multiple account IDs per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Auto Scaling group recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_destination_config
    #   An object to specify the destination Amazon Simple Storage Service
    #   (Amazon S3) bucket name and key prefix for the export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create
    #   the S3 bucket, ensure that it has the required permissions policy to
    #   allow Compute Optimizer to write the export file to it. If you plan
    #   to specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3
    #   bucket. For more information, see [Amazon S3 Bucket Policy for
    #   Compute Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #   @return [Types::S3DestinationConfig]
    #
    # @!attribute [rw] file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the
    #   management account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer
    #   and Amazon Web Services Organizations trusted access][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   This parameter cannot be specified together with the account IDs
    #   parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation_preferences
    #   An object to specify the preferences for the Auto Scaling group
    #   recommendations to export.
    #   @return [Types::RecommendationPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportAutoScalingGroupRecommendationsRequest AWS API Documentation
    #
    class ExportAutoScalingGroupRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      :recommendation_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #
    #   Use the DescribeRecommendationExportJobs action, and specify the job
    #   ID to view the status of an export job.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   An object that describes the destination Amazon S3 bucket of a
    #   recommendations export file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportAutoScalingGroupRecommendationsResponse AWS API Documentation
    #
    class ExportAutoScalingGroupRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination of the recommendations export and metadata
    # files.
    #
    # @!attribute [rw] s3
    #   An object that describes the destination Amazon Simple Storage
    #   Service (Amazon S3) bucket name and object keys of a recommendations
    #   export file, and its associated metadata file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportDestination AWS API Documentation
    #
    class ExportDestination < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The IDs of the Amazon Web Services accounts for which to export
    #   Amazon EBS volume recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   export recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the include member accounts parameter, is
    #   omitted.
    #
    #   You can specify multiple account IDs per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Amazon EBS volume recommendations.
    #   @return [Array<Types::EBSFilter>]
    #
    # @!attribute [rw] fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_destination_config
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and key prefix for a recommendations export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create
    #   the S3 bucket, ensure that it has the required permission policy to
    #   allow Compute Optimizer to write the export file to it. If you plan
    #   to specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3
    #   bucket. For more information, see [Amazon S3 Bucket Policy for
    #   Compute Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #   @return [Types::S3DestinationConfig]
    #
    # @!attribute [rw] file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the
    #   management account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer
    #   and Amazon Web Services Organizations trusted access][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   This parameter cannot be specified together with the account IDs
    #   parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEBSVolumeRecommendationsRequest AWS API Documentation
    #
    class ExportEBSVolumeRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #
    #   Use the DescribeRecommendationExportJobs action, and specify the job
    #   ID to view the status of an export job.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and object keys of a recommendations export file, and
    #   its associated metadata file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEBSVolumeRecommendationsResponse AWS API Documentation
    #
    class ExportEBSVolumeRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The IDs of the Amazon Web Services accounts for which to export
    #   instance recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   export recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the include member accounts parameter, is
    #   omitted.
    #
    #   You can specify multiple account IDs per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of instance recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_destination_config
    #   An object to specify the destination Amazon Simple Storage Service
    #   (Amazon S3) bucket name and key prefix for the export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create
    #   the S3 bucket, ensure that it has the required permissions policy to
    #   allow Compute Optimizer to write the export file to it. If you plan
    #   to specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3
    #   bucket. For more information, see [Amazon S3 Bucket Policy for
    #   Compute Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #   @return [Types::S3DestinationConfig]
    #
    # @!attribute [rw] file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the
    #   management account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer
    #   and Amazon Web Services Organizations trusted access][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation_preferences
    #   An object to specify the preferences for the Amazon EC2 instance
    #   recommendations to export.
    #   @return [Types::RecommendationPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEC2InstanceRecommendationsRequest AWS API Documentation
    #
    class ExportEC2InstanceRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      :recommendation_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #
    #   Use the DescribeRecommendationExportJobs action, and specify the job
    #   ID to view the status of an export job.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   An object that describes the destination Amazon S3 bucket of a
    #   recommendations export file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEC2InstanceRecommendationsResponse AWS API Documentation
    #
    class ExportEC2InstanceRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The Amazon Web Services account IDs for the export Amazon ECS
    #   service recommendations.
    #
    #   If your account is the management account or the delegated
    #   administrator of an organization, use this parameter to specify the
    #   member account you want to export recommendations to.
    #
    #   This parameter can't be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   If this parameter or the include member accounts parameter is
    #   omitted, the recommendations for member accounts aren't included in
    #   the export.
    #
    #   You can specify multiple account IDs per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Amazon ECS service recommendations.
    #   @return [Array<Types::ECSServiceRecommendationFilter>]
    #
    # @!attribute [rw] fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_destination_config
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and key prefix for a recommendations export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create
    #   the S3 bucket, ensure that it has the required permission policy to
    #   allow Compute Optimizer to write the export file to it. If you plan
    #   to specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3
    #   bucket. For more information, see [Amazon S3 Bucket Policy for
    #   Compute Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #   @return [Types::S3DestinationConfig]
    #
    # @!attribute [rw] file_format
    #   The format of the export file.
    #
    #   The CSV file is the only export file format currently supported.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   If your account is the management account or the delegated
    #   administrator of an organization, this parameter indicates whether
    #   to include recommendations for resources in all member accounts of
    #   the organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer
    #   and Amazon Web Services Organizations trusted access][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #   If this parameter is omitted, recommendations for member accounts of
    #   the organization aren't included in the export file.
    #
    #   If this parameter or the account ID parameter is omitted,
    #   recommendations for member accounts aren't included in the export.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportECSServiceRecommendationsRequest AWS API Documentation
    #
    class ExportECSServiceRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #
    #   To view the status of an export job, use the
    #   DescribeRecommendationExportJobs action and specify the job ID.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and object keys of a recommendations export file, and
    #   its associated metadata file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportECSServiceRecommendationsResponse AWS API Documentation
    #
    class ExportECSServiceRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The IDs of the Amazon Web Services accounts for which to export
    #   Lambda function recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   export recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the include member accounts parameter, is
    #   omitted.
    #
    #   You can specify multiple account IDs per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Lambda function recommendations.
    #   @return [Array<Types::LambdaFunctionRecommendationFilter>]
    #
    # @!attribute [rw] fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_destination_config
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and key prefix for a recommendations export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create
    #   the S3 bucket, ensure that it has the required permission policy to
    #   allow Compute Optimizer to write the export file to it. If you plan
    #   to specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3
    #   bucket. For more information, see [Amazon S3 Bucket Policy for
    #   Compute Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #   @return [Types::S3DestinationConfig]
    #
    # @!attribute [rw] file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the
    #   management account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer
    #   and Amazon Web Services Organizations trusted access][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   This parameter cannot be specified together with the account IDs
    #   parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportLambdaFunctionRecommendationsRequest AWS API Documentation
    #
    class ExportLambdaFunctionRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #
    #   Use the DescribeRecommendationExportJobs action, and specify the job
    #   ID to view the status of an export job.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and object keys of a recommendations export file, and
    #   its associated metadata file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportLambdaFunctionRecommendationsResponse AWS API Documentation
    #
    class ExportLambdaFunctionRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes Compute Optimizer's integration status with your chosen
    # external metric provider. For example, Datadog.
    #
    # @!attribute [rw] status_code
    #   The status code for Compute Optimizer's integration with an
    #   external metrics provider.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for Compute Optimizer's integration status with your
    #   external metric provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExternalMetricStatus AWS API Documentation
    #
    class ExternalMetricStatus < Struct.new(
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the external metrics preferences for EC2 rightsizing
    # recommendations.
    #
    # @!attribute [rw] source
    #   Contains the source options for external metrics preferences.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExternalMetricsPreference AWS API Documentation
    #
    class ExternalMetricsPreference < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of
    # recommendations. Use this filter with the
    # GetAutoScalingGroupRecommendations and GetEC2InstanceRecommendations
    # actions.
    #
    # You can use `EBSFilter` with the GetEBSVolumeRecommendations action,
    # `LambdaFunctionRecommendationFilter` with the
    # GetLambdaFunctionRecommendations action, and `JobFilter` with the
    # DescribeRecommendationExportJobs action.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `Finding` to return recommendations with a specific finding
    #   classification. For example, `Underprovisioned`.
    #
    #   Specify `RecommendationSourceType` to return recommendations of a
    #   specific resource type. For example, `Ec2Instance`.
    #
    #   Specify `FindingReasonCodes` to return recommendations with a
    #   specific finding reason code. For example, `CPUUnderprovisioned`.
    #
    #   Specify `InferredWorkloadTypes` to return recommendations of a
    #   specific inferred workload. For example, `Redis`.
    #
    #   You can filter your EC2 instance recommendations by `tag:key` and
    #   `tag-key` tags.
    #
    #   A `tag:key` is a key and value combination of a tag assigned to your
    #   recommendations. Use the tag key in the filter name and the tag
    #   value as the filter value. For example, to find all recommendations
    #   that have a tag with the key of `Owner` and the value of `TeamA`,
    #   specify `tag:Owner` for the filter name and `TeamA` for the filter
    #   value.
    #
    #   A `tag-key` is the key of a tag assigned to your recommendations.
    #   Use this filter to find all of your recommendations that have a tag
    #   with a specific key. This doesn’t consider the tag value. For
    #   example, you can find your recommendations with a tag key value of
    #   `Owner` or without any tag keys assigned.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   The valid values for this parameter are as follows, depending on
    #   what you specify for the `name` parameter and the resource type that
    #   you wish to filter results for:
    #
    #   * Specify `Optimized` or `NotOptimized` if you specify the `name`
    #     parameter as `Finding` and you want to filter results for Auto
    #     Scaling groups.
    #
    #   * Specify `Underprovisioned`, `Overprovisioned`, or `Optimized` if
    #     you specify the `name` parameter as `Finding` and you want to
    #     filter results for EC2 instances.
    #
    #   * Specify `Ec2Instance` or `AutoScalingGroup` if you specify the
    #     `name` parameter as `RecommendationSourceType`.
    #
    #   * Specify one of the following options if you specify the `name`
    #     parameter as `FindingReasonCodes`:
    #
    #     * <b> <code>CPUOverprovisioned</code> </b> — The instance’s CPU
    #       configuration can be sized down while still meeting the
    #       performance requirements of your workload.
    #
    #     * <b> <code>CPUUnderprovisioned</code> </b> — The instance’s CPU
    #       configuration doesn't meet the performance requirements of your
    #       workload and there is an alternative instance type that provides
    #       better CPU performance.
    #
    #     * <b> <code>MemoryOverprovisioned</code> </b> — The instance’s
    #       memory configuration can be sized down while still meeting the
    #       performance requirements of your workload.
    #
    #     * <b> <code>MemoryUnderprovisioned</code> </b> — The instance’s
    #       memory configuration doesn't meet the performance requirements
    #       of your workload and there is an alternative instance type that
    #       provides better memory performance.
    #
    #     * <b> <code>EBSThroughputOverprovisioned</code> </b> — The
    #       instance’s EBS throughput configuration can be sized down while
    #       still meeting the performance requirements of your workload.
    #
    #     * <b> <code>EBSThroughputUnderprovisioned</code> </b> — The
    #       instance’s EBS throughput configuration doesn't meet the
    #       performance requirements of your workload and there is an
    #       alternative instance type that provides better EBS throughput
    #       performance.
    #
    #     * <b> <code>EBSIOPSOverprovisioned</code> </b> — The instance’s
    #       EBS IOPS configuration can be sized down while still meeting the
    #       performance requirements of your workload.
    #
    #     * <b> <code>EBSIOPSUnderprovisioned</code> </b> — The instance’s
    #       EBS IOPS configuration doesn't meet the performance
    #       requirements of your workload and there is an alternative
    #       instance type that provides better EBS IOPS performance.
    #
    #     * <b> <code>NetworkBandwidthOverprovisioned</code> </b> — The
    #       instance’s network bandwidth configuration can be sized down
    #       while still meeting the performance requirements of your
    #       workload.
    #
    #     * <b> <code>NetworkBandwidthUnderprovisioned</code> </b> — The
    #       instance’s network bandwidth configuration doesn't meet the
    #       performance requirements of your workload and there is an
    #       alternative instance type that provides better network bandwidth
    #       performance. This finding reason happens when the `NetworkIn` or
    #       `NetworkOut` performance of an instance is impacted.
    #
    #     * <b> <code>NetworkPPSOverprovisioned</code> </b> — The instance’s
    #       network PPS (packets per second) configuration can be sized down
    #       while still meeting the performance requirements of your
    #       workload.
    #
    #     * <b> <code>NetworkPPSUnderprovisioned</code> </b> — The
    #       instance’s network PPS (packets per second) configuration
    #       doesn't meet the performance requirements of your workload and
    #       there is an alternative instance type that provides better
    #       network PPS performance.
    #
    #     * <b> <code>DiskIOPSOverprovisioned</code> </b> — The instance’s
    #       disk IOPS configuration can be sized down while still meeting
    #       the performance requirements of your workload.
    #
    #     * <b> <code>DiskIOPSUnderprovisioned</code> </b> — The instance’s
    #       disk IOPS configuration doesn't meet the performance
    #       requirements of your workload and there is an alternative
    #       instance type that provides better disk IOPS performance.
    #
    #     * <b> <code>DiskThroughputOverprovisioned</code> </b> — The
    #       instance’s disk throughput configuration can be sized down while
    #       still meeting the performance requirements of your workload.
    #
    #     * <b> <code>DiskThroughputUnderprovisioned</code> </b> — The
    #       instance’s disk throughput configuration doesn't meet the
    #       performance requirements of your workload and there is an
    #       alternative instance type that provides better disk throughput
    #       performance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The ID of the Amazon Web Services account for which to return Auto
    #   Scaling group recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   return Auto Scaling group recommendations.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_arns
    #   The Amazon Resource Name (ARN) of the Auto Scaling groups for which
    #   to return recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of Auto Scaling group
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Auto Scaling group recommendations to return
    #   with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of Auto Scaling group recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] recommendation_preferences
    #   An object to specify the preferences for the Auto Scaling group
    #   recommendations to return in the response.
    #   @return [Types::RecommendationPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetAutoScalingGroupRecommendationsRequest AWS API Documentation
    #
    class GetAutoScalingGroupRecommendationsRequest < Struct.new(
      :account_ids,
      :auto_scaling_group_arns,
      :next_token,
      :max_results,
      :filters,
      :recommendation_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of Auto Scaling group
    #   recommendations.
    #
    #   This value is null when there are no more pages of Auto Scaling
    #   group recommendations to return.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_recommendations
    #   An array of objects that describe Auto Scaling group
    #   recommendations.
    #   @return [Array<Types::AutoScalingGroupRecommendation>]
    #
    # @!attribute [rw] errors
    #   An array of objects that describe errors of the request.
    #
    #   For example, an error is returned if you request recommendations for
    #   an unsupported Auto Scaling group.
    #   @return [Array<Types::GetRecommendationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetAutoScalingGroupRecommendationsResponse AWS API Documentation
    #
    class GetAutoScalingGroupRecommendationsResponse < Struct.new(
      :next_token,
      :auto_scaling_group_recommendations,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_arns
    #   The Amazon Resource Name (ARN) of the volumes for which to return
    #   recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of volume recommendations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of volume recommendations to return with a single
    #   request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of volume recommendations.
    #   @return [Array<Types::EBSFilter>]
    #
    # @!attribute [rw] account_ids
    #   The ID of the Amazon Web Services account for which to return volume
    #   recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   return volume recommendations.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEBSVolumeRecommendationsRequest AWS API Documentation
    #
    class GetEBSVolumeRecommendationsRequest < Struct.new(
      :volume_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of volume
    #   recommendations.
    #
    #   This value is null when there are no more pages of volume
    #   recommendations to return.
    #   @return [String]
    #
    # @!attribute [rw] volume_recommendations
    #   An array of objects that describe volume recommendations.
    #   @return [Array<Types::VolumeRecommendation>]
    #
    # @!attribute [rw] errors
    #   An array of objects that describe errors of the request.
    #
    #   For example, an error is returned if you request recommendations for
    #   an unsupported volume.
    #   @return [Array<Types::GetRecommendationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEBSVolumeRecommendationsResponse AWS API Documentation
    #
    class GetEBSVolumeRecommendationsResponse < Struct.new(
      :next_token,
      :volume_recommendations,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arns
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of instance recommendations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instance recommendations to return with a
    #   single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of instance recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] account_ids
    #   The ID of the Amazon Web Services account for which to return
    #   instance recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   return instance recommendations.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommendation_preferences
    #   An object to specify the preferences for the Amazon EC2 instance
    #   recommendations to return in the response.
    #   @return [Types::RecommendationPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2InstanceRecommendationsRequest AWS API Documentation
    #
    class GetEC2InstanceRecommendationsRequest < Struct.new(
      :instance_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      :recommendation_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of instance
    #   recommendations.
    #
    #   This value is null when there are no more pages of instance
    #   recommendations to return.
    #   @return [String]
    #
    # @!attribute [rw] instance_recommendations
    #   An array of objects that describe instance recommendations.
    #   @return [Array<Types::InstanceRecommendation>]
    #
    # @!attribute [rw] errors
    #   An array of objects that describe errors of the request.
    #
    #   For example, an error is returned if you request recommendations for
    #   an instance of an unsupported instance family.
    #   @return [Array<Types::GetRecommendationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2InstanceRecommendationsResponse AWS API Documentation
    #
    class GetEC2InstanceRecommendationsResponse < Struct.new(
      :next_token,
      :instance_recommendations,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendation projected metrics.
    #   @return [String]
    #
    # @!attribute [rw] stat
    #   The statistic of the projected metrics.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the projected metrics data points.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The timestamp of the first projected metrics data point to return.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp of the last projected metrics data point to return.
    #   @return [Time]
    #
    # @!attribute [rw] recommendation_preferences
    #   An object to specify the preferences for the Amazon EC2
    #   recommendation projected metrics to return in the response.
    #   @return [Types::RecommendationPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2RecommendationProjectedMetricsRequest AWS API Documentation
    #
    class GetEC2RecommendationProjectedMetricsRequest < Struct.new(
      :instance_arn,
      :stat,
      :period,
      :start_time,
      :end_time,
      :recommendation_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_option_projected_metrics
    #   An array of objects that describes projected metrics.
    #   @return [Array<Types::RecommendedOptionProjectedMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2RecommendationProjectedMetricsResponse AWS API Documentation
    #
    class GetEC2RecommendationProjectedMetricsResponse < Struct.new(
      :recommended_option_projected_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The ARN that identifies the Amazon ECS service.
    #
    #   The following is the format of the ARN:
    #
    #   `arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name`
    #   @return [String]
    #
    # @!attribute [rw] stat
    #   The statistic of the projected metrics.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the projected metrics data points.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The timestamp of the first projected metrics data point to return.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp of the last projected metrics data point to return.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetECSServiceRecommendationProjectedMetricsRequest AWS API Documentation
    #
    class GetECSServiceRecommendationProjectedMetricsRequest < Struct.new(
      :service_arn,
      :stat,
      :period,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_option_projected_metrics
    #   An array of objects that describes the projected metrics.
    #   @return [Array<Types::ECSServiceRecommendedOptionProjectedMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetECSServiceRecommendationProjectedMetricsResponse AWS API Documentation
    #
    class GetECSServiceRecommendationProjectedMetricsResponse < Struct.new(
      :recommended_option_projected_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arns
    #   The ARN that identifies the Amazon ECS service.
    #
    #   The following is the format of the ARN:
    #
    #   `arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name`
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of Amazon ECS service
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Amazon ECS service recommendations to return
    #   with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of Amazon ECS service recommendations.
    #   @return [Array<Types::ECSServiceRecommendationFilter>]
    #
    # @!attribute [rw] account_ids
    #   Return the Amazon ECS service recommendations to the specified
    #   Amazon Web Services account IDs.
    #
    #   If your account is the management account or the delegated
    #   administrator of an organization, use this parameter to return the
    #   Amazon ECS service recommendations to specific member accounts.
    #
    #   You can only specify one account ID per request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetECSServiceRecommendationsRequest AWS API Documentation
    #
    class GetECSServiceRecommendationsRequest < Struct.new(
      :service_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to advance to the next page of Amazon ECS service
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] ecs_service_recommendations
    #   An array of objects that describe the Amazon ECS service
    #   recommendations.
    #   @return [Array<Types::ECSServiceRecommendation>]
    #
    # @!attribute [rw] errors
    #   An array of objects that describe errors of the request.
    #   @return [Array<Types::GetRecommendationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetECSServiceRecommendationsResponse AWS API Documentation
    #
    class GetECSServiceRecommendationsResponse < Struct.new(
      :next_token,
      :ecs_service_recommendations,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to confirm
    #   effective recommendation preferences. Only EC2 instance and Auto
    #   Scaling group ARNs are currently supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEffectiveRecommendationPreferencesRequest AWS API Documentation
    #
    class GetEffectiveRecommendationPreferencesRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enhanced_infrastructure_metrics
    #   The status of the enhanced infrastructure metrics recommendation
    #   preference. Considers all applicable preferences that you might have
    #   set at the resource, account, and organization level.
    #
    #   A status of `Active` confirms that the preference is applied in the
    #   latest recommendation refresh, and a status of `Inactive` confirms
    #   that it's not yet applied to recommendations.
    #
    #   To validate whether the preference is applied to your last generated
    #   set of recommendations, review the
    #   `effectiveRecommendationPreferences` value in the response of the
    #   GetAutoScalingGroupRecommendations and GetEC2InstanceRecommendations
    #   actions.
    #
    #   For more information, see [Enhanced infrastructure metrics][1] in
    #   the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] external_metrics_preference
    #   The provider of the external metrics recommendation preference.
    #   Considers all applicable preferences that you might have set at the
    #   account and organization level.
    #
    #   If the preference is applied in the latest recommendation refresh,
    #   an object with a valid `source` value appears in the response. If
    #   the preference isn't applied to the recommendations already, then
    #   this object doesn't appear in the response.
    #
    #   To validate whether the preference is applied to your last generated
    #   set of recommendations, review the
    #   `effectiveRecommendationPreferences` value in the response of the
    #   GetEC2InstanceRecommendations actions.
    #
    #   For more information, see [Enhanced infrastructure metrics][1] in
    #   the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html
    #   @return [Types::ExternalMetricsPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEffectiveRecommendationPreferencesResponse AWS API Documentation
    #
    class GetEffectiveRecommendationPreferencesResponse < Struct.new(
      :enhanced_infrastructure_metrics,
      :external_metrics_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatusRequest AWS API Documentation
    #
    class GetEnrollmentStatusRequest < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   The enrollment status of the account.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the enrollment status of the account.
    #
    #   For example, an account might show a status of `Pending` because
    #   member accounts of an organization require more time to be enrolled
    #   in the service.
    #   @return [String]
    #
    # @!attribute [rw] member_accounts_enrolled
    #   Confirms the enrollment status of member accounts of the
    #   organization, if the account is a management account of an
    #   organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The Unix epoch timestamp, in seconds, of when the account enrollment
    #   status was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_member_accounts_opted_in
    #   The count of organization member accounts that are opted in to the
    #   service, if your account is an organization management account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatusResponse AWS API Documentation
    #
    class GetEnrollmentStatusResponse < Struct.new(
      :status,
      :status_reason,
      :member_accounts_enrolled,
      :last_updated_timestamp,
      :number_of_member_accounts_opted_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of account enrollment statuses.
    #   @return [Array<Types::EnrollmentFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of account enrollment
    #   statuses.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of account enrollment statuses to return with a
    #   single request. You can specify up to 100 statuses to return with
    #   each request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatusesForOrganizationRequest AWS API Documentation
    #
    class GetEnrollmentStatusesForOrganizationRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_enrollment_statuses
    #   An array of objects that describe the enrollment statuses of
    #   organization member accounts.
    #   @return [Array<Types::AccountEnrollmentStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of account enrollment
    #   statuses.
    #
    #   This value is null when there are no more pages of account
    #   enrollment statuses to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatusesForOrganizationResponse AWS API Documentation
    #
    class GetEnrollmentStatusesForOrganizationResponse < Struct.new(
      :account_enrollment_statuses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_arns
    #   The Amazon Resource Name (ARN) of the functions for which to return
    #   recommendations.
    #
    #   You can specify a qualified or unqualified ARN. If you specify an
    #   unqualified ARN without a function version suffix, Compute Optimizer
    #   will return recommendations for the latest (`$LATEST`) version of
    #   the function. If you specify a qualified ARN with a version suffix,
    #   Compute Optimizer will return recommendations for the specified
    #   function version. For more information about using function
    #   versions, see [Using versions][1] in the *Lambda Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_ids
    #   The ID of the Amazon Web Services account for which to return
    #   function recommendations.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   return function recommendations.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of function recommendations.
    #   @return [Array<Types::LambdaFunctionRecommendationFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of function recommendations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of function recommendations to return with a
    #   single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetLambdaFunctionRecommendationsRequest AWS API Documentation
    #
    class GetLambdaFunctionRecommendationsRequest < Struct.new(
      :function_arns,
      :account_ids,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of function
    #   recommendations.
    #
    #   This value is null when there are no more pages of function
    #   recommendations to return.
    #   @return [String]
    #
    # @!attribute [rw] lambda_function_recommendations
    #   An array of objects that describe function recommendations.
    #   @return [Array<Types::LambdaFunctionRecommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetLambdaFunctionRecommendationsResponse AWS API Documentation
    #
    class GetLambdaFunctionRecommendationsResponse < Struct.new(
      :next_token,
      :lambda_function_recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an error experienced when getting recommendations.
    #
    # For example, an error is returned if you request recommendations for
    # an unsupported Auto Scaling group, or if you request recommendations
    # for an instance of an unsupported instance family.
    #
    # @!attribute [rw] identifier
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message, or reason, for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationError AWS API Documentation
    #
    class GetRecommendationError < Struct.new(
      :identifier,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The target resource type of the recommendation preference for which
    #   to return preferences.
    #
    #   The `Ec2Instance` option encompasses standalone instances and
    #   instances that are part of Auto Scaling groups. The
    #   `AutoScalingGroup` option encompasses only instances that are part
    #   of an Auto Scaling group.
    #
    #   <note markdown="1"> The valid values for this parameter are `Ec2Instance` and
    #   `AutoScalingGroup`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   An object that describes the scope of the recommendation preference
    #   to return.
    #
    #   You can return recommendation preferences that are created at the
    #   organization level (for management accounts of an organization
    #   only), account level, and resource level. For more information, see
    #   [Activating enhanced infrastructure metrics][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [Types::Scope]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of recommendation preferences.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendation preferences to return with a
    #   single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationPreferencesRequest AWS API Documentation
    #
    class GetRecommendationPreferencesRequest < Struct.new(
      :resource_type,
      :scope,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of recommendation
    #   preferences.
    #
    #   This value is null when there are no more pages of recommendation
    #   preferences to return.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_preferences_details
    #   An array of objects that describe recommendation preferences.
    #   @return [Array<Types::RecommendationPreferencesDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationPreferencesResponse AWS API Documentation
    #
    class GetRecommendationPreferencesResponse < Struct.new(
      :next_token,
      :recommendation_preferences_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The ID of the Amazon Web Services account for which to return
    #   recommendation summaries.
    #
    #   If your account is the management account of an organization, use
    #   this parameter to specify the member account for which you want to
    #   return recommendation summaries.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of recommendation summaries.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendation summaries to return with a
    #   single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationSummariesRequest AWS API Documentation
    #
    class GetRecommendationSummariesRequest < Struct.new(
      :account_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of recommendation
    #   summaries.
    #
    #   This value is null when there are no more pages of recommendation
    #   summaries to return.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_summaries
    #   An array of objects that summarize a recommendation.
    #   @return [Array<Types::RecommendationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationSummariesResponse AWS API Documentation
    #
    class GetRecommendationSummariesResponse < Struct.new(
      :next_token,
      :recommendation_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The estimated monthly savings after you adjust the configurations of
    # your instances running on the inferred workload types to the
    # recommended configurations. If the `inferredWorkloadTypes` list
    # contains multiple entries, then the savings are the sum of the monthly
    # savings from instances that run the exact combination of the inferred
    # workload types.
    #
    # @!attribute [rw] inferred_workload_types
    #   The applications that might be running on the instance as inferred
    #   by Compute Optimizer.
    #
    #   Compute Optimizer can infer if one of the following applications
    #   might be running on the instance:
    #
    #   * `AmazonEmr` - Infers that Amazon EMR might be running on the
    #     instance.
    #
    #   * `ApacheCassandra` - Infers that Apache Cassandra might be running
    #     on the instance.
    #
    #   * `ApacheHadoop` - Infers that Apache Hadoop might be running on the
    #     instance.
    #
    #   * `Memcached` - Infers that Memcached might be running on the
    #     instance.
    #
    #   * `NGINX` - Infers that NGINX might be running on the instance.
    #
    #   * `PostgreSql` - Infers that PostgreSQL might be running on the
    #     instance.
    #
    #   * `Redis` - Infers that Redis might be running on the instance.
    #
    #   * `Kafka` - Infers that Kafka might be running on the instance.
    #
    #   * `SQLServer` - Infers that SQLServer might be running on the
    #     instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   An object that describes the estimated monthly savings amount
    #   possible by adopting Compute Optimizer recommendations for a given
    #   resource. This is based on the On-Demand instance pricing.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InferredWorkloadSaving AWS API Documentation
    #
    class InferredWorkloadSaving < Struct.new(
      :inferred_workload_types,
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon EC2 instance recommendation.
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] current_instance_type
    #   The instance type of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] finding
    #   The finding classification of the instance.
    #
    #   Findings for instances include:
    #
    #   * <b> <code>Underprovisioned</code> </b>—An instance is considered
    #     under-provisioned when at least one specification of your
    #     instance, such as CPU, memory, or network, does not meet the
    #     performance requirements of your workload. Under-provisioned
    #     instances may lead to poor application performance.
    #
    #   * <b> <code>Overprovisioned</code> </b>—An instance is considered
    #     over-provisioned when at least one specification of your instance,
    #     such as CPU, memory, or network, can be sized down while still
    #     meeting the performance requirements of your workload, and no
    #     specification is under-provisioned. Over-provisioned instances may
    #     lead to unnecessary infrastructure cost.
    #
    #   * <b> <code>Optimized</code> </b>—An instance is considered
    #     optimized when all specifications of your instance, such as CPU,
    #     memory, and network, meet the performance requirements of your
    #     workload and is not over provisioned. For optimized resources,
    #     Compute Optimizer might recommend a new generation instance type.
    #   @return [String]
    #
    # @!attribute [rw] finding_reason_codes
    #   The reason for the finding classification of the instance.
    #
    #   Finding reason codes for instances include:
    #
    #   * <b> <code>CPUOverprovisioned</code> </b> — The instance’s CPU
    #     configuration can be sized down while still meeting the
    #     performance requirements of your workload. This is identified by
    #     analyzing the `CPUUtilization` metric of the current instance
    #     during the look-back period.
    #
    #   * <b> <code>CPUUnderprovisioned</code> </b> — The instance’s CPU
    #     configuration doesn't meet the performance requirements of your
    #     workload and there is an alternative instance type that provides
    #     better CPU performance. This is identified by analyzing the
    #     `CPUUtilization` metric of the current instance during the
    #     look-back period.
    #
    #   * <b> <code>MemoryOverprovisioned</code> </b> — The instance’s
    #     memory configuration can be sized down while still meeting the
    #     performance requirements of your workload. This is identified by
    #     analyzing the memory utilization metric of the current instance
    #     during the look-back period.
    #
    #   * <b> <code>MemoryUnderprovisioned</code> </b> — The instance’s
    #     memory configuration doesn't meet the performance requirements of
    #     your workload and there is an alternative instance type that
    #     provides better memory performance. This is identified by
    #     analyzing the memory utilization metric of the current instance
    #     during the look-back period.
    #
    #     <note markdown="1"> Memory utilization is analyzed only for resources that have the
    #     unified CloudWatch agent installed on them. For more information,
    #     see [Enabling memory utilization with the Amazon CloudWatch
    #     Agent][1] in the *Compute Optimizer User Guide*. On Linux
    #     instances, Compute Optimizer analyses the `mem_used_percent`
    #     metric in the `CWAgent` namespace, or the legacy
    #     `MemoryUtilization` metric in the `System/Linux` namespace. On
    #     Windows instances, Compute Optimizer analyses the `Memory %
    #     Committed Bytes In Use` metric in the `CWAgent` namespace.
    #
    #      </note>
    #
    #   * <b> <code>EBSThroughputOverprovisioned</code> </b> — The
    #     instance’s EBS throughput configuration can be sized down while
    #     still meeting the performance requirements of your workload. This
    #     is identified by analyzing the `VolumeReadBytes` and
    #     `VolumeWriteBytes` metrics of EBS volumes attached to the current
    #     instance during the look-back period.
    #
    #   * <b> <code>EBSThroughputUnderprovisioned</code> </b> — The
    #     instance’s EBS throughput configuration doesn't meet the
    #     performance requirements of your workload and there is an
    #     alternative instance type that provides better EBS throughput
    #     performance. This is identified by analyzing the `VolumeReadBytes`
    #     and `VolumeWriteBytes` metrics of EBS volumes attached to the
    #     current instance during the look-back period.
    #
    #   * <b> <code>EBSIOPSOverprovisioned</code> </b> — The instance’s EBS
    #     IOPS configuration can be sized down while still meeting the
    #     performance requirements of your workload. This is identified by
    #     analyzing the `VolumeReadOps` and `VolumeWriteOps` metric of EBS
    #     volumes attached to the current instance during the look-back
    #     period.
    #
    #   * <b> <code>EBSIOPSUnderprovisioned</code> </b> — The instance’s EBS
    #     IOPS configuration doesn't meet the performance requirements of
    #     your workload and there is an alternative instance type that
    #     provides better EBS IOPS performance. This is identified by
    #     analyzing the `VolumeReadOps` and `VolumeWriteOps` metric of EBS
    #     volumes attached to the current instance during the look-back
    #     period.
    #
    #   * <b> <code>NetworkBandwidthOverprovisioned</code> </b> — The
    #     instance’s network bandwidth configuration can be sized down while
    #     still meeting the performance requirements of your workload. This
    #     is identified by analyzing the `NetworkIn` and `NetworkOut`
    #     metrics of the current instance during the look-back period.
    #
    #   * <b> <code>NetworkBandwidthUnderprovisioned</code> </b> — The
    #     instance’s network bandwidth configuration doesn't meet the
    #     performance requirements of your workload and there is an
    #     alternative instance type that provides better network bandwidth
    #     performance. This is identified by analyzing the `NetworkIn` and
    #     `NetworkOut` metrics of the current instance during the look-back
    #     period. This finding reason happens when the `NetworkIn` or
    #     `NetworkOut` performance of an instance is impacted.
    #
    #   * <b> <code>NetworkPPSOverprovisioned</code> </b> — The instance’s
    #     network PPS (packets per second) configuration can be sized down
    #     while still meeting the performance requirements of your workload.
    #     This is identified by analyzing the `NetworkPacketsIn` and
    #     `NetworkPacketsIn` metrics of the current instance during the
    #     look-back period.
    #
    #   * <b> <code>NetworkPPSUnderprovisioned</code> </b> — The instance’s
    #     network PPS (packets per second) configuration doesn't meet the
    #     performance requirements of your workload and there is an
    #     alternative instance type that provides better network PPS
    #     performance. This is identified by analyzing the
    #     `NetworkPacketsIn` and `NetworkPacketsIn` metrics of the current
    #     instance during the look-back period.
    #
    #   * <b> <code>DiskIOPSOverprovisioned</code> </b> — The instance’s
    #     disk IOPS configuration can be sized down while still meeting the
    #     performance requirements of your workload. This is identified by
    #     analyzing the `DiskReadOps` and `DiskWriteOps` metrics of the
    #     current instance during the look-back period.
    #
    #   * <b> <code>DiskIOPSUnderprovisioned</code> </b> — The instance’s
    #     disk IOPS configuration doesn't meet the performance requirements
    #     of your workload and there is an alternative instance type that
    #     provides better disk IOPS performance. This is identified by
    #     analyzing the `DiskReadOps` and `DiskWriteOps` metrics of the
    #     current instance during the look-back period.
    #
    #   * <b> <code>DiskThroughputOverprovisioned</code> </b> — The
    #     instance’s disk throughput configuration can be sized down while
    #     still meeting the performance requirements of your workload. This
    #     is identified by analyzing the `DiskReadBytes` and
    #     `DiskWriteBytes` metrics of the current instance during the
    #     look-back period.
    #
    #   * <b> <code>DiskThroughputUnderprovisioned</code> </b> — The
    #     instance’s disk throughput configuration doesn't meet the
    #     performance requirements of your workload and there is an
    #     alternative instance type that provides better disk throughput
    #     performance. This is identified by analyzing the `DiskReadBytes`
    #     and `DiskWriteBytes` metrics of the current instance during the
    #     look-back period.
    #
    #   <note markdown="1"> For more information about instance metrics, see [List the available
    #   CloudWatch metrics for your instances][2] in the *Amazon Elastic
    #   Compute Cloud User Guide*. For more information about EBS volume
    #   metrics, see [Amazon CloudWatch metrics for Amazon EBS][3] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html
    #   [3]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] utilization_metrics
    #   An array of objects that describe the utilization metrics of the
    #   instance.
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] look_back_period_in_days
    #   The number of days for which utilization metrics were analyzed for
    #   the instance.
    #   @return [Float]
    #
    # @!attribute [rw] recommendation_options
    #   An array of objects that describe the recommendation options for the
    #   instance.
    #   @return [Array<Types::InstanceRecommendationOption>]
    #
    # @!attribute [rw] recommendation_sources
    #   An array of objects that describe the source resource of the
    #   recommendation.
    #   @return [Array<Types::RecommendationSource>]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The timestamp of when the instance recommendation was last
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] current_performance_risk
    #   The risk of the current instance not meeting the performance needs
    #   of its workloads. The higher the risk, the more likely the current
    #   instance cannot meet the performance requirements of its workload.
    #   @return [String]
    #
    # @!attribute [rw] effective_recommendation_preferences
    #   An object that describes the effective recommendation preferences
    #   for the instance.
    #   @return [Types::EffectiveRecommendationPreferences]
    #
    # @!attribute [rw] inferred_workload_types
    #   The applications that might be running on the instance as inferred
    #   by Compute Optimizer.
    #
    #   Compute Optimizer can infer if one of the following applications
    #   might be running on the instance:
    #
    #   * `AmazonEmr` - Infers that Amazon EMR might be running on the
    #     instance.
    #
    #   * `ApacheCassandra` - Infers that Apache Cassandra might be running
    #     on the instance.
    #
    #   * `ApacheHadoop` - Infers that Apache Hadoop might be running on the
    #     instance.
    #
    #   * `Memcached` - Infers that Memcached might be running on the
    #     instance.
    #
    #   * `NGINX` - Infers that NGINX might be running on the instance.
    #
    #   * `PostgreSql` - Infers that PostgreSQL might be running on the
    #     instance.
    #
    #   * `Redis` - Infers that Redis might be running on the instance.
    #
    #   * `Kafka` - Infers that Kafka might be running on the instance.
    #
    #   * `SQLServer` - Infers that SQLServer might be running on the
    #     instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_state
    #   The state of the instance when the recommendation was generated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags assigned to your Amazon EC2 instance recommendations.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] external_metric_status
    #   An object that describes Compute Optimizer's integration status
    #   with your external metrics provider.
    #   @return [Types::ExternalMetricStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InstanceRecommendation AWS API Documentation
    #
    class InstanceRecommendation < Struct.new(
      :instance_arn,
      :account_id,
      :instance_name,
      :current_instance_type,
      :finding,
      :finding_reason_codes,
      :utilization_metrics,
      :look_back_period_in_days,
      :recommendation_options,
      :recommendation_sources,
      :last_refresh_timestamp,
      :current_performance_risk,
      :effective_recommendation_preferences,
      :inferred_workload_types,
      :instance_state,
      :tags,
      :external_metric_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation option for an Amazon EC2 instance.
    #
    # @!attribute [rw] instance_type
    #   The instance type of the instance recommendation.
    #   @return [String]
    #
    # @!attribute [rw] projected_utilization_metrics
    #   An array of objects that describe the projected utilization metrics
    #   of the instance recommendation option.
    #
    #   <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    #   metrics returned. Additionally, the `Memory` metric is returned only
    #   for resources that have the unified CloudWatch agent installed on
    #   them. For more information, see [Enabling Memory Utilization with
    #   the CloudWatch Agent][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] platform_differences
    #   Describes the configuration differences between the current instance
    #   and the recommended instance type. You should consider the
    #   configuration differences before migrating your workloads from the
    #   current instance to the recommended instance type. The [Change the
    #   instance type guide for Linux][1] and [Change the instance type
    #   guide for Windows][2] provide general guidance for getting started
    #   with an instance migration.
    #
    #   Platform differences include:
    #
    #   * <b> <code>Hypervisor</code> </b> — The hypervisor of the
    #     recommended instance type is different than that of the current
    #     instance. For example, the recommended instance type uses a Nitro
    #     hypervisor and the current instance uses a Xen hypervisor. The
    #     differences that you should consider between these hypervisors are
    #     covered in the [Nitro Hypervisor][3] section of the Amazon EC2
    #     frequently asked questions. For more information, see [Instances
    #     built on the Nitro System][4] in the *Amazon EC2 User Guide for
    #     Linux*, or [Instances built on the Nitro System][5] in the *Amazon
    #     EC2 User Guide for Windows*.
    #
    #   * <b> <code>NetworkInterface</code> </b> — The network interface of
    #     the recommended instance type is different than that of the
    #     current instance. For example, the recommended instance type
    #     supports enhanced networking and the current instance might not.
    #     To enable enhanced networking for the recommended instance type,
    #     you must install the Elastic Network Adapter (ENA) driver or the
    #     Intel 82599 Virtual Function driver. For more information, see
    #     [Networking and storage features][6] and [Enhanced networking on
    #     Linux][7] in the *Amazon EC2 User Guide for Linux*, or [Networking
    #     and storage features][8] and [Enhanced networking on Windows][9]
    #     in the *Amazon EC2 User Guide for Windows*.
    #
    #   * <b> <code>StorageInterface</code> </b> — The storage interface of
    #     the recommended instance type is different than that of the
    #     current instance. For example, the recommended instance type uses
    #     an NVMe storage interface and the current instance does not. To
    #     access NVMe volumes for the recommended instance type, you will
    #     need to install or upgrade the NVMe driver. For more information,
    #     see [Networking and storage features][6] and [Amazon EBS and NVMe
    #     on Linux instances][10] in the *Amazon EC2 User Guide for Linux*,
    #     or [Networking and storage features][8] and [Amazon EBS and NVMe
    #     on Windows instances][11] in the *Amazon EC2 User Guide for
    #     Windows*.
    #
    #   * <b> <code>InstanceStoreAvailability</code> </b> — The recommended
    #     instance type does not support instance store volumes and the
    #     current instance does. Before migrating, you might need to back up
    #     the data on your instance store volumes if you want to preserve
    #     them. For more information, see [How do I back up an instance
    #     store volume on my Amazon EC2 instance to Amazon EBS?][12] in the
    #     *Amazon Web Services Premium Support Knowledge Base*. For more
    #     information, see [Networking and storage features][6] and [Amazon
    #     EC2 instance store][13] in the *Amazon EC2 User Guide for Linux*,
    #     or see [Networking and storage features][8] and [Amazon EC2
    #     instance store][14] in the *Amazon EC2 User Guide for Windows*.
    #
    #   * <b> <code>VirtualizationType</code> </b> — The recommended
    #     instance type uses the hardware virtual machine (HVM)
    #     virtualization type and the current instance uses the paravirtual
    #     (PV) virtualization type. For more information about the
    #     differences between these virtualization types, see [Linux AMI
    #     virtualization types][15] in the *Amazon EC2 User Guide for
    #     Linux*, or [Windows AMI virtualization types][16] in the *Amazon
    #     EC2 User Guide for Windows*.
    #
    #   * <b> <code>Architecture</code> </b> — The CPU architecture between
    #     the recommended instance type and the current instance is
    #     different. For example, the recommended instance type might use an
    #     Arm CPU architecture and the current instance type might use a
    #     different one, such as x86. Before migrating, you should consider
    #     recompiling the software on your instance for the new
    #     architecture. Alternatively, you might switch to an Amazon Machine
    #     Image (AMI) that supports the new architecture. For more
    #     information about the CPU architecture for each instance type, see
    #     [Amazon EC2 Instance Types][17].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-resize.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-resize.html
    #   [3]: http://aws.amazon.com/ec2/faqs/#Nitro_Hypervisor
    #   [4]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances
    #   [5]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#ec2-nitro-instances
    #   [6]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#instance-networking-storage
    #   [7]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking.html
    #   [8]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#instance-networking-storage
    #   [9]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/enhanced-networking.html
    #   [10]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nvme-ebs-volumes.html
    #   [11]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/nvme-ebs-volumes.html
    #   [12]: https://aws.amazon.com/premiumsupport/knowledge-center/back-up-instance-store-ebs/
    #   [13]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html
    #   [14]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/InstanceStorage.html
    #   [15]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/virtualization_types.html
    #   [16]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/windows-ami-version-history.html#virtualization-types
    #   [17]: http://aws.amazon.com/ec2/instance-types/
    #   @return [Array<String>]
    #
    # @!attribute [rw] performance_risk
    #   The performance risk of the instance recommendation option.
    #
    #   Performance risk indicates the likelihood of the recommended
    #   instance type not meeting the resource needs of your workload.
    #   Compute Optimizer calculates an individual performance risk score
    #   for each specification of the recommended instance, including CPU,
    #   memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS,
    #   network throughput, and network PPS. The performance risk of the
    #   recommended instance is calculated as the maximum performance risk
    #   score across the analyzed resource specifications.
    #
    #   The value ranges from `0` - `4`, with `0` meaning that the
    #   recommended resource is predicted to always provide enough hardware
    #   capability. The higher the performance risk is, the more likely you
    #   should validate whether the recommendation will meet the performance
    #   requirements of your workload before migrating your resource.
    #   @return [Float]
    #
    # @!attribute [rw] rank
    #   The rank of the instance recommendation option.
    #
    #   The top recommendation option is ranked as `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] savings_opportunity
    #   An object that describes the savings opportunity for the instance
    #   recommendation option. Savings opportunity includes the estimated
    #   monthly savings amount and percentage.
    #   @return [Types::SavingsOpportunity]
    #
    # @!attribute [rw] migration_effort
    #   The level of effort required to migrate from the current instance
    #   type to the recommended instance type.
    #
    #   For example, the migration effort is `Low` if Amazon EMR is the
    #   inferred workload type and an Amazon Web Services Graviton instance
    #   type is recommended. The migration effort is `Medium` if a workload
    #   type couldn't be inferred but an Amazon Web Services Graviton
    #   instance type is recommended. The migration effort is `VeryLow` if
    #   both the current and recommended instance types are of the same CPU
    #   architecture.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InstanceRecommendationOption AWS API Documentation
    #
    class InstanceRecommendationOption < Struct.new(
      :instance_type,
      :projected_utilization_metrics,
      :platform_differences,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :migration_effort)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred. Try your call again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value supplied for the input parameter is out of range or not
    # valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of recommendation
    # export jobs. Use this filter with the DescribeRecommendationExportJobs
    # action.
    #
    # You can use `EBSFilter` with the GetEBSVolumeRecommendations action,
    # `LambdaFunctionRecommendationFilter` with the
    # GetLambdaFunctionRecommendations action, and `Filter` with the
    # GetAutoScalingGroupRecommendations and GetEC2InstanceRecommendations
    # actions.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `ResourceType` to return export jobs of a specific resource
    #   type (for example, `Ec2Instance`).
    #
    #   Specify `JobStatus` to return export jobs with a specific status
    #   (e.g, `Complete`).
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   The valid values for this parameter are as follows, depending on
    #   what you specify for the `name` parameter:
    #
    #   * Specify `Ec2Instance` or `AutoScalingGroup` if you specify the
    #     `name` parameter as `ResourceType`. There is no filter for EBS
    #     volumes because volume recommendations cannot be exported at this
    #     time.
    #
    #   * Specify `Queued`, `InProgress`, `Complete`, or `Failed` if you
    #     specify the `name` parameter as `JobStatus`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/JobFilter AWS API Documentation
    #
    class JobFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a projected utilization metric of an Lambda function
    # recommendation option.
    #
    # @!attribute [rw] name
    #   The name of the projected utilization metric.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic of the projected utilization metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The values of the projected utilization metrics.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/LambdaFunctionMemoryProjectedMetric AWS API Documentation
    #
    class LambdaFunctionMemoryProjectedMetric < Struct.new(
      :name,
      :statistic,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation option for an Lambda function.
    #
    # @!attribute [rw] rank
    #   The rank of the function recommendation option.
    #
    #   The top recommendation option is ranked as `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The memory size, in MB, of the function recommendation option.
    #   @return [Integer]
    #
    # @!attribute [rw] projected_utilization_metrics
    #   An array of objects that describe the projected utilization metrics
    #   of the function recommendation option.
    #   @return [Array<Types::LambdaFunctionMemoryProjectedMetric>]
    #
    # @!attribute [rw] savings_opportunity
    #   An object that describes the savings opportunity for the Lambda
    #   function recommendation option. Savings opportunity includes the
    #   estimated monthly savings amount and percentage.
    #   @return [Types::SavingsOpportunity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/LambdaFunctionMemoryRecommendationOption AWS API Documentation
    #
    class LambdaFunctionMemoryRecommendationOption < Struct.new(
      :rank,
      :memory_size,
      :projected_utilization_metrics,
      :savings_opportunity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Lambda function recommendation.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the current function.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The version number of the current function.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the function.
    #   @return [String]
    #
    # @!attribute [rw] current_memory_size
    #   The amount of memory, in MB, that's allocated to the current
    #   function.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_invocations
    #   The number of times your function code was applied during the
    #   look-back period.
    #   @return [Integer]
    #
    # @!attribute [rw] utilization_metrics
    #   An array of objects that describe the utilization metrics of the
    #   function.
    #   @return [Array<Types::LambdaFunctionUtilizationMetric>]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The number of days for which utilization metrics were analyzed for
    #   the function.
    #   @return [Float]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The timestamp of when the function recommendation was last
    #   generated.
    #   @return [Time]
    #
    # @!attribute [rw] finding
    #   The finding classification of the function.
    #
    #   Findings for functions include:
    #
    #   * <b> <code>Optimized</code> </b> — The function is correctly
    #     provisioned to run your workload based on its current
    #     configuration and its utilization history. This finding
    #     classification does not include finding reason codes.
    #
    #   * <b> <code>NotOptimized</code> </b> — The function is performing at
    #     a higher level (over-provisioned) or at a lower level
    #     (under-provisioned) than required for your workload because its
    #     current configuration is not optimal. Over-provisioned resources
    #     might lead to unnecessary infrastructure cost, and
    #     under-provisioned resources might lead to poor application
    #     performance. This finding classification can include the
    #     `MemoryUnderprovisioned` and `MemoryUnderprovisioned` finding
    #     reason codes.
    #
    #   * <b> <code>Unavailable</code> </b> — Compute Optimizer was unable
    #     to generate a recommendation for the function. This could be
    #     because the function has not accumulated sufficient metric data,
    #     or the function does not qualify for a recommendation. This
    #     finding classification can include the `InsufficientData` and
    #     `Inconclusive` finding reason codes.
    #
    #     <note markdown="1"> Functions with a finding of unavailable are not returned unless
    #     you specify the `filter` parameter with a value of `Unavailable`
    #     in your `GetLambdaFunctionRecommendations` request.
    #
    #      </note>
    #   @return [String]
    #
    # @!attribute [rw] finding_reason_codes
    #   The reason for the finding classification of the function.
    #
    #   <note markdown="1"> Functions that have a finding classification of `Optimized` don't
    #   have a finding reason code.
    #
    #    </note>
    #
    #   Finding reason codes for functions include:
    #
    #   * <b> <code>MemoryOverprovisioned</code> </b> — The function is
    #     over-provisioned when its memory configuration can be sized down
    #     while still meeting the performance requirements of your workload.
    #     An over-provisioned function might lead to unnecessary
    #     infrastructure cost. This finding reason code is part of the
    #     `NotOptimized` finding classification.
    #
    #   * <b> <code>MemoryUnderprovisioned</code> </b> — The function is
    #     under-provisioned when its memory configuration doesn't meet the
    #     performance requirements of the workload. An under-provisioned
    #     function might lead to poor application performance. This finding
    #     reason code is part of the `NotOptimized` finding classification.
    #
    #   * <b> <code>InsufficientData</code> </b> — The function does not
    #     have sufficient metric data for Compute Optimizer to generate a
    #     recommendation. For more information, see the [Supported resources
    #     and requirements][1] in the *Compute Optimizer User Guide*. This
    #     finding reason code is part of the `Unavailable` finding
    #     classification.
    #
    #   * <b> <code>Inconclusive</code> </b> — The function does not qualify
    #     for a recommendation because Compute Optimizer cannot generate a
    #     recommendation with a high degree of confidence. This finding
    #     reason code is part of the `Unavailable` finding classification.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_size_recommendation_options
    #   An array of objects that describe the memory configuration
    #   recommendation options for the function.
    #   @return [Array<Types::LambdaFunctionMemoryRecommendationOption>]
    #
    # @!attribute [rw] current_performance_risk
    #   The risk of the current Lambda function not meeting the performance
    #   needs of its workloads. The higher the risk, the more likely the
    #   current Lambda function requires more memory.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags assigned to your Lambda function recommendations.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/LambdaFunctionRecommendation AWS API Documentation
    #
    class LambdaFunctionRecommendation < Struct.new(
      :function_arn,
      :function_version,
      :account_id,
      :current_memory_size,
      :number_of_invocations,
      :utilization_metrics,
      :lookback_period_in_days,
      :last_refresh_timestamp,
      :finding,
      :finding_reason_codes,
      :memory_size_recommendation_options,
      :current_performance_risk,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of Lambda
    # function recommendations. Use this filter with the
    # GetLambdaFunctionRecommendations action.
    #
    # You can use `EBSFilter` with the GetEBSVolumeRecommendations action,
    # `JobFilter` with the DescribeRecommendationExportJobs action, and
    # `Filter` with the GetAutoScalingGroupRecommendations and
    # GetEC2InstanceRecommendations actions.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `Finding` to return recommendations with a specific finding
    #   classification (for example, `NotOptimized`).
    #
    #   Specify `FindingReasonCode` to return recommendations with a
    #   specific finding reason code (for example,
    #   `MemoryUnderprovisioned`).
    #
    #   You can filter your Lambda function recommendations by `tag:key` and
    #   `tag-key` tags.
    #
    #   A `tag:key` is a key and value combination of a tag assigned to your
    #   Lambda function recommendations. Use the tag key in the filter name
    #   and the tag value as the filter value. For example, to find all
    #   Lambda function recommendations that have a tag with the key of
    #   `Owner` and the value of `TeamA`, specify `tag:Owner` for the filter
    #   name and `TeamA` for the filter value.
    #
    #   A `tag-key` is the key of a tag assigned to your Lambda function
    #   recommendations. Use this filter to find all of your Lambda function
    #   recommendations that have a tag with a specific key. This doesn’t
    #   consider the tag value. For example, you can find your Lambda
    #   function recommendations with a tag key value of `Owner` or without
    #   any tag keys assigned.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   The valid values for this parameter are as follows, depending on
    #   what you specify for the `name` parameter:
    #
    #   * Specify `Optimized`, `NotOptimized`, or `Unavailable` if you
    #     specify the `name` parameter as `Finding`.
    #
    #   * Specify `MemoryOverprovisioned`, `MemoryUnderprovisioned`,
    #     `InsufficientData`, or `Inconclusive` if you specify the `name`
    #     parameter as `FindingReasonCode`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/LambdaFunctionRecommendationFilter AWS API Documentation
    #
    class LambdaFunctionRecommendationFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a utilization metric of an Lambda function.
    #
    # @!attribute [rw] name
    #   The name of the utilization metric.
    #
    #   The following utilization metrics are available:
    #
    #   * `Duration` - The amount of time that your function code spends
    #     processing an event.
    #
    #   * `Memory` - The amount of memory used per invocation.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic of the utilization metric.
    #
    #   The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #   return utilization metrics using only the `Maximum` statistic, which
    #   is the highest value observed during the specified period.
    #
    #   The Compute Optimizer console displays graphs for some utilization
    #   metrics using the `Average` statistic, which is the value of `Sum` /
    #   `SampleCount` during the specified period. For more information, see
    #   [Viewing resource recommendations][1] in the *Compute Optimizer User
    #   Guide*. You can also get averaged utilization metric data for your
    #   resources using Amazon CloudWatch. For more information, see the
    #   [Amazon CloudWatch User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the utilization metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/LambdaFunctionUtilizationMetric AWS API Documentation
    #
    class LambdaFunctionUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a limit of the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The memory size configurations of a container.
    #
    # @!attribute [rw] memory
    #   The amount of memory in the container.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The limit of memory reserve for the container.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/MemorySizeConfiguration AWS API Documentation
    #
    class MemorySizeConfiguration < Struct.new(
      :memory,
      :memory_reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request must contain either a valid (registered) Amazon Web
    # Services access key ID or X.509 certificate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/MissingAuthenticationToken AWS API Documentation
    #
    class MissingAuthenticationToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account is not opted in to Compute Optimizer.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/OptInRequiredException AWS API Documentation
    #
    class OptInRequiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a projected utilization metric of a recommendation option,
    # such as an Amazon EC2 instance. This represents the projected
    # utilization of a recommendation option had you used that resource
    # during the analyzed period.
    #
    # Compare the utilization metric data of your resource against its
    # projected utilization metric data to determine the performance
    # difference between your current resource and the recommended option.
    #
    # <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    # metrics returned when you run the GetEC2RecommendationProjectedMetrics
    # action. Additionally, the `Memory` metric is returned only for
    # resources that have the unified CloudWatch agent installed on them.
    # For more information, see [Enabling Memory Utilization with the
    # CloudWatch Agent][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #
    # @!attribute [rw] name
    #   The name of the projected utilization metric.
    #
    #   The following projected utilization metrics are returned:
    #
    #   * `Cpu` - The projected percentage of allocated EC2 compute units
    #     that would be in use on the recommendation option had you used
    #     that resource during the analyzed period. This metric identifies
    #     the processing power required to run an application on the
    #     recommendation option.
    #
    #     Depending on the instance type, tools in your operating system can
    #     show a lower percentage than CloudWatch when the instance is not
    #     allocated a full processor core.
    #
    #     Units: Percent
    #
    #   * `Memory` - The percentage of memory that would be in use on the
    #     recommendation option had you used that resource during the
    #     analyzed period. This metric identifies the amount of memory
    #     required to run an application on the recommendation option.
    #
    #     Units: Percent
    #
    #     <note markdown="1"> The `Memory` metric is returned only for resources that have the
    #     unified CloudWatch agent installed on them. For more information,
    #     see [Enabling Memory Utilization with the CloudWatch Agent][1].
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   @return [String]
    #
    # @!attribute [rw] timestamps
    #   The timestamps of the projected utilization metric.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The values of the projected utilization metrics.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ProjectedMetric AWS API Documentation
    #
    class ProjectedMetric < Struct.new(
      :name,
      :timestamps,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The target resource type of the recommendation preference to create.
    #
    #   The `Ec2Instance` option encompasses standalone instances and
    #   instances that are part of Auto Scaling groups. The
    #   `AutoScalingGroup` option encompasses only instances that are part
    #   of an Auto Scaling group.
    #
    #   <note markdown="1"> The valid values for this parameter are `Ec2Instance` and
    #   `AutoScalingGroup`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   An object that describes the scope of the recommendation preference
    #   to create.
    #
    #   You can create recommendation preferences at the organization level
    #   (for management accounts of an organization only), account level,
    #   and resource level. For more information, see [Activating enhanced
    #   infrastructure metrics][1] in the *Compute Optimizer User Guide*.
    #
    #   <note markdown="1"> You cannot create recommendation preferences for Auto Scaling groups
    #   at the organization and account levels. You can create
    #   recommendation preferences for Auto Scaling groups only at the
    #   resource level by specifying a scope name of `ResourceArn` and a
    #   scope value of the Auto Scaling group Amazon Resource Name (ARN).
    #   This will configure the preference for all instances that are part
    #   of the specified Auto Scaling group. You also cannot create
    #   recommendation preferences at the resource level for instances that
    #   are part of an Auto Scaling group. You can create recommendation
    #   preferences at the resource level only for standalone instances.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [Types::Scope]
    #
    # @!attribute [rw] enhanced_infrastructure_metrics
    #   The status of the enhanced infrastructure metrics recommendation
    #   preference to create or update.
    #
    #   Specify the `Active` status to activate the preference, or specify
    #   `Inactive` to deactivate the preference.
    #
    #   For more information, see [Enhanced infrastructure metrics][1] in
    #   the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] inferred_workload_types
    #   The status of the inferred workload types recommendation preference
    #   to create or update.
    #
    #   <note markdown="1"> The inferred workload type feature is active by default. To
    #   deactivate it, create a recommendation preference.
    #
    #    </note>
    #
    #   Specify the `Inactive` status to deactivate the feature, or specify
    #   `Active` to activate it.
    #
    #   For more information, see [Inferred workload types][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html
    #   @return [String]
    #
    # @!attribute [rw] external_metrics_preference
    #   The provider of the external metrics recommendation preference to
    #   create or update.
    #
    #   Specify a valid provider in the `source` field to activate the
    #   preference. To delete this preference, see the
    #   DeleteRecommendationPreferences action.
    #
    #   This preference can only be set for the `Ec2Instance` resource type.
    #
    #   For more information, see [External metrics ingestion][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html
    #   @return [Types::ExternalMetricsPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/PutRecommendationPreferencesRequest AWS API Documentation
    #
    class PutRecommendationPreferencesRequest < Struct.new(
      :resource_type,
      :scope,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      :external_metrics_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/PutRecommendationPreferencesResponse AWS API Documentation
    #
    class PutRecommendationPreferencesResponse < Aws::EmptyStructure; end

    # A summary of a finding reason code.
    #
    # @!attribute [rw] name
    #   The name of the finding reason code.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the finding reason code summary.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ReasonCodeSummary AWS API Documentation
    #
    class ReasonCodeSummary < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation export job.
    #
    # Use the DescribeRecommendationExportJobs action to view your
    # recommendation export jobs.
    #
    # Use the ExportAutoScalingGroupRecommendations or
    # ExportEC2InstanceRecommendations actions to request an export of your
    # recommendations.
    #
    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   An object that describes the destination of the export file.
    #   @return [Types::ExportDestination]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the exported recommendations.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the export job.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp of when the export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the export job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason for an export job failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationExportJob AWS API Documentation
    #
    class RecommendationExportJob < Struct.new(
      :job_id,
      :destination,
      :resource_type,
      :status,
      :creation_timestamp,
      :last_updated_timestamp,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the recommendation preferences to return in the response of
    # a GetAutoScalingGroupRecommendations, GetEC2InstanceRecommendations,
    # and GetEC2RecommendationProjectedMetrics request.
    #
    # @!attribute [rw] cpu_vendor_architectures
    #   Specifies the CPU vendor and architecture for Amazon EC2 instance
    #   and Auto Scaling group recommendations.
    #
    #   For example, when you specify `AWS_ARM64` with:
    #
    #   * A GetEC2InstanceRecommendations or
    #     GetAutoScalingGroupRecommendations request, Compute Optimizer
    #     returns recommendations that consist of Graviton2 instance types
    #     only.
    #
    #   * A GetEC2RecommendationProjectedMetrics request, Compute Optimizer
    #     returns projected utilization metrics for Graviton2 instance type
    #     recommendations only.
    #
    #   * A ExportEC2InstanceRecommendations or
    #     ExportAutoScalingGroupRecommendations request, Compute Optimizer
    #     exports recommendations that consist of Graviton2 instance types
    #     only.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationPreferences AWS API Documentation
    #
    class RecommendationPreferences < Struct.new(
      :cpu_vendor_architectures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation preference.
    #
    # @!attribute [rw] scope
    #   An object that describes the scope of the recommendation preference.
    #
    #   Recommendation preferences can be created at the organization level
    #   (for management accounts of an organization only), account level,
    #   and resource level. For more information, see [Activating enhanced
    #   infrastructure metrics][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [Types::Scope]
    #
    # @!attribute [rw] resource_type
    #   The target resource type of the recommendation preference to create.
    #
    #   The `Ec2Instance` option encompasses standalone instances and
    #   instances that are part of Auto Scaling groups. The
    #   `AutoScalingGroup` option encompasses only instances that are part
    #   of an Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_infrastructure_metrics
    #   The status of the enhanced infrastructure metrics recommendation
    #   preference.
    #
    #   When the recommendations page is refreshed, a status of `Active`
    #   confirms that the preference is applied to the recommendations, and
    #   a status of `Inactive` confirms that the preference isn't yet
    #   applied to recommendations.
    #
    #   For more information, see [Enhanced infrastructure metrics][1] in
    #   the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] inferred_workload_types
    #   The status of the inferred workload types recommendation preference.
    #
    #   When the recommendations page is refreshed, a status of `Active`
    #   confirms that the preference is applied to the recommendations, and
    #   a status of `Inactive` confirms that the preference isn't yet
    #   applied to recommendations.
    #   @return [String]
    #
    # @!attribute [rw] external_metrics_preference
    #   An object that describes the external metrics recommendation
    #   preference.
    #
    #   If the preference is applied in the latest recommendation refresh,
    #   an object with a valid `source` value appears in the response. If
    #   the preference isn't applied to the recommendations already, then
    #   this object doesn't appear in the response.
    #   @return [Types::ExternalMetricsPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationPreferencesDetail AWS API Documentation
    #
    class RecommendationPreferencesDetail < Struct.new(
      :scope,
      :resource_type,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      :external_metrics_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the source of a recommendation, such as an Amazon EC2
    # instance or Auto Scaling group.
    #
    # @!attribute [rw] recommendation_source_arn
    #   The Amazon Resource Name (ARN) of the recommendation source.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_source_type
    #   The resource type of the recommendation source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationSource AWS API Documentation
    #
    class RecommendationSource < Struct.new(
      :recommendation_source_arn,
      :recommendation_source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a recommendation.
    #
    # @!attribute [rw] summaries
    #   An array of objects that describe a recommendation summary.
    #   @return [Array<Types::Summary>]
    #
    # @!attribute [rw] recommendation_resource_type
    #   The resource type that the recommendation summary applies to.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the recommendation summary.
    #   @return [String]
    #
    # @!attribute [rw] savings_opportunity
    #   An object that describes the savings opportunity for a given
    #   resource type. Savings opportunity includes the estimated monthly
    #   savings amount and percentage.
    #   @return [Types::SavingsOpportunity]
    #
    # @!attribute [rw] current_performance_risk_ratings
    #   An object that describes the performance risk ratings for a given
    #   resource type.
    #   @return [Types::CurrentPerformanceRiskRatings]
    #
    # @!attribute [rw] inferred_workload_savings
    #   An array of objects that describes the estimated monthly saving
    #   amounts for the instances running on the specified
    #   `inferredWorkloadTypes`. The array contains the top three savings
    #   opportunites for the instances running inferred workload types.
    #   @return [Array<Types::InferredWorkloadSaving>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationSummary AWS API Documentation
    #
    class RecommendationSummary < Struct.new(
      :summaries,
      :recommendation_resource_type,
      :account_id,
      :savings_opportunity,
      :current_performance_risk_ratings,
      :inferred_workload_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a projected utilization metric of a recommendation option.
    #
    # <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    # metrics returned when you run the GetEC2RecommendationProjectedMetrics
    # action. Additionally, the `Memory` metric is returned only for
    # resources that have the unified CloudWatch agent installed on them.
    # For more information, see [Enabling Memory Utilization with the
    # CloudWatch Agent][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #
    # @!attribute [rw] recommended_instance_type
    #   The recommended instance type.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   The rank of the recommendation option projected metric.
    #
    #   The top recommendation option is ranked as `1`.
    #
    #   The projected metric rank correlates to the recommendation option
    #   rank. For example, the projected metric ranked as `1` is related to
    #   the recommendation option that is also ranked as `1` in the same
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] projected_metrics
    #   An array of objects that describe a projected utilization metric.
    #   @return [Array<Types::ProjectedMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendedOptionProjectedMetric AWS API Documentation
    #
    class RecommendedOptionProjectedMetric < Struct.new(
      :recommended_instance_type,
      :rank,
      :projected_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that is required for the action doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination Amazon Simple Storage Service (Amazon S3)
    # bucket name and object keys of a recommendations export file, and its
    # associated metadata file.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket used as the destination of an
    #   export file.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The Amazon S3 bucket key of an export file.
    #
    #   The key uniquely identifies the object, or export file, in the S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] metadata_key
    #   The Amazon S3 bucket key of a metadata file.
    #
    #   The key uniquely identifies the object, or metadata file, in the S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :bucket,
      :key,
      :metadata_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination Amazon Simple Storage Service (Amazon S3)
    # bucket name and key prefix for a recommendations export job.
    #
    # You must create the destination Amazon S3 bucket for your
    # recommendations export before you create the export job. Compute
    # Optimizer does not create the S3 bucket for you. After you create the
    # S3 bucket, ensure that it has the required permission policy to allow
    # Compute Optimizer to write the export file to it. If you plan to
    # specify an object prefix when you create the export job, you must
    # include the object prefix in the policy that you add to the S3 bucket.
    # For more information, see [Amazon S3 Bucket Policy for Compute
    # Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket to use as the destination for an
    #   export job.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   The Amazon S3 bucket prefix for an export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/S3DestinationConfig AWS API Documentation
    #
    class S3DestinationConfig < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the savings opportunity for recommendations of a given
    # resource type or for the recommendation option of an individual
    # resource.
    #
    # Savings opportunity represents the estimated monthly savings you can
    # achieve by implementing a given Compute Optimizer recommendation.
    #
    # Savings opportunity data requires that you opt in to Cost Explorer, as
    # well as activate **Receive Amazon EC2 resource recommendations** in
    # the Cost Explorer preferences page. That creates a connection between
    # Cost Explorer and Compute Optimizer. With this connection, Cost
    # Explorer generates savings estimates considering the price of existing
    # resources, the price of recommended resources, and historical usage
    # data. Estimated monthly savings reflects the projected dollar savings
    # associated with each of the recommendations generated. For more
    # information, see [Enabling Cost Explorer][1] and [Optimizing your cost
    # with Rightsizing Recommendations][2] in the *Cost Management User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html
    # [2]: https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html
    #
    # @!attribute [rw] savings_opportunity_percentage
    #   The estimated monthly savings possible as a percentage of monthly
    #   cost by adopting Compute Optimizer recommendations for a given
    #   resource.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   An object that describes the estimated monthly savings amount
    #   possible by adopting Compute Optimizer recommendations for a given
    #   resource. This is based on the On-Demand instance pricing..
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/SavingsOpportunity AWS API Documentation
    #
    class SavingsOpportunity < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the scope of a recommendation preference.
    #
    # Recommendation preferences can be created at the organization level
    # (for management accounts of an organization only), account level, and
    # resource level. For more information, see [Activating enhanced
    # infrastructure metrics][1] in the *Compute Optimizer User Guide*.
    #
    # <note markdown="1"> You cannot create recommendation preferences for Auto Scaling groups
    # at the organization and account levels. You can create recommendation
    # preferences for Auto Scaling groups only at the resource level by
    # specifying a scope name of `ResourceArn` and a scope value of the Auto
    # Scaling group Amazon Resource Name (ARN). This will configure the
    # preference for all instances that are part of the specified Auto
    # Scaling group. You also cannot create recommendation preferences at
    # the resource level for instances that are part of an Auto Scaling
    # group. You can create recommendation preferences at the resource level
    # only for standalone instances.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @!attribute [rw] name
    #   The name of the scope.
    #
    #   The following scopes are possible:
    #
    #   * `Organization` - Specifies that the recommendation preference
    #     applies at the organization level, for all member accounts of an
    #     organization.
    #
    #   * `AccountId` - Specifies that the recommendation preference applies
    #     at the account level, for all resources of a given resource type
    #     in an account.
    #
    #   * `ResourceArn` - Specifies that the recommendation preference
    #     applies at the individual resource level.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the scope.
    #
    #   If you specified the `name` of the scope as:
    #
    #   * `Organization` - The `value` must be `ALL_ACCOUNTS`.
    #
    #   * `AccountId` - The `value` must be a 12-digit Amazon Web Services
    #     account ID.
    #
    #   * `ResourceArn` - The `value` must be the Amazon Resource Name (ARN)
    #     of an EC2 instance or an Auto Scaling group.
    #
    #   Only EC2 instance and Auto Scaling group ARNs are currently
    #   supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/Scope AWS API Documentation
    #
    class Scope < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon ECS service configurations used for recommendations.
    #
    # @!attribute [rw] memory
    #   The amount of memory used by the tasks in the Amazon ECS service.
    #   @return [Integer]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the tasks in the Amazon ECS service.
    #   @return [Integer]
    #
    # @!attribute [rw] container_configurations
    #   The container configurations within a task of an Amazon ECS service.
    #   @return [Array<Types::ContainerConfiguration>]
    #
    # @!attribute [rw] auto_scaling_configuration
    #   Describes the Auto Scaling configuration methods for an Amazon ECS
    #   service. This affects the generated recommendations. For example, if
    #   Auto Scaling is configured on a service’s CPU, then Compute
    #   Optimizer doesn’t generate CPU size recommendations.
    #
    #   The Auto Scaling configuration methods include:
    #
    #   * `TARGET_TRACKING_SCALING_CPU` — If the Amazon ECS service is
    #     configured to use target scaling on CPU, Compute Optimizer
    #     doesn't generate CPU recommendations.
    #
    #   * `TARGET_TRACKING_SCALING_MEMORY` — If the Amazon ECS service is
    #     configured to use target scaling on memory, Compute Optimizer
    #     doesn't generate memory recommendations.
    #
    #   For more information about step scaling and target scaling, see [
    #   Step scaling policies for Application Auto Scaling][1] and [ Target
    #   tracking scaling policies for Application Auto Scaling][2] in the
    #   *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
    #   @return [String]
    #
    # @!attribute [rw] task_definition_arn
    #   The task definition ARN used by the tasks in the Amazon ECS service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ServiceConfiguration AWS API Documentation
    #
    class ServiceConfiguration < Struct.new(
      :memory,
      :cpu,
      :container_configurations,
      :auto_scaling_configuration,
      :task_definition_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed due to a temporary failure of the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a recommendation.
    #
    # @!attribute [rw] name
    #   The finding classification of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the recommendation summary.
    #   @return [Float]
    #
    # @!attribute [rw] reason_code_summaries
    #   An array of objects that summarize a finding reason code.
    #   @return [Array<Types::ReasonCodeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/Summary AWS API Documentation
    #
    class Summary < Struct.new(
      :name,
      :value,
      :reason_code_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of tag key and value pairs that you define.
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that makes up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   One part of a key-value pair that make up a tag. A value acts as a
    #   descriptor within a tag category (key). The value can be empty or
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The new enrollment status of the account.
    #
    #   The following status options are available:
    #
    #   * `Active` - Opts in your account to the Compute Optimizer service.
    #     Compute Optimizer begins analyzing the configuration and
    #     utilization metrics of your Amazon Web Services resources after
    #     you opt in. For more information, see [Metrics analyzed by Compute
    #     Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #   * `Inactive` - Opts out your account from the Compute Optimizer
    #     service. Your account's recommendations and related metrics data
    #     will be deleted from Compute Optimizer after you opt out.
    #
    #   <note markdown="1"> The `Pending` and `Failed` options cannot be used to update the
    #   enrollment status of an account. They are returned in the response
    #   of a request to update the enrollment status of an account.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to enroll member accounts of the organization if
    #   the account is the management account of an organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UpdateEnrollmentStatusRequest AWS API Documentation
    #
    class UpdateEnrollmentStatusRequest < Struct.new(
      :status,
      :include_member_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The enrollment status of the account.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the enrollment status of the account. For example, an
    #   account might show a status of `Pending` because member accounts of
    #   an organization require more time to be enrolled in the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UpdateEnrollmentStatusResponse AWS API Documentation
    #
    class UpdateEnrollmentStatusResponse < Struct.new(
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a utilization metric of a resource, such as an Amazon EC2
    # instance.
    #
    # Compare the utilization metric data of your resource against its
    # projected utilization metric data to determine the performance
    # difference between your current resource and the recommended option.
    #
    # @!attribute [rw] name
    #   The name of the utilization metric.
    #
    #   The following utilization metrics are available:
    #
    #   * `Cpu` - The percentage of allocated EC2 compute units that are
    #     currently in use on the instance. This metric identifies the
    #     processing power required to run an application on the instance.
    #
    #     Depending on the instance type, tools in your operating system can
    #     show a lower percentage than CloudWatch when the instance is not
    #     allocated a full processor core.
    #
    #     Units: Percent
    #
    #   * `Memory` - The percentage of memory that is currently in use on
    #     the instance. This metric identifies the amount of memory required
    #     to run an application on the instance.
    #
    #     Units: Percent
    #
    #     <note markdown="1"> The `Memory` metric is returned only for resources that have the
    #     unified CloudWatch agent installed on them. For more information,
    #     see [Enabling Memory Utilization with the CloudWatch Agent][1].
    #
    #      </note>
    #
    #   * `EBS_READ_OPS_PER_SECOND` - The completed read operations from all
    #     EBS volumes attached to the instance in a specified period of
    #     time.
    #
    #     Unit: Count
    #
    #   * `EBS_WRITE_OPS_PER_SECOND` - The completed write operations to all
    #     EBS volumes attached to the instance in a specified period of
    #     time.
    #
    #     Unit: Count
    #
    #   * `EBS_READ_BYTES_PER_SECOND` - The bytes read from all EBS volumes
    #     attached to the instance in a specified period of time.
    #
    #     Unit: Bytes
    #
    #   * `EBS_WRITE_BYTES_PER_SECOND` - The bytes written to all EBS
    #     volumes attached to the instance in a specified period of time.
    #
    #     Unit: Bytes
    #
    #   * `DISK_READ_OPS_PER_SECOND` - The completed read operations from
    #     all instance store volumes available to the instance in a
    #     specified period of time.
    #
    #     If there are no instance store volumes, either the value is `0` or
    #     the metric is not reported.
    #
    #   * `DISK_WRITE_OPS_PER_SECOND` - The completed write operations from
    #     all instance store volumes available to the instance in a
    #     specified period of time.
    #
    #     If there are no instance store volumes, either the value is `0` or
    #     the metric is not reported.
    #
    #   * `DISK_READ_BYTES_PER_SECOND` - The bytes read from all instance
    #     store volumes available to the instance. This metric is used to
    #     determine the volume of the data the application reads from the
    #     disk of the instance. This can be used to determine the speed of
    #     the application.
    #
    #     If there are no instance store volumes, either the value is `0` or
    #     the metric is not reported.
    #
    #   * `DISK_WRITE_BYTES_PER_SECOND` - The bytes written to all instance
    #     store volumes available to the instance. This metric is used to
    #     determine the volume of the data the application writes onto the
    #     disk of the instance. This can be used to determine the speed of
    #     the application.
    #
    #     If there are no instance store volumes, either the value is `0` or
    #     the metric is not reported.
    #
    #   * `NETWORK_IN_BYTES_PER_SECOND` - The number of bytes received by
    #     the instance on all network interfaces. This metric identifies the
    #     volume of incoming network traffic to a single instance.
    #
    #   * `NETWORK_OUT_BYTES_PER_SECOND` - The number of bytes sent out by
    #     the instance on all network interfaces. This metric identifies the
    #     volume of outgoing network traffic from a single instance.
    #
    #   * `NETWORK_PACKETS_IN_PER_SECOND` - The number of packets received
    #     by the instance on all network interfaces. This metric identifies
    #     the volume of incoming traffic in terms of the number of packets
    #     on a single instance.
    #
    #   * `NETWORK_PACKETS_OUT_PER_SECOND` - The number of packets sent out
    #     by the instance on all network interfaces. This metric identifies
    #     the volume of outgoing traffic in terms of the number of packets
    #     on a single instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic of the utilization metric.
    #
    #   The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #   return utilization metrics using only the `Maximum` statistic, which
    #   is the highest value observed during the specified period.
    #
    #   The Compute Optimizer console displays graphs for some utilization
    #   metrics using the `Average` statistic, which is the value of `Sum` /
    #   `SampleCount` during the specified period. For more information, see
    #   [Viewing resource recommendations][1] in the *Compute Optimizer User
    #   Guide*. You can also get averaged utilization metric data for your
    #   resources using Amazon CloudWatch. For more information, see the
    #   [Amazon CloudWatch User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the utilization metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UtilizationMetric AWS API Documentation
    #
    class UtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of an Amazon Elastic Block Store (Amazon
    # EBS) volume.
    #
    # @!attribute [rw] volume_type
    #   The volume type.
    #
    #   This can be `gp2` for General Purpose SSD, `io1` or `io2` for
    #   Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for
    #   Cold HDD, or `standard` for Magnetic volumes.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume, in GiB.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_baseline_iops
    #   The baseline IOPS of the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_burst_iops
    #   The burst IOPS of the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_baseline_throughput
    #   The baseline throughput of the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_burst_throughput
    #   The burst throughput of the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] root_volume
    #   Contains the image used to boot the instance during launch.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/VolumeConfiguration AWS API Documentation
    #
    class VolumeConfiguration < Struct.new(
      :volume_type,
      :volume_size,
      :volume_baseline_iops,
      :volume_burst_iops,
      :volume_baseline_throughput,
      :volume_burst_throughput,
      :root_volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Elastic Block Store (Amazon EBS) volume
    # recommendation.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the current volume.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] current_configuration
    #   An array of objects that describe the current configuration of the
    #   volume.
    #   @return [Types::VolumeConfiguration]
    #
    # @!attribute [rw] finding
    #   The finding classification of the volume.
    #
    #   Findings for volumes include:
    #
    #   * <b> <code>NotOptimized</code> </b>—A volume is considered not
    #     optimized when Compute Optimizer identifies a recommendation that
    #     can provide better performance for your workload.
    #
    #   * <b> <code>Optimized</code> </b>—An volume is considered optimized
    #     when Compute Optimizer determines that the volume is correctly
    #     provisioned to run your workload based on the chosen volume type.
    #     For optimized resources, Compute Optimizer might recommend a new
    #     generation volume type.
    #   @return [String]
    #
    # @!attribute [rw] utilization_metrics
    #   An array of objects that describe the utilization metrics of the
    #   volume.
    #   @return [Array<Types::EBSUtilizationMetric>]
    #
    # @!attribute [rw] look_back_period_in_days
    #   The number of days for which utilization metrics were analyzed for
    #   the volume.
    #   @return [Float]
    #
    # @!attribute [rw] volume_recommendation_options
    #   An array of objects that describe the recommendation options for the
    #   volume.
    #   @return [Array<Types::VolumeRecommendationOption>]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The timestamp of when the volume recommendation was last generated.
    #   @return [Time]
    #
    # @!attribute [rw] current_performance_risk
    #   The risk of the current EBS volume not meeting the performance needs
    #   of its workloads. The higher the risk, the more likely the current
    #   EBS volume doesn't have sufficient capacity.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags assigned to your Amazon EBS volume recommendations.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/VolumeRecommendation AWS API Documentation
    #
    class VolumeRecommendation < Struct.new(
      :volume_arn,
      :account_id,
      :current_configuration,
      :finding,
      :utilization_metrics,
      :look_back_period_in_days,
      :volume_recommendation_options,
      :last_refresh_timestamp,
      :current_performance_risk,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation option for an Amazon Elastic Block Store
    # (Amazon EBS) instance.
    #
    # @!attribute [rw] configuration
    #   An array of objects that describe a volume configuration.
    #   @return [Types::VolumeConfiguration]
    #
    # @!attribute [rw] performance_risk
    #   The performance risk of the volume recommendation option.
    #
    #   Performance risk is the likelihood of the recommended volume type
    #   meeting the performance requirement of your workload.
    #
    #   The value ranges from `0` - `4`, with `0` meaning that the
    #   recommended resource is predicted to always provide enough hardware
    #   capability. The higher the performance risk is, the more likely you
    #   should validate whether the recommendation will meet the performance
    #   requirements of your workload before migrating your resource.
    #   @return [Float]
    #
    # @!attribute [rw] rank
    #   The rank of the volume recommendation option.
    #
    #   The top recommendation option is ranked as `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] savings_opportunity
    #   An object that describes the savings opportunity for the EBS volume
    #   recommendation option. Savings opportunity includes the estimated
    #   monthly savings amount and percentage.
    #   @return [Types::SavingsOpportunity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/VolumeRecommendationOption AWS API Documentation
    #
    class VolumeRecommendationOption < Struct.new(
      :configuration,
      :performance_risk,
      :rank,
      :savings_opportunity)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
