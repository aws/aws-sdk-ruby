# frozen_string_literal: true

# This is generated code!

module Aws::ComputeOptimizer
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the enrollment status of an organization's member accounts in Compute Optimizer.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The account enrollment status.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the account enrollment status.</p>
    #            <p>For example, an account might show a status of <code>Pending</code> because member
    #               accounts of an organization require more time to be enrolled in the service.</p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p>The Unix epoch timestamp, in seconds, of when the account enrollment status was last
    #               updated.</p>
    #   @return [Time]
    class AccountEnrollmentStatus < Struct.new(
      :account_id,
      :status,
      :status_reason,
      :last_updated_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of an EC2 Auto Scaling group.</p>
    # @!attribute desired_capacity
    #   <p>The desired capacity, or number of instances, for the EC2 Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute min_size
    #   <p>The minimum size, or minimum number of instances, for the EC2 Auto Scaling
    #               group.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum size, or maximum number of instances, for the EC2 Auto Scaling
    #               group.</p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>The instance type for the EC2 Auto Scaling group.</p>
    #   @return [String]
    # @!attribute allocation_strategy
    #   <p>
    #               Describes the allocation strategy that the EC2 Auto Scaling group uses. This field is only available for EC2 Auto Scaling groups with mixed instance types.
    #           </p>
    #   @return [String]
    # @!attribute estimated_instance_hour_reduction_percentage
    #   <p>
    #               Describes the projected percentage reduction in instance hours after adopting the recommended configuration. This field is only available for EC2 Auto Scaling groups with scaling policies.
    #           </p>
    #   @return [Float]
    # @!attribute type
    #   <p>
    #               Describes whether the EC2 Auto Scaling group has a single instance type or a mixed instance type configuration.
    #           </p>
    #   @return [String]
    # @!attribute mixed_instance_types
    #   <p>
    #               List the instance types within an EC2 Auto Scaling group that has mixed instance types.
    #           </p>
    #   @return [Array<String>]
    class AutoScalingGroupConfiguration < Struct.new(
      :desired_capacity,
      :min_size,
      :max_size,
      :instance_type,
      :allocation_strategy,
      :estimated_instance_hour_reduction_percentage,
      :type,
      :mixed_instance_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:desired_capacity] = 0 unless options.key?(:desired_capacity)
        options[:min_size] = 0 unless options.key?(:min_size)
        options[:max_size] = 0 unless options.key?(:max_size)
        super
      end
    end

    # <p>
    #             An object that describes the estimated monthly savings  possible by adopting Compute Optimizer’s Auto Scaling group recommendations. This is based on the 
    #             Savings Plans and Reserved Instances discounts.
    #         </p>
    # @!attribute currency
    #   <p>
    #               The currency of the estimated monthly savings.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the estimated monthly savings.
    #           </p>
    #   @return [Float]
    class AutoScalingGroupEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes an Auto Scaling group recommendation.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute finding
    #   <p>The finding classification of the Auto Scaling group.</p>
    #            <p>Findings for Auto Scaling groups include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NotOptimized</code>
    #                     </b>—An Auto Scaling group is considered not optimized when Compute Optimizer identifies a
    #                       recommendation that can provide better performance for your workload.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b>—An Auto Scaling
    #                       group is considered optimized when Compute Optimizer determines that the group
    #                       is correctly provisioned to run your workload based on the chosen instance type.
    #                       For optimized resources, Compute Optimizer might recommend a new generation
    #                       instance type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the Auto Scaling
    #               group.</p>
    #   @return [Array<Types::UtilizationMetric>]
    # @!attribute look_back_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the Auto Scaling group.</p>
    #   @return [Float]
    # @!attribute current_configuration
    #   <p>An array of objects that describe the current configuration of the Auto Scaling
    #               group.</p>
    #   @return [Types::AutoScalingGroupConfiguration]
    # @!attribute current_instance_gpu_info
    #   <p>
    #               Describes the GPU accelerator settings for the current instance type of the Auto Scaling group.
    #           </p>
    #   @return [Types::GpuInfo]
    # @!attribute recommendation_options
    #   <p>An array of objects that describe the recommendation options for the Auto Scaling
    #               group.</p>
    #   @return [Array<Types::AutoScalingGroupRecommendationOption>]
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the Auto Scaling group recommendation was last
    #               generated.</p>
    #   @return [Time]
    # @!attribute current_performance_risk
    #   <p>The risk of the current Auto Scaling group not meeting the performance needs of
    #               its workloads. The higher the risk, the more likely the current Auto Scaling group
    #               configuration has insufficient capacity and cannot meet workload requirements.</p>
    #   @return [String]
    # @!attribute effective_recommendation_preferences
    #   <p>An object that describes the effective recommendation preferences for the Auto Scaling group.</p>
    #   @return [Types::EffectiveRecommendationPreferences]
    # @!attribute inferred_workload_types
    #   <p>The applications that might be running on the instances in the Auto Scaling group
    #               as inferred by Compute Optimizer.</p>
    #            <p>Compute Optimizer can infer if one of the following applications might be running on
    #               the instances:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AmazonEmr</code> - Infers that Amazon EMR might be running on
    #                       the instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApacheCassandra</code> - Infers that Apache Cassandra might be running
    #                       on the instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApacheHadoop</code> - Infers that Apache Hadoop might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memcached</code> - Infers that Memcached might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NGINX</code> - Infers that NGINX might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PostgreSql</code> - Infers that PostgreSQL might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redis</code> - Infers that Redis might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Kafka</code> - Infers that Kafka might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SQLServer</code> - Infers that SQLServer might be running on the
    #                       instance.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class AutoScalingGroupRecommendation < Struct.new(
      :account_id,
      :auto_scaling_group_arn,
      :auto_scaling_group_name,
      :finding,
      :utilization_metrics,
      :look_back_period_in_days,
      :current_configuration,
      :current_instance_gpu_info,
      :recommendation_options,
      :last_refresh_timestamp,
      :current_performance_risk,
      :effective_recommendation_preferences,
      :inferred_workload_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:look_back_period_in_days] = 0 unless options.key?(:look_back_period_in_days)
        super
      end
    end

    # <p>Describes a recommendation option for an Auto Scaling group.</p>
    # @!attribute configuration
    #   <p>An array of objects that describe an Auto Scaling group configuration.</p>
    #   @return [Types::AutoScalingGroupConfiguration]
    # @!attribute instance_gpu_info
    #   <p>
    #               Describes the GPU accelerator settings for the recommended instance type of the Auto Scaling group.
    #           </p>
    #   @return [Types::GpuInfo]
    # @!attribute projected_utilization_metrics
    #   <p>An array of objects that describe the projected utilization metrics of the Auto Scaling group recommendation option.</p>
    #            <note>
    #               <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                   utilization metrics returned. Additionally, the <code>Memory</code> metric is
    #                   returned only for resources that have the unified CloudWatch agent installed
    #                   on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory
    #                       Utilization with the CloudWatch Agent</a>.</p>
    #            </note>
    #   @return [Array<Types::UtilizationMetric>]
    # @!attribute performance_risk
    #   <p>The performance risk of the Auto Scaling group configuration
    #               recommendation.</p>
    #            <p>Performance risk indicates the likelihood of the recommended instance type not meeting
    #               the resource needs of your workload. Compute Optimizer calculates an individual
    #               performance risk score for each specification of the recommended instance, including
    #               CPU, memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS, network throughput,
    #               and network PPS.
    #               The performance
    #               risk of the recommended instance is calculated as the maximum performance risk score
    #               across the analyzed resource specifications.</p>
    #            <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
    #               that the recommended resource is predicted to always provide enough hardware capability.
    #               The higher the performance risk is, the more likely you should validate whether the
    #               recommendation will meet the performance requirements of your workload before migrating
    #               your resource.</p>
    #   @return [Float]
    # @!attribute rank
    #   <p>The rank of the Auto Scaling group recommendation option.</p>
    #            <p>The top recommendation option is ranked as <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the Auto Scaling group
    #               recommendation option. Savings opportunity includes the estimated monthly savings amount
    #               and percentage.</p>
    #   @return [Types::SavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>
    #               An object that describes the savings opportunity for the Auto Scaling group recommendation option that includes Savings Plans and Reserved Instances discounts. 
    #               Savings opportunity includes the estimated monthly savings and percentage.
    #           </p>
    #   @return [Types::AutoScalingGroupSavingsOpportunityAfterDiscounts]
    # @!attribute migration_effort
    #   <p>The level of effort required to migrate from the current instance type to the
    #               recommended instance type.</p>
    #            <p>For example, the migration effort is <code>Low</code> if Amazon EMR is the
    #               inferred workload type and an Amazon Web Services Graviton instance type is recommended.
    #               The migration effort is <code>Medium</code> if a workload type couldn't be inferred but
    #               an Amazon Web Services Graviton instance type is recommended. The migration effort is
    #                   <code>VeryLow</code> if both the current and recommended instance types are of the
    #               same CPU architecture.</p>
    #   @return [String]
    class AutoScalingGroupRecommendationOption < Struct.new(
      :configuration,
      :instance_gpu_info,
      :projected_utilization_metrics,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      :migration_effort,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:performance_risk] = 0 unless options.key?(:performance_risk)
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>
    #             Describes the savings opportunity for Auto Scaling group recommendations after applying the Savings Plans and Reserved Instances discounts.
    #         </p>
    #          <p>Savings opportunity represents the estimated monthly savings you can achieve by implementing Compute Optimizer recommendations.</p>
    # @!attribute savings_opportunity_percentage
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost after applying the Savings Plans and Reserved Instances discounts. This saving can be 
    #               achieved by adopting Compute Optimizer’s Auto Scaling group recommendations.
    #           </p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>
    #               An object that describes the estimated monthly savings possible by adopting Compute Optimizer’s Auto Scaling group recommendations. This is based on the 
    #               Savings Plans and Reserved Instances pricing discounts.
    #           </p>
    #   @return [Types::AutoScalingGroupEstimatedMonthlySavings]
    class AutoScalingGroupSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>
    #             Describes the container configurations within the tasks of your Amazon ECS service.
    #         </p>
    # @!attribute container_name
    #   <p>
    #               The name of the container.
    #           </p>
    #   @return [String]
    # @!attribute memory_size_configuration
    #   <p>
    #               The memory size configurations for the container.
    #           </p>
    #   @return [Types::MemorySizeConfiguration]
    # @!attribute cpu
    #   <p>
    #               The number of CPU units reserved for the container.
    #           </p>
    #   @return [Integer]
    class ContainerConfiguration < Struct.new(
      :container_name,
      :memory_size_configuration,
      :cpu,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The CPU and memory recommendations for a container within the tasks of your Amazon ECS service.
    #         </p>
    # @!attribute container_name
    #   <p>
    #               The name of the container.
    #           </p>
    #   @return [String]
    # @!attribute memory_size_configuration
    #   <p>
    #               The recommended memory size configurations for the container.
    #           </p>
    #   @return [Types::MemorySizeConfiguration]
    # @!attribute cpu
    #   <p>
    #               The recommended number of CPU units reserved for the container.
    #           </p>
    #   @return [Integer]
    class ContainerRecommendation < Struct.new(
      :container_name,
      :memory_size_configuration,
      :cpu,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the performance risk ratings for a given resource type.</p>
    #          <p>Resources with a <code>high</code> or <code>medium</code> rating are at risk of not
    #             meeting the performance needs of their workloads, while resources with a
    #                 <code>low</code> rating are performing well in their workloads.</p>
    # @!attribute high
    #   <p>A count of the applicable resource types with a high performance risk rating.</p>
    #   @return [Integer]
    # @!attribute medium
    #   <p>A count of the applicable resource types with a medium performance risk rating.</p>
    #   @return [Integer]
    # @!attribute low
    #   <p>A count of the applicable resource types with a low performance risk rating.</p>
    #   @return [Integer]
    # @!attribute very_low
    #   <p>A count of the applicable resource types with a very low performance risk
    #               rating.</p>
    #   @return [Integer]
    class CurrentPerformanceRiskRatings < Struct.new(
      :high,
      :medium,
      :low,
      :very_low,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:high] = 0 unless options.key?(:high)
        options[:medium] = 0 unless options.key?(:medium)
        options[:low] = 0 unless options.key?(:low)
        options[:very_low] = 0 unless options.key?(:very_low)
        super
      end
    end

    # <p>
    #             Defines the various metric parameters that can be customized, such as threshold and headroom.
    #         </p>
    # @!attribute threshold
    #   <p>
    #               The threshold value used for the specified metric parameter.
    #           </p>
    #            <note>
    #               <p>You can only specify the threshold value for CPU utilization.</p>
    #            </note>
    #   @return [String]
    # @!attribute headroom
    #   <p>
    #               The headroom value in percentage used for the specified metric parameter.
    #           </p>
    #            <p>The following lists the valid values for CPU and memory utilization.</p>
    #            <ul>
    #               <li>
    #                  <p>CPU utilization: <code>PERCENT_30 | PERCENT_20 | PERCENT_0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Memory utilization: <code>PERCENT_30 | PERCENT_20 | PERCENT_10</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CustomizableMetricParameters < Struct.new(
      :threshold,
      :headroom,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The configuration of the recommended RDS storage.
    #         </p>
    # @!attribute storage_type
    #   <p>
    #               The type of DB storage.
    #           </p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>
    #               The size of the DB storage in gigabytes (GB).
    #           </p>
    #   @return [Integer]
    # @!attribute iops
    #   <p>
    #               The provisioned IOPs of the DB storage.
    #           </p>
    #   @return [Integer]
    # @!attribute max_allocated_storage
    #   <p>
    #               The maximum limit in gibibytes (GiB) to which Amazon RDS can automatically scale the storage of the DB instance.
    #           </p>
    #   @return [Integer]
    # @!attribute storage_throughput
    #   <p>
    #               The storage throughput of the DB storage.
    #           </p>
    #   @return [Integer]
    class DBStorageConfiguration < Struct.new(
      :storage_type,
      :allocated_storage,
      :iops,
      :max_allocated_storage,
      :storage_throughput,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allocated_storage] = 0 unless options.key?(:allocated_storage)
        super
      end
    end

    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference to delete.</p>
    #            <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference to delete.</p>
    #            <p>You can delete recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [Types::Scope]
    # @!attribute recommendation_preference_names
    #   <p>The name of the recommendation preference to delete.</p>
    #   @return [Array<String>]
    class DeleteRecommendationPreferencesRequest < Struct.new(
      :resource_type,
      :scope,
      :recommendation_preference_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteRecommendationPreferencesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_ids
    #   <p>The identification numbers of the export jobs to return.</p>
    #            <p>An export job ID is returned when you create an export using the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions.</p>
    #            <p>All export jobs created in the last seven days are returned if this parameter is
    #               omitted.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of export
    #               jobs.</p>
    #   @return [Array<Types::JobFilter>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of export jobs.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of export jobs to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    class DescribeRecommendationExportJobsRequest < Struct.new(
      :job_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_export_jobs
    #   <p>An array of objects that describe recommendation export jobs.</p>
    #   @return [Array<Types::RecommendationExportJob>]
    # @!attribute next_token
    #   <p>The token to use to advance to the next page of export jobs.</p>
    #            <p>This value is null when there are no more pages of export jobs to return.</p>
    #   @return [String]
    class DescribeRecommendationExportJobsResponse < Struct.new(
      :recommendation_export_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the effective recommendation preferences for Amazon EBS volumes.
    #         </p>
    # @!attribute savings_estimation_mode
    #   <p>
    #               Describes the savings estimation mode preference applied for calculating savings opportunity for Amazon EBS volumes.
    #           </p>
    #   @return [Types::EBSSavingsEstimationMode]
    class EBSEffectiveRecommendationPreferences < Struct.new(
      :savings_estimation_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             An object that describes the estimated monthly savings possible by adopting Compute Optimizer’s Amazon EBS volume 
    #             recommendations. This includes any applicable discounts.
    #         </p>
    # @!attribute currency
    #   <p>
    #               The currency of the estimated monthly savings.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the estimated monthly savings.
    #           </p>
    #   @return [Float]
    class EBSEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes a filter that returns a more specific list of Amazon Elastic Block Store
    #                 (Amazon EBS) volume recommendations. Use this filter with the <a>GetEBSVolumeRecommendations</a> action.</p>
    #          <p>You can use <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, <code>JobFilter</code> with the
    #                 <a>DescribeRecommendationExportJobs</a> action, and <code>Filter</code>
    #             with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #            <p>Specify <code>Finding</code> to return recommendations with a specific finding
    #               classification (for example, <code>NotOptimized</code>).</p>
    #            <p>You can filter your Amazon EBS volume recommendations by <code>tag:key</code> 
    #               and <code>tag-key</code> tags.</p>
    #            <p>A <code>tag:key</code> is a key and value combination of a tag assigned to your 
    #               Amazon EBS volume recommendations. Use the tag key in the filter name and the tag value 
    #               as the filter value. For example, to find all Amazon EBS volume recommendations that have 
    #               a tag with the key of <code>Owner</code> and the value of <code>TeamA</code>, 
    #               specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    #            <p>A <code>tag-key</code> is the key of a tag assigned to your Amazon EBS volume recommendations. Use 
    #               this filter to find all of your Amazon EBS volume recommendations that have a tag with a 
    #               specific key. This doesn’t consider the tag value. For example, you can find 
    #               your Amazon EBS volume recommendations with a tag key value of <code>Owner</code> or without any tag 
    #               keys assigned.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value of the filter.</p>
    #            <p>The valid values are <code>Optimized</code>, or <code>NotOptimized</code>.</p>
    #   @return [Array<String>]
    class EBSFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the savings estimation mode used for calculating savings opportunity for Amazon EBS volumes.
    #         </p>
    # @!attribute source
    #   <p>
    #               Describes the source for calculating the savings opportunity for Amazon EBS volumes.
    #           </p>
    #   @return [String]
    class EBSSavingsEstimationMode < Struct.new(
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the savings opportunity for Amazon EBS volume recommendations after applying specific discounts.
    #         </p>
    # @!attribute savings_opportunity_percentage
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost after applying the specific discounts. 
    #               This saving can be achieved by adopting Compute Optimizer’s Amazon EBS volume recommendations.
    #           </p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost by adopting Compute Optimizer’s Amazon EBS volume 
    #               recommendations. This saving includes any applicable discounts.
    #           </p>
    #   @return [Types::EBSEstimatedMonthlySavings]
    class EBSSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>Describes a utilization metric of an Amazon Elastic Block Store (Amazon EBS)
    #             volume.</p>
    #          <p>Compare the utilization metric data of your resource against its projected utilization
    #             metric data to determine the performance difference between your current resource and
    #             the recommended option.</p>
    # @!attribute name
    #   <p>The name of the utilization metric.</p>
    #            <p>The following utilization metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VolumeReadOpsPerSecond</code> - The completed read operations per second
    #                       from the volume in a specified period of time.</p>
    #                  <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeWriteOpsPerSecond</code> - The completed write operations per
    #                       second to the volume in a specified period of time.</p>
    #                  <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeReadBytesPerSecond</code> - The bytes read per second from the
    #                       volume in a specified period of time.</p>
    #                  <p>Unit: Bytes</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeWriteBytesPerSecond</code> - The bytes written to the volume in a
    #                       specified period of time.</p>
    #                  <p>Unit: Bytes</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic of the utilization metric.</p>
    #            <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #            <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #                   <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #                   <code>SampleCount</code> during the specified period. For more information, see
    #                   <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #               Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the utilization metric.</p>
    #   @return [Float]
    class EBSUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             Describes the effective recommendation preferences for Amazon ECS services.
    #         </p>
    # @!attribute savings_estimation_mode
    #   <p>
    #               Describes the savings estimation mode preference applied for calculating savings opportunity for Amazon ECS services.
    #           </p>
    #   @return [Types::ECSSavingsEstimationMode]
    class ECSEffectiveRecommendationPreferences < Struct.new(
      :savings_estimation_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the estimated monthly savings possible for Amazon ECS services by adopting Compute Optimizer recommendations. 
    #             This is based on Amazon ECS service pricing after applying Savings Plans discounts.
    #         </p>
    # @!attribute currency
    #   <p>
    #               The currency of the estimated monthly savings.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the estimated monthly savings for Amazon ECS services.
    #           </p>
    #   @return [Float]
    class ECSEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             Describes the savings estimation mode used for calculating savings opportunity for Amazon ECS services.
    #         </p>
    # @!attribute source
    #   <p>
    #               Describes the source for calculating the savings opportunity for Amazon ECS services.
    #           </p>
    #   @return [String]
    class ECSSavingsEstimationMode < Struct.new(
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the savings opportunity for Amazon ECS service recommendations after applying Savings Plans discounts.
    #         </p>
    #          <p>Savings opportunity represents the estimated monthly savings after applying Savings Plans discounts. 
    #             You can achieve this by implementing a given Compute Optimizer recommendation.</p>
    # @!attribute savings_opportunity_percentage
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost by adopting Compute Optimizer’s 
    #               Amazon ECS service recommendations. This includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>
    #               The estimated monthly savings possible by adopting Compute Optimizer’s Amazon ECS service recommendations. 
    #               This includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Types::ECSEstimatedMonthlySavings]
    class ECSSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>
    #             Describes the projected metrics of an Amazon ECS service recommendation option.
    #         </p>
    #          <p>To determine the performance difference between your current Amazon ECS service and the recommended option, 
    #             compare the metric data of your service against its projected metric data.</p>
    # @!attribute name
    #   <p>
    #               The name of the projected metric.
    #           </p>
    #            <p>The following metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cpu</code> — The percentage of allocated compute units 
    #                       that are currently in use on the service tasks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memory</code> — The percentage of memory that's 
    #                       currently in use on the service tasks.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute timestamps
    #   <p>
    #               The timestamps of the projected metric.
    #           </p>
    #   @return [Array<Time>]
    # @!attribute upper_bound_values
    #   <p>
    #               The upper bound values for the projected metric.
    #           </p>
    #   @return [Array<Float>]
    # @!attribute lower_bound_values
    #   <p>
    #               The lower bound values for the projected metric.
    #           </p>
    #   @return [Array<Float>]
    class ECSServiceProjectedMetric < Struct.new(
      :name,
      :timestamps,
      :upper_bound_values,
      :lower_bound_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the projected utilization metrics of an Amazon ECS service recommendation option.
    #         </p>
    #          <p>To determine the performance difference between your current Amazon ECS service and the recommended option, 
    #             compare the utilization metric data of your service against its projected utilization metric data.</p>
    # @!attribute name
    #   <p>
    #               The name of the projected utilization metric.
    #           </p>
    #            <p>The following utilization metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cpu</code> — The percentage of allocated compute units 
    #                       that are currently in use on the service tasks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memory</code> — The percentage of memory that's 
    #                       currently in use on the service tasks.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic of the projected utilization metric.</p>
    #            <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #            <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #               <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #               <code>SampleCount</code> during the specified period. For more information, see
    #               <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #                       Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #   @return [String]
    # @!attribute lower_bound_value
    #   <p>
    #               The lower bound values for the projected utilization metrics.
    #           </p>
    #   @return [Float]
    # @!attribute upper_bound_value
    #   <p>
    #               The upper bound values for the projected utilization metrics.
    #           </p>
    #   @return [Float]
    class ECSServiceProjectedUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :lower_bound_value,
      :upper_bound_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:lower_bound_value] = 0 unless options.key?(:lower_bound_value)
        options[:upper_bound_value] = 0 unless options.key?(:upper_bound_value)
        super
      end
    end

    # <p>
    #             Describes an Amazon ECS service recommendation.
    #         </p>
    # @!attribute service_arn
    #   <p>
    #               The Amazon Resource Name (ARN) of the current Amazon ECS service.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code>
    #            </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>
    #               The Amazon Web Services account ID of the Amazon ECS service.
    #           </p>
    #   @return [String]
    # @!attribute current_service_configuration
    #   <p>
    #               The configuration of the current Amazon ECS service.
    #           </p>
    #   @return [Types::ServiceConfiguration]
    # @!attribute utilization_metrics
    #   <p>
    #               An array of objects that describe the utilization metrics of the Amazon ECS service.
    #           </p>
    #   @return [Array<Types::ECSServiceUtilizationMetric>]
    # @!attribute lookback_period_in_days
    #   <p>
    #               The number of days the Amazon ECS service utilization metrics were analyzed.
    #           </p>
    #   @return [Float]
    # @!attribute launch_type
    #   <p>
    #               The launch type the Amazon ECS service is using. 
    #           </p>
    #            <note>
    #               <p>Compute Optimizer only supports the Fargate launch type.</p>
    #            </note>
    #   @return [String]
    # @!attribute last_refresh_timestamp
    #   <p>
    #               The timestamp of when the Amazon ECS service recommendation was last generated.
    #           </p>
    #   @return [Time]
    # @!attribute finding
    #   <p>
    #               The finding classification of an Amazon ECS service.
    #           </p>
    #            <p>Findings for Amazon ECS services include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Underprovisioned</code>
    #                     </b> — 
    #                       When Compute Optimizer detects that there’s not enough memory or CPU, an Amazon ECS 
    #                       service is considered under-provisioned. An under-provisioned service might 
    #                       result in poor application performance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Overprovisioned</code>
    #                     </b> — 
    #                       When Compute Optimizer detects that there’s excessive memory or CPU, an Amazon ECS 
    #                       service is considered over-provisioned. An over-provisioned service might 
    #                       result in additional infrastructure costs. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b> — 
    #                       When both the CPU and memory of your Amazon ECS service meet the performance requirements 
    #                       of your workload, the service is considered optimized.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute finding_reason_codes
    #   <p>
    #               The reason for the finding classification of an Amazon ECS service.
    #           </p>
    #            <p>Finding reason codes for Amazon ECS services include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUUnderprovisioned</code>
    #                     </b> — 
    #                       The service CPU configuration can be sized up to enhance the performance of 
    #                       your workload. This is identified by analyzing the <code>CPUUtilization</code> metric of the 
    #                       current service during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUOverprovisioned</code>
    #                     </b> — 
    #                       The service CPU configuration can be sized down while still meeting the performance
    #                       requirements of your workload. This is identified by analyzing the <code>CPUUtilization</code> 
    #                       metric of the current service during the look-back period. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MemoryUnderprovisioned</code>
    #                     </b> — 
    #                       The service memory configuration  can be sized up to enhance the performance of 
    #                       your workload. This is identified by analyzing the <code>MemoryUtilization</code> metric of the 
    #                       current service during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MemoryOverprovisioned</code>
    #                     </b> — 
    #                       The service memory configuration can be sized down while still meeting the 
    #                       performance requirements of your workload. This is identified by analyzing the 
    #                       <code>MemoryUtilization</code> metric of the current service during the look-back period.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute service_recommendation_options
    #   <p>
    #               An array of objects that describe the recommendation options for the Amazon ECS service.
    #           </p>
    #   @return [Array<Types::ECSServiceRecommendationOption>]
    # @!attribute current_performance_risk
    #   <p>
    #               The risk of the current Amazon ECS service not meeting the performance needs of its workloads. 
    #               The higher the risk, the more likely the current service can't meet the performance 
    #               requirements of its workload.
    #           </p>
    #   @return [String]
    # @!attribute effective_recommendation_preferences
    #   <p>
    #               Describes the effective recommendation preferences for Amazon ECS services.
    #           </p>
    #   @return [Types::ECSEffectiveRecommendationPreferences]
    # @!attribute tags
    #   <p>
    #               A list of tags assigned to your Amazon ECS service recommendations.
    #           </p>
    #   @return [Array<Types::Tag>]
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
      :effective_recommendation_preferences,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:lookback_period_in_days] = 0 unless options.key?(:lookback_period_in_days)
        super
      end
    end

    # <p>
    #             Describes a filter that returns a more specific list of Amazon ECS service 
    #             recommendations. Use this filter with the <a>GetECSServiceRecommendations</a> action.
    #         </p>
    # @!attribute name
    #   <p>
    #               The name of the filter.
    #           </p>
    #            <p>
    #               Specify <code>Finding</code> to return recommendations with a specific finding classification.
    #           </p>
    #            <p>
    #               Specify <code>FindingReasonCode</code> to return recommendations with a specific finding reason code.
    #           </p>
    #            <p>You can filter your Amazon ECS service recommendations by <code>tag:key</code> 
    #               and <code>tag-key</code> tags.</p>
    #            <p>A <code>tag:key</code> is a key and value combination of a tag assigned to your 
    #               Amazon ECS service recommendations. Use the tag key in the filter name and the tag value 
    #               as the filter value. For example, to find all Amazon ECS service recommendations that have 
    #               a tag with the key of <code>Owner</code> and the value of <code>TeamA</code>, 
    #               specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    #            <p>A <code>tag-key</code> is the key of a tag assigned to your Amazon ECS service recommendations. Use 
    #               this filter to find all of your Amazon ECS service recommendations that have a tag with a 
    #               specific key. This doesn’t consider the tag value. For example, you can find 
    #               your Amazon ECS service recommendations with a tag key value of <code>Owner</code> or without any tag 
    #               keys assigned.</p>
    #   @return [String]
    # @!attribute values
    #   <p>
    #               The value of the filter.
    #           </p>
    #            <p>The valid values for this parameter are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify the <code>name</code> parameter as <code>Finding</code>, specify
    #                       <code>Optimized</code>, <code>Underprovisioned</code>, or <code>Overprovisioned</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify the <code>name</code> parameter as <code>FindingReasonCode</code>, specify
    #                       <code>CPUUnderprovisioned</code>, <code>CPUOverprovisioned</code>, 
    #                       <code>MemoryUnderprovisioned</code>, or <code>MemoryOverprovisioned</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class ECSServiceRecommendationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the recommendation options for an Amazon ECS service.
    #         </p>
    # @!attribute memory
    #   <p>
    #               The memory size of the Amazon ECS service recommendation option.
    #           </p>
    #   @return [Integer]
    # @!attribute cpu
    #   <p>
    #               The CPU size of the Amazon ECS service recommendation option.
    #           </p>
    #   @return [Integer]
    # @!attribute savings_opportunity
    #   <p>Describes the savings opportunity for recommendations of a given resource type or for
    #               the recommendation option of an individual resource.</p>
    #            <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #               implementing a given Compute Optimizer recommendation.</p>
    #            <important>
    #               <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                   activate <b>Receive Amazon EC2 resource
    #                       recommendations</b> in the Cost Explorer preferences page. That
    #                   creates a connection between Cost Explorer and Compute Optimizer. With this
    #                   connection, Cost Explorer generates savings estimates considering the price of
    #                   existing resources, the price of recommended resources, and historical usage data.
    #                   Estimated monthly savings reflects the projected dollar savings associated with each
    #                   of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                       with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                       Guide</i>.</p>
    #            </important>
    #   @return [Types::SavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>
    #               Describes the savings opportunity for Amazon ECS service recommendations or for the recommendation option.
    #           </p>
    #            <p>Savings opportunity represents the estimated monthly savings after applying Savings Plans discounts. 
    #               You can achieve this by implementing a given Compute Optimizer recommendation.</p>
    #   @return [Types::ECSSavingsOpportunityAfterDiscounts]
    # @!attribute projected_utilization_metrics
    #   <p>
    #               An array of objects that describe the projected utilization metrics of the Amazon ECS service recommendation option.
    #           </p>
    #   @return [Array<Types::ECSServiceProjectedUtilizationMetric>]
    # @!attribute container_recommendations
    #   <p>
    #               The CPU and memory size recommendations for the containers within the task of your Amazon ECS service.
    #           </p>
    #   @return [Array<Types::ContainerRecommendation>]
    class ECSServiceRecommendationOption < Struct.new(
      :memory,
      :cpu,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      :projected_utilization_metrics,
      :container_recommendations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the projected metrics of an Amazon ECS service recommendation option.
    #         </p>
    #          <p>To determine the performance difference between your current Amazon ECS service and the recommended option, 
    #             compare the metric data of your service against its projected metric data.</p>
    # @!attribute recommended_cpu_units
    #   <p>
    #               The recommended CPU size for the Amazon ECS service.
    #           </p>
    #   @return [Integer]
    # @!attribute recommended_memory_size
    #   <p>
    #               The recommended memory size for the Amazon ECS service.
    #           </p>
    #   @return [Integer]
    # @!attribute projected_metrics
    #   <p>
    #               An array of objects that describe the projected metric.
    #           </p>
    #   @return [Array<Types::ECSServiceProjectedMetric>]
    class ECSServiceRecommendedOptionProjectedMetric < Struct.new(
      :recommended_cpu_units,
      :recommended_memory_size,
      :projected_metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:recommended_cpu_units] = 0 unless options.key?(:recommended_cpu_units)
        options[:recommended_memory_size] = 0 unless options.key?(:recommended_memory_size)
        super
      end
    end

    # <p>
    #             Describes the utilization metric of an Amazon ECS service.
    #         </p>
    #          <p>To determine the performance difference between your current Amazon ECS service and the recommended option, 
    #             compare the utilization metric data of your service against its projected utilization metric data.</p>
    # @!attribute name
    #   <p>
    #               The name of the utilization metric.
    #           </p>
    #            <p>The following utilization metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cpu</code> — The amount of CPU capacity that's used in the service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memory</code> — The amount of memory that's used in the service.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic of the utilization metric.</p>
    #            <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #            <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #               <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #               <code>SampleCount</code> during the specified period. For more information, see
    #               <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #                       Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the utilization metric.
    #           </p>
    #   @return [Float]
    class ECSServiceUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             Describes the effective preferred resources that Compute Optimizer considers as rightsizing recommendation candidates.
    #         </p>
    #          <note>
    #             <p>Compute Optimizer only supports Amazon EC2 instance types.</p>
    #          </note>
    # @!attribute name
    #   <p>
    #               The name of the preferred resource list.
    #           </p>
    #   @return [String]
    # @!attribute include_list
    #   <p>
    #               The list of preferred resource values that you want considered as rightsizing recommendation candidates.
    #           </p>
    #   @return [Array<String>]
    # @!attribute effective_include_list
    #   <p>
    #               The expanded version of your preferred resource's include list.
    #           </p>
    #   @return [Array<String>]
    # @!attribute exclude_list
    #   <p>
    #               The list of preferred resources values that you want excluded from rightsizing recommendation candidates.
    #           </p>
    #   @return [Array<String>]
    class EffectivePreferredResource < Struct.new(
      :name,
      :include_list,
      :effective_include_list,
      :exclude_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the effective recommendation preferences for a resource.</p>
    # @!attribute cpu_vendor_architectures
    #   <p>Describes the CPU vendor and architecture for an instance or Auto Scaling group
    #               recommendations.</p>
    #            <p>For example, when you specify <code>AWS_ARM64</code> with:</p>
    #            <ul>
    #               <li>
    #                  <p>A <a>GetEC2InstanceRecommendations</a> or <a>GetAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       returns recommendations that consist of Graviton instance types only.</p>
    #               </li>
    #               <li>
    #                  <p>A <a>GetEC2RecommendationProjectedMetrics</a> request, Compute Optimizer returns projected utilization metrics for Graviton instance type
    #                       recommendations only.</p>
    #               </li>
    #               <li>
    #                  <p>A <a>ExportEC2InstanceRecommendations</a> or <a>ExportAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       exports recommendations that consist of Graviton instance types only.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute enhanced_infrastructure_metrics
    #   <p>Describes the activation status of the enhanced infrastructure metrics
    #               preference.</p>
    #            <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute inferred_workload_types
    #   <p>Describes the activation status of the inferred workload types preference.</p>
    #            <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh. A status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #   @return [String]
    # @!attribute external_metrics_preference
    #   <p> An object that describes the external metrics recommendation preference. </p>
    #            <p> If the preference is applied in the latest recommendation refresh, an object with a
    #               valid <code>source</code> value appears in the response. If the preference isn't applied
    #               to the recommendations already, then this object doesn't appear in the response. </p>
    #   @return [Types::ExternalMetricsPreference]
    # @!attribute look_back_period
    #   <p>
    #               The number of days the utilization metrics of the Amazon Web Services resource are analyzed.
    #           </p>
    #   @return [String]
    # @!attribute utilization_preferences
    #   <p>
    #               The resource’s CPU and memory utilization preferences, such as threshold and headroom, that 
    #               are used to generate rightsizing recommendations. 
    #           </p>
    #            <note>
    #               <p>This preference is only available for the Amazon EC2 instance resource type.</p>
    #            </note>
    #   @return [Array<Types::UtilizationPreference>]
    # @!attribute preferred_resources
    #   <p>
    #               The resource type values that are considered as candidates when generating rightsizing recommendations.
    #           </p>
    #   @return [Array<Types::EffectivePreferredResource>]
    # @!attribute savings_estimation_mode
    #   <p>
    #               Describes the savings estimation mode applied for calculating savings opportunity for a resource.
    #           </p>
    #   @return [Types::InstanceSavingsEstimationMode]
    class EffectiveRecommendationPreferences < Struct.new(
      :cpu_vendor_architectures,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      :external_metrics_preference,
      :look_back_period,
      :utilization_preferences,
      :preferred_resources,
      :savings_estimation_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter that returns a more specific list of account enrollment statuses.
    #             Use this filter with the <a>GetEnrollmentStatusesForOrganization</a>
    #             action.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #            <p>Specify <code>Status</code> to return accounts with a specific enrollment status (for
    #               example, <code>Active</code>).</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value of the filter.</p>
    #            <p>The valid values are <code>Active</code>, <code>Inactive</code>, <code>Pending</code>,
    #               and <code>Failed</code>.</p>
    #   @return [Array<String>]
    class EnrollmentFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the estimated monthly savings amount possible, based on On-Demand instance
    #             pricing, by adopting Compute Optimizer recommendations for a given resource.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/view-ec2-recommendations.html#ec2-savings-calculation">Estimated monthly savings and savings opportunities</a> in the
    #                     <i>Compute Optimizer User Guide</i>.</p>
    # @!attribute currency
    #   <p>The currency of the estimated monthly
    #               savings.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the estimated monthly savings.</p>
    #   @return [Float]
    class EstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Auto Scaling group
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Auto Scaling group recommendations.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #   @return [Boolean]
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to export.</p>
    #   @return [Types::RecommendationPreferences]
    class ExportAutoScalingGroupRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #            <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>An object that describes the destination Amazon S3 bucket of a recommendations
    #               export file.</p>
    #   @return [Types::S3Destination]
    class ExportAutoScalingGroupRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination of the recommendations export and metadata files.</p>
    # @!attribute s3
    #   <p>An object that describes the destination Amazon Simple Storage Service (Amazon S3)
    #               bucket name and object keys of a recommendations export file, and its associated
    #               metadata file.</p>
    #   @return [Types::S3Destination]
    class ExportDestination < Struct.new(
      :s3,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Amazon EBS
    #               volume recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Amazon EBS volume recommendations.</p>
    #   @return [Array<Types::EBSFilter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #   @return [Boolean]
    class ExportEBSVolumeRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #            <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #   @return [Types::S3Destination]
    class ExportEBSVolumeRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export instance
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of instance
    #               recommendations.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it.
    #               If you plan to
    #               specify an object prefix when you create the export job, you must include the object
    #               prefix in the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #   @return [Boolean]
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to export.</p>
    #   @return [Types::RecommendationPreferences]
    class ExportEC2InstanceRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #            <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>An object that describes the destination Amazon S3 bucket of a recommendations
    #               export file.</p>
    #   @return [Types::S3Destination]
    class ExportEC2InstanceRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>
    #               The Amazon Web Services account IDs for the export Amazon ECS service recommendations.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to specify the member account you want to 
    #               export recommendations to.</p>
    #            <p>This parameter can't be specified together with the include member accounts 
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter or the include member accounts parameter is omitted,
    #               the recommendations for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>
    #               An array of objects to specify a filter that exports a more specific set 
    #               of Amazon ECS service recommendations.
    #           </p>
    #   @return [Array<Types::ECSServiceRecommendationFilter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>
    #               The format of the export file. 
    #           </p>
    #            <p>The CSV file is the only export file format currently supported.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>If your account is the management account or the delegated administrator of an organization,
    #               this parameter indicates whether to include recommendations for resources in all member accounts of
    #               the organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the 
    #               organization aren't included in the export file.</p>
    #            <p>If this parameter or the account ID parameter is omitted, recommendations for 
    #               member accounts aren't included in the export.</p>
    #   @return [Boolean]
    class ExportECSServiceRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #               The identification number of the export job.
    #           </p>
    #            <p>To view the status of an export job, use the 
    #               <a>DescribeRecommendationExportJobs</a> action and specify the job ID.
    #           </p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #   @return [Types::S3Destination]
    class ExportECSServiceRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>
    #               The Amazon Web Services account IDs for the export idle resource recommendations.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to specify the member account you want to 
    #               export recommendations to.</p>
    #            <p>This parameter can't be specified together with the include member accounts 
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter or the include member accounts parameter is omitted,
    #               the recommendations for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of idle resource recommendations.</p>
    #   @return [Array<Types::IdleRecommendationFilter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>The format of the export file. The CSV file is the only export file format currently supported.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>If your account is the management account or the delegated administrator of an organization,
    #               this parameter indicates whether to include recommendations for resources in all member accounts of
    #               the organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the 
    #               organization aren't included in the export file.</p>
    #            <p>If this parameter or the account ID parameter is omitted, recommendations for 
    #               member accounts aren't included in the export.</p>
    #   @return [Boolean]
    class ExportIdleRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #               The identification number of the export job.
    #           </p>
    #            <p>To view the status of an export job, use the 
    #               <a>DescribeRecommendationExportJobs</a> action and specify the job ID.
    #           </p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #   @return [Types::S3Destination]
    class ExportIdleRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Lambda
    #               function recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Lambda function recommendations.</p>
    #   @return [Array<Types::LambdaFunctionRecommendationFilter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #   @return [Boolean]
    class ExportLambdaFunctionRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #            <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #   @return [Types::S3Destination]
    class ExportLambdaFunctionRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export license
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter can't be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter is omitted, recommendations 
    #               for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>
    #               An array of objects to specify a filter that exports a more specific set of license recommendations.
    #           </p>
    #   @return [Array<Types::LicenseRecommendationFilter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #            <p>A CSV file is the only export format currently supported.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the organization 
    #               aren't included in the export file .</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #   @return [Boolean]
    class ExportLicenseRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #               The identification number of the export job.
    #           </p>
    #            <p>To view the status of an export job, use the <a>DescribeRecommendationExportJobs</a> 
    #               action and specify the job ID.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #   @return [Types::S3Destination]
    class ExportLicenseRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>
    #               The Amazon Web Services account IDs for the export Amazon Aurora and RDS database recommendations.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to specify the member account you want to 
    #               export recommendations to.</p>
    #            <p>This parameter can't be specified together with the include member accounts 
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter or the include member accounts parameter is omitted,
    #               the recommendations for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>
    #               An array of objects to specify a filter that exports a more specific set of 
    #               Amazon Aurora and RDS recommendations.
    #           </p>
    #   @return [Array<Types::RDSDBRecommendationFilter>]
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute file_format
    #   <p>
    #               The format of the export file. 
    #           </p>
    #            <p>The CSV file is the only export file format currently supported.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>If your account is the management account or the delegated administrator of an organization,
    #               this parameter indicates whether to include recommendations for resources in all member accounts of
    #               the organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the 
    #               organization aren't included in the export file.</p>
    #            <p>If this parameter or the account ID parameter is omitted, recommendations for 
    #               member accounts aren't included in the export.</p>
    #   @return [Boolean]
    # @!attribute recommendation_preferences
    #   <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, <a>GetEC2RecommendationProjectedMetrics</a>, <a>GetRDSDatabaseRecommendations</a>, and <a>GetRDSDatabaseRecommendationProjectedMetrics</a> request.</p>
    #   @return [Types::RecommendationPreferences]
    class ExportRDSDatabaseRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #               The identification number of the export job.
    #           </p>
    #            <p>To view the status of an export job, use the 
    #               <a>DescribeRecommendationExportJobs</a> action and specify the job ID.
    #           </p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #   @return [Types::S3Destination]
    class ExportRDSDatabaseRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes Compute Optimizer's integration status with your chosen external metric provider. For example, Datadog.
    #         </p>
    # @!attribute status_code
    #   <p>
    #               The status code for Compute Optimizer's integration with an external metrics provider.
    #           </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>
    #               The reason for Compute Optimizer's integration status with your external metric provider.
    #           </p>
    #   @return [String]
    class ExternalMetricStatus < Struct.new(
      :status_code,
      :status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Describes the external metrics preferences for EC2 rightsizing recommendations.
    #         </p>
    # @!attribute source
    #   <p> Contains the source options for external metrics preferences. </p>
    #   @return [String]
    class ExternalMetricsPreference < Struct.new(
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter that returns a more specific list of recommendations. Use this
    #             filter with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    #          <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action,
    #                 <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, and <code>JobFilter</code> with
    #             the <a>DescribeRecommendationExportJobs</a> action.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #            <p>Specify <code>Finding</code> to return recommendations with a specific finding
    #               classification. For example, <code>Underprovisioned</code>.</p>
    #            <p>Specify <code>RecommendationSourceType</code> to return recommendations of a specific
    #               resource type. For example, <code>Ec2Instance</code>.</p>
    #            <p>Specify <code>FindingReasonCodes</code> to return recommendations with a specific
    #               finding reason code. For example, <code>CPUUnderprovisioned</code>.</p>
    #            <p>Specify <code>InferredWorkloadTypes</code> to return recommendations of a specific
    #               inferred workload. For example, <code>Redis</code>.</p>
    #            <p>You can filter your EC2 instance recommendations by <code>tag:key</code> and <code>tag-key</code> tags.</p>
    #            <p>A <code>tag:key</code> is a key and value combination of a tag assigned to your 
    #               recommendations. Use the tag key in the filter name and the tag value 
    #               as the filter value. For example, to find all recommendations that have 
    #               a tag with the key of <code>Owner</code> and the value of <code>TeamA</code>, 
    #               specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    #            <p>A <code>tag-key</code> is the key of a tag assigned to your recommendations. Use 
    #               this filter to find all of your recommendations that have a tag with a 
    #               specific key. This doesn’t consider the tag value. For example, you can find 
    #               your recommendations with a tag key value of <code>Owner</code> or without any tag 
    #               keys assigned.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value of the filter.</p>
    #            <p>The valid values for this parameter are as follows, depending on what you specify for
    #               the <code>name</code> parameter and the resource type that you wish to filter results
    #               for:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify <code>Optimized</code> or <code>NotOptimized</code> if you specify the
    #                           <code>name</code> parameter as <code>Finding</code> and you want to filter
    #                       results for Auto Scaling groups.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>Underprovisioned</code>, <code>Overprovisioned</code>, or
    #                           <code>Optimized</code> if you specify the <code>name</code> parameter as
    #                           <code>Finding</code> and you want to filter results for EC2
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>Ec2Instance</code> or <code>AutoScalingGroup</code> if you
    #                       specify the <code>name</code> parameter as
    #                       <code>RecommendationSourceType</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify one of the following options if you specify the <code>name</code>
    #                       parameter as <code>FindingReasonCodes</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>CPUOverprovisioned</code>
    #                           </b> — The
    #                               instance’s CPU configuration can be sized down while still meeting the
    #                               performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>CPUUnderprovisioned</code>
    #                           </b> —
    #                               The instance’s CPU configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better CPU performance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>MemoryOverprovisioned</code>
    #                           </b> —
    #                               The instance’s memory configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>MemoryUnderprovisioned</code>
    #                           </b> —
    #                               The instance’s memory configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better memory performance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>EBSThroughputOverprovisioned</code>
    #                           </b> — The
    #                               instance’s EBS throughput configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>EBSThroughputUnderprovisioned</code>
    #                           </b> — The
    #                               instance’s EBS throughput configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better EBS throughput performance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>EBSIOPSOverprovisioned</code>
    #                           </b> —
    #                               The instance’s EBS IOPS configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>EBSIOPSUnderprovisioned</code>
    #                           </b>
    #                               — The instance’s EBS IOPS configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better EBS IOPS performance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>NetworkBandwidthOverprovisioned</code>
    #                           </b> — The
    #                               instance’s network bandwidth configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>NetworkBandwidthUnderprovisioned</code>
    #                           </b> — The
    #                               instance’s network bandwidth configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better network bandwidth performance. This finding reason
    #                               happens when the <code>NetworkIn</code> or <code>NetworkOut</code>
    #                               performance of an instance is impacted.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>NetworkPPSOverprovisioned</code>
    #                           </b> — The instance’s
    #                               network PPS (packets per second) configuration can be sized down while
    #                               still meeting the performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>NetworkPPSUnderprovisioned</code>
    #                           </b> — The instance’s
    #                               network PPS (packets per second) configuration doesn't meet the
    #                               performance requirements of your workload and there is an alternative
    #                               instance type that provides better network PPS performance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>DiskIOPSOverprovisioned</code>
    #                           </b>
    #                               — The instance’s disk IOPS configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>DiskIOPSUnderprovisioned</code>
    #                           </b>
    #                               — The instance’s disk IOPS configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better disk IOPS performance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>DiskThroughputOverprovisioned</code>
    #                           </b> — The
    #                               instance’s disk throughput configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>
    #                              <code>DiskThroughputUnderprovisioned</code>
    #                           </b> — The
    #                               instance’s disk throughput configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better disk throughput performance.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return Auto Scaling group
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return Auto Scaling group
    #               recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_arns
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling groups for which to return
    #               recommendations.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of Auto Scaling group
    #               recommendations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Auto Scaling group recommendations to return with a single
    #               request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of Auto Scaling group recommendations.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to return in the response.</p>
    #   @return [Types::RecommendationPreferences]
    class GetAutoScalingGroupRecommendationsRequest < Struct.new(
      :account_ids,
      :auto_scaling_group_arns,
      :next_token,
      :max_results,
      :filters,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of Auto Scaling group
    #               recommendations.</p>
    #            <p>This value is null when there are no more pages of Auto Scaling group
    #               recommendations to return.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_recommendations
    #   <p>An array of objects that describe Auto Scaling group recommendations.</p>
    #   @return [Array<Types::AutoScalingGroupRecommendation>]
    # @!attribute errors
    #   <p>An array of objects that describe errors of the request.</p>
    #            <p>For example, an error is returned if you request recommendations for an unsupported
    #                   Auto Scaling group.</p>
    #   @return [Array<Types::GetRecommendationError>]
    class GetAutoScalingGroupRecommendationsResponse < Struct.new(
      :next_token,
      :auto_scaling_group_recommendations,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_arns
    #   <p>The Amazon Resource Name (ARN) of the volumes for which to return
    #               recommendations.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of volume recommendations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of volume recommendations to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of volume
    #               recommendations.</p>
    #   @return [Array<Types::EBSFilter>]
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return volume
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return volume recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    #   @return [Array<String>]
    class GetEBSVolumeRecommendationsRequest < Struct.new(
      :volume_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of volume recommendations.</p>
    #            <p>This value is null when there are no more pages of volume recommendations to
    #               return.</p>
    #   @return [String]
    # @!attribute volume_recommendations
    #   <p>An array of objects that describe volume recommendations.</p>
    #   @return [Array<Types::VolumeRecommendation>]
    # @!attribute errors
    #   <p>An array of objects that describe errors of the request.</p>
    #            <p>For example, an error is returned if you request recommendations for an unsupported
    #               volume.</p>
    #   @return [Array<Types::GetRecommendationError>]
    class GetEBSVolumeRecommendationsResponse < Struct.new(
      :next_token,
      :volume_recommendations,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_arns
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return
    #               recommendations.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of instance recommendations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of instance recommendations to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of instance
    #               recommendations.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return instance
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return instance recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    #   @return [Array<String>]
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to return in the response.</p>
    #   @return [Types::RecommendationPreferences]
    class GetEC2InstanceRecommendationsRequest < Struct.new(
      :instance_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of instance recommendations.</p>
    #            <p>This value is null when there are no more pages of instance recommendations to
    #               return.</p>
    #   @return [String]
    # @!attribute instance_recommendations
    #   <p>An array of objects that describe instance recommendations.</p>
    #   @return [Array<Types::InstanceRecommendation>]
    # @!attribute errors
    #   <p>An array of objects that describe errors of the request.</p>
    #            <p>For example, an error is returned if you request recommendations for an instance of an
    #               unsupported instance family.</p>
    #   @return [Array<Types::GetRecommendationError>]
    class GetEC2InstanceRecommendationsResponse < Struct.new(
      :next_token,
      :instance_recommendations,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return recommendation
    #               projected metrics.</p>
    #   @return [String]
    # @!attribute stat
    #   <p>The statistic of the projected metrics.</p>
    #   @return [String]
    # @!attribute period
    #   <p>The granularity, in seconds, of the projected metrics data points.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The timestamp of the first projected metrics data point to return.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp of the last projected metrics data point to return.</p>
    #   @return [Time]
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 recommendation
    #               projected metrics to return in the response.</p>
    #   @return [Types::RecommendationPreferences]
    class GetEC2RecommendationProjectedMetricsRequest < Struct.new(
      :instance_arn,
      :stat,
      :period,
      :start_time,
      :end_time,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_option_projected_metrics
    #   <p>An array of objects that describes projected metrics.</p>
    #   @return [Array<Types::RecommendedOptionProjectedMetric>]
    class GetEC2RecommendationProjectedMetricsResponse < Struct.new(
      :recommended_option_projected_metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>
    #               The ARN that identifies the Amazon ECS service.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code>
    #            </p>
    #   @return [String]
    # @!attribute stat
    #   <p>
    #               The statistic of the projected metrics.
    #           </p>
    #   @return [String]
    # @!attribute period
    #   <p>
    #               The granularity, in seconds, of the projected metrics data points.
    #           </p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>
    #               The timestamp of the first projected metrics data point to return.
    #           </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #               The timestamp of the last projected metrics data point to return.
    #           </p>
    #   @return [Time]
    class GetECSServiceRecommendationProjectedMetricsRequest < Struct.new(
      :service_arn,
      :stat,
      :period,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_option_projected_metrics
    #   <p>
    #               An array of objects that describes the projected metrics.
    #           </p>
    #   @return [Array<Types::ECSServiceRecommendedOptionProjectedMetric>]
    class GetECSServiceRecommendationProjectedMetricsResponse < Struct.new(
      :recommended_option_projected_metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arns
    #   <p>
    #               The ARN that identifies the Amazon ECS service.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>
    #               The token to advance to the next page of Amazon ECS service recommendations.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               The maximum number of Amazon ECS service recommendations to return with a single request.
    #           </p>
    #            <p>To retrieve the remaining results, make another request with the returned 
    #               <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>
    #               An array of objects to specify a filter that returns a more specific list of Amazon ECS service recommendations.
    #           </p>
    #   @return [Array<Types::ECSServiceRecommendationFilter>]
    # @!attribute account_ids
    #   <p>
    #               Return the Amazon ECS service recommendations to the specified Amazon Web Services account IDs.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to return the Amazon ECS service recommendations to specific
    #               member accounts.</p>
    #            <p>You can only specify one account ID per request.</p>
    #   @return [Array<String>]
    class GetECSServiceRecommendationsRequest < Struct.new(
      :service_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #               The token to advance to the next page of Amazon ECS service recommendations.
    #           </p>
    #   @return [String]
    # @!attribute ecs_service_recommendations
    #   <p>
    #               An array of objects that describe the Amazon ECS service recommendations.
    #           </p>
    #   @return [Array<Types::ECSServiceRecommendation>]
    # @!attribute errors
    #   <p>
    #               An array of objects that describe errors of the request.
    #           </p>
    #   @return [Array<Types::GetRecommendationError>]
    class GetECSServiceRecommendationsResponse < Struct.new(
      :next_token,
      :ecs_service_recommendations,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to confirm effective
    #               recommendation preferences. Only EC2 instance and Auto Scaling group ARNs are
    #               currently supported.</p>
    #   @return [String]
    class GetEffectiveRecommendationPreferencesRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference. Considers
    #               all applicable preferences that you might have set at the resource, account, and
    #               organization level.</p>
    #            <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #            <p>To validate whether the preference is applied to your last generated set of
    #               recommendations, review the <code>effectiveRecommendationPreferences</code> value in the
    #               response of the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute external_metrics_preference
    #   <p>The provider of the external metrics recommendation preference. Considers all
    #               applicable preferences that you might have set at the account and organization
    #               level.</p>
    #            <p>If the preference is applied in the latest recommendation refresh, an object with a
    #               valid <code>source</code> value appears in the response. If the preference isn't applied
    #               to the recommendations already, then this object doesn't appear in the response.</p>
    #            <p>To validate whether the preference is applied to your last generated set of
    #               recommendations, review the <code>effectiveRecommendationPreferences</code> value in the
    #               response of the <a>GetEC2InstanceRecommendations</a> actions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [Types::ExternalMetricsPreference]
    # @!attribute look_back_period
    #   <p>
    #               The number of days the utilization metrics of the Amazon Web Services resource are analyzed. 
    #           </p>
    #            <p>To validate that the preference is applied to your last generated set of recommendations, review 
    #               the <code>effectiveRecommendationPreferences</code> value in the response of the 
    #               GetAutoScalingGroupRecommendations or GetEC2InstanceRecommendations actions.</p>
    #   @return [String]
    # @!attribute utilization_preferences
    #   <p>
    #               The resource’s CPU and memory utilization preferences, such as threshold and headroom, 
    #               that were used to generate rightsizing recommendations. It considers all applicable preferences 
    #               that you set at the resource, account, and organization level.
    #           </p>
    #            <p>To validate that the preference is applied to your last generated set of recommendations, review the 
    #               <code>effectiveRecommendationPreferences</code> value in the response of the 
    #               GetAutoScalingGroupRecommendations or GetEC2InstanceRecommendations actions.</p>
    #   @return [Array<Types::UtilizationPreference>]
    # @!attribute preferred_resources
    #   <p>
    #               The resource type values that are considered as candidates when generating rightsizing recommendations. 
    #               This object resolves any wildcard expressions and returns the effective list of candidate resource type 
    #               values. It also considers all applicable preferences that you set at the resource, account, and 
    #               organization level.
    #           </p>
    #            <p>To validate that the preference is applied to your last generated set of recommendations, review the 
    #               <code>effectiveRecommendationPreferences</code> value in the response of the GetAutoScalingGroupRecommendations 
    #               or GetEC2InstanceRecommendations actions.</p>
    #   @return [Array<Types::EffectivePreferredResource>]
    class GetEffectiveRecommendationPreferencesResponse < Struct.new(
      :enhanced_infrastructure_metrics,
      :external_metrics_preference,
      :look_back_period,
      :utilization_preferences,
      :preferred_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetEnrollmentStatusRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The enrollment status of the account.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the enrollment status of the account.</p>
    #            <p>For example, an account might show a status of <code>Pending</code> because member
    #               accounts of an organization require more time to be enrolled in the service.</p>
    #   @return [String]
    # @!attribute member_accounts_enrolled
    #   <p>Confirms the enrollment status of member accounts of the organization, if the account
    #               is a management account of an organization.</p>
    #   @return [Boolean]
    # @!attribute last_updated_timestamp
    #   <p>The Unix epoch timestamp, in seconds, of when the account enrollment status was last
    #               updated.</p>
    #   @return [Time]
    # @!attribute number_of_member_accounts_opted_in
    #   <p>The count of organization member accounts that are opted in to the service, if your
    #               account is an organization management account.</p>
    #   @return [Integer]
    class GetEnrollmentStatusResponse < Struct.new(
      :status,
      :status_reason,
      :member_accounts_enrolled,
      :last_updated_timestamp,
      :number_of_member_accounts_opted_in,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:member_accounts_enrolled] = false unless options.key?(:member_accounts_enrolled)
        super
      end
    end

    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of account
    #               enrollment statuses.</p>
    #   @return [Array<Types::EnrollmentFilter>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of account enrollment statuses.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of account enrollment statuses to return with a single request. You
    #               can specify up to 100 statuses to return with each request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    class GetEnrollmentStatusesForOrganizationRequest < Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_enrollment_statuses
    #   <p>An array of objects that describe the enrollment statuses of organization member
    #               accounts.</p>
    #   @return [Array<Types::AccountEnrollmentStatus>]
    # @!attribute next_token
    #   <p>The token to use to advance to the next page of account enrollment statuses.</p>
    #            <p>This value is null when there are no more pages of account enrollment statuses to
    #               return.</p>
    #   @return [String]
    class GetEnrollmentStatusesForOrganizationResponse < Struct.new(
      :account_enrollment_statuses,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>The ARN that identifies the idle resource.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of idle resource recommendations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of idle resource recommendations to return with a single request. </p>
    #            <p>To retrieve the remaining results, 
    #               make another request with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of idle resource recommendations.</p>
    #   @return [Array<Types::IdleRecommendationFilter>]
    # @!attribute account_ids
    #   <p>Return the idle resource recommendations to the specified Amazon Web Services account IDs.</p>
    #            <p>If your account is the management account 
    #               or the delegated administrator of an organization, use this parameter to return the idle resource recommendations to 
    #               specific member accounts.</p>
    #            <p>You can only specify one account ID per request.</p>
    #   @return [Array<String>]
    # @!attribute order_by
    #   <p>The order to sort the idle resource recommendations.</p>
    #   @return [Types::OrderBy]
    class GetIdleRecommendationsRequest < Struct.new(
      :resource_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      :order_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to advance to the next page of idle resource recommendations.</p>
    #   @return [String]
    # @!attribute idle_recommendations
    #   <p>An array of objects that describe the idle resource recommendations.</p>
    #   @return [Array<Types::IdleRecommendation>]
    # @!attribute errors
    #   <p>An array of objects that describe errors of the request.</p>
    #   @return [Array<Types::IdleRecommendationError>]
    class GetIdleRecommendationsResponse < Struct.new(
      :next_token,
      :idle_recommendations,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_arns
    #   <p>The Amazon Resource Name (ARN) of the functions for which to return
    #               recommendations.</p>
    #            <p>You can specify a qualified or unqualified ARN. If you specify an unqualified ARN
    #               without a function version suffix, Compute Optimizer will return recommendations for the
    #               latest (<code>$LATEST</code>) version of the function. If you specify a qualified ARN
    #               with a version suffix, Compute Optimizer will return recommendations for the specified
    #               function version. For more information about using function versions, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using">Using
    #                   versions</a> in the <i>Lambda Developer
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return function
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return function recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of function
    #               recommendations.</p>
    #   @return [Array<Types::LambdaFunctionRecommendationFilter>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of function recommendations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of function recommendations to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    class GetLambdaFunctionRecommendationsRequest < Struct.new(
      :function_arns,
      :account_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of function recommendations.</p>
    #            <p>This value is null when there are no more pages of function recommendations to
    #               return.</p>
    #   @return [String]
    # @!attribute lambda_function_recommendations
    #   <p>An array of objects that describe function recommendations.</p>
    #   @return [Array<Types::LambdaFunctionRecommendation>]
    class GetLambdaFunctionRecommendationsResponse < Struct.new(
      :next_token,
      :lambda_function_recommendations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>
    #               The ARN that identifies the Amazon EC2 instance.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:ec2:region:aws_account_id:instance/instance-id</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>
    #               The token to advance to the next page of license recommendations.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               The maximum number of license recommendations to return with a single request.
    #           </p>
    #            <p>
    #               To retrieve the remaining results, make another request with the returned
    #               <code>nextToken</code> value.
    #           </p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>
    #               An array of objects to specify a filter that returns a more specific list of license recommendations.
    #           </p>
    #   @return [Array<Types::LicenseRecommendationFilter>]
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return license recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return license recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    #   @return [Array<String>]
    class GetLicenseRecommendationsRequest < Struct.new(
      :resource_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #               The token to use to advance to the next page of license recommendations.
    #           </p>
    #   @return [String]
    # @!attribute license_recommendations
    #   <p>
    #               An array of objects that describe license recommendations.
    #           </p>
    #   @return [Array<Types::LicenseRecommendation>]
    # @!attribute errors
    #   <p>
    #               An array of objects that describe errors of the request.
    #           </p>
    #   @return [Array<Types::GetRecommendationError>]
    class GetLicenseRecommendationsResponse < Struct.new(
      :next_token,
      :license_recommendations,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #               The ARN that identifies the Amazon Aurora or RDS database.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:rds:{region}:{accountId}:db:{resourceName}</code>
    #            </p>
    #   @return [String]
    # @!attribute stat
    #   <p>
    #               The statistic of the projected metrics.
    #           </p>
    #   @return [String]
    # @!attribute period
    #   <p>
    #               The granularity, in seconds, of the projected metrics data points.
    #           </p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>
    #               The timestamp of the first projected metrics data point to return.
    #           </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #               The timestamp of the last projected metrics data point to return.
    #           </p>
    #   @return [Time]
    # @!attribute recommendation_preferences
    #   <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, <a>GetEC2RecommendationProjectedMetrics</a>, <a>GetRDSDatabaseRecommendations</a>, and <a>GetRDSDatabaseRecommendationProjectedMetrics</a> request.</p>
    #   @return [Types::RecommendationPreferences]
    class GetRDSDatabaseRecommendationProjectedMetricsRequest < Struct.new(
      :resource_arn,
      :stat,
      :period,
      :start_time,
      :end_time,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_option_projected_metrics
    #   <p>
    #               An array of objects that describes the projected metrics.
    #           </p>
    #   @return [Array<Types::RDSDatabaseRecommendedOptionProjectedMetric>]
    class GetRDSDatabaseRecommendationProjectedMetricsResponse < Struct.new(
      :recommended_option_projected_metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>
    #               The ARN that identifies the Amazon Aurora or RDS database.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:rds:{region}:{accountId}:db:{resourceName}</code>
    #            </p>
    #            <p> The following is the format of a DB Cluster ARN: </p>
    #            <p>
    #               <code>arn:aws:rds:{region}:{accountId}:cluster:{resourceName}</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>
    #               The token to advance to the next page of Amazon Aurora and RDS database recommendations.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Amazon Aurora and RDS database recommendations to return with a single
    #               request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #               <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>
    #               An array of objects to specify a filter that returns a more specific list of Amazon Aurora and RDS database recommendations.
    #           </p>
    #   @return [Array<Types::RDSDBRecommendationFilter>]
    # @!attribute account_ids
    #   <p>
    #               Return the Amazon Aurora and RDS database recommendations to the specified Amazon Web Services account IDs.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to return the Amazon Aurora and RDS database recommendations to specific
    #               member accounts.</p>
    #            <p>You can only specify one account ID per request.</p>
    #   @return [Array<String>]
    # @!attribute recommendation_preferences
    #   <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, <a>GetEC2RecommendationProjectedMetrics</a>, <a>GetRDSDatabaseRecommendations</a>, and <a>GetRDSDatabaseRecommendationProjectedMetrics</a> request.</p>
    #   @return [Types::RecommendationPreferences]
    class GetRDSDatabaseRecommendationsRequest < Struct.new(
      :resource_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      :recommendation_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #               The token to advance to the next page of Amazon Aurora and RDS database recommendations.
    #           </p>
    #   @return [String]
    # @!attribute rds_db_recommendations
    #   <p>
    #               An array of objects that describe the Amazon Aurora and RDS database recommendations.
    #           </p>
    #   @return [Array<Types::RDSDBRecommendation>]
    # @!attribute errors
    #   <p>
    #               An array of objects that describe errors of the request.
    #           </p>
    #   @return [Array<Types::GetRecommendationError>]
    class GetRDSDatabaseRecommendationsResponse < Struct.new(
      :next_token,
      :rds_db_recommendations,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an error experienced when getting recommendations.</p>
    #          <p>For example, an error is returned if you request recommendations for an unsupported
    #                 Auto Scaling group, or if you request recommendations for an instance of an
    #             unsupported instance family.</p>
    # @!attribute identifier
    #   <p>The ID of the error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message, or reason, for the error.</p>
    #   @return [String]
    class GetRecommendationError < Struct.new(
      :identifier,
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference for which to return
    #               preferences.</p>
    #            <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference to return.</p>
    #            <p>You can return recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [Types::Scope]
    # @!attribute next_token
    #   <p>The token to advance to the next page of recommendation preferences.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recommendation preferences to return with a single
    #               request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    class GetRecommendationPreferencesRequest < Struct.new(
      :resource_type,
      :scope,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of recommendation preferences.</p>
    #            <p>This value is null when there are no more pages of recommendation preferences to
    #               return.</p>
    #   @return [String]
    # @!attribute recommendation_preferences_details
    #   <p>An array of objects that describe recommendation preferences.</p>
    #   @return [Array<Types::RecommendationPreferencesDetail>]
    class GetRecommendationPreferencesResponse < Struct.new(
      :next_token,
      :recommendation_preferences_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return recommendation
    #               summaries.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return recommendation summaries.</p>
    #            <p>Only one account ID can be specified per request.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to advance to the next page of recommendation summaries.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recommendation summaries to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #   @return [Integer]
    class GetRecommendationSummariesRequest < Struct.new(
      :account_ids,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of recommendation summaries.</p>
    #            <p>This value is null when there are no more pages of recommendation summaries to
    #               return.</p>
    #   @return [String]
    # @!attribute recommendation_summaries
    #   <p>An array of objects that summarize a recommendation.</p>
    #   @return [Array<Types::RecommendationSummary>]
    class GetRecommendationSummariesResponse < Struct.new(
      :next_token,
      :recommendation_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the GPU accelerators for the instance type.
    #         </p>
    # @!attribute gpu_count
    #   <p>
    #               The number of GPUs for the instance type.
    #           </p>
    #   @return [Integer]
    # @!attribute gpu_memory_size_in_mi_b
    #   <p>
    #               The total size of the memory for the GPU accelerators for the instance type, in MiB.
    #           </p>
    #   @return [Integer]
    class Gpu < Struct.new(
      :gpu_count,
      :gpu_memory_size_in_mi_b,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:gpu_count] = 0 unless options.key?(:gpu_count)
        options[:gpu_memory_size_in_mi_b] = 0 unless options.key?(:gpu_memory_size_in_mi_b)
        super
      end
    end

    # <p>
    #             Describes the GPU accelerator settings for the instance type.
    #         </p>
    # @!attribute gpus
    #   <p>
    #               Describes the GPU accelerators for the instance type.
    #           </p>
    #   @return [Array<Types::Gpu>]
    class GpuInfo < Struct.new(
      :gpus,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the estimated monthly savings possible for idle resources by adopting Compute Optimizer recommendations.</p>
    # @!attribute currency
    #   <p>The currency of the estimated monthly savings.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the estimated monthly savings for Idle resources.</p>
    #   @return [Float]
    class IdleEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes an Idle resource recommendation.</p>
    # @!attribute resource_arn
    #   <p>The ARN of the current idle resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that is idle.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the idle resource.</p>
    #   @return [String]
    # @!attribute finding
    #   <p>The finding classification of an idle resource.</p>
    #   @return [String]
    # @!attribute finding_description
    #   <p>A summary of the findings for the resource.</p>
    #   @return [String]
    # @!attribute savings_opportunity
    #   <p>The savings opportunity for the idle resource.</p>
    #   @return [Types::IdleSavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>The savings opportunity for the idle resource after any applying discounts.</p>
    #   @return [Types::IdleSavingsOpportunityAfterDiscounts]
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the idle resource.</p>
    #   @return [Array<Types::IdleUtilizationMetric>]
    # @!attribute look_back_period_in_days
    #   <p>The number of days the idle resource utilization metrics were analyzed.</p>
    #   @return [Float]
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the idle resource recommendation was last generated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tags assigned to your idle resource recommendations.</p>
    #   @return [Array<Types::Tag>]
    class IdleRecommendation < Struct.new(
      :resource_arn,
      :resource_id,
      :resource_type,
      :account_id,
      :finding,
      :finding_description,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      :utilization_metrics,
      :look_back_period_in_days,
      :last_refresh_timestamp,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:look_back_period_in_days] = 0 unless options.key?(:look_back_period_in_days)
        super
      end
    end

    # <p>Returns of list of resources that doesn't have idle recommendations.</p>
    # @!attribute identifier
    #   <p>The ID of the error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource associated with the error.</p>
    #   @return [String]
    class IdleRecommendationError < Struct.new(
      :identifier,
      :code,
      :message,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter that returns a more specific list of idle resource recommendations.</p>
    # @!attribute name
    #   <p>
    #               The name of the filter.
    #           </p>
    #            <p>
    #               Specify <code>Finding</code> to return recommendations with a specific finding classification.
    #           </p>
    #            <p>You can filter your idle resource recommendations by <code>tag:key</code> 
    #               and <code>tag-key</code> tags.</p>
    #            <p>A <code>tag:key</code> is a key and value combination of a tag assigned to your 
    #               idle resource recommendations. Use the tag key in the filter name and the tag value 
    #               as the filter value. For example, to find all idle resource service recommendations that have 
    #               a tag with the key of <code>Owner</code> and the value of <code>TeamA</code>, 
    #               specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    #            <p>A <code>tag-key</code> is the key of a tag assigned to your idle resource recommendations. Use 
    #               this filter to find all of your idle resource recommendations that have a tag with a 
    #               specific key. This doesn’t consider the tag value. For example, you can find 
    #               your idle resource service recommendations with a tag key value of <code>Owner</code> or without any tag 
    #               keys assigned.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value of the filter.</p>
    #   @return [Array<String>]
    class IdleRecommendationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the savings opportunity for idle resource recommendations.</p>
    # @!attribute savings_opportunity_percentage
    #   <p>The estimated monthly savings possible as a percentage of monthly cost by adopting Compute Optimizer's idle resource recommendations.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>The estimated monthly savings possible by adopting Compute Optimizer's idle resource recommendations.</p>
    #   @return [Types::IdleEstimatedMonthlySavings]
    class IdleSavingsOpportunity < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>Describes the savings opportunity for idle resource recommendations after applying discounts.</p>
    #          <p>Savings opportunity represents the estimated monthly savings after applying discounts. You can achieve this by implementing a given Compute Optimizer recommendation.</p>
    # @!attribute savings_opportunity_percentage
    #   <p>The estimated monthly savings possible as a percentage of monthly cost by adopting Compute Optimizer's idle resource recommendations. This includes any applicable discounts.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>The estimated monthly savings possible by adopting Compute Optimizer's idle resource recommendations. This includes any applicable discounts.</p>
    #   @return [Types::IdleEstimatedMonthlySavings]
    class IdleSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>Describes the findings summary of the idle resources.</p>
    # @!attribute name
    #   <p>The name of the finding group for the idle resources.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The count of idle resources in the finding group.</p>
    #   @return [Float]
    class IdleSummary < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes the utilization metric of an idle resource.</p>
    # @!attribute name
    #   <p>The name of the utilization metric.</p>
    #   @return [String]
    # @!attribute statistic
    #   <p>
    #               The statistic of the utilization metric.
    #           </p>
    #            <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #            <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #               <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #               <code>SampleCount</code> during the specified period. For more information, see
    #               <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #                       Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the utilization metric.</p>
    #   @return [Float]
    class IdleUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             The estimated monthly savings after you adjust the configurations of your instances running on the 
    #             inferred workload types to the recommended configurations. If the <code>inferredWorkloadTypes</code>
    #             list contains multiple entries, then the savings are the sum of the monthly savings from instances 
    #             that run the exact combination of the inferred workload types.
    #         </p>
    # @!attribute inferred_workload_types
    #   <p>The applications that might be running on the instance as inferred by Compute Optimizer.</p>
    #            <p>Compute Optimizer can infer if one of the following applications might be running on
    #               the instance:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AmazonEmr</code> - Infers that Amazon EMR might be running on
    #                       the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApacheCassandra</code> - Infers that Apache Cassandra might be running
    #                       on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApacheHadoop</code> - Infers that Apache Hadoop might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memcached</code> - Infers that Memcached might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NGINX</code> - Infers that NGINX might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PostgreSql</code> - Infers that PostgreSQL might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redis</code> - Infers that Redis might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Kafka</code> - Infers that Kafka might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SQLServer</code> - Infers that SQLServer might be running on the
    #                       instance.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute estimated_monthly_savings
    #   <p>An object that describes the estimated monthly savings amount possible by adopting Compute Optimizer recommendations for a given
    #               resource. This is based on the On-Demand instance pricing.</p>
    #   @return [Types::EstimatedMonthlySavings]
    class InferredWorkloadSaving < Struct.new(
      :inferred_workload_types,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             An object that describes the estimated monthly savings possible by adopting Compute Optimizer’s Amazon EC2 instance 
    #             recommendations. This is based on the Savings Plans and Reserved Instances pricing discounts.
    #         </p>
    # @!attribute currency
    #   <p>
    #               The currency of the estimated monthly savings.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the estimated monthly savings.
    #           </p>
    #   @return [Float]
    class InstanceEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes an Amazon EC2 instance recommendation.</p>
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the current instance.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the instance.</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The name of the current instance.</p>
    #   @return [String]
    # @!attribute current_instance_type
    #   <p>The instance type of the current instance.</p>
    #   @return [String]
    # @!attribute finding
    #   <p>The finding classification of the instance.</p>
    #            <p>Findings for instances include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Underprovisioned</code>
    #                     </b>—An instance is
    #                       considered under-provisioned when at least one specification of your instance,
    #                       such as CPU, memory, or network, does not meet the performance requirements of
    #                       your workload. Under-provisioned instances may lead to poor application
    #                       performance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Overprovisioned</code>
    #                     </b>—An instance is
    #                       considered over-provisioned when at least one specification of your instance,
    #                       such as CPU, memory, or network, can be sized down while still meeting the
    #                       performance requirements of your workload, and no specification is
    #                       under-provisioned. Over-provisioned instances may lead to unnecessary
    #                       infrastructure cost.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b>—An instance is
    #                       considered optimized when all specifications of your instance, such as CPU,
    #                       memory, and network, meet the performance requirements of your workload and is
    #                       not over provisioned. For optimized resources, Compute Optimizer might
    #                       recommend a new generation instance type.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The valid values in your API responses appear as OVER_PROVISIONED, UNDER_PROVISIONED, or OPTIMIZED.</p>
    #            </note>
    #   @return [String]
    # @!attribute finding_reason_codes
    #   <p>The reason for the finding classification of the instance.</p>
    #            <p>Finding reason codes for instances include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUOverprovisioned</code>
    #                     </b> — The
    #                       instance’s CPU configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                           <code>CPUUtilization</code> metric of the current instance during the
    #                       look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s CPU configuration doesn't meet the performance requirements of your
    #                       workload and there is an alternative instance type that provides better CPU
    #                       performance. This is identified by analyzing the <code>CPUUtilization</code>
    #                       metric of the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MemoryOverprovisioned</code>
    #                     </b> — The
    #                       instance’s memory configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                       memory utilization metric of the current instance during the look-back
    #                       period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MemoryUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s memory configuration doesn't meet the performance requirements of
    #                       your workload and there is an alternative instance type that provides better
    #                       memory performance. This is identified by analyzing the memory utilization
    #                       metric of the current instance during the look-back period.</p>
    #                  <note>
    #                     <p>Memory utilization is analyzed only for resources that have the unified
    #                               CloudWatch agent installed on them. For more information, see
    #                               <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling memory
    #                               utilization with the Amazon CloudWatch Agent</a> in the
    #                                   <i>Compute Optimizer User Guide</i>. On Linux
    #                           instances, Compute Optimizer analyses the <code>mem_used_percent</code>
    #                           metric in the <code>CWAgent</code> namespace, or the legacy
    #                               <code>MemoryUtilization</code> metric in the <code>System/Linux</code>
    #                           namespace. On Windows instances, Compute Optimizer analyses the <code>Memory
    #                               % Committed Bytes In Use</code> metric in the <code>CWAgent</code>
    #                           namespace.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>EBSThroughputOverprovisioned</code>
    #                     </b> —
    #                       The instance’s EBS throughput configuration can be sized down while still
    #                       meeting the performance requirements of your workload. This is identified by
    #                       analyzing the <code>VolumeReadBytes</code> and <code>VolumeWriteBytes</code> metrics
    #                       of EBS volumes attached to the current instance during the look-back
    #                       period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>EBSThroughputUnderprovisioned</code>
    #                     </b> —
    #                       The instance’s EBS throughput configuration doesn't meet the performance
    #                       requirements of your workload and there is an alternative instance type that
    #                       provides better EBS throughput performance. This is identified by analyzing the
    #                       <code>VolumeReadBytes</code> and <code>VolumeWriteBytes</code> metrics of EBS
    #                       volumes attached to the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>EBSIOPSOverprovisioned</code>
    #                     </b> — The
    #                       instance’s EBS IOPS configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                       <code>VolumeReadOps</code> and <code>VolumeWriteOps</code> metric of EBS
    #                       volumes attached to the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>EBSIOPSUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s EBS IOPS configuration doesn't meet the performance requirements of
    #                       your workload and there is an alternative instance type that provides better EBS
    #                       IOPS performance. This is identified by analyzing the
    #                       <code>VolumeReadOps</code> and <code>VolumeWriteOps</code> metric of EBS
    #                       volumes attached to the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkBandwidthOverprovisioned</code>
    #                     </b>
    #                       — The instance’s network bandwidth configuration can be sized down while still
    #                       meeting the performance requirements of your workload. This is identified by
    #                       analyzing the <code>NetworkIn</code> and <code>NetworkOut</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkBandwidthUnderprovisioned</code>
    #                     </b>
    #                       — The instance’s network bandwidth configuration doesn't meet the performance
    #                       requirements of your workload and there is an alternative instance type that
    #                       provides better network bandwidth performance. This is identified by analyzing
    #                       the <code>NetworkIn</code> and <code>NetworkOut</code> metrics of the current
    #                       instance during the look-back period. This finding reason happens when the
    #                           <code>NetworkIn</code> or <code>NetworkOut</code> performance of an instance
    #                       is impacted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkPPSOverprovisioned</code>
    #                     </b> — The
    #                       instance’s network PPS (packets per second) configuration can be sized down
    #                       while still meeting the performance requirements of your workload. This is
    #                       identified by analyzing the <code>NetworkPacketsIn</code> and
    #                           <code>NetworkPacketsIn</code> metrics of the current instance during the
    #                       look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkPPSUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s network PPS (packets per second) configuration doesn't meet the
    #                       performance requirements of your workload and there is an alternative instance
    #                       type that provides better network PPS performance. This is identified by
    #                       analyzing the <code>NetworkPacketsIn</code> and <code>NetworkPacketsIn</code>
    #                       metrics of the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DiskIOPSOverprovisioned</code>
    #                     </b> — The
    #                       instance’s disk IOPS configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                           <code>DiskReadOps</code> and <code>DiskWriteOps</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DiskIOPSUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s disk IOPS configuration doesn't meet the performance requirements of
    #                       your workload and there is an alternative instance type that provides better
    #                       disk IOPS performance. This is identified by analyzing the
    #                           <code>DiskReadOps</code> and <code>DiskWriteOps</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DiskThroughputOverprovisioned</code>
    #                     </b> —
    #                       The instance’s disk throughput configuration can be sized down while still
    #                       meeting the performance requirements of your workload. This is identified by
    #                       analyzing the <code>DiskReadBytes</code> and <code>DiskWriteBytes</code> metrics
    #                       of the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DiskThroughputUnderprovisioned</code>
    #                     </b> —
    #                       The instance’s disk throughput configuration doesn't meet the performance
    #                       requirements of your workload and there is an alternative instance type that
    #                       provides better disk throughput performance. This is identified by analyzing the
    #                           <code>DiskReadBytes</code> and <code>DiskWriteBytes</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For more information about instance metrics, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html">List the
    #                       available CloudWatch metrics for your instances</a> in the
    #                           <i>Amazon Elastic Compute Cloud User Guide</i>. For more information
    #                   about EBS volume metrics, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html">Amazon CloudWatch
    #                       metrics for Amazon EBS</a> in the <i>Amazon Elastic Compute Cloud
    #                       User Guide</i>.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the instance.</p>
    #   @return [Array<Types::UtilizationMetric>]
    # @!attribute look_back_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the
    #               instance.</p>
    #   @return [Float]
    # @!attribute recommendation_options
    #   <p>An array of objects that describe the recommendation options for the instance.</p>
    #   @return [Array<Types::InstanceRecommendationOption>]
    # @!attribute recommendation_sources
    #   <p>An array of objects that describe the source resource of the recommendation.</p>
    #   @return [Array<Types::RecommendationSource>]
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the instance recommendation was last generated.</p>
    #   @return [Time]
    # @!attribute current_performance_risk
    #   <p>The risk of the current instance not meeting the performance needs of its workloads.
    #               The higher the risk, the more likely the current instance cannot meet the performance
    #               requirements of its workload.</p>
    #   @return [String]
    # @!attribute effective_recommendation_preferences
    #   <p>An object that describes the effective recommendation preferences for the
    #               instance.</p>
    #   @return [Types::EffectiveRecommendationPreferences]
    # @!attribute inferred_workload_types
    #   <p>The applications that might be running on the instance as inferred by Compute Optimizer.</p>
    #            <p>Compute Optimizer can infer if one of the following applications might be running on
    #               the instance:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AmazonEmr</code> - Infers that Amazon EMR might be running on
    #                       the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApacheCassandra</code> - Infers that Apache Cassandra might be running
    #                       on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApacheHadoop</code> - Infers that Apache Hadoop might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memcached</code> - Infers that Memcached might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NGINX</code> - Infers that NGINX might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PostgreSql</code> - Infers that PostgreSQL might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redis</code> - Infers that Redis might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Kafka</code> - Infers that Kafka might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SQLServer</code> - Infers that SQLServer might be running on the
    #                       instance.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute instance_state
    #   <p>
    #               The state of the instance when the recommendation was generated.
    #           </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #               A list of tags assigned to your Amazon EC2 instance recommendations.
    #           </p>
    #   @return [Array<Types::Tag>]
    # @!attribute external_metric_status
    #   <p>
    #               An object that describes Compute Optimizer's integration status with your external metrics provider.
    #           </p>
    #   @return [Types::ExternalMetricStatus]
    # @!attribute current_instance_gpu_info
    #   <p>
    #               Describes the GPU accelerator settings for the current instance type.
    #           </p>
    #   @return [Types::GpuInfo]
    # @!attribute idle
    #   <p>
    #               Describes if an Amazon EC2 instance is idle.
    #           </p>
    #   @return [String]
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
      :external_metric_status,
      :current_instance_gpu_info,
      :idle,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:look_back_period_in_days] = 0 unless options.key?(:look_back_period_in_days)
        super
      end
    end

    # <p>Describes a recommendation option for an Amazon EC2 instance.</p>
    # @!attribute instance_type
    #   <p>The instance type of the instance recommendation.</p>
    #   @return [String]
    # @!attribute instance_gpu_info
    #   <p>
    #               Describes the GPU accelerator settings for the recommended instance type.
    #           </p>
    #   @return [Types::GpuInfo]
    # @!attribute projected_utilization_metrics
    #   <p>An array of objects that describe the projected utilization metrics of the instance
    #               recommendation option.</p>
    #            <note>
    #               <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                   utilization metrics returned. Additionally, the <code>Memory</code> metric is
    #                   returned only for resources that have the unified CloudWatch agent installed
    #                   on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory
    #                       Utilization with the CloudWatch Agent</a>.</p>
    #            </note>
    #   @return [Array<Types::UtilizationMetric>]
    # @!attribute platform_differences
    #   <p>Describes the configuration differences between the current instance and the
    #               recommended instance type. You should consider the configuration differences before
    #               migrating your workloads from the current instance to the recommended instance type. The
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-resize.html">Change the instance type guide for Linux</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-resize.html">Change the instance type
    #                   guide for Windows</a> provide general guidance for getting started with an
    #               instance migration.</p>
    #            <p>Platform differences include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Hypervisor</code>
    #                     </b> — The hypervisor of
    #                       the recommended instance type is different than that of the current instance.
    #                       For example, the recommended instance type uses a Nitro hypervisor and the
    #                       current instance uses a Xen hypervisor. The differences that you should consider
    #                       between these hypervisors are covered in the <a href="http://aws.amazon.com/ec2/faqs/#Nitro_Hypervisor">Nitro Hypervisor</a> section of the
    #                           Amazon EC2 frequently asked questions. For more information, see
    #                           <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances">Instances built on the Nitro System</a> in the <i>Amazon EC2
    #                           User Guide for Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#ec2-nitro-instances">Instances built on the Nitro System</a> in the <i>Amazon EC2
    #                           User Guide for Windows</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkInterface</code>
    #                     </b> — The network
    #                       interface of the recommended instance type is different than that of the current
    #                       instance. For example, the recommended instance type supports enhanced
    #                       networking and the current instance might not. To enable enhanced networking for
    #                       the recommended instance type, you must install the Elastic Network Adapter
    #                       (ENA) driver or the Intel 82599 Virtual Function driver. For more information,
    #                       see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking.html">Enhanced networking
    #                           on Linux</a> in the <i>Amazon EC2 User Guide for
    #                       Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/enhanced-networking.html">Enhanced
    #                           networking on Windows</a> in the <i>Amazon EC2 User Guide for
    #                           Windows</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StorageInterface</code>
    #                     </b> — The storage
    #                       interface of the recommended instance type is different than that of the current
    #                       instance. For example, the recommended instance type uses an NVMe storage
    #                       interface and the current instance does not. To access NVMe volumes for the
    #                       recommended instance type, you will need to install or upgrade the NVMe driver.
    #                       For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nvme-ebs-volumes.html">Amazon EBS and NVMe on
    #                           Linux instances</a> in the <i>Amazon EC2 User Guide for
    #                           Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/nvme-ebs-volumes.html">Amazon EBS and NVMe
    #                           on Windows instances</a> in the <i>Amazon EC2 User Guide for
    #                           Windows</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>InstanceStoreAvailability</code>
    #                     </b> — The
    #                       recommended instance type does not support instance store volumes and the
    #                       current instance does. Before migrating, you might need to back up the data on
    #                       your instance store volumes if you want to preserve them. For more information,
    #                       see <a href="https://aws.amazon.com/premiumsupport/knowledge-center/back-up-instance-store-ebs/">How do I back up an instance store volume on my Amazon EC2 instance
    #                           to Amazon EBS?</a> in the <i>Amazon Web Services Premium
    #                           Support Knowledge Base</i>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html">Amazon EC2
    #                           instance store</a> in the <i>Amazon EC2 User Guide for
    #                           Linux</i>, or see <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/InstanceStorage.html">Amazon EC2
    #                           instance store</a> in the <i>Amazon EC2 User Guide for
    #                           Windows</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>VirtualizationType</code>
    #                     </b> — The
    #                       recommended instance type uses the hardware virtual machine (HVM) virtualization
    #                       type and the current instance uses the paravirtual (PV) virtualization type. For
    #                       more information about the differences between these virtualization types, see
    #                           <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/virtualization_types.html">Linux AMI
    #                           virtualization types</a> in the <i>Amazon EC2 User Guide for
    #                           Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/windows-ami-version-history.html#virtualization-types">Windows AMI virtualization types</a> in the <i>Amazon EC2 User
    #                           Guide for Windows</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Architecture</code>
    #                     </b> — The CPU
    #                       architecture between the recommended instance type and the current instance is
    #                       different. For example, the recommended instance type might use an Arm CPU
    #                       architecture and the current instance type might use a different one, such as
    #                       x86. Before migrating, you should consider recompiling the software on your
    #                       instance for the new architecture. Alternatively, you might switch to an Amazon
    #                       Machine Image (AMI) that supports the new architecture. For more information
    #                       about the CPU architecture for each instance type, see <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute performance_risk
    #   <p>The performance risk of the instance recommendation option.</p>
    #            <p>Performance risk indicates the likelihood of the recommended instance type not meeting
    #               the resource needs of your workload. Compute Optimizer calculates an individual
    #               performance risk score for each specification of the recommended instance, including
    #               CPU, memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS, network throughput,
    #               and network PPS.
    #               The performance
    #               risk of the recommended instance is calculated as the maximum performance risk score
    #               across the analyzed resource specifications.</p>
    #            <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
    #               that the recommended resource is predicted to always provide enough hardware capability.
    #               The higher the performance risk is, the more likely you should validate whether the
    #               recommendation will meet the performance requirements of your workload before migrating
    #               your resource.</p>
    #   @return [Float]
    # @!attribute rank
    #   <p>The rank of the instance recommendation option.</p>
    #            <p>The top recommendation option is ranked as <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the instance recommendation
    #               option. Savings opportunity includes the estimated monthly savings amount and
    #               percentage.</p>
    #   @return [Types::SavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>
    #               An object that describes the savings opportunity for the instance recommendation option that includes Savings Plans and Reserved Instances 
    #               discounts. Savings opportunity includes the estimated monthly savings and percentage.
    #           </p>
    #   @return [Types::InstanceSavingsOpportunityAfterDiscounts]
    # @!attribute migration_effort
    #   <p>The level of effort required to migrate from the current instance type to the
    #               recommended instance type.</p>
    #            <p>For example, the migration effort is <code>Low</code> if Amazon EMR is the
    #               inferred workload type and an Amazon Web Services Graviton instance type is recommended.
    #               The migration effort is <code>Medium</code> if a workload type couldn't be inferred but
    #               an Amazon Web Services Graviton instance type is recommended. The migration effort is
    #                   <code>VeryLow</code> if both the current and recommended instance types are of the
    #               same CPU architecture.</p>
    #   @return [String]
    class InstanceRecommendationOption < Struct.new(
      :instance_type,
      :instance_gpu_info,
      :projected_utilization_metrics,
      :platform_differences,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      :migration_effort,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:performance_risk] = 0 unless options.key?(:performance_risk)
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>
    #             Describes the savings estimation mode used for calculating savings opportunity for Amazon EC2 instances.
    #         </p>
    # @!attribute source
    #   <p>
    #               Describes the source for calculating the savings opportunity for Amazon EC2 instances.
    #           </p>
    #   @return [String]
    class InstanceSavingsEstimationMode < Struct.new(
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the savings opportunity for instance recommendations after applying the Savings Plans and Reserved Instances discounts.
    #         </p>
    #          <p>Savings opportunity after discounts represents the estimated monthly savings you can achieve by 
    #             implementing Compute Optimizer recommendations.</p>
    # @!attribute savings_opportunity_percentage
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost after applying the Savings Plans and Reserved Instances discounts. 
    #               This saving can be achieved by adopting Compute Optimizer’s EC2 instance recommendations.
    #           </p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>
    #               An object that describes the estimated monthly savings possible by adopting Compute Optimizer’s Amazon EC2 instance recommendations. This is 
    #               based on pricing after applying the Savings Plans and Reserved Instances discounts.
    #           </p>
    #   @return [Types::InstanceEstimatedMonthlySavings]
    class InstanceSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>An internal error has occurred. Try your call again.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value supplied for the input parameter is out of range or not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter that returns a more specific list of recommendation export jobs.
    #             Use this filter with the <a>DescribeRecommendationExportJobs</a>
    #             action.</p>
    #          <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action,
    #                 <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, and <code>Filter</code> with
    #             the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #            <p>Specify <code>ResourceType</code> to return export jobs of a specific resource type
    #               (for example, <code>Ec2Instance</code>).</p>
    #            <p>Specify <code>JobStatus</code> to return export jobs with a specific status (e.g,
    #                   <code>Complete</code>).</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value of the filter.</p>
    #            <p>The valid values for this parameter are as follows, depending on what you specify for
    #               the <code>name</code> parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify <code>Ec2Instance</code> or <code>AutoScalingGroup</code> if you
    #                       specify the <code>name</code> parameter as <code>ResourceType</code>. There is
    #                       no filter for EBS volumes because volume recommendations cannot be exported at
    #                       this time.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>Queued</code>, <code>InProgress</code>, <code>Complete</code>,
    #                       or <code>Failed</code> if you specify the <code>name</code> parameter as
    #                           <code>JobStatus</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class JobFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the effective recommendation preferences for Lambda functions.
    #         </p>
    # @!attribute savings_estimation_mode
    #   <p>
    #               Describes the savings estimation mode applied for calculating savings opportunity for Lambda functions.
    #           </p>
    #   @return [Types::LambdaSavingsEstimationMode]
    class LambdaEffectiveRecommendationPreferences < Struct.new(
      :savings_estimation_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the estimated monthly savings possible for Lambda functions by adopting Compute Optimizer recommendations. This is based 
    #             on Lambda functions pricing after applying Savings Plans discounts.
    #         </p>
    # @!attribute currency
    #   <p>
    #               The currency of the estimated monthly savings.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the estimated monthly savings.
    #           </p>
    #   @return [Float]
    class LambdaEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes a projected utilization metric of an Lambda function
    #             recommendation option.</p>
    # @!attribute name
    #   <p>The name of the projected utilization metric.</p>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic of the projected utilization metric.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The values of the projected utilization metrics.</p>
    #   @return [Float]
    class LambdaFunctionMemoryProjectedMetric < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes a recommendation option for an Lambda function.</p>
    # @!attribute rank
    #   <p>The rank of the function recommendation option.</p>
    #            <p>The top recommendation option is ranked as <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute memory_size
    #   <p>The memory size, in MB, of the function recommendation option.</p>
    #   @return [Integer]
    # @!attribute projected_utilization_metrics
    #   <p>An array of objects that describe the projected utilization metrics of the function
    #               recommendation option.</p>
    #   @return [Array<Types::LambdaFunctionMemoryProjectedMetric>]
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the Lambda function
    #               recommendation option. Savings opportunity includes the estimated monthly savings amount
    #               and percentage.</p>
    #   @return [Types::SavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>
    #               An object that describes the savings opportunity for the Lambda recommendation option which includes Saving Plans 
    #               discounts. Savings opportunity includes the estimated monthly savings and percentage.
    #           </p>
    #   @return [Types::LambdaSavingsOpportunityAfterDiscounts]
    class LambdaFunctionMemoryRecommendationOption < Struct.new(
      :rank,
      :memory_size,
      :projected_utilization_metrics,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rank] = 0 unless options.key?(:rank)
        options[:memory_size] = 0 unless options.key?(:memory_size)
        super
      end
    end

    # <p>Describes an Lambda function recommendation.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the current function.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The version number of the current function.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the function.</p>
    #   @return [String]
    # @!attribute current_memory_size
    #   <p>The amount of memory, in MB, that's allocated to the current function.</p>
    #   @return [Integer]
    # @!attribute number_of_invocations
    #   <p>The number of times your function code was applied during the look-back period.</p>
    #   @return [Integer]
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the function.</p>
    #   @return [Array<Types::LambdaFunctionUtilizationMetric>]
    # @!attribute lookback_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the
    #               function.</p>
    #   @return [Float]
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the function recommendation was last generated.</p>
    #   @return [Time]
    # @!attribute finding
    #   <p>The finding classification of the function.</p>
    #            <p>Findings for functions include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b> — The function is
    #                       correctly provisioned to run your workload based on its current configuration
    #                       and its utilization history. This finding classification does not include
    #                       finding reason codes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NotOptimized</code>
    #                     </b> — The function is
    #                       performing at a higher level (over-provisioned) or at a lower level
    #                       (under-provisioned) than required for your workload because its current
    #                       configuration is not optimal. Over-provisioned resources might lead to
    #                       unnecessary infrastructure cost, and under-provisioned resources might lead to
    #                       poor application performance. This finding classification can include the
    #                           <code>MemoryUnderprovisioned</code> and <code>MemoryUnderprovisioned</code>
    #                       finding reason codes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Unavailable</code>
    #                     </b> — Compute Optimizer
    #                       was unable to generate a recommendation for the function. This could be because
    #                       the function has not accumulated sufficient metric data, or the function does
    #                       not qualify for a recommendation. This finding classification can include the
    #                           <code>InsufficientData</code> and <code>Inconclusive</code> finding reason
    #                       codes.</p>
    #                  <note>
    #                     <p>Functions with a finding of unavailable are not returned unless you
    #                           specify the <code>filter</code> parameter with a value of
    #                               <code>Unavailable</code> in your
    #                               <code>GetLambdaFunctionRecommendations</code> request.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute finding_reason_codes
    #   <p>The reason for the finding classification of the function.</p>
    #            <note>
    #               <p>Functions that have a finding classification of <code>Optimized</code> don't have
    #                   a finding reason code.</p>
    #            </note>
    #            <p>Finding reason codes for functions include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MemoryOverprovisioned</code>
    #                     </b> — The
    #                       function is over-provisioned when its memory configuration can be sized down
    #                       while still meeting the performance requirements of your workload. An
    #                       over-provisioned function might lead to unnecessary infrastructure cost. This
    #                       finding reason code is part of the <code>NotOptimized</code> finding
    #                       classification.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MemoryUnderprovisioned</code>
    #                     </b> — The
    #                       function is under-provisioned when its memory configuration doesn't meet the
    #                       performance requirements of the workload. An under-provisioned function might
    #                       lead to poor application performance. This finding reason code is part of the
    #                           <code>NotOptimized</code> finding classification.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>InsufficientData</code>
    #                     </b> — The function
    #                       does not have sufficient metric data for Compute Optimizer to generate a
    #                       recommendation. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                           requirements</a> in the <i>Compute Optimizer User
    #                           Guide</i>. This finding reason code is part of the
    #                           <code>Unavailable</code> finding classification.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Inconclusive</code>
    #                     </b> — The function does
    #                       not qualify for a recommendation because Compute Optimizer cannot generate a
    #                       recommendation with a high degree of confidence. This finding reason code is
    #                       part of the <code>Unavailable</code> finding classification.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute memory_size_recommendation_options
    #   <p>An array of objects that describe the memory configuration recommendation options for
    #               the function.</p>
    #   @return [Array<Types::LambdaFunctionMemoryRecommendationOption>]
    # @!attribute current_performance_risk
    #   <p>The risk of the current Lambda function not meeting the performance needs
    #               of its workloads. The higher the risk, the more likely the current Lambda
    #               function requires more memory.</p>
    #   @return [String]
    # @!attribute effective_recommendation_preferences
    #   <p>
    #               Describes the effective recommendation preferences for Lambda functions.
    #           </p>
    #   @return [Types::LambdaEffectiveRecommendationPreferences]
    # @!attribute tags
    #   <p>
    #               A list of tags assigned to your Lambda function recommendations.
    #           </p>
    #   @return [Array<Types::Tag>]
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
      :effective_recommendation_preferences,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_memory_size] = 0 unless options.key?(:current_memory_size)
        options[:number_of_invocations] = 0 unless options.key?(:number_of_invocations)
        options[:lookback_period_in_days] = 0 unless options.key?(:lookback_period_in_days)
        super
      end
    end

    # <p>Describes a filter that returns a more specific list of Lambda
    #             function recommendations. Use this filter with the <a>GetLambdaFunctionRecommendations</a> action.</p>
    #          <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action, <code>JobFilter</code> with the
    #                 <a>DescribeRecommendationExportJobs</a> action, and <code>Filter</code>
    #             with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #            <p>Specify <code>Finding</code> to return recommendations with a specific finding
    #               classification (for example, <code>NotOptimized</code>).</p>
    #            <p>Specify <code>FindingReasonCode</code> to return recommendations with a specific
    #               finding reason code (for example, <code>MemoryUnderprovisioned</code>).</p>
    #            <p>You can filter your Lambda function recommendations by <code>tag:key</code> 
    #               and <code>tag-key</code> tags.</p>
    #            <p>A <code>tag:key</code> is a key and value combination of a tag assigned to your 
    #               Lambda function recommendations. Use the tag key in the filter name and the tag value 
    #               as the filter value. For example, to find all Lambda function recommendations that have 
    #               a tag with the key of <code>Owner</code> and the value of <code>TeamA</code>, 
    #               specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    #            <p>A <code>tag-key</code> is the key of a tag assigned to your Lambda function recommendations. Use 
    #               this filter to find all of your Lambda function recommendations that have a tag with a 
    #               specific key. This doesn’t consider the tag value. For example, you can find 
    #               your Lambda function recommendations with a tag key value of <code>Owner</code> or without any tag 
    #               keys assigned.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value of the filter.</p>
    #            <p>The valid values for this parameter are as follows, depending on what you specify for
    #               the <code>name</code> parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify <code>Optimized</code>, <code>NotOptimized</code>, or
    #                           <code>Unavailable</code> if you specify the <code>name</code> parameter as
    #                           <code>Finding</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>MemoryOverprovisioned</code>,
    #                           <code>MemoryUnderprovisioned</code>, <code>InsufficientData</code>, or
    #                           <code>Inconclusive</code> if you specify the <code>name</code> parameter as
    #                           <code>FindingReasonCode</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class LambdaFunctionRecommendationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a utilization metric of an Lambda function.</p>
    # @!attribute name
    #   <p>The name of the utilization metric.</p>
    #            <p>The following utilization metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Duration</code> - The amount of time that your function code spends
    #                       processing an event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memory</code> - The amount of memory used per invocation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic of the utilization metric.</p>
    #            <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #            <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #                   <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #                   <code>SampleCount</code> during the specified period. For more information, see
    #                   <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #               Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the utilization metric.</p>
    #   @return [Float]
    class LambdaFunctionUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             Describes the savings estimation used for calculating savings opportunity for Lambda functions.
    #         </p>
    # @!attribute source
    #   <p>
    #               Describes the source for calculation of savings opportunity for Lambda functions.
    #           </p>
    #   @return [String]
    class LambdaSavingsEstimationMode < Struct.new(
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the savings opportunity for Lambda functions recommendations after applying Savings Plans discounts.
    #         </p>
    #          <p>Savings opportunity represents the estimated monthly savings after applying Savings Plans discounts. 
    #             You can achieve this by implementing a given Compute Optimizer recommendation.</p>
    # @!attribute savings_opportunity_percentage
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost by adopting Compute Optimizer’s Lambda 
    #               function recommendations. This includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>
    #               The estimated monthly savings possible by adopting Compute Optimizer’s Lambda function recommendations. This 
    #               includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Types::LambdaEstimatedMonthlySavings]
    class LambdaSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>
    #             Describes the configuration of a license for an Amazon EC2 instance.
    #         </p>
    # @!attribute number_of_cores
    #   <p>
    #               The current number of cores associated with the instance.
    #           </p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>
    #               The instance type used in the license.
    #           </p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>
    #               The operating system of the instance. 
    #           </p>
    #   @return [String]
    # @!attribute license_edition
    #   <p>
    #               The edition of the license for the application that runs on the instance.
    #           </p>
    #   @return [String]
    # @!attribute license_name
    #   <p>
    #               The name of the license for the application that runs on the instance.
    #           </p>
    #   @return [String]
    # @!attribute license_model
    #   <p>
    #               The license type associated with the instance.
    #           </p>
    #   @return [String]
    # @!attribute license_version
    #   <p>
    #               The version of the license for the application that runs on the instance.
    #           </p>
    #   @return [String]
    # @!attribute metrics_source
    #   <p>
    #               The list of metric sources required to generate recommendations for commercial software licenses.
    #           </p>
    #   @return [Array<Types::MetricSource>]
    class LicenseConfiguration < Struct.new(
      :number_of_cores,
      :instance_type,
      :operating_system,
      :license_edition,
      :license_name,
      :license_model,
      :license_version,
      :metrics_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_cores] = 0 unless options.key?(:number_of_cores)
        super
      end
    end

    # <p>
    #             Describes a license recommendation for an EC2 instance.
    #         </p>
    # @!attribute resource_arn
    #   <p>
    #               The ARN that identifies the Amazon EC2 instance.
    #           </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>
    #               The Amazon Web Services account ID of the license. 
    #           </p>
    #   @return [String]
    # @!attribute current_license_configuration
    #   <p>
    #               An object that describes the current configuration of an instance that runs on a license.
    #           </p>
    #   @return [Types::LicenseConfiguration]
    # @!attribute lookback_period_in_days
    #   <p>
    #               The number of days for which utilization metrics were analyzed for an instance that runs on a license.
    #           </p>
    #   @return [Float]
    # @!attribute last_refresh_timestamp
    #   <p>
    #               The timestamp of when the license recommendation was last generated.
    #           </p>
    #   @return [Time]
    # @!attribute finding
    #   <p>
    #               The finding classification for an instance that runs on a license.
    #           </p>
    #            <p>Findings include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>InsufficentMetrics</code> — When Compute Optimizer detects that your CloudWatch
    #                           Application Insights isn't enabled or is enabled with insufficient permissions. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NotOptimized</code> — When Compute Optimizer detects that your EC2 infrastructure 
    #                           isn't using any of the SQL server license features you're paying for, a license is considered 
    #                           not optimized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Optimized</code> — When Compute Optimizer detects that all specifications of your 
    #                           license meet the performance requirements of your workload. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute finding_reason_codes
    #   <p>
    #               The reason for the finding classification for an instance that runs on a license.
    #           </p>
    #            <p>Finding reason codes include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Optimized</code> — All specifications of your 
    #                           license meet the performance requirements of your workload. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseOverprovisioned</code> — A license is considered over-provisioned when your license can be 
    #                           downgraded while still meeting the performance requirements of your workload.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InvalidCloudwatchApplicationInsights</code> — CloudWatch
    #                           Application Insights isn't configured properly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudwatchApplicationInsightsError</code> — There is a CloudWatch
    #                           Application Insights error. </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute license_recommendation_options
    #   <p>
    #               An array of objects that describe the license recommendation options.
    #           </p>
    #   @return [Array<Types::LicenseRecommendationOption>]
    # @!attribute tags
    #   <p>
    #               A list of tags assigned to an EC2 instance.
    #           </p>
    #   @return [Array<Types::Tag>]
    class LicenseRecommendation < Struct.new(
      :resource_arn,
      :account_id,
      :current_license_configuration,
      :lookback_period_in_days,
      :last_refresh_timestamp,
      :finding,
      :finding_reason_codes,
      :license_recommendation_options,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:lookback_period_in_days] = 0 unless options.key?(:lookback_period_in_days)
        super
      end
    end

    # <p>
    #             Describes a filter that returns a more specific list of license recommendations. Use this filter 
    #             with the <code>GetLicenseRecommendation</code> action.
    #         </p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #            <p>Specify <code>Finding</code> to return recommendations with a specific finding
    #               classification.</p>
    #            <p>Specify <code>FindingReasonCode</code> to return recommendations with a specific
    #               finding reason code.</p>
    #            <p>You can filter your license recommendations by <code>tag:key</code> 
    #               and <code>tag-key</code> tags.</p>
    #            <p>A <code>tag:key</code> is a key and value combination of a tag assigned to your 
    #               license recommendations. Use the tag key in the filter name and the tag value 
    #               as the filter value. For example, to find all license recommendations that have 
    #               a tag with the key of <code>Owner</code> and the value of <code>TeamA</code>, 
    #               specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    #            <p>A <code>tag-key</code> is the key of a tag assigned to your license recommendations. Use 
    #               this filter to find all of your license recommendations that have a tag with a 
    #               specific key. This doesn’t consider the tag value. For example, you can find 
    #               your license recommendations with a tag key value of <code>Owner</code> or without any tag 
    #               keys assigned.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value of the filter.</p>
    #            <p>The valid values for this parameter are as follows, depending on what you specify for
    #               the <code>name</code> parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify the <code>name</code> parameter as
    #                       <code>Finding</code>, then specify <code>Optimized</code>, <code>NotOptimized</code>, or
    #                       <code>InsufficentMetrics</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify the <code>name</code> parameter as
    #                       <code>FindingReasonCode</code>, then specify <code>Optimized</code>,
    #                       <code>LicenseOverprovisioned</code>, <code>InvalidCloudwatchApplicationInsights</code>, or
    #                       <code>CloudwatchApplicationInsightsError</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class LicenseRecommendationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the recommendation options for licenses.
    #         </p>
    # @!attribute rank
    #   <p>
    #               The rank of the license recommendation option.
    #           </p>
    #            <p>
    #               The top recommendation option is ranked as <code>1</code>.
    #           </p>
    #   @return [Integer]
    # @!attribute operating_system
    #   <p>
    #               The operating system of a license recommendation option.
    #           </p>
    #   @return [String]
    # @!attribute license_edition
    #   <p>
    #               The recommended edition of the license for the application that runs on the instance.
    #           </p>
    #   @return [String]
    # @!attribute license_model
    #   <p>
    #               The recommended license type associated with the instance.
    #           </p>
    #   @return [String]
    # @!attribute savings_opportunity
    #   <p>Describes the savings opportunity for recommendations of a given resource type or for
    #               the recommendation option of an individual resource.</p>
    #            <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #               implementing a given Compute Optimizer recommendation.</p>
    #            <important>
    #               <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                   activate <b>Receive Amazon EC2 resource
    #                       recommendations</b> in the Cost Explorer preferences page. That
    #                   creates a connection between Cost Explorer and Compute Optimizer. With this
    #                   connection, Cost Explorer generates savings estimates considering the price of
    #                   existing resources, the price of recommended resources, and historical usage data.
    #                   Estimated monthly savings reflects the projected dollar savings associated with each
    #                   of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                       with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                       Guide</i>.</p>
    #            </important>
    #   @return [Types::SavingsOpportunity]
    class LicenseRecommendationOption < Struct.new(
      :rank,
      :operating_system,
      :license_edition,
      :license_model,
      :savings_opportunity,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>The request exceeds a limit of the service.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The memory size configurations of a container.
    #         </p>
    # @!attribute memory
    #   <p>
    #               The amount of memory in the container.
    #           </p>
    #   @return [Integer]
    # @!attribute memory_reservation
    #   <p>
    #               The limit of memory reserve for the container.
    #           </p>
    #   @return [Integer]
    class MemorySizeConfiguration < Struct.new(
      :memory,
      :memory_reservation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The list of metric sources required to generate recommendations for commercial software licenses.
    #         </p>
    # @!attribute provider
    #   <p>
    #               The name of the metric source provider.
    #           </p>
    #   @return [String]
    # @!attribute provider_arn
    #   <p>
    #               The ARN of the metric source provider.
    #           </p>
    #   @return [String]
    class MetricSource < Struct.new(
      :provider,
      :provider_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request must contain either a valid (registered) Amazon Web Services access key ID
    #             or X.509 certificate.</p>
    # @!attribute message
    #   @return [String]
    class MissingAuthenticationToken < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The account is not opted in to Compute Optimizer.</p>
    # @!attribute message
    #   @return [String]
    class OptInRequiredException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how the recommendations are ordered.</p>
    # @!attribute dimension
    #   <p>The dimension values to sort the recommendations.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order to sort the recommendations.</p>
    #   @return [String]
    class OrderBy < Struct.new(
      :dimension,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The preference to control which resource type values are considered when generating rightsizing recommendations. 
    #             You can specify this preference as a combination of include and exclude lists. You must specify either an 
    #             <code>includeList</code> or <code>excludeList</code>. If the preference is an empty set of resource type values, 
    #             an error occurs. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/rightsizing-preferences.html">
    #                 Rightsizing recommendation preferences</a> in the <i>Compute Optimizer User
    #                     Guide</i>.
    #         </p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This preference is only available for the Amazon EC2 instance and Auto Scaling group resource types.</p>
    #                </li>
    #                <li>
    #                   <p>Compute Optimizer only supports the customization of <code>Ec2InstanceTypes</code>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @!attribute name
    #   <p>
    #               The type of preferred resource to customize.
    #           </p>
    #            <note>
    #               <p>Compute Optimizer only supports the customization of <code>Ec2InstanceTypes</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute include_list
    #   <p>
    #               The preferred resource type values to include in the recommendation candidates. You can specify the exact resource type value, 
    #               such as m5.large, or use wild card expressions, such as m5. If this isn’t specified, all supported resources are included by default. 
    #               You can specify up to 1000 values in this list.
    #           </p>
    #   @return [Array<String>]
    # @!attribute exclude_list
    #   <p>
    #               The preferred resource type values to exclude from the recommendation candidates. If this isn’t specified, all supported 
    #               resources are included by default. You can specify up to 1000 values in this list.
    #           </p>
    #   @return [Array<String>]
    class PreferredResource < Struct.new(
      :name,
      :include_list,
      :exclude_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a projected utilization metric of a recommendation option, such as an
    #                 Amazon EC2 instance. This represents the projected utilization of a
    #             recommendation option had you used that resource during the analyzed period.</p>
    #          <p>Compare the utilization metric data of your resource against its projected utilization
    #             metric data to determine the performance difference between your current resource and
    #             the recommended option.</p>
    #          <note>
    #             <p>The <code>Cpu</code>, <code>Memory</code>, <code>GPU</code>, and <code>GPU_MEMORY</code> metrics 
    #                 are the only projected utilization metrics returned when you run the <a>GetEC2RecommendationProjectedMetrics</a> action. Additionally, these
    #                     metrics are only returned for resources with the unified
    #                     CloudWatch agent installed on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory Utilization with the CloudWatch Agent</a> and
    #                     <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#nvidia-cw-agent">Enabling NVIDIA GPU 
    #                         utilization with the CloudWatch Agent</a>.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the projected utilization metric.</p>
    #            <p>The following projected utilization metrics are returned:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cpu</code> - The projected percentage of allocated EC2 compute units
    #                       that would be in use on the recommendation option had you used that resource
    #                       during the analyzed period. This metric identifies the processing power required
    #                       to run an application on the recommendation option.</p>
    #                  <p>Depending on the instance type, tools in your operating system can show a
    #                       lower percentage than CloudWatch when the instance is not allocated a full
    #                       processor core.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memory</code> - The percentage of memory that would be in use on the
    #                       recommendation option had you used that resource during the analyzed period.
    #                       This metric identifies the amount of memory required to run an application on
    #                       the recommendation option.</p>
    #                  <p>Units: Percent</p>
    #                  <note>
    #                     <p>The <code>Memory</code> metric is only returned for resources with
    #                           the unified CloudWatch agent installed on them. For more information,
    #                           see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory
    #                               Utilization with the CloudWatch Agent</a>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GPU</code> - The projected percentage of allocated GPUs if you adjust your
    #                       configurations to Compute Optimizer's recommendation option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GPU_MEMORY</code> - The projected percentage of total GPU memory if you adjust your
    #                       configurations to Compute Optimizer's recommendation option.</p>
    #                  <note>
    #                     <p>The <code>GPU</code> and <code>GPU_MEMORY</code> metrics are only returned for resources 
    #                           with the unified CloudWatch Agent installed on them. For more information, see 
    #                           <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#nvidia-cw-agent">Enabling NVIDIA GPU 
    #                               utilization with the CloudWatch Agent</a>.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute timestamps
    #   <p>The timestamps of the projected utilization metric.</p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>The values of the projected utilization metrics.</p>
    #   @return [Array<Float>]
    class ProjectedMetric < Struct.new(
      :name,
      :timestamps,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference to create.</p>
    #            <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference to create.</p>
    #            <p>You can create recommendation preferences at the organization level (for management
    #               accounts of an organization only), account level, and resource level. For more
    #               information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #            <note>
    #               <p>You cannot create recommendation preferences for Auto Scaling groups at the
    #                   organization and account levels. You can create recommendation preferences for
    #                       Auto Scaling groups only at the resource level by specifying a scope name
    #                   of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
    #                   Resource Name (ARN). This will configure the preference for all instances that are
    #                   part of the specified Auto Scaling group. You also cannot create recommendation
    #                   preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
    #                   standalone instances.</p>
    #            </note>
    #   @return [Types::Scope]
    # @!attribute enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference to create
    #               or update.</p>
    #            <p>Specify the <code>Active</code> status to activate the preference, or specify
    #                   <code>Inactive</code> to deactivate the preference.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute inferred_workload_types
    #   <p>The status of the inferred workload types recommendation preference to create or
    #               update.</p>
    #            <note>
    #               <p>The inferred workload type feature is active by default. To deactivate it, create
    #                   a recommendation preference.</p>
    #            </note>
    #            <p>Specify the <code>Inactive</code> status to deactivate the feature, or specify
    #                   <code>Active</code> to activate it.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html">Inferred workload
    #                   types</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #   @return [String]
    # @!attribute external_metrics_preference
    #   <p>The provider of the external metrics recommendation preference to create or
    #               update.</p>
    #            <p>Specify a valid provider in the <code>source</code> field to activate the preference.
    #               To delete this preference, see the <a>DeleteRecommendationPreferences</a>
    #               action.</p>
    #            <p>This preference can only be set for the <code>Ec2Instance</code> resource type.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html">External metrics
    #                   ingestion</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #   @return [Types::ExternalMetricsPreference]
    # @!attribute look_back_period
    #   <p>
    #               The preference to control the number of days the utilization metrics of the Amazon Web Services resource are analyzed. 
    #               When this preference isn't specified, we use the default value <code>DAYS_14</code>.
    #           </p>
    #            <p>You can only set this preference for the Amazon EC2 instance and Auto Scaling group resource types.
    #               </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Amazon EC2 instance lookback preferences can be set at the organization, account, and resource levels.</p>
    #                  </li>
    #                  <li>
    #                     <p>Auto Scaling group lookback preferences can only be set at the resource level.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute utilization_preferences
    #   <p>
    #               The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. When this 
    #               preference isn't specified, we use the following default values.
    #           </p>
    #            <p>CPU utilization:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P99_5</code> for threshold</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PERCENT_20</code> for headroom</p>
    #               </li>
    #            </ul>
    #            <p>Memory utilization:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PERCENT_20</code> for headroom</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>You can only set CPU and memory utilization preferences for the Amazon EC2 instance resource type.</p>
    #                  </li>
    #                  <li>
    #                     <p>The threshold setting isn’t available for memory utilization.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::UtilizationPreference>]
    # @!attribute preferred_resources
    #   <p>
    #               The preference to control which resource type values are considered when generating rightsizing recommendations. 
    #               You can specify this preference as a combination of include and exclude lists. You must specify either an 
    #               <code>includeList</code> or <code>excludeList</code>. If the preference is an empty set of resource type values, 
    #               an error occurs.
    #           </p>
    #            <note>
    #               <p>You can only set this preference for the Amazon EC2 instance and Auto Scaling group resource types.</p>
    #            </note>
    #   @return [Array<Types::PreferredResource>]
    # @!attribute savings_estimation_mode
    #   <p>
    #               The status of the savings estimation mode preference to create or update.
    #           </p>
    #            <p>Specify the <code>AfterDiscounts</code> status to activate the preference, or specify <code>BeforeDiscounts</code> to deactivate the preference.</p>
    #            <p>Only the account manager or delegated administrator of your organization can activate this preference.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/savings-estimation-mode.html">
    #               Savings estimation mode</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #   @return [String]
    class PutRecommendationPreferencesRequest < Struct.new(
      :resource_type,
      :scope,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      :external_metrics_preference,
      :look_back_period,
      :utilization_preferences,
      :preferred_resources,
      :savings_estimation_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutRecommendationPreferencesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the recommendation options for a DB instance.
    #         </p>
    # @!attribute db_instance_class
    #   <p>
    #               Describes the DB instance class recommendation option for your Amazon Aurora or RDS database.
    #           </p>
    #   @return [String]
    # @!attribute projected_utilization_metrics
    #   <p>
    #               An array of objects that describe the projected utilization metrics of the DB instance recommendation option.
    #           </p>
    #   @return [Array<Types::RDSDBUtilizationMetric>]
    # @!attribute performance_risk
    #   <p>
    #               The performance risk of the DB instance recommendation option.
    #           </p>
    #   @return [Float]
    # @!attribute rank
    #   <p>
    #               The rank identifier of the DB instance recommendation option.
    #           </p>
    #   @return [Integer]
    # @!attribute savings_opportunity
    #   <p>Describes the savings opportunity for recommendations of a given resource type or for
    #               the recommendation option of an individual resource.</p>
    #            <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #               implementing a given Compute Optimizer recommendation.</p>
    #            <important>
    #               <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                   activate <b>Receive Amazon EC2 resource
    #                       recommendations</b> in the Cost Explorer preferences page. That
    #                   creates a connection between Cost Explorer and Compute Optimizer. With this
    #                   connection, Cost Explorer generates savings estimates considering the price of
    #                   existing resources, the price of recommended resources, and historical usage data.
    #                   Estimated monthly savings reflects the projected dollar savings associated with each
    #                   of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                       with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                       Guide</i>.</p>
    #            </important>
    #   @return [Types::SavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>
    #               Describes the savings opportunity for Amazon Aurora and RDS database recommendations or for the recommendation option.
    #           </p>
    #            <p>Savings opportunity represents the estimated monthly savings after applying Savings Plans discounts. 
    #               You can achieve this by implementing a given Compute Optimizer recommendation.</p>
    #   @return [Types::RDSInstanceSavingsOpportunityAfterDiscounts]
    class RDSDBInstanceRecommendationOption < Struct.new(
      :db_instance_class,
      :projected_utilization_metrics,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:performance_risk] = 0 unless options.key?(:performance_risk)
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>
    #             Describes an Amazon Aurora and RDS database recommendation.
    #         </p>
    # @!attribute resource_arn
    #   <p>
    #               The ARN of the current Amazon Aurora or RDS database.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:rds:{region}:{accountId}:db:{resourceName}</code>
    #            </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>
    #               The Amazon Web Services account ID of the Amazon Aurora or RDS database.
    #           </p>
    #   @return [String]
    # @!attribute engine
    #   <p>
    #               The engine of the DB instance.
    #           </p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>
    #               The database engine version.
    #           </p>
    #   @return [String]
    # @!attribute promotion_tier
    #   <p>The promotion tier for the Aurora instance.</p>
    #   @return [Integer]
    # @!attribute current_db_instance_class
    #   <p>
    #               The DB instance class of the current Aurora or RDS DB instance.
    #           </p>
    #   @return [String]
    # @!attribute current_storage_configuration
    #   <p>
    #               The configuration of the current DB storage.
    #           </p>
    #   @return [Types::DBStorageConfiguration]
    # @!attribute db_cluster_identifier
    #   <p>The identifier for DB cluster.</p>
    #   @return [String]
    # @!attribute idle
    #   <p>
    #               This indicates if the DB instance is idle or not.
    #           </p>
    #   @return [String]
    # @!attribute instance_finding
    #   <p>
    #               The finding classification of an Amazon Aurora and RDS DB instance.
    #           </p>
    #            <p>For more information about finding classifications, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/view-rds-recommendations.html#rds-recommendations-findings">
    #               Finding classifications for Aurora and RDS databases</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute storage_finding
    #   <p>
    #               The finding classification of Amazon RDS DB instance storage.
    #           </p>
    #            <p>For more information about finding classifications, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/view-rds-recommendations.html#rds-recommendations-findings">
    #               Finding classifications for Aurora and RDS databases</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute instance_finding_reason_codes
    #   <p>
    #               The reason for the finding classification of a DB instance.
    #           </p>
    #   @return [Array<String>]
    # @!attribute current_instance_performance_risk
    #   <p>The performance risk for the current DB instance.</p>
    #   @return [String]
    # @!attribute current_storage_estimated_monthly_volume_io_ps_cost_variation
    #   <p>
    #               The level of variation in monthly I/O costs for the current DB storage configuration.
    #           </p>
    #   @return [String]
    # @!attribute storage_finding_reason_codes
    #   <p>
    #               The reason for the finding classification of RDS DB instance storage.
    #           </p>
    #   @return [Array<String>]
    # @!attribute instance_recommendation_options
    #   <p>
    #               An array of objects that describe the recommendation options for the RDS DB instance.
    #           </p>
    #   @return [Array<Types::RDSDBInstanceRecommendationOption>]
    # @!attribute storage_recommendation_options
    #   <p>
    #               An array of objects that describe the recommendation options for DB instance storage.
    #           </p>
    #   @return [Array<Types::RDSDBStorageRecommendationOption>]
    # @!attribute utilization_metrics
    #   <p>
    #               An array of objects that describe the utilization metrics of the DB instance.
    #           </p>
    #   @return [Array<Types::RDSDBUtilizationMetric>]
    # @!attribute effective_recommendation_preferences
    #   <p>
    #               Describes the effective recommendation preferences for DB instances.
    #           </p>
    #   @return [Types::RDSEffectiveRecommendationPreferences]
    # @!attribute lookback_period_in_days
    #   <p>
    #               The number of days the DB instance utilization metrics were analyzed.
    #           </p>
    #   @return [Float]
    # @!attribute last_refresh_timestamp
    #   <p>
    #               The timestamp of when the DB instance recommendation was last generated.
    #           </p>
    #   @return [Time]
    # @!attribute tags
    #   <p>
    #               A list of tags assigned to your DB instance recommendations.
    #           </p>
    #   @return [Array<Types::Tag>]
    class RDSDBRecommendation < Struct.new(
      :resource_arn,
      :account_id,
      :engine,
      :engine_version,
      :promotion_tier,
      :current_db_instance_class,
      :current_storage_configuration,
      :db_cluster_identifier,
      :idle,
      :instance_finding,
      :storage_finding,
      :instance_finding_reason_codes,
      :current_instance_performance_risk,
      :current_storage_estimated_monthly_volume_io_ps_cost_variation,
      :storage_finding_reason_codes,
      :instance_recommendation_options,
      :storage_recommendation_options,
      :utilization_metrics,
      :effective_recommendation_preferences,
      :lookback_period_in_days,
      :last_refresh_timestamp,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:lookback_period_in_days] = 0 unless options.key?(:lookback_period_in_days)
        super
      end
    end

    # <p>
    #             Describes a filter that returns a more specific list of DB instance 
    #             recommendations. Use this filter with the <a>GetECSServiceRecommendations</a> action.
    #         </p>
    # @!attribute name
    #   <p>
    #               The name of the filter.
    #           </p>
    #            <p>
    #               Specify <code>Finding</code> to return recommendations with a specific finding classification.
    #           </p>
    #            <p>You can filter your DB instance recommendations by <code>tag:key</code> 
    #               and <code>tag-key</code> tags.</p>
    #            <p>A <code>tag:key</code> is a key and value combination of a tag assigned to your 
    #               DB instance recommendations. Use the tag key in the filter name and the tag value 
    #               as the filter value. For example, to find all DB instance recommendations that have 
    #               a tag with the key of <code>Owner</code> and the value of <code>TeamA</code>, 
    #               specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    #            <p>A <code>tag-key</code> is the key of a tag assigned to your DB instance recommendations. Use 
    #               this filter to find all of your DB instance recommendations that have a tag with a 
    #               specific key. This doesn’t consider the tag value. For example, you can find 
    #               your DB instance recommendations with a tag key value of <code>Owner</code> or without any tag 
    #               keys assigned.</p>
    #   @return [String]
    # @!attribute values
    #   <p>
    #               The value of the filter.
    #           </p>
    #   @return [Array<String>]
    class RDSDBRecommendationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the recommendation options for DB storage.
    #         </p>
    # @!attribute storage_configuration
    #   <p>
    #               The recommended storage configuration.
    #           </p>
    #   @return [Types::DBStorageConfiguration]
    # @!attribute rank
    #   <p>
    #               The rank identifier of the DB storage recommendation option.
    #           </p>
    #   @return [Integer]
    # @!attribute savings_opportunity
    #   <p>Describes the savings opportunity for recommendations of a given resource type or for
    #               the recommendation option of an individual resource.</p>
    #            <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #               implementing a given Compute Optimizer recommendation.</p>
    #            <important>
    #               <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                   activate <b>Receive Amazon EC2 resource
    #                       recommendations</b> in the Cost Explorer preferences page. That
    #                   creates a connection between Cost Explorer and Compute Optimizer. With this
    #                   connection, Cost Explorer generates savings estimates considering the price of
    #                   existing resources, the price of recommended resources, and historical usage data.
    #                   Estimated monthly savings reflects the projected dollar savings associated with each
    #                   of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                       with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                       Guide</i>.</p>
    #            </important>
    #   @return [Types::SavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>
    #               Describes the savings opportunity for DB storage recommendations or for the recommendation option.
    #           </p>
    #            <p>
    #               Savings opportunity represents the estimated monthly savings after applying Savings Plans discounts. You can achieve
    #               this by implementing a given Compute Optimizer recommendation.
    #           </p>
    #   @return [Types::RDSStorageSavingsOpportunityAfterDiscounts]
    # @!attribute estimated_monthly_volume_io_ps_cost_variation
    #   <p>
    #               The projected level of variation in monthly I/O costs for the DB storage recommendation option.
    #           </p>
    #   @return [String]
    class RDSDBStorageRecommendationOption < Struct.new(
      :storage_configuration,
      :rank,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      :estimated_monthly_volume_io_ps_cost_variation,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>
    #             Describes the utilization metric of an Amazon Aurora and RDS database.
    #         </p>
    #          <p>
    #             To determine the performance difference between your current DB instance and the recommended option, 
    #             compare the utilization metric data of your service against its projected utilization metric data.
    #         </p>
    # @!attribute name
    #   <p>
    #               The name of the utilization metric.
    #           </p>
    #   @return [String]
    # @!attribute statistic
    #   <p>
    #               The statistic of the utilization metric.
    #           </p>
    #            <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #            <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #               <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #               <code>SampleCount</code> during the specified period. For more information, see
    #               <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #                       Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the utilization metric.
    #           </p>
    #   @return [Float]
    class RDSDBUtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             Describes the projected metrics of an Amazon Aurora and RDS database recommendation option.
    #         </p>
    #          <p>
    #             To determine the performance difference between your current Amazon Aurora and RDS database 
    #             and the recommended option, compare the metric data of your service against 
    #             its projected metric data.
    #         </p>
    # @!attribute name
    #   <p>
    #               The name of the projected metric.
    #           </p>
    #   @return [String]
    # @!attribute timestamps
    #   <p>
    #               The timestamps of the projected metric.
    #           </p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>
    #               The values for the projected metric.
    #           </p>
    #   @return [Array<Float>]
    class RDSDatabaseProjectedMetric < Struct.new(
      :name,
      :timestamps,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the projected metrics of an Amazon Aurora and RDS database recommendation option.
    #         </p>
    #          <p>
    #             To determine the performance difference between your current Amazon Aurora and RDS database and the recommended option, compare 
    #             the metric data of your service against its projected metric data.
    #         </p>
    # @!attribute recommended_db_instance_class
    #   <p>
    #               The recommended DB instance class for the Amazon Aurora or RDS database.
    #           </p>
    #   @return [String]
    # @!attribute rank
    #   <p>
    #               The rank identifier of the Amazon Aurora or RDS DB instance recommendation option.
    #           </p>
    #   @return [Integer]
    # @!attribute projected_metrics
    #   <p>
    #               An array of objects that describe the projected metric.
    #           </p>
    #   @return [Array<Types::RDSDatabaseProjectedMetric>]
    class RDSDatabaseRecommendedOptionProjectedMetric < Struct.new(
      :recommended_db_instance_class,
      :rank,
      :projected_metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>
    #             Describes the effective recommendation preferences for Amazon Aurora and RDS databases.
    #         </p>
    # @!attribute cpu_vendor_architectures
    #   <p>
    #               Describes the CPU vendor and architecture for DB instance recommendations.
    #           </p>
    #   @return [Array<String>]
    # @!attribute enhanced_infrastructure_metrics
    #   <p>Describes the activation status of the enhanced infrastructure metrics
    #               preference.
    #           </p>
    #            <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.
    #           </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #               infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.
    #           </p>
    #   @return [String]
    # @!attribute look_back_period
    #   <p>
    #               The number of days the utilization metrics of the DB instance are analyzed.
    #           </p>
    #   @return [String]
    # @!attribute savings_estimation_mode
    #   <p>
    #               Describes the savings estimation mode preference applied for calculating savings opportunity for DB instances.
    #           </p>
    #   @return [Types::RDSSavingsEstimationMode]
    class RDSEffectiveRecommendationPreferences < Struct.new(
      :cpu_vendor_architectures,
      :enhanced_infrastructure_metrics,
      :look_back_period,
      :savings_estimation_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the estimated monthly savings possible for DB instances by adopting 
    #             Compute Optimizer recommendations. This is based on DB instance pricing after applying 
    #             Savings Plans discounts.
    #         </p>
    # @!attribute currency
    #   <p>
    #               The currency of the estimated monthly savings.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the estimated monthly savings for DB instances.
    #           </p>
    #   @return [Float]
    class RDSInstanceEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             Describes the savings opportunity for DB instance recommendations after applying Savings Plans discounts.
    #         </p>
    #          <p>
    #             Savings opportunity represents the estimated monthly savings after applying Savings Plans discounts. 
    #             You can achieve this by implementing a given Compute Optimizer recommendation.
    #         </p>
    # @!attribute savings_opportunity_percentage
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost by adopting Compute Optimizer’s 
    #               DB instance recommendations. This includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>
    #               The estimated monthly savings possible by adopting Compute Optimizer’s DB instance recommendations. 
    #               This includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Types::RDSInstanceEstimatedMonthlySavings]
    class RDSInstanceSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>
    #             Describes the savings estimation mode used for calculating savings opportunity for DB instances.
    #         </p>
    # @!attribute source
    #   <p>
    #               Describes the source for calculating the savings opportunity for DB instances.
    #           </p>
    #   @return [String]
    class RDSSavingsEstimationMode < Struct.new(
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the estimated monthly savings possible for DB instance storage by adopting Compute Optimizer 
    #             recommendations. This is based on DB instance pricing after applying Savings Plans discounts.
    #         </p>
    # @!attribute currency
    #   <p>
    #               The currency of the estimated monthly savings.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value of the estimated monthly savings for DB instance storage.
    #           </p>
    #   @return [Float]
    class RDSStorageEstimatedMonthlySavings < Struct.new(
      :currency,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             Describes the savings opportunity for Amazon RDS storage recommendations after applying Savings Plans discounts.
    #         </p>
    #          <p>
    #             Savings opportunity represents the estimated monthly savings after applying Savings Plans discounts. 
    #             You can achieve this by implementing a given Compute Optimizer recommendation.
    #         </p>
    # @!attribute savings_opportunity_percentage
    #   <p>
    #               The estimated monthly savings possible as a percentage of monthly cost by adopting Compute Optimizer’s 
    #               DB instance storage recommendations. This includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>
    #               The estimated monthly savings possible by adopting Compute Optimizer’s DB instance storage recommendations. This includes any applicable Savings Plans discounts.
    #           </p>
    #   @return [Types::RDSStorageEstimatedMonthlySavings]
    class RDSStorageSavingsOpportunityAfterDiscounts < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>A summary of a finding reason code.</p>
    # @!attribute name
    #   <p>The name of the finding reason code.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the finding reason code summary.</p>
    #   @return [Float]
    class ReasonCodeSummary < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes a recommendation export job.</p>
    #          <p>Use the <a>DescribeRecommendationExportJobs</a> action to view your
    #             recommendation export jobs.</p>
    #          <p>Use the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions to request an export of your
    #             recommendations.</p>
    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>An object that describes the destination of the export file.</p>
    #   @return [Types::ExportDestination]
    # @!attribute resource_type
    #   <p>The resource type of the exported recommendations.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the export job.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The timestamp of when the export job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the export job was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason for an export job failure.</p>
    #   @return [String]
    class RecommendationExportJob < Struct.new(
      :job_id,
      :destination,
      :resource_type,
      :status,
      :creation_timestamp,
      :last_updated_timestamp,
      :failure_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, <a>GetEC2RecommendationProjectedMetrics</a>, <a>GetRDSDatabaseRecommendations</a>, and <a>GetRDSDatabaseRecommendationProjectedMetrics</a> request.</p>
    # @!attribute cpu_vendor_architectures
    #   <p>Specifies the CPU vendor and architecture for Amazon EC2 instance and Auto Scaling group recommendations.</p>
    #            <p>For example, when you specify <code>AWS_ARM64</code> with:</p>
    #            <ul>
    #               <li>
    #                  <p>A <a>GetEC2InstanceRecommendations</a> or <a>GetAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       returns recommendations that consist of Graviton instance types only.</p>
    #               </li>
    #               <li>
    #                  <p>A <a>GetEC2RecommendationProjectedMetrics</a> request, Compute Optimizer returns projected utilization metrics for Graviton instance type
    #                       recommendations only.</p>
    #               </li>
    #               <li>
    #                  <p>A <a>ExportEC2InstanceRecommendations</a> or <a>ExportAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       exports recommendations that consist of Graviton instance types only.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class RecommendationPreferences < Struct.new(
      :cpu_vendor_architectures,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a recommendation preference.</p>
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference.</p>
    #            <p>Recommendation preferences can be created at the organization level (for management
    #               accounts of an organization only), account level, and resource level. For more
    #               information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [Types::Scope]
    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference to create.</p>
    #            <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #   @return [String]
    # @!attribute enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference.</p>
    #            <p>When the recommendations page is refreshed, a status of <code>Active</code> confirms
    #               that the preference is applied to the recommendations, and a status of
    #                   <code>Inactive</code> confirms that the preference isn't yet applied to
    #               recommendations.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute inferred_workload_types
    #   <p>The status of the inferred workload types recommendation preference.</p>
    #            <p>When the recommendations page is refreshed, a status of <code>Active</code> confirms
    #               that the preference is applied to the recommendations, and a status of
    #                   <code>Inactive</code> confirms that the preference isn't yet applied to
    #               recommendations.</p>
    #   @return [String]
    # @!attribute external_metrics_preference
    #   <p> An object that describes the external metrics recommendation preference. </p>
    #            <p> If the preference is applied in the latest recommendation refresh, an object with a
    #               valid <code>source</code> value appears in the response. If the preference isn't applied
    #               to the recommendations already, then this object doesn't appear in the response. </p>
    #   @return [Types::ExternalMetricsPreference]
    # @!attribute look_back_period
    #   <p>
    #               The preference to control the number of days the utilization metrics of the Amazon Web Services resource are analyzed. 
    #               If the preference isn’t set, this object is null.
    #           </p>
    #   @return [String]
    # @!attribute utilization_preferences
    #   <p>
    #               The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. 
    #               If the preference isn’t set, this object is null. 
    #           </p>
    #            <note>
    #               <p>This preference is only available for the Amazon EC2 instance resource type.</p>
    #            </note>
    #   @return [Array<Types::UtilizationPreference>]
    # @!attribute preferred_resources
    #   <p>
    #               The preference to control which resource type values are considered when generating rightsizing recommendations. 
    #               This object resolves any wildcard expressions and returns the effective list of candidate resource type values. 
    #               If the preference isn’t set, this object is null.
    #           </p>
    #   @return [Array<Types::EffectivePreferredResource>]
    # @!attribute savings_estimation_mode
    #   <p>
    #               Describes the savings estimation mode used for calculating savings opportunity. 
    #           </p>
    #            <p>Only the account manager or delegated administrator of your organization can activate this preference.</p>
    #   @return [String]
    class RecommendationPreferencesDetail < Struct.new(
      :scope,
      :resource_type,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      :external_metrics_preference,
      :look_back_period,
      :utilization_preferences,
      :preferred_resources,
      :savings_estimation_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the source of a recommendation, such as an Amazon EC2 instance or
    #                 Auto Scaling group.</p>
    # @!attribute recommendation_source_arn
    #   <p>The Amazon Resource Name (ARN) of the recommendation source.</p>
    #   @return [String]
    # @!attribute recommendation_source_type
    #   <p>The resource type of the recommendation source.</p>
    #   @return [String]
    class RecommendationSource < Struct.new(
      :recommendation_source_arn,
      :recommendation_source_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a recommendation.</p>
    # @!attribute summaries
    #   <p>An array of objects that describe a recommendation summary.</p>
    #   @return [Array<Types::Summary>]
    # @!attribute idle_summaries
    #   <p>
    #               Describes the findings summary of the idle resources.
    #           </p>
    #   @return [Array<Types::IdleSummary>]
    # @!attribute recommendation_resource_type
    #   <p>The resource type that the recommendation summary applies to.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the recommendation summary.</p>
    #   @return [String]
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for a given resource type. Savings
    #               opportunity includes the estimated monthly savings amount and percentage.</p>
    #   @return [Types::SavingsOpportunity]
    # @!attribute idle_savings_opportunity
    #   <p>Describes the savings opportunity for recommendations of a given resource type or for
    #               the recommendation option of an individual resource.</p>
    #            <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #               implementing a given Compute Optimizer recommendation.</p>
    #            <important>
    #               <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                   activate <b>Receive Amazon EC2 resource
    #                       recommendations</b> in the Cost Explorer preferences page. That
    #                   creates a connection between Cost Explorer and Compute Optimizer. With this
    #                   connection, Cost Explorer generates savings estimates considering the price of
    #                   existing resources, the price of recommended resources, and historical usage data.
    #                   Estimated monthly savings reflects the projected dollar savings associated with each
    #                   of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                       with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                       Guide</i>.</p>
    #            </important>
    #   @return [Types::SavingsOpportunity]
    # @!attribute aggregated_savings_opportunity
    #   <p>Describes the savings opportunity for recommendations of a given resource type or for
    #               the recommendation option of an individual resource.</p>
    #            <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #               implementing a given Compute Optimizer recommendation.</p>
    #            <important>
    #               <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                   activate <b>Receive Amazon EC2 resource
    #                       recommendations</b> in the Cost Explorer preferences page. That
    #                   creates a connection between Cost Explorer and Compute Optimizer. With this
    #                   connection, Cost Explorer generates savings estimates considering the price of
    #                   existing resources, the price of recommended resources, and historical usage data.
    #                   Estimated monthly savings reflects the projected dollar savings associated with each
    #                   of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                       with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                       Guide</i>.</p>
    #            </important>
    #   @return [Types::SavingsOpportunity]
    # @!attribute current_performance_risk_ratings
    #   <p>An object that describes the performance risk ratings for a given resource
    #               type.</p>
    #   @return [Types::CurrentPerformanceRiskRatings]
    # @!attribute inferred_workload_savings
    #   <p>
    #               An array of objects that describes the estimated monthly saving amounts for the instances running on the specified 
    #               <code>inferredWorkloadTypes</code>. The array contains the top five savings opportunites for the instances that run 
    #               inferred workload types.
    #           </p>
    #   @return [Array<Types::InferredWorkloadSaving>]
    class RecommendationSummary < Struct.new(
      :summaries,
      :idle_summaries,
      :recommendation_resource_type,
      :account_id,
      :savings_opportunity,
      :idle_savings_opportunity,
      :aggregated_savings_opportunity,
      :current_performance_risk_ratings,
      :inferred_workload_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a projected utilization metric of a recommendation option.</p>
    #          <note>
    #             <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                 utilization metrics returned when you run the <a>GetEC2RecommendationProjectedMetrics</a> action. Additionally, the
    #                     <code>Memory</code> metric is returned only for resources that have the unified
    #                     CloudWatch agent installed on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory Utilization with the CloudWatch Agent</a>.</p>
    #          </note>
    # @!attribute recommended_instance_type
    #   <p>The recommended instance type.</p>
    #   @return [String]
    # @!attribute rank
    #   <p>The rank of the recommendation option projected metric.</p>
    #            <p>The top recommendation option is ranked as <code>1</code>.</p>
    #            <p>The projected metric rank correlates to the recommendation option rank. For example,
    #               the projected metric ranked as <code>1</code> is related to the recommendation option
    #               that is also ranked as <code>1</code> in the same response.</p>
    #   @return [Integer]
    # @!attribute projected_metrics
    #   <p>An array of objects that describe a projected utilization metric.</p>
    #   @return [Array<Types::ProjectedMetric>]
    class RecommendedOptionProjectedMetric < Struct.new(
      :recommended_instance_type,
      :rank,
      :projected_metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>A resource that is required for the action doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #             object keys of a recommendations export file, and its associated metadata file.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket used as the destination of an export
    #               file.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The Amazon S3 bucket key of an export file.</p>
    #            <p>The key uniquely identifies the object, or export file, in the S3 bucket.</p>
    #   @return [String]
    # @!attribute metadata_key
    #   <p>The Amazon S3 bucket key of a metadata file.</p>
    #            <p>The key uniquely identifies the object, or metadata file, in the S3 bucket.</p>
    #   @return [String]
    class S3Destination < Struct.new(
      :bucket,
      :key,
      :metadata_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #             key prefix for a recommendations export job.</p>
    #          <p>You must create the destination Amazon S3 bucket for your recommendations
    #             export before you create the export job. Compute Optimizer does not create the S3 bucket
    #             for you. After you create the S3 bucket, ensure that it has the required permission
    #             policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #             an object prefix when you create the export job, you must include the object prefix in
    #             the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                     <i>Compute Optimizer User Guide</i>.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket to use as the destination for an export
    #               job.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The Amazon S3 bucket prefix for an export job.</p>
    #   @return [String]
    class S3DestinationConfig < Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the savings opportunity for recommendations of a given resource type or for
    #             the recommendation option of an individual resource.</p>
    #          <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #             implementing a given Compute Optimizer recommendation.</p>
    #          <important>
    #             <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                 activate <b>Receive Amazon EC2 resource
    #                     recommendations</b> in the Cost Explorer preferences page. That
    #                 creates a connection between Cost Explorer and Compute Optimizer. With this
    #                 connection, Cost Explorer generates savings estimates considering the price of
    #                 existing resources, the price of recommended resources, and historical usage data.
    #                 Estimated monthly savings reflects the projected dollar savings associated with each
    #                 of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                     with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                     Guide</i>.</p>
    #          </important>
    # @!attribute savings_opportunity_percentage
    #   <p>The estimated monthly savings possible as a percentage of monthly cost by adopting
    #                   Compute Optimizer recommendations for a given resource.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_savings
    #   <p>An object that describes the estimated monthly savings amount possible by adopting Compute Optimizer recommendations for a given
    #               resource. This is based on the On-Demand instance pricing..</p>
    #   @return [Types::EstimatedMonthlySavings]
    class SavingsOpportunity < Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:savings_opportunity_percentage] = 0 unless options.key?(:savings_opportunity_percentage)
        super
      end
    end

    # <p>Describes the scope of a recommendation preference.</p>
    #          <p>Recommendation preferences can be created at the organization level (for management
    #             accounts of an organization only), account level, and resource level. For more
    #             information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    #          <note>
    #             <p>You cannot create recommendation preferences for Auto Scaling groups at the
    #                 organization and account levels. You can create recommendation preferences for
    #                     Auto Scaling groups only at the resource level by specifying a scope name
    #                 of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
    #                 Resource Name (ARN). This will configure the preference for all instances that are
    #                 part of the specified Auto Scaling group. You also cannot create recommendation
    #                 preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
    #                 standalone instances.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the scope.</p>
    #            <p>The following scopes are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Organization</code> - Specifies that the recommendation preference
    #                       applies at the organization level, for all member accounts of an
    #                       organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccountId</code> - Specifies that the recommendation preference applies
    #                       at the account level, for all resources of a given resource type in an
    #                       account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceArn</code> - Specifies that the recommendation preference
    #                       applies at the individual resource level.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the scope.</p>
    #            <p>If you specified the <code>name</code> of the scope as:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Organization</code> - The <code>value</code> must be
    #                           <code>ALL_ACCOUNTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccountId</code> - The <code>value</code> must be a 12-digit Amazon Web Services account ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceArn</code> - The <code>value</code> must be the Amazon Resource
    #                       Name (ARN) of an EC2 instance or an Auto Scaling group.</p>
    #               </li>
    #            </ul>
    #            <p>Only EC2 instance and Auto Scaling group ARNs are currently supported.</p>
    #   @return [String]
    class Scope < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Amazon ECS service configurations used for recommendations.
    #         </p>
    # @!attribute memory
    #   <p>
    #               The amount of memory used by the tasks in the Amazon ECS service.
    #           </p>
    #   @return [Integer]
    # @!attribute cpu
    #   <p>
    #               The number of CPU units used by the tasks in the Amazon ECS service.
    #           </p>
    #   @return [Integer]
    # @!attribute container_configurations
    #   <p>
    #               The container configurations within a task of an Amazon ECS service.
    #           </p>
    #   @return [Array<Types::ContainerConfiguration>]
    # @!attribute auto_scaling_configuration
    #   <p>
    #               Describes the Auto Scaling configuration methods for an Amazon ECS service. This affects 
    #               the generated recommendations. For example, if Auto Scaling is configured on a 
    #               service’s CPU, then Compute Optimizer doesn’t generate CPU size recommendations.
    #           </p>
    #            <p>The Auto Scaling configuration methods include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TARGET_TRACKING_SCALING_CPU</code> — If the Amazon ECS service is configured
    #                       to use target scaling on CPU, Compute Optimizer doesn't generate CPU recommendations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TARGET_TRACKING_SCALING_MEMORY</code> — If the Amazon ECS service is configured
    #                       to use target scaling on memory, Compute Optimizer doesn't generate memory recommendations.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about step scaling and target scaling, see 
    #               <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">
    #                   Step scaling policies for Application Auto Scaling</a> and 
    #               <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">
    #                   Target tracking scaling policies for Application Auto Scaling</a> in the 
    #               <i>Application Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute task_definition_arn
    #   <p>
    #               The task definition ARN used by the tasks in the Amazon ECS service.
    #           </p>
    #   @return [String]
    class ServiceConfiguration < Struct.new(
      :memory,
      :cpu,
      :container_configurations,
      :auto_scaling_configuration,
      :task_definition_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request has failed due to a temporary failure of the server.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a recommendation.</p>
    # @!attribute name
    #   <p>The finding classification of the recommendation.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the recommendation summary.</p>
    #   @return [Float]
    # @!attribute reason_code_summaries
    #   <p>An array of objects that summarize a finding reason code.</p>
    #   @return [Array<Types::ReasonCodeSummary>]
    class Summary < Struct.new(
      :name,
      :value,
      :reason_code_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             A list of tag key and value pairs that you define.
    #         </p>
    # @!attribute key
    #   <p>
    #               One part of a key-value pair that makes up a tag. A key is a general 
    #               label that acts like a category for more specific tag values.
    #           </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               One part of a key-value pair that make up a tag. A value acts as a descriptor 
    #               within a tag category (key). The value can be empty or null.
    #           </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The new enrollment status of the account.</p>
    #            <p>The following status options are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code> - Opts in your account to the Compute Optimizer service.
    #                           Compute Optimizer begins analyzing the configuration and utilization metrics
    #                       of your Amazon Web Services resources after you opt in. For more information, see
    #                           <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html">Metrics analyzed by Compute Optimizer</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Inactive</code> - Opts out your account from the Compute Optimizer
    #                       service. Your account's recommendations and related metrics data will be deleted
    #                       from Compute Optimizer after you opt out.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Pending</code> and <code>Failed</code> options cannot be used to update
    #                   the enrollment status of an account. They are returned in the response of a request
    #                   to update the enrollment status of an account.</p>
    #            </note>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>Indicates whether to enroll member accounts of the organization if the account is the
    #               management account of an organization.</p>
    #   @return [Boolean]
    class UpdateEnrollmentStatusRequest < Struct.new(
      :status,
      :include_member_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The enrollment status of the account.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the enrollment status of the account. For example, an account might
    #               show a status of <code>Pending</code> because member accounts of an organization require
    #               more time to be enrolled in the service.</p>
    #   @return [String]
    class UpdateEnrollmentStatusResponse < Struct.new(
      :status,
      :status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a utilization metric of a resource, such as an Amazon EC2
    #             instance.</p>
    #          <p>Compare the utilization metric data of your resource against its projected utilization
    #             metric data to determine the performance difference between your current resource and
    #             the recommended option.</p>
    # @!attribute name
    #   <p>The name of the utilization metric.</p>
    #            <p>The following utilization metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cpu</code> - The percentage of allocated EC2 compute units that are
    #                       currently in use on the instance. This metric identifies the processing power
    #                       required to run an application on the instance.</p>
    #                  <p>Depending on the instance type, tools in your operating system can show a
    #                       lower percentage than CloudWatch when the instance is not allocated a full
    #                       processor core.</p>
    #                  <p>Units: Percent</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Memory</code> - The percentage of memory that is currently in use on the
    #                       instance. This metric identifies the amount of memory required to run an
    #                       application on the instance.</p>
    #                  <p>Units: Percent</p>
    #                  <note>
    #                     <p>The <code>Memory</code> metric is returned only for resources that have
    #                           the unified CloudWatch agent installed on them. For more information,
    #                           see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory
    #                               Utilization with the CloudWatch Agent</a>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GPU</code> - The percentage of allocated GPUs that currently run on 
    #                       the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GPU_MEMORY</code> - The percentage of total GPU memory that currently runs on 
    #                       the instance.</p>
    #                  <note>
    #                     <p>The <code>GPU</code> and <code>GPU_MEMORY</code> metrics are only returned for resources 
    #                           with the unified CloudWatch Agent installed on them. For more information, see 
    #                           <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#nvidia-cw-agent">Enabling NVIDIA GPU 
    #                               utilization with the CloudWatch Agent</a>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS_READ_OPS_PER_SECOND</code> - The completed read operations from all
    #                       EBS volumes attached to the instance in a specified period of time.</p>
    #                  <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS_WRITE_OPS_PER_SECOND</code> - The completed write operations to all
    #                       EBS volumes attached to the instance in a specified period of time.</p>
    #                  <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS_READ_BYTES_PER_SECOND</code> - The bytes read from all EBS volumes
    #                       attached to the instance in a specified period of time.</p>
    #                  <p>Unit: Bytes</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS_WRITE_BYTES_PER_SECOND</code> - The bytes written to all EBS volumes
    #                       attached to the instance in a specified period of time.</p>
    #                  <p>Unit: Bytes</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISK_READ_OPS_PER_SECOND</code> - The completed read operations from all
    #                       instance store volumes available to the instance in a specified period of
    #                       time.</p>
    #                  <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISK_WRITE_OPS_PER_SECOND</code> - The completed write operations from
    #                       all instance store volumes available to the instance in a specified period of
    #                       time.</p>
    #                  <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISK_READ_BYTES_PER_SECOND</code> - The bytes read from all instance
    #                       store volumes available to the instance. This metric is used to determine the
    #                       volume of the data the application reads from the disk of the instance. This can
    #                       be used to determine the speed of the application.</p>
    #                  <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISK_WRITE_BYTES_PER_SECOND</code> - The bytes written to all instance
    #                       store volumes available to the instance. This metric is used to determine the
    #                       volume of the data the application writes onto the disk of the instance. This
    #                       can be used to determine the speed of the application.</p>
    #                  <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_IN_BYTES_PER_SECOND</code> - The number of bytes received by the
    #                       instance on all network interfaces. This metric identifies the volume of
    #                       incoming network traffic to a single instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_OUT_BYTES_PER_SECOND</code> - The number of bytes sent out by
    #                       the instance on all network interfaces. This metric identifies the volume of
    #                       outgoing network traffic from a single instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_PACKETS_IN_PER_SECOND</code> - The number of packets received by
    #                       the instance on all network interfaces. This metric identifies the volume of
    #                       incoming traffic in terms of the number of packets on a single instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_PACKETS_OUT_PER_SECOND</code> - The number of packets sent out
    #                       by the instance on all network interfaces. This metric identifies the volume of
    #                       outgoing traffic in terms of the number of packets on a single instance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic of the utilization metric.</p>
    #            <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #            <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #                   <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #                   <code>SampleCount</code> during the specified period. For more information, see
    #                   <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #               Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the utilization metric.</p>
    #   @return [Float]
    class UtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>
    #             The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom.
    #         </p>
    #          <note>
    #             <p>This preference is only available for the Amazon EC2 instance resource type.</p>
    #          </note>
    # @!attribute metric_name
    #   <p>
    #               The name of the resource utilization metric name to customize. 
    #           </p>
    #   @return [String]
    # @!attribute metric_parameters
    #   <p>
    #               The parameters to set when customizing the resource utilization thresholds.
    #           </p>
    #   @return [Types::CustomizableMetricParameters]
    class UtilizationPreference < Struct.new(
      :metric_name,
      :metric_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of an Amazon Elastic Block Store (Amazon EBS)
    #             volume.</p>
    # @!attribute volume_type
    #   <p>The volume type.</p>
    #            <p>The volume types can be the following:</p>
    #            <ul>
    #               <li>
    #                  <p>General Purpose SSD <code>gp2</code> and <code>gp3</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Provisioned IOPS SSD <code>io1</code>, <code>io2</code>, and <code>io2 Block Express</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Throughput Optimized HDD <code>st1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Cold HDD <code>sc1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Magnetic volumes <code>standard</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute volume_size
    #   <p>The size of the volume, in GiB.</p>
    #   @return [Integer]
    # @!attribute volume_baseline_iops
    #   <p>The baseline IOPS of the volume.</p>
    #   @return [Integer]
    # @!attribute volume_burst_iops
    #   <p>The burst IOPS of the volume.</p>
    #   @return [Integer]
    # @!attribute volume_baseline_throughput
    #   <p>The baseline throughput of the volume.</p>
    #   @return [Integer]
    # @!attribute volume_burst_throughput
    #   <p>The burst throughput of the volume.</p>
    #   @return [Integer]
    # @!attribute root_volume
    #   <p>
    #               Contains the image used to boot the instance during launch.
    #           </p>
    #   @return [Boolean]
    class VolumeConfiguration < Struct.new(
      :volume_type,
      :volume_size,
      :volume_baseline_iops,
      :volume_burst_iops,
      :volume_baseline_throughput,
      :volume_burst_throughput,
      :root_volume,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_size] = 0 unless options.key?(:volume_size)
        options[:volume_baseline_iops] = 0 unless options.key?(:volume_baseline_iops)
        options[:volume_burst_iops] = 0 unless options.key?(:volume_burst_iops)
        options[:volume_baseline_throughput] = 0 unless options.key?(:volume_baseline_throughput)
        options[:volume_burst_throughput] = 0 unless options.key?(:volume_burst_throughput)
        super
      end
    end

    # <p>Describes an Amazon Elastic Block Store (Amazon EBS) volume recommendation.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the current volume.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the volume.</p>
    #   @return [String]
    # @!attribute current_configuration
    #   <p>An array of objects that describe the current configuration of the volume.</p>
    #   @return [Types::VolumeConfiguration]
    # @!attribute finding
    #   <p>The finding classification of the volume.</p>
    #            <p>Findings for volumes include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NotOptimized</code>
    #                     </b>—A volume is
    #                       considered not optimized when Compute Optimizer identifies a recommendation
    #                       that can provide better performance for your workload.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b>—An volume is
    #                       considered optimized when Compute Optimizer determines that the volume is
    #                       correctly provisioned to run your workload based on the chosen volume type. For
    #                       optimized resources, Compute Optimizer might recommend a new generation volume
    #                       type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the volume.</p>
    #   @return [Array<Types::EBSUtilizationMetric>]
    # @!attribute look_back_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the volume.</p>
    #   @return [Float]
    # @!attribute volume_recommendation_options
    #   <p>An array of objects that describe the recommendation options for the volume.</p>
    #   @return [Array<Types::VolumeRecommendationOption>]
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the volume recommendation was last generated.</p>
    #   @return [Time]
    # @!attribute current_performance_risk
    #   <p>The risk of the current EBS volume not meeting the performance needs of its workloads.
    #               The higher the risk, the more likely the current EBS volume doesn't have sufficient
    #               capacity.</p>
    #   @return [String]
    # @!attribute effective_recommendation_preferences
    #   <p>
    #               Describes the effective recommendation preferences for Amazon EBS volume.
    #           </p>
    #   @return [Types::EBSEffectiveRecommendationPreferences]
    # @!attribute tags
    #   <p>
    #               A list of tags assigned to your Amazon EBS volume recommendations.
    #           </p>
    #   @return [Array<Types::Tag>]
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
      :effective_recommendation_preferences,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:look_back_period_in_days] = 0 unless options.key?(:look_back_period_in_days)
        super
      end
    end

    # <p>Describes a recommendation option for an Amazon Elastic Block Store (Amazon EBS)
    #             instance.</p>
    # @!attribute configuration
    #   <p>An array of objects that describe a volume configuration.</p>
    #   @return [Types::VolumeConfiguration]
    # @!attribute performance_risk
    #   <p>The performance risk of the volume recommendation option.</p>
    #            <p>Performance risk is the likelihood of the recommended volume type meeting the
    #               performance requirement of your workload.</p>
    #            <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
    #               that the recommended resource is predicted to always provide enough hardware capability.
    #               The higher the performance risk is, the more likely you should validate whether the
    #               recommendation will meet the performance requirements of your workload before migrating
    #               your resource.</p>
    #   @return [Float]
    # @!attribute rank
    #   <p>The rank of the volume recommendation option.</p>
    #            <p>The top recommendation option is ranked as <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the EBS volume recommendation
    #               option. Savings opportunity includes the estimated monthly savings amount and
    #               percentage.</p>
    #   @return [Types::SavingsOpportunity]
    # @!attribute savings_opportunity_after_discounts
    #   <p>
    #               An object that describes the savings opportunity for the Amazon EBS volume recommendation option with specific discounts. Savings 
    #               opportunity includes the estimated monthly savings  and percentage.
    #           </p>
    #   @return [Types::EBSSavingsOpportunityAfterDiscounts]
    class VolumeRecommendationOption < Struct.new(
      :configuration,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :savings_opportunity_after_discounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:performance_risk] = 0 unless options.key?(:performance_risk)
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

  end
end
