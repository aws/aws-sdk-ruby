# frozen_string_literal: true

# This is generated code!

module Aws::CostOptimizationHub
  # This module contains the types returned by client operations.
  module Types

    # <p>You are not authorized to use this operation with the given parameters.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the enrollment status of an organization's member accounts in Cost Optimization Hub.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The account enrollment status.</p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p>The time when the account enrollment status was last updated.</p>
    #   @return [Time]
    # @!attribute created_timestamp
    #   <p>The time when the account enrollment status was created.</p>
    #   @return [Time]
    class AccountEnrollmentStatus < Struct.new(
      nil,
      :account_id,
      :status,
      :last_updated_timestamp,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an Aurora DB cluster storage.</p>
    # @!attribute configuration
    #   <p>The Aurora DB cluster storage configuration used for recommendations.</p>
    #   @return [Types::AuroraDbClusterStorageConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the resource recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class AuroraDbClusterStorage < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Aurora DB cluster storage configuration used for recommendations.</p>
    # @!attribute storage_type
    #   <p>The storage type to associate with the Aurora DB cluster.</p>
    #   @return [String]
    class AuroraDbClusterStorageConfiguration < Struct.new(
      nil,
      :storage_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon Elastic Block Store performance configuration of the current and recommended resource configuration for a recommendation.</p>
    # @!attribute iops
    #   <p>The number of I/O operations per second.</p>
    #   @return [Float]
    # @!attribute throughput
    #   <p>The throughput that the volume supports.</p>
    #   @return [Float]
    class BlockStoragePerformanceConfiguration < Struct.new(
      nil,
      :iops,
      :throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the performance configuration for compute services such as Amazon EC2, Lambda, and ECS.</p>
    # @!attribute v_cpu
    #   <p>The number of vCPU cores in the resource.</p>
    #   @return [Float]
    # @!attribute memory_size_in_mb
    #   <p>The memory size of the resource.</p>
    #   @return [Integer]
    # @!attribute architecture
    #   <p>The architecture of the resource.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the resource. The platform is the specific combination of operating system, license model, and software on an instance.</p>
    #   @return [String]
    class ComputeConfiguration < Struct.new(
      nil,
      :v_cpu,
      :memory_size_in_mb,
      :architecture,
      :platform,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Compute Savings Plans recommendation details.</p>
    # @!attribute configuration
    #   <p>Configuration details of the Compute Savings Plans to purchase.</p>
    #   @return [Types::ComputeSavingsPlansConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the Savings Plans purchase recommendation.</p>
    #   @return [Types::SavingsPlansCostCalculation]
    class ComputeSavingsPlans < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Compute Savings Plans configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual member accounts only.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The Savings Plans recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute hourly_commitment
    #   <p>The hourly commitment for the Savings Plans type.</p>
    #   @return [String]
    class ComputeSavingsPlansConfiguration < Struct.new(
      nil,
      :account_scope,
      :term,
      :payment_option,
      :hourly_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DB instance configuration used for recommendations.</p>
    # @!attribute db_instance_class
    #   <p>The DB instance class of the DB instance.</p>
    #   @return [String]
    class DbInstanceConfiguration < Struct.new(
      nil,
      :db_instance_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DynamoDB reserved capacity recommendation details.</p>
    # @!attribute configuration
    #   <p>The DynamoDB reserved capacity configuration used for recommendations.</p>
    #   @return [Types::DynamoDbReservedCapacityConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesCostCalculation]
    class DynamoDbReservedCapacity < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DynamoDB reserved capacity configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The reserved capacity recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute reserved_instances_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing this reserved capacity costs you upfront.</p>
    #   @return [String]
    # @!attribute monthly_recurring_cost
    #   <p>How much purchasing this reserved capacity costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute number_of_capacity_units_to_purchase
    #   <p>The number of reserved capacity units that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute capacity_units
    #   <p>The capacity unit of the recommended reservation.</p>
    #   @return [String]
    class DynamoDbReservedCapacityConfiguration < Struct.new(
      nil,
      :account_scope,
      :service,
      :term,
      :payment_option,
      :reserved_instances_region,
      :upfront_cost,
      :monthly_recurring_cost,
      :number_of_capacity_units_to_purchase,
      :capacity_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon Elastic Block Store volume configuration of the current and recommended resource configuration for a recommendation.</p>
    # @!attribute configuration
    #   <p>The Amazon Elastic Block Store volume configuration used for recommendations.</p>
    #   @return [Types::EbsVolumeConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class EbsVolume < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Elastic Block Store volume configuration used for recommendations.</p>
    # @!attribute storage
    #   <p>The disk storage of the Amazon Elastic Block Store volume.</p>
    #   @return [Types::StorageConfiguration]
    # @!attribute performance
    #   <p>The Amazon Elastic Block Store performance configuration.</p>
    #   @return [Types::BlockStoragePerformanceConfiguration]
    # @!attribute attachment_state
    #   <p>The Amazon Elastic Block Store attachment state.</p>
    #   @return [String]
    class EbsVolumeConfiguration < Struct.new(
      nil,
      :storage,
      :performance,
      :attachment_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EC2 Auto Scaling group recommendation details.</p>
    # @!attribute configuration
    #   <p>The EC2 Auto Scaling group configuration used for recommendations.</p>
    #   @return [Types::Ec2AutoScalingGroupConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class Ec2AutoScalingGroup < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EC2 Auto Scaling group configuration used for recommendations.</p>
    # @!attribute instance
    #   <p>Details about the instance for the EC2 Auto Scaling group with a single instance type.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute mixed_instances
    #   <p>A list of instance types for an EC2 Auto Scaling group with mixed instance types.</p>
    #   @return [Array<Types::MixedInstanceConfiguration>]
    # @!attribute type
    #   <p>The type of EC2 Auto Scaling group, showing whether it consists of a single instance type or mixed instance types.</p>
    #   @return [String]
    # @!attribute allocation_strategy
    #   <p>The strategy used for allocating instances, based on a predefined priority order or based on the lowest available price.</p>
    #   @return [String]
    class Ec2AutoScalingGroupConfiguration < Struct.new(
      nil,
      :instance,
      :mixed_instances,
      :type,
      :allocation_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the EC2 instance configuration of the current and recommended resource configuration for a recommendation.</p>
    # @!attribute configuration
    #   <p>The EC2 instance configuration used for recommendations.</p>
    #   @return [Types::Ec2InstanceConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class Ec2Instance < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EC2 instance configuration used for recommendations.</p>
    # @!attribute instance
    #   <p>Details about the instance.</p>
    #   @return [Types::InstanceConfiguration]
    class Ec2InstanceConfiguration < Struct.new(
      nil,
      :instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EC2 instance Savings Plans recommendation details.</p>
    # @!attribute configuration
    #   <p>The EC2 instance Savings Plans configuration used for recommendations.</p>
    #   @return [Types::Ec2InstanceSavingsPlansConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the Savings Plans purchase recommendation.</p>
    #   @return [Types::SavingsPlansCostCalculation]
    class Ec2InstanceSavingsPlans < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EC2 instance Savings Plans configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The Savings Plans recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute hourly_commitment
    #   <p>The hourly commitment for the Savings Plans type.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the recommended Savings Plan.</p>
    #   @return [String]
    # @!attribute savings_plans_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    class Ec2InstanceSavingsPlansConfiguration < Struct.new(
      nil,
      :account_scope,
      :term,
      :payment_option,
      :hourly_commitment,
      :instance_family,
      :savings_plans_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EC2 reserved instances recommendation details.</p>
    # @!attribute configuration
    #   <p>The EC2 reserved instances configuration used for recommendations.</p>
    #   @return [Types::Ec2ReservedInstancesConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesCostCalculation]
    class Ec2ReservedInstances < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EC2 reserved instances configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The reserved instances recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute reserved_instances_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing this instance costs you upfront.</p>
    #   @return [String]
    # @!attribute monthly_recurring_cost
    #   <p>How much purchasing these reserved instances costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute offering_class
    #   <p>Indicates whether the recommendation is for standard or convertible reservations.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the recommended reservation. The platform is the specific combination of operating system, license model, and software on an instance.</p>
    #   @return [String]
    # @!attribute tenancy
    #   <p>Determines whether the recommended reservation is dedicated or shared.</p>
    #   @return [String]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommendation is size flexible.</p>
    #   @return [Boolean]
    class Ec2ReservedInstancesConfiguration < Struct.new(
      nil,
      :account_scope,
      :service,
      :term,
      :payment_option,
      :reserved_instances_region,
      :upfront_cost,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :offering_class,
      :instance_family,
      :instance_type,
      :current_generation,
      :platform,
      :tenancy,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ECS service recommendation details.</p>
    # @!attribute configuration
    #   <p>The ECS service configuration used for recommendations.</p>
    #   @return [Types::EcsServiceConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class EcsService < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ECS service configuration used for recommendations.</p>
    # @!attribute compute
    #   <p>Details about the compute configuration.</p>
    #   @return [Types::ComputeConfiguration]
    class EcsServiceConfiguration < Struct.new(
      nil,
      :compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ElastiCache reserved instances recommendation details.</p>
    # @!attribute configuration
    #   <p>The ElastiCache reserved instances configuration used for recommendations.</p>
    #   @return [Types::ElastiCacheReservedInstancesConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesCostCalculation]
    class ElastiCacheReservedInstances < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ElastiCache reserved instances configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The reserved instances recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute reserved_instances_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing this instance costs you upfront.</p>
    #   @return [String]
    # @!attribute monthly_recurring_cost
    #   <p>How much purchasing these reserved instances costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [String]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommendation is size flexible.</p>
    #   @return [Boolean]
    class ElastiCacheReservedInstancesConfiguration < Struct.new(
      nil,
      :account_scope,
      :service,
      :term,
      :payment_option,
      :reserved_instances_region,
      :upfront_cost,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :instance_family,
      :instance_type,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Estimated discount details of the current and recommended resource configuration for a recommendation.</p>
    # @!attribute savings_plans_discount
    #   <p>Estimated Savings Plans discounts.</p>
    #   @return [Float]
    # @!attribute reserved_instances_discount
    #   <p>Estimated reserved instance discounts.</p>
    #   @return [Float]
    # @!attribute other_discount
    #   <p>Estimated other discounts include all discounts that are not itemized. Itemized discounts include <code>reservedInstanceDiscount</code> and <code>savingsPlansDiscount</code>.</p>
    #   @return [Float]
    class EstimatedDiscounts < Struct.new(
      nil,
      :savings_plans_discount,
      :reserved_instances_discount,
      :other_discount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter that returns a more specific list of recommendations. Filters recommendations by different dimensions.</p>
    # @!attribute restart_needed
    #   <p>Whether or not implementing the recommendation requires a restart.</p>
    #   @return [Boolean]
    # @!attribute rollback_possible
    #   <p>Whether or not implementing the recommendation can be rolled back.</p>
    #   @return [Boolean]
    # @!attribute implementation_efforts
    #   <p>The effort required to implement the recommendation.</p>
    #   @return [Array<String>]
    # @!attribute account_ids
    #   <p>The account to which the recommendation applies.</p>
    #   @return [Array<String>]
    # @!attribute regions
    #   <p>The Amazon Web Services Region of the resource.</p>
    #   @return [Array<String>]
    # @!attribute resource_types
    #   <p>The resource type of the recommendation.</p>
    #   @return [Array<String>]
    # @!attribute action_types
    #   <p>The type of action you can take by adopting the recommendation.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags assigned to the recommendation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute resource_ids
    #   <p>The resource ID of the recommendation.</p>
    #   @return [Array<String>]
    # @!attribute resource_arns
    #   <p>The Amazon Resource Name (ARN) of the recommendation.</p>
    #   @return [Array<String>]
    # @!attribute recommendation_ids
    #   <p>The IDs for the recommendations.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :restart_needed,
      :rollback_possible,
      :implementation_efforts,
      :account_ids,
      :regions,
      :resource_types,
      :action_types,
      :tags,
      :resource_ids,
      :resource_arns,
      :recommendation_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetPreferencesRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_estimation_mode
    #   <p>Retrieves the status of the "savings estimation mode" preference.</p>
    #   @return [String]
    # @!attribute member_account_discount_visibility
    #   <p>Retrieves the status of the "member account discount visibility" preference.</p>
    #   @return [String]
    # @!attribute preferred_commitment
    #   <p>Retrieves the current preferences for how Reserved Instances and Savings Plans cost-saving opportunities are prioritized in terms of payment option and term length.</p>
    #   @return [Types::PreferredCommitment]
    class GetPreferencesResponse < Struct.new(
      nil,
      :savings_estimation_mode,
      :member_account_discount_visibility,
      :preferred_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The ID for the recommendation.</p>
    #   @return [String]
    class GetRecommendationRequest < Struct.new(
      nil,
      :recommendation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The ID for the recommendation.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource. This is the same as the Amazon Resource Name (ARN), if available.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account to which the recommendation applies.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code used for the recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_lookback_period_in_days
    #   <p>The lookback period that's used to generate the recommendation.</p>
    #   @return [Integer]
    # @!attribute cost_calculation_lookback_period_in_days
    #   <p>The lookback period used to calculate cost impact for a recommendation.</p>
    #   @return [Integer]
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings percentage relative to the total cost over the cost calculation lookback period.</p>
    #   @return [Float]
    # @!attribute estimated_savings_over_cost_calculation_lookback_period
    #   <p>The estimated savings amount over the lookback period used to calculate cost impact for a recommendation.</p>
    #   @return [Float]
    # @!attribute current_resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute recommended_resource_type
    #   <p>The resource type of the recommendation.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the resource.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the recommendation.</p>
    #   @return [String]
    # @!attribute last_refresh_timestamp
    #   <p>The time when the recommendation was last generated.</p>
    #   @return [Time]
    # @!attribute estimated_monthly_savings
    #   <p>The estimated monthly savings amount for the recommendation.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_cost
    #   <p>The estimated monthly cost of the current resource. For Reserved Instances and Savings Plans, it refers to the cost for eligible usage.</p>
    #   @return [Float]
    # @!attribute implementation_effort
    #   <p>The effort required to implement the recommendation.</p>
    #   @return [String]
    # @!attribute restart_needed
    #   <p>Whether or not implementing the recommendation requires a restart.</p>
    #   @return [Boolean]
    # @!attribute action_type
    #   <p>The type of action you can take by adopting the recommendation.</p>
    #   @return [String]
    # @!attribute rollback_possible
    #   <p>Whether or not implementing the recommendation can be rolled back.</p>
    #   @return [Boolean]
    # @!attribute current_resource_details
    #   <p>The details for the resource.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute recommended_resource_details
    #   <p>The details about the recommended resource.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute tags
    #   <p>A list of tags associated with the resource for which the recommendation exists.</p>
    #   @return [Array<Types::Tag>]
    class GetRecommendationResponse < Struct.new(
      nil,
      :recommendation_id,
      :resource_id,
      :resource_arn,
      :account_id,
      :currency_code,
      :recommendation_lookback_period_in_days,
      :cost_calculation_lookback_period_in_days,
      :estimated_savings_percentage,
      :estimated_savings_over_cost_calculation_lookback_period,
      :current_resource_type,
      :recommended_resource_type,
      :region,
      :source,
      :last_refresh_timestamp,
      :estimated_monthly_savings,
      :estimated_monthly_cost,
      :implementation_effort,
      :restart_needed,
      :action_type,
      :rollback_possible,
      :current_resource_details,
      :recommended_resource_details,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The instance configuration used for recommendations.</p>
    # @!attribute type
    #   <p>The instance type of the configuration.</p>
    #   @return [String]
    class InstanceConfiguration < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error on the server occurred during the processing of your request. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function recommendation details.</p>
    # @!attribute configuration
    #   <p>The Lambda function configuration used for recommendations.</p>
    #   @return [Types::LambdaFunctionConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class LambdaFunction < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda function configuration used for recommendations.</p>
    # @!attribute compute
    #   <p>Details about the compute configuration.</p>
    #   @return [Types::ComputeConfiguration]
    class LambdaFunctionConfiguration < Struct.new(
      nil,
      :compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_organization_info
    #   <p>Indicates whether to return the enrollment status for the organization.</p>
    #   @return [Boolean]
    # @!attribute account_id
    #   <p>The account ID of a member account in the organization.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    #   @return [Integer]
    class ListEnrollmentStatusesRequest < Struct.new(
      nil,
      :include_organization_info,
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The enrollment status of a specific account ID, including creation and last updated timestamps.</p>
    #   @return [Array<Types::AccountEnrollmentStatus>]
    # @!attribute include_member_accounts
    #   <p>The enrollment status of all member accounts in the organization if the account is the management account or delegated administrator.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListEnrollmentStatusesResponse < Struct.new(
      nil,
      :items,
      :include_member_accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Describes a filter that returns a more specific list of recommendations. Filters recommendations by different dimensions.</p>
    #   @return [Types::Filter]
    # @!attribute group_by
    #   <p>The grouping of recommendations by a dimension.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recommendations to be returned for the request.</p>
    #   @return [Integer]
    # @!attribute metrics
    #   <p>Additional metrics to be returned for the request. The only valid value is <code>savingsPercentage</code>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListRecommendationSummariesRequest < Struct.new(
      nil,
      :filter,
      :group_by,
      :max_results,
      :metrics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute estimated_total_deduped_savings
    #   <p>The total overall savings for the aggregated view.</p>
    #   @return [Float]
    # @!attribute items
    #   <p>A list of all savings recommendations.</p>
    #   @return [Array<Types::RecommendationSummary>]
    # @!attribute group_by
    #   <p>The dimension used to group the recommendations by.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code used for the recommendation.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>The results or descriptions for the additional metrics, based on whether the metrics were or were not requested.</p>
    #   @return [Types::SummaryMetricsResult]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListRecommendationSummariesResponse < Struct.new(
      nil,
      :estimated_total_deduped_savings,
      :items,
      :group_by,
      :currency_code,
      :metrics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The constraints that you want all returned recommendations to match.</p>
    #   @return [Types::Filter]
    # @!attribute order_by
    #   <p>The ordering of recommendations by a dimension.</p>
    #   @return [Types::OrderBy]
    # @!attribute include_all_recommendations
    #   <p>List of all recommendations for a resource, or a single recommendation if de-duped by <code>resourceId</code>.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of recommendations that are returned for the request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListRecommendationsRequest < Struct.new(
      nil,
      :filter,
      :order_by,
      :include_all_recommendations,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of all savings recommendations.</p>
    #   @return [Array<Types::Recommendation>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListRecommendationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The MemoryDB reserved instances recommendation details.</p> <note> <p>While the API reference uses "MemoryDB reserved instances", the user guide and other documentation refer to them as "MemoryDB reserved nodes", as the terms are used interchangeably.</p> </note>
    # @!attribute configuration
    #   <p>The MemoryDB reserved instances configuration used for recommendations.</p>
    #   @return [Types::MemoryDbReservedInstancesConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesCostCalculation]
    class MemoryDbReservedInstances < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The MemoryDB reserved instances configuration used for recommendations.</p> <note> <p>While the API reference uses "MemoryDB reserved instances", the user guide and other documentation refer to them as "MemoryDB reserved nodes", as the terms are used interchangeably.</p> </note>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The reserved instances recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute reserved_instances_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing these reserved instances costs you upfront.</p>
    #   @return [String]
    # @!attribute monthly_recurring_cost
    #   <p>How much purchasing these reserved instances costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommendation is size flexible.</p>
    #   @return [Boolean]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [String]
    class MemoryDbReservedInstancesConfiguration < Struct.new(
      nil,
      :account_scope,
      :service,
      :term,
      :payment_option,
      :reserved_instances_region,
      :upfront_cost,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :instance_type,
      :instance_family,
      :size_flex_eligible,
      :current_generation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the EC2 Auto Scaling group with mixed instance types.</p>
    # @!attribute type
    #   <p>The instance type of the configuration.</p>
    #   @return [String]
    class MixedInstanceConfiguration < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The OpenSearch reserved instances recommendation details.</p>
    # @!attribute configuration
    #   <p>The OpenSearch reserved instances configuration used for recommendations.</p>
    #   @return [Types::OpenSearchReservedInstancesConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesCostCalculation]
    class OpenSearchReservedInstances < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The OpenSearch reserved instances configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The reserved instances recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute reserved_instances_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing this instance costs you upfront.</p>
    #   @return [String]
    # @!attribute monthly_recurring_cost
    #   <p>How much purchasing these reserved instances costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [String]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommendation is size flexible.</p>
    #   @return [Boolean]
    class OpenSearchReservedInstancesConfiguration < Struct.new(
      nil,
      :account_scope,
      :service,
      :term,
      :payment_option,
      :reserved_instances_region,
      :upfront_cost,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :instance_type,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how rows will be sorted in the response.</p>
    # @!attribute dimension
    #   <p>Sorts by dimension values.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order that's used to sort the data.</p>
    #   @return [String]
    class OrderBy < Struct.new(
      nil,
      :dimension,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The preferred configuration for Reserved Instances and Savings Plans commitment-based discounts, consisting of a payment option and a commitment duration.</p>
    # @!attribute term
    #   <p>The preferred length of the commitment period. If the value is null, it will default to <code>ThreeYears</code> (highest savings) where applicable.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The preferred upfront payment structure for commitments. If the value is null, it will default to <code>AllUpfront</code> (highest savings) where applicable.</p>
    #   @return [String]
    class PreferredCommitment < Struct.new(
      nil,
      :term,
      :payment_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an Amazon RDS DB instance.</p>
    # @!attribute configuration
    #   <p>The Amazon RDS DB instance configuration used for recommendations.</p>
    #   @return [Types::RdsDbInstanceConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the resource recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class RdsDbInstance < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon RDS DB instance configuration used for recommendations.</p>
    # @!attribute instance
    #   <p>Details about the instance configuration.</p>
    #   @return [Types::DbInstanceConfiguration]
    class RdsDbInstanceConfiguration < Struct.new(
      nil,
      :instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an Amazon RDS DB instance storage.</p>
    # @!attribute configuration
    #   <p>The Amazon RDS DB instance storage configuration used for recommendations.</p>
    #   @return [Types::RdsDbInstanceStorageConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the resource recommendation.</p>
    #   @return [Types::ResourceCostCalculation]
    class RdsDbInstanceStorage < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon RDS DB instance storage configuration used for recommendations.</p>
    # @!attribute storage_type
    #   <p>The storage type to associate with the DB instance.</p>
    #   @return [String]
    # @!attribute allocated_storage_in_gb
    #   <p>The new amount of storage in GB to allocate for the DB instance.</p>
    #   @return [Float]
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>
    #   @return [Float]
    # @!attribute storage_throughput
    #   <p>The storage throughput for the DB instance.</p>
    #   @return [Float]
    class RdsDbInstanceStorageConfiguration < Struct.new(
      nil,
      :storage_type,
      :allocated_storage_in_gb,
      :iops,
      :storage_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The RDS reserved instances recommendation details.</p>
    # @!attribute configuration
    #   <p>The RDS reserved instances configuration used for recommendations.</p>
    #   @return [Types::RdsReservedInstancesConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesCostCalculation]
    class RdsReservedInstances < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The RDS reserved instances configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The reserved instances recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute reserved_instances_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing this instance costs you upfront.</p>
    #   @return [String]
    # @!attribute monthly_recurring_cost
    #   <p>How much purchasing this instance costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommendation is size flexible.</p>
    #   @return [Boolean]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [String]
    # @!attribute license_model
    #   <p>The license model that the recommended reservation supports.</p>
    #   @return [String]
    # @!attribute database_edition
    #   <p>The database edition that the recommended reservation supports.</p>
    #   @return [String]
    # @!attribute database_engine
    #   <p>The database engine that the recommended reservation supports.</p>
    #   @return [String]
    # @!attribute deployment_option
    #   <p>Determines whether the recommendation is for a reservation in a single Availability Zone or a reservation with a backup in a second Availability Zone.</p>
    #   @return [String]
    class RdsReservedInstancesConfiguration < Struct.new(
      nil,
      :account_scope,
      :service,
      :term,
      :payment_option,
      :reserved_instances_region,
      :upfront_cost,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :instance_family,
      :instance_type,
      :size_flex_eligible,
      :current_generation,
      :license_model,
      :database_edition,
      :database_engine,
      :deployment_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a recommendation.</p>
    # @!attribute recommendation_id
    #   <p>The ID for the recommendation.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account to which the recommendation applies.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID for the recommendation.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the recommendation.</p>
    #   @return [String]
    # @!attribute current_resource_type
    #   <p>The current resource type.</p>
    #   @return [String]
    # @!attribute recommended_resource_type
    #   <p>The recommended resource type.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings
    #   <p>The estimated monthly savings amount for the recommendation.</p>
    #   @return [Float]
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings percentage relative to the total cost over the cost calculation lookback period.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_cost
    #   <p>The estimated monthly cost of the current resource. For Reserved Instances and Savings Plans, it refers to the cost for eligible usage.</p>
    #   @return [Float]
    # @!attribute currency_code
    #   <p>The currency code used for the recommendation.</p>
    #   @return [String]
    # @!attribute implementation_effort
    #   <p>The effort required to implement the recommendation.</p>
    #   @return [String]
    # @!attribute restart_needed
    #   <p>Whether or not implementing the recommendation requires a restart.</p>
    #   @return [Boolean]
    # @!attribute action_type
    #   <p>The type of tasks that can be carried out by this action.</p>
    #   @return [String]
    # @!attribute rollback_possible
    #   <p>Whether or not implementing the recommendation can be rolled back.</p>
    #   @return [Boolean]
    # @!attribute current_resource_summary
    #   <p>Describes the current resource.</p>
    #   @return [String]
    # @!attribute recommended_resource_summary
    #   <p>Describes the recommended resource.</p>
    #   @return [String]
    # @!attribute last_refresh_timestamp
    #   <p>The time when the recommendation was last generated.</p>
    #   @return [Time]
    # @!attribute recommendation_lookback_period_in_days
    #   <p>The lookback period that's used to generate the recommendation.</p>
    #   @return [Integer]
    # @!attribute source
    #   <p>The source of the recommendation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags assigned to the recommendation.</p>
    #   @return [Array<Types::Tag>]
    class Recommendation < Struct.new(
      nil,
      :recommendation_id,
      :account_id,
      :region,
      :resource_id,
      :resource_arn,
      :current_resource_type,
      :recommended_resource_type,
      :estimated_monthly_savings,
      :estimated_savings_percentage,
      :estimated_monthly_cost,
      :currency_code,
      :implementation_effort,
      :restart_needed,
      :action_type,
      :rollback_possible,
      :current_resource_summary,
      :recommended_resource_summary,
      :last_refresh_timestamp,
      :recommendation_lookback_period_in_days,
      :source,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of rightsizing recommendations, including de-duped savings from all types of recommendations.</p>
    # @!attribute group
    #   <p>The grouping of recommendations.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings
    #   <p>The estimated total savings resulting from modifications, on a monthly basis.</p>
    #   @return [Float]
    # @!attribute recommendation_count
    #   <p>The total number of instance recommendations.</p>
    #   @return [Integer]
    class RecommendationSummary < Struct.new(
      nil,
      :group,
      :estimated_monthly_savings,
      :recommendation_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Redshift reserved instances recommendation details.</p>
    # @!attribute configuration
    #   <p>The Redshift reserved instances configuration used for recommendations.</p>
    #   @return [Types::RedshiftReservedInstancesConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesCostCalculation]
    class RedshiftReservedInstances < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Redshift reserved instances configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The reserved instances recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute reserved_instances_region
    #   <p>The Amazon Web Services Region of the commitment.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing this instance costs you upfront.</p>
    #   @return [String]
    # @!attribute monthly_recurring_cost
    #   <p>How much purchasing these reserved instances costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommendation is size flexible.</p>
    #   @return [Boolean]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [String]
    class RedshiftReservedInstancesConfiguration < Struct.new(
      nil,
      :account_scope,
      :service,
      :term,
      :payment_option,
      :reserved_instances_region,
      :upfront_cost,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :instance_family,
      :instance_type,
      :size_flex_eligible,
      :current_generation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cost impact of the purchase recommendation.</p>
    # @!attribute pricing
    #   <p>Pricing details of the purchase recommendation.</p>
    #   @return [Types::ReservedInstancesPricing]
    class ReservedInstancesCostCalculation < Struct.new(
      nil,
      :pricing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Pricing details for your recommended reserved instance.</p>
    # @!attribute estimated_on_demand_cost
    #   <p>The remaining On-Demand cost estimated to not be covered by the recommended reserved instance, over the length of the lookback period.</p>
    #   @return [Float]
    # @!attribute monthly_reservation_eligible_cost
    #   <p>The cost of paying for the recommended reserved instance monthly.</p>
    #   @return [Float]
    # @!attribute savings_percentage
    #   <p>The savings percentage relative to the total On-Demand costs that are associated with this instance.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_amortized_reservation_cost
    #   <p>The estimated cost of your recurring monthly fees for the recommended reserved instance across the month.</p>
    #   @return [Float]
    class ReservedInstancesPricing < Struct.new(
      nil,
      :estimated_on_demand_cost,
      :monthly_reservation_eligible_cost,
      :savings_percentage,
      :estimated_monthly_amortized_reservation_cost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cost impact of the resource recommendation.</p>
    # @!attribute usages
    #   <p>Usage details of the resource recommendation.</p>
    #   @return [Array<Types::Usage>]
    # @!attribute pricing
    #   <p>Pricing details of the resource recommendation.</p>
    #   @return [Types::ResourcePricing]
    class ResourceCostCalculation < Struct.new(
      nil,
      :usages,
      :pricing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about the specified resource.</p>
    # @!attribute lambda_function
    #   <p>The Lambda function recommendation details.</p>
    #   @return [Types::LambdaFunction]
    # @!attribute ecs_service
    #   <p>The ECS service recommendation details.</p>
    #   @return [Types::EcsService]
    # @!attribute ec2_instance
    #   <p>The EC2 instance recommendation details.</p>
    #   @return [Types::Ec2Instance]
    # @!attribute ebs_volume
    #   <p>The Amazon Elastic Block Store volume recommendation details.</p>
    #   @return [Types::EbsVolume]
    # @!attribute ec2_auto_scaling_group
    #   <p>The EC2 Auto Scaling group recommendation details.</p>
    #   @return [Types::Ec2AutoScalingGroup]
    # @!attribute ec2_reserved_instances
    #   <p>The EC2 reserved instances recommendation details.</p>
    #   @return [Types::Ec2ReservedInstances]
    # @!attribute rds_reserved_instances
    #   <p>The RDS reserved instances recommendation details.</p>
    #   @return [Types::RdsReservedInstances]
    # @!attribute elasti_cache_reserved_instances
    #   <p>The ElastiCache reserved instances recommendation details.</p>
    #   @return [Types::ElastiCacheReservedInstances]
    # @!attribute open_search_reserved_instances
    #   <p>The OpenSearch reserved instances recommendation details.</p>
    #   @return [Types::OpenSearchReservedInstances]
    # @!attribute redshift_reserved_instances
    #   <p>The Redshift reserved instances recommendation details.</p>
    #   @return [Types::RedshiftReservedInstances]
    # @!attribute ec2_instance_savings_plans
    #   <p>The EC2 instance Savings Plans recommendation details.</p>
    #   @return [Types::Ec2InstanceSavingsPlans]
    # @!attribute compute_savings_plans
    #   <p>The Compute Savings Plans recommendation details.</p>
    #   @return [Types::ComputeSavingsPlans]
    # @!attribute sage_maker_savings_plans
    #   <p>The SageMaker AI Savings Plans recommendation details.</p>
    #   @return [Types::SageMakerSavingsPlans]
    # @!attribute rds_db_instance
    #   <p>The DB instance recommendation details.</p>
    #   @return [Types::RdsDbInstance]
    # @!attribute rds_db_instance_storage
    #   <p>The DB instance storage recommendation details.</p>
    #   @return [Types::RdsDbInstanceStorage]
    # @!attribute aurora_db_cluster_storage
    #   <p>The Aurora DB cluster storage recommendation details.</p>
    #   @return [Types::AuroraDbClusterStorage]
    # @!attribute dynamo_db_reserved_capacity
    #   <p>The DynamoDB reserved capacity recommendation details.</p>
    #   @return [Types::DynamoDbReservedCapacity]
    # @!attribute memory_db_reserved_instances
    #   <p>The MemoryDB reserved instances recommendation details.</p>
    #   @return [Types::MemoryDbReservedInstances]
    class ResourceDetails < Struct.new(
      :lambda_function,
      :ecs_service,
      :ec2_instance,
      :ebs_volume,
      :ec2_auto_scaling_group,
      :ec2_reserved_instances,
      :rds_reserved_instances,
      :elasti_cache_reserved_instances,
      :open_search_reserved_instances,
      :redshift_reserved_instances,
      :ec2_instance_savings_plans,
      :compute_savings_plans,
      :sage_maker_savings_plans,
      :rds_db_instance,
      :rds_db_instance_storage,
      :aurora_db_cluster_storage,
      :dynamo_db_reserved_capacity,
      :memory_db_reserved_instances,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class LambdaFunction < ResourceDetails; end
      class EcsService < ResourceDetails; end
      class Ec2Instance < ResourceDetails; end
      class EbsVolume < ResourceDetails; end
      class Ec2AutoScalingGroup < ResourceDetails; end
      class Ec2ReservedInstances < ResourceDetails; end
      class RdsReservedInstances < ResourceDetails; end
      class ElastiCacheReservedInstances < ResourceDetails; end
      class OpenSearchReservedInstances < ResourceDetails; end
      class RedshiftReservedInstances < ResourceDetails; end
      class Ec2InstanceSavingsPlans < ResourceDetails; end
      class ComputeSavingsPlans < ResourceDetails; end
      class SageMakerSavingsPlans < ResourceDetails; end
      class RdsDbInstance < ResourceDetails; end
      class RdsDbInstanceStorage < ResourceDetails; end
      class AuroraDbClusterStorage < ResourceDetails; end
      class DynamoDbReservedCapacity < ResourceDetails; end
      class MemoryDbReservedInstances < ResourceDetails; end
      class Unknown < ResourceDetails; end
    end

    # <p>The specified Amazon Resource Name (ARN) in the request doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains pricing information about the specified resource.</p>
    # @!attribute estimated_cost_before_discounts
    #   <p>The savings estimate using Amazon Web Services public pricing without incorporating any discounts.</p>
    #   @return [Float]
    # @!attribute estimated_net_unused_amortized_commitments
    #   <p>The estimated net unused amortized commitment for the recommendation.</p>
    #   @return [Float]
    # @!attribute estimated_discounts
    #   <p>The estimated discounts for a recommendation.</p>
    #   @return [Types::EstimatedDiscounts]
    # @!attribute estimated_cost_after_discounts
    #   <p>The savings estimate incorporating all discounts with Amazon Web Services, such as Reserved Instances and Savings Plans.</p>
    #   @return [Float]
    class ResourcePricing < Struct.new(
      nil,
      :estimated_cost_before_discounts,
      :estimated_net_unused_amortized_commitments,
      :estimated_discounts,
      :estimated_cost_after_discounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SageMaker Savings Plans recommendation details.</p>
    # @!attribute configuration
    #   <p>The SageMaker Savings Plans configuration used for recommendations.</p>
    #   @return [Types::SageMakerSavingsPlansConfiguration]
    # @!attribute cost_calculation
    #   <p>Cost impact of the Savings Plans purchase recommendation.</p>
    #   @return [Types::SavingsPlansCostCalculation]
    class SageMakerSavingsPlans < Struct.new(
      nil,
      :configuration,
      :cost_calculation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SageMaker Savings Plans configuration used for recommendations.</p>
    # @!attribute account_scope
    #   <p>The account scope for which you want recommendations.</p>
    #   @return [String]
    # @!attribute term
    #   <p>The Savings Plans recommendation term in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment.</p>
    #   @return [String]
    # @!attribute hourly_commitment
    #   <p>The hourly commitment for the Savings Plans type.</p>
    #   @return [String]
    class SageMakerSavingsPlansConfiguration < Struct.new(
      nil,
      :account_scope,
      :term,
      :payment_option,
      :hourly_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cost impact of the purchase recommendation.</p>
    # @!attribute pricing
    #   <p>Pricing details of the purchase recommendation.</p>
    #   @return [Types::SavingsPlansPricing]
    class SavingsPlansCostCalculation < Struct.new(
      nil,
      :pricing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Pricing information about a Savings Plan.</p>
    # @!attribute monthly_savings_plans_eligible_cost
    #   <p>The cost of paying for the recommended Savings Plan monthly.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_commitment
    #   <p>Estimated monthly commitment for the Savings Plan.</p>
    #   @return [Float]
    # @!attribute savings_percentage
    #   <p>Estimated savings as a percentage of your overall costs after buying the Savings Plan.</p>
    #   @return [Float]
    # @!attribute estimated_on_demand_cost
    #   <p>Estimated On-Demand cost you will pay after buying the Savings Plan.</p>
    #   @return [Float]
    class SavingsPlansPricing < Struct.new(
      nil,
      :monthly_savings_plans_eligible_cost,
      :estimated_monthly_commitment,
      :savings_percentage,
      :estimated_on_demand_cost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The storage configuration used for recommendations.</p>
    # @!attribute type
    #   <p>The storage type.</p>
    #   @return [String]
    # @!attribute size_in_gb
    #   <p>The storage volume.</p>
    #   @return [Float]
    class StorageConfiguration < Struct.new(
      nil,
      :type,
      :size_in_gb,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results or descriptions for the additional metrics, based on whether the metrics were or were not requested.</p>
    # @!attribute savings_percentage
    #   <p>The savings percentage based on your Amazon Web Services spend over the past 30 days.</p> <note> <p>Savings percentage is only supported when filtering by Region, account ID, or tags.</p> </note>
    #   @return [String]
    class SummaryMetricsResult < Struct.new(
      nil,
      :savings_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag structure that contains a tag key and value.</p>
    # @!attribute key
    #   <p>The key that's associated with the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that's associated with the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Sets the account status.</p>
    #   @return [String]
    # @!attribute include_member_accounts
    #   <p>Indicates whether to enroll member accounts of the organization if the account is the management account or delegated administrator.</p>
    #   @return [Boolean]
    class UpdateEnrollmentStatusRequest < Struct.new(
      nil,
      :status,
      :include_member_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The enrollment status of the account.</p>
    #   @return [String]
    class UpdateEnrollmentStatusResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_estimation_mode
    #   <p>Sets the "savings estimation mode" preference.</p>
    #   @return [String]
    # @!attribute member_account_discount_visibility
    #   <p>Sets the "member account discount visibility" preference.</p>
    #   @return [String]
    # @!attribute preferred_commitment
    #   <p>Sets the preferences for how Reserved Instances and Savings Plans cost-saving opportunities are prioritized in terms of payment option and term length.</p>
    #   @return [Types::PreferredCommitment]
    class UpdatePreferencesRequest < Struct.new(
      nil,
      :savings_estimation_mode,
      :member_account_discount_visibility,
      :preferred_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_estimation_mode
    #   <p>Shows the status of the "savings estimation mode" preference.</p>
    #   @return [String]
    # @!attribute member_account_discount_visibility
    #   <p>Shows the status of the "member account discount visibility" preference.</p>
    #   @return [String]
    # @!attribute preferred_commitment
    #   <p>Shows the updated preferences for how Reserved Instances and Savings Plans cost-saving opportunities are prioritized in terms of payment option and term length.</p>
    #   @return [Types::PreferredCommitment]
    class UpdatePreferencesResponse < Struct.new(
      nil,
      :savings_estimation_mode,
      :member_account_discount_visibility,
      :preferred_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the usage.</p>
    # @!attribute usage_type
    #   <p>The usage type.</p>
    #   @return [String]
    # @!attribute usage_amount
    #   <p>The usage amount.</p>
    #   @return [Float]
    # @!attribute operation
    #   <p>The operation value.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The product code.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The usage unit.</p>
    #   @return [String]
    class Usage < Struct.new(
      nil,
      :usage_type,
      :usage_amount,
      :operation,
      :product_code,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation exception.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The list of fields that are invalid.</p>
    #   @return [Array<Types::ValidationExceptionDetail>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by the Amazon Web Services service in a specified field.</p>
    # @!attribute field_name
    #   <p>The field name where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message with the reason for the validation exception error.</p>
    #   @return [String]
    class ValidationExceptionDetail < Struct.new(
      nil,
      :field_name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
