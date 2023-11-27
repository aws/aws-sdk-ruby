# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostOptimizationHub
  module Types

    # You are not authorized to use this operation with the given
    # parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the enrollment status of an organization's member accounts
    # in Cost Optimization Hub.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the account enrollment status was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time when the account enrollment status was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The account enrollment status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/AccountEnrollmentStatus AWS API Documentation
    #
    class AccountEnrollmentStatus < Struct.new(
      :account_id,
      :created_timestamp,
      :last_updated_timestamp,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon Elastic Block Store performance configuration of
    # the current and recommended resource configuration for a
    # recommendation.
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second.
    #   @return [Float]
    #
    # @!attribute [rw] throughput
    #   The throughput that the volume supports.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/BlockStoragePerformanceConfiguration AWS API Documentation
    #
    class BlockStoragePerformanceConfiguration < Struct.new(
      :iops,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the performance configuration for compute services such as
    # Amazon EC2, Lambda, and ECS.
    #
    # @!attribute [rw] architecture
    #   The architecture of the resource.
    #   @return [String]
    #
    # @!attribute [rw] memory_size_in_mb
    #   The memory size of the resource.
    #   @return [Integer]
    #
    # @!attribute [rw] platform
    #   The platform of the resource. The platform is the specific
    #   combination of operating system, license model, and software on an
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] v_cpu
    #   The number of vCPU cores in the resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ComputeConfiguration AWS API Documentation
    #
    class ComputeConfiguration < Struct.new(
      :architecture,
      :memory_size_in_mb,
      :platform,
      :v_cpu)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Compute Savings Plans recommendation details.
    #
    # @!attribute [rw] configuration
    #   Configuration details of the Compute Savings Plans to purchase.
    #   @return [Types::ComputeSavingsPlansConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the Savings Plans purchase recommendation.
    #   @return [Types::SavingsPlansCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ComputeSavingsPlans AWS API Documentation
    #
    class ComputeSavingsPlans < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Compute Savings Plans configuration used for recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations including the management account
    #   and member accounts if the value is set to `PAYER`. If the value is
    #   `LINKED`, recommendations are calculated for individual member
    #   accounts only.
    #   @return [String]
    #
    # @!attribute [rw] hourly_commitment
    #   The hourly commitment for the Savings Plans type.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] term
    #   The Savings Plans recommendation term in years.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ComputeSavingsPlansConfiguration AWS API Documentation
    #
    class ComputeSavingsPlansConfiguration < Struct.new(
      :account_scope,
      :hourly_commitment,
      :payment_option,
      :term)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon Elastic Block Store volume configuration of the
    # current and recommended resource configuration for a recommendation.
    #
    # @!attribute [rw] configuration
    #   The Amazon Elastic Block Store volume configuration used for
    #   recommendations.
    #   @return [Types::EbsVolumeConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the recommendation.
    #   @return [Types::ResourceCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/EbsVolume AWS API Documentation
    #
    class EbsVolume < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Elastic Block Store volume configuration used for
    # recommendations.
    #
    # @!attribute [rw] attachment_state
    #   The Amazon Elastic Block Store attachment state.
    #   @return [String]
    #
    # @!attribute [rw] performance
    #   The Amazon Elastic Block Store performance configuration.
    #   @return [Types::BlockStoragePerformanceConfiguration]
    #
    # @!attribute [rw] storage
    #   The disk storage of the Amazon Elastic Block Store volume.
    #   @return [Types::StorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/EbsVolumeConfiguration AWS API Documentation
    #
    class EbsVolumeConfiguration < Struct.new(
      :attachment_state,
      :performance,
      :storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EC2 Auto Scaling group recommendation details.
    #
    # @!attribute [rw] configuration
    #   The EC2 Auto Scaling group configuration used for recommendations.
    #   @return [Types::Ec2AutoScalingGroupConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the recommendation.
    #   @return [Types::ResourceCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2AutoScalingGroup AWS API Documentation
    #
    class Ec2AutoScalingGroup < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EC2 auto scaling group configuration used for recommendations.
    #
    # @!attribute [rw] instance
    #   Details about the instance.
    #   @return [Types::InstanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2AutoScalingGroupConfiguration AWS API Documentation
    #
    class Ec2AutoScalingGroupConfiguration < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the EC2 instance configuration of the current and
    # recommended resource configuration for a recommendation.
    #
    # @!attribute [rw] configuration
    #   The EC2 instance configuration used for recommendations.
    #   @return [Types::Ec2InstanceConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the recommendation.
    #   @return [Types::ResourceCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2Instance AWS API Documentation
    #
    class Ec2Instance < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EC2 instance configuration used for recommendations.
    #
    # @!attribute [rw] instance
    #   Details about the instance.
    #   @return [Types::InstanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2InstanceConfiguration AWS API Documentation
    #
    class Ec2InstanceConfiguration < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EC2 instance Savings Plans recommendation details.
    #
    # @!attribute [rw] configuration
    #   The EC2 instance Savings Plans configuration used for
    #   recommendations.
    #   @return [Types::Ec2InstanceSavingsPlansConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the Savings Plans purchase recommendation.
    #   @return [Types::SavingsPlansCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2InstanceSavingsPlans AWS API Documentation
    #
    class Ec2InstanceSavingsPlans < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EC2 instance Savings Plans configuration used for recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] hourly_commitment
    #   The hourly commitment for the Savings Plans type.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family of the recommended Savings Plan.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] savings_plans_region
    #   The Amazon Web Services Region of the commitment.
    #   @return [String]
    #
    # @!attribute [rw] term
    #   The Savings Plans recommendation term in years.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2InstanceSavingsPlansConfiguration AWS API Documentation
    #
    class Ec2InstanceSavingsPlansConfiguration < Struct.new(
      :account_scope,
      :hourly_commitment,
      :instance_family,
      :payment_option,
      :savings_plans_region,
      :term)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EC2 reserved instances recommendation details.
    #
    # @!attribute [rw] configuration
    #   The EC2 reserved instances configuration used for recommendations.
    #   @return [Types::Ec2ReservedInstancesConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the purchase recommendation.
    #   @return [Types::ReservedInstancesCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2ReservedInstances AWS API Documentation
    #
    class Ec2ReservedInstances < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EC2 reserved instances configuration used for recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current generation
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] monthly_recurring_cost
    #   How much purchasing reserved instances costs you on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] normalized_units_to_purchase
    #   The number of normalized units that Amazon Web Services recommends
    #   that you purchase.
    #   @return [String]
    #
    # @!attribute [rw] number_of_instances_to_purchase
    #   The number of instances that Amazon Web Services recommends that you
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] offering_class
    #   Indicates whether the recommendation is for standard or convertible
    #   reservations.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the recommended reservation. The platform is the
    #   specific combination of operating system, license model, and
    #   software on an instance.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_region
    #   The Amazon Web Services Region of the commitment.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The service that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommendation is size flexible.
    #   @return [Boolean]
    #
    # @!attribute [rw] tenancy
    #   Determines whether the recommended reservation is dedicated or
    #   shared.
    #   @return [String]
    #
    # @!attribute [rw] term
    #   The reserved instances recommendation term in years.
    #   @return [String]
    #
    # @!attribute [rw] upfront_cost
    #   How much purchasing this instance costs you upfront.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Ec2ReservedInstancesConfiguration AWS API Documentation
    #
    class Ec2ReservedInstancesConfiguration < Struct.new(
      :account_scope,
      :current_generation,
      :instance_family,
      :instance_type,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :offering_class,
      :payment_option,
      :platform,
      :reserved_instances_region,
      :service,
      :size_flex_eligible,
      :tenancy,
      :term,
      :upfront_cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ECS service recommendation details.
    #
    # @!attribute [rw] configuration
    #   The ECS service configuration used for recommendations.
    #   @return [Types::EcsServiceConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the recommendation.
    #   @return [Types::ResourceCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/EcsService AWS API Documentation
    #
    class EcsService < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ECS service configuration used for recommendations.
    #
    # @!attribute [rw] compute
    #   Details about the compute configuration.
    #   @return [Types::ComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/EcsServiceConfiguration AWS API Documentation
    #
    class EcsServiceConfiguration < Struct.new(
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ElastiCache reserved instances recommendation details.
    #
    # @!attribute [rw] configuration
    #   The ElastiCache reserved instances configuration used for
    #   recommendations.
    #   @return [Types::ElastiCacheReservedInstancesConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the purchase recommendation.
    #   @return [Types::ReservedInstancesCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ElastiCacheReservedInstances AWS API Documentation
    #
    class ElastiCacheReservedInstances < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ElastiCache reserved instances configuration used for
    # recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current generation
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] monthly_recurring_cost
    #   How much purchasing reserved instances costs you on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] normalized_units_to_purchase
    #   The number of normalized units that Amazon Web Services recommends
    #   that you purchase.
    #   @return [String]
    #
    # @!attribute [rw] number_of_instances_to_purchase
    #   The number of instances that Amazon Web Services recommends that you
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_region
    #   The Amazon Web Services Region of the commitment.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The service that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommendation is size flexible.
    #   @return [Boolean]
    #
    # @!attribute [rw] term
    #   The reserved instances recommendation term in years.
    #   @return [String]
    #
    # @!attribute [rw] upfront_cost
    #   How much purchasing this instance costs you upfront.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ElastiCacheReservedInstancesConfiguration AWS API Documentation
    #
    class ElastiCacheReservedInstancesConfiguration < Struct.new(
      :account_scope,
      :current_generation,
      :instance_family,
      :instance_type,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :payment_option,
      :reserved_instances_region,
      :service,
      :size_flex_eligible,
      :term,
      :upfront_cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # Estimated discount details of the current and recommended resource
    # configuration for a recommendation.
    #
    # @!attribute [rw] other_discount
    #   Estimated other discounts include all discounts that are not
    #   itemized. Itemized discounts include `reservedInstanceDiscount` and
    #   `savingsPlansDiscount`.
    #   @return [Float]
    #
    # @!attribute [rw] reserved_instances_discount
    #   Estimated reserved instance discounts.
    #   @return [Float]
    #
    # @!attribute [rw] savings_plans_discount
    #   Estimated Savings Plans discounts.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/EstimatedDiscounts AWS API Documentation
    #
    class EstimatedDiscounts < Struct.new(
      :other_discount,
      :reserved_instances_discount,
      :savings_plans_discount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of
    # recommendations. Filters recommendations by different dimensions.
    #
    # @!attribute [rw] account_ids
    #   The account that the recommendation is for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] action_types
    #   The type of action you can take by adopting the recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] implementation_efforts
    #   The effort required to implement the recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommendation_ids
    #   The IDs for the recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Region of the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Name (ARN) of the recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_ids
    #   The resource ID of the recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The resource type of the recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] restart_needed
    #   Whether or not implementing the recommendation requires a restart.
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback_possible
    #   Whether or not implementing the recommendation can be rolled back.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags assigned to the recommendation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :account_ids,
      :action_types,
      :implementation_efforts,
      :recommendation_ids,
      :regions,
      :resource_arns,
      :resource_ids,
      :resource_types,
      :restart_needed,
      :rollback_possible,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/GetPreferencesRequest AWS API Documentation
    #
    class GetPreferencesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] member_account_discount_visibility
    #   Retrieves the status of the "member account discount visibility"
    #   preference.
    #   @return [String]
    #
    # @!attribute [rw] savings_estimation_mode
    #   Retrieves the status of the "savings estimation mode" preference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/GetPreferencesResponse AWS API Documentation
    #
    class GetPreferencesResponse < Struct.new(
      :member_account_discount_visibility,
      :savings_estimation_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_id
    #   The ID for the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/GetRecommendationRequest AWS API Documentation
    #
    class GetRecommendationRequest < Struct.new(
      :recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account that the recommendation is for.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of action you can take by adopting the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] cost_calculation_lookback_period_in_days
    #   The lookback period used to calculate cost impact for a
    #   recommendation.
    #   @return [Integer]
    #
    # @!attribute [rw] currency_code
    #   The currency code used for the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] current_resource_details
    #   The details for the resource.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] current_resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_cost
    #   The estimated monthly cost of the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated monthly savings amount for the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_savings_over_cost_calculation_lookback_period
    #   The estimated savings amount over the lookback period used to
    #   calculate cost impact for a recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_savings_percentage
    #   The estimated savings percentage relative to the total cost over the
    #   cost calculation lookback period.
    #   @return [Float]
    #
    # @!attribute [rw] implementation_effort
    #   The effort required to implement the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The time when the recommendation was last generated.
    #   @return [Time]
    #
    # @!attribute [rw] recommendation_id
    #   The ID for the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_lookback_period_in_days
    #   The lookback period that's used to generate the recommendation.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_resource_details
    #   The details about the recommended resource.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] recommended_resource_type
    #   The resource type of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the resource. This is the same as the
    #   Amazon Resource Name (ARN), if available.
    #   @return [String]
    #
    # @!attribute [rw] restart_needed
    #   Whether or not implementing the recommendation requires a restart.
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback_possible
    #   Whether or not implementing the recommendation can be rolled back.
    #   @return [Boolean]
    #
    # @!attribute [rw] source
    #   The source of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the resource for which the
    #   recommendation exists.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/GetRecommendationResponse AWS API Documentation
    #
    class GetRecommendationResponse < Struct.new(
      :account_id,
      :action_type,
      :cost_calculation_lookback_period_in_days,
      :currency_code,
      :current_resource_details,
      :current_resource_type,
      :estimated_monthly_cost,
      :estimated_monthly_savings,
      :estimated_savings_over_cost_calculation_lookback_period,
      :estimated_savings_percentage,
      :implementation_effort,
      :last_refresh_timestamp,
      :recommendation_id,
      :recommendation_lookback_period_in_days,
      :recommended_resource_details,
      :recommended_resource_type,
      :region,
      :resource_arn,
      :resource_id,
      :restart_needed,
      :rollback_possible,
      :source,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Instance configuration used for recommendations.
    #
    # @!attribute [rw] type
    #   Details about the type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/InstanceConfiguration AWS API Documentation
    #
    class InstanceConfiguration < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error on the server occurred during the processing of your request.
    # Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda function recommendation details.
    #
    # @!attribute [rw] configuration
    #   The Lambda function configuration used for recommendations.
    #   @return [Types::LambdaFunctionConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the recommendation.
    #   @return [Types::ResourceCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/LambdaFunction AWS API Documentation
    #
    class LambdaFunction < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda function configuration used for recommendations.
    #
    # @!attribute [rw] compute
    #   Details about the compute configuration.
    #   @return [Types::ComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/LambdaFunctionConfiguration AWS API Documentation
    #
    class LambdaFunctionConfiguration < Struct.new(
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The enrollment status of a specific account ID in the organization.
    #   @return [String]
    #
    # @!attribute [rw] include_organization_info
    #   Indicates whether to return the enrollment status for the
    #   organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that are returned for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListEnrollmentStatusesRequest AWS API Documentation
    #
    class ListEnrollmentStatusesRequest < Struct.new(
      :account_id,
      :include_organization_info,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The account enrollment statuses.
    #   @return [Array<Types::AccountEnrollmentStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListEnrollmentStatusesResponse AWS API Documentation
    #
    class ListEnrollmentStatusesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Describes a filter that returns a more specific list of
    #   recommendations. Filters recommendations by different dimensions.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] group_by
    #   The grouping of recommendations by a dimension.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendations that are returned for the
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListRecommendationSummariesRequest AWS API Documentation
    #
    class ListRecommendationSummariesRequest < Struct.new(
      :filter,
      :group_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] currency_code
    #   The currency code used for the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] estimated_total_deduped_savings
    #   The total overall savings for the aggregated view.
    #   @return [Float]
    #
    # @!attribute [rw] group_by
    #   The dimension used to group the recommendations by.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   List of all savings recommendations.
    #   @return [Array<Types::RecommendationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListRecommendationSummariesResponse AWS API Documentation
    #
    class ListRecommendationSummariesResponse < Struct.new(
      :currency_code,
      :estimated_total_deduped_savings,
      :group_by,
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The constraints that you want all returned recommendations to match.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] include_all_recommendations
    #   List of all recommendations for a resource, or a single
    #   recommendation if de-duped by `resourceId`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendations that are returned for the
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   The ordering of recommendations by a dimension.
    #   @return [Types::OrderBy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListRecommendationsRequest AWS API Documentation
    #
    class ListRecommendationsRequest < Struct.new(
      :filter,
      :include_all_recommendations,
      :max_results,
      :next_token,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of all savings recommendations.
    #   @return [Array<Types::Recommendation>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListRecommendationsResponse AWS API Documentation
    #
    class ListRecommendationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpenSearch reserved instances recommendation details.
    #
    # @!attribute [rw] configuration
    #   The OpenSearch reserved instances configuration used for
    #   recommendations.
    #   @return [Types::OpenSearchReservedInstancesConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the purchase recommendation.
    #   @return [Types::ReservedInstancesCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/OpenSearchReservedInstances AWS API Documentation
    #
    class OpenSearchReservedInstances < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpenSearch reserved instances configuration used for
    # recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current generation
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] monthly_recurring_cost
    #   How much purchasing reserved instances costs you on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] normalized_units_to_purchase
    #   The number of normalized units that Amazon Web Services recommends
    #   that you purchase.
    #   @return [String]
    #
    # @!attribute [rw] number_of_instances_to_purchase
    #   The number of instances that Amazon Web Services recommends that you
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_region
    #   The Amazon Web Services Region of the commitment.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The service that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommendation is size flexible.
    #   @return [Boolean]
    #
    # @!attribute [rw] term
    #   The reserved instances recommendation term in years.
    #   @return [String]
    #
    # @!attribute [rw] upfront_cost
    #   How much purchasing this instance costs you upfront.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/OpenSearchReservedInstancesConfiguration AWS API Documentation
    #
    class OpenSearchReservedInstancesConfiguration < Struct.new(
      :account_scope,
      :current_generation,
      :instance_type,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :payment_option,
      :reserved_instances_region,
      :service,
      :size_flex_eligible,
      :term,
      :upfront_cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how rows will be sorted in the response.
    #
    # @!attribute [rw] dimension
    #   Sorts by dimension values.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order that's used to sort the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/OrderBy AWS API Documentation
    #
    class OrderBy < Struct.new(
      :dimension,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RDS reserved instances recommendation details.
    #
    # @!attribute [rw] configuration
    #   The RDS reserved instances configuration used for recommendations.
    #   @return [Types::RdsReservedInstancesConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the purchase recommendation.
    #   @return [Types::ReservedInstancesCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/RdsReservedInstances AWS API Documentation
    #
    class RdsReservedInstances < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RDS reserved instances configuration used for recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current generation
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] database_edition
    #   The database edition that the recommended reservation supports.
    #   @return [String]
    #
    # @!attribute [rw] database_engine
    #   The database engine that the recommended reservation supports.
    #   @return [String]
    #
    # @!attribute [rw] deployment_option
    #   Determines whether the recommendation is for a reservation in a
    #   single Availability Zone or a reservation with a backup in a second
    #   Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model that the recommended reservation supports.
    #   @return [String]
    #
    # @!attribute [rw] monthly_recurring_cost
    #   How much purchasing this instance costs you on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] normalized_units_to_purchase
    #   The number of normalized units that Amazon Web Services recommends
    #   that you purchase.
    #   @return [String]
    #
    # @!attribute [rw] number_of_instances_to_purchase
    #   The number of instances that Amazon Web Services recommends that you
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_region
    #   The Amazon Web Services Region of the commitment.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The service that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommendation is size flexible.
    #   @return [Boolean]
    #
    # @!attribute [rw] term
    #   The reserved instances recommendation term in years.
    #   @return [String]
    #
    # @!attribute [rw] upfront_cost
    #   How much purchasing this instance costs you upfront.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/RdsReservedInstancesConfiguration AWS API Documentation
    #
    class RdsReservedInstancesConfiguration < Struct.new(
      :account_scope,
      :current_generation,
      :database_edition,
      :database_engine,
      :deployment_option,
      :instance_family,
      :instance_type,
      :license_model,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :payment_option,
      :reserved_instances_region,
      :service,
      :size_flex_eligible,
      :term,
      :upfront_cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation.
    #
    # @!attribute [rw] account_id
    #   The account that the recommendation is for.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of tasks that can be carried out by this action.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code used for the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] current_resource_summary
    #   Describes the current resource.
    #   @return [String]
    #
    # @!attribute [rw] current_resource_type
    #   The current resource type.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_cost
    #   The estimated monthly cost for the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated monthly savings amount for the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_savings_percentage
    #   The estimated savings percentage relative to the total cost over the
    #   cost calculation lookback period.
    #   @return [Float]
    #
    # @!attribute [rw] implementation_effort
    #   The effort required to implement the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The time when the recommendation was last generated.
    #   @return [Time]
    #
    # @!attribute [rw] recommendation_id
    #   The ID for the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_lookback_period_in_days
    #   The lookback period that's used to generate the recommendation.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_resource_summary
    #   Describes the recommended resource.
    #   @return [String]
    #
    # @!attribute [rw] recommended_resource_type
    #   The recommended resource type.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID for the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] restart_needed
    #   Whether or not implementing the recommendation requires a restart.
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback_possible
    #   Whether or not implementing the recommendation can be rolled back.
    #   @return [Boolean]
    #
    # @!attribute [rw] source
    #   The source of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags assigned to the recommendation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :account_id,
      :action_type,
      :currency_code,
      :current_resource_summary,
      :current_resource_type,
      :estimated_monthly_cost,
      :estimated_monthly_savings,
      :estimated_savings_percentage,
      :implementation_effort,
      :last_refresh_timestamp,
      :recommendation_id,
      :recommendation_lookback_period_in_days,
      :recommended_resource_summary,
      :recommended_resource_type,
      :region,
      :resource_arn,
      :resource_id,
      :restart_needed,
      :rollback_possible,
      :source,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of rightsizing recommendations, including de-duped savings
    # from all types of recommendations.
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated total savings resulting from modifications, on a
    #   monthly basis.
    #   @return [Float]
    #
    # @!attribute [rw] group
    #   The grouping of recommendations.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_count
    #   The total number of instance recommendations.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/RecommendationSummary AWS API Documentation
    #
    class RecommendationSummary < Struct.new(
      :estimated_monthly_savings,
      :group,
      :recommendation_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Redshift reserved instances recommendation details.
    #
    # @!attribute [rw] configuration
    #   The Redshift reserved instances configuration used for
    #   recommendations.
    #   @return [Types::RedshiftReservedInstancesConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the purchase recommendation.
    #   @return [Types::ReservedInstancesCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/RedshiftReservedInstances AWS API Documentation
    #
    class RedshiftReservedInstances < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Redshift reserved instances configuration used for
    # recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current generation
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] monthly_recurring_cost
    #   How much purchasing reserved instances costs you on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] normalized_units_to_purchase
    #   The number of normalized units that Amazon Web Services recommends
    #   that you purchase.
    #   @return [String]
    #
    # @!attribute [rw] number_of_instances_to_purchase
    #   The number of instances that Amazon Web Services recommends that you
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_region
    #   The Amazon Web Services Region of the commitment.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The service that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommendation is size flexible.
    #   @return [Boolean]
    #
    # @!attribute [rw] term
    #   The reserved instances recommendation term in years.
    #   @return [String]
    #
    # @!attribute [rw] upfront_cost
    #   How much purchasing this instance costs you upfront.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/RedshiftReservedInstancesConfiguration AWS API Documentation
    #
    class RedshiftReservedInstancesConfiguration < Struct.new(
      :account_scope,
      :current_generation,
      :instance_family,
      :instance_type,
      :monthly_recurring_cost,
      :normalized_units_to_purchase,
      :number_of_instances_to_purchase,
      :payment_option,
      :reserved_instances_region,
      :service,
      :size_flex_eligible,
      :term,
      :upfront_cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cost impact of the purchase recommendation.
    #
    # @!attribute [rw] pricing
    #   Pricing details of the purchase recommendation.
    #   @return [Types::ReservedInstancesPricing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ReservedInstancesCostCalculation AWS API Documentation
    #
    class ReservedInstancesCostCalculation < Struct.new(
      :pricing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Pricing details for your recommended reserved instance.
    #
    # @!attribute [rw] estimated_monthly_amortized_reservation_cost
    #   The estimated cost of your recurring monthly fees for the
    #   recommended reserved instance across the month.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_on_demand_cost
    #   The remaining On-Demand cost estimated to not be covered by the
    #   recommended reserved instance, over the length of the lookback
    #   period.
    #   @return [Float]
    #
    # @!attribute [rw] monthly_reservation_eligible_cost
    #   The cost of paying for the recommended reserved instance monthly.
    #   @return [Float]
    #
    # @!attribute [rw] savings_percentage
    #   The savings percentage relative to the total On-Demand costs that
    #   are associated with this instance.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ReservedInstancesPricing AWS API Documentation
    #
    class ReservedInstancesPricing < Struct.new(
      :estimated_monthly_amortized_reservation_cost,
      :estimated_on_demand_cost,
      :monthly_reservation_eligible_cost,
      :savings_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cost impact of the resource recommendation.
    #
    # @!attribute [rw] pricing
    #   Pricing details of the resource recommendation.
    #   @return [Types::ResourcePricing]
    #
    # @!attribute [rw] usages
    #   Usage details of the resource recommendation.
    #   @return [Array<Types::Usage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ResourceCostCalculation AWS API Documentation
    #
    class ResourceCostCalculation < Struct.new(
      :pricing,
      :usages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about the specified resource.
    #
    # @note ResourceDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceDetails corresponding to the set member.
    #
    # @!attribute [rw] compute_savings_plans
    #   The Compute Savings Plans recommendation details.
    #   @return [Types::ComputeSavingsPlans]
    #
    # @!attribute [rw] ebs_volume
    #   The Amazon Elastic Block Store volume recommendation details.
    #   @return [Types::EbsVolume]
    #
    # @!attribute [rw] ec2_auto_scaling_group
    #   The EC2 Auto Scaling group recommendation details.
    #   @return [Types::Ec2AutoScalingGroup]
    #
    # @!attribute [rw] ec2_instance
    #   The EC2 instance recommendation details.
    #   @return [Types::Ec2Instance]
    #
    # @!attribute [rw] ec2_instance_savings_plans
    #   The EC2 instance Savings Plans recommendation details.
    #   @return [Types::Ec2InstanceSavingsPlans]
    #
    # @!attribute [rw] ec2_reserved_instances
    #   The EC2 reserved instances recommendation details.
    #   @return [Types::Ec2ReservedInstances]
    #
    # @!attribute [rw] ecs_service
    #   The ECS service recommendation details.
    #   @return [Types::EcsService]
    #
    # @!attribute [rw] elasti_cache_reserved_instances
    #   The ElastiCache reserved instances recommendation details.
    #   @return [Types::ElastiCacheReservedInstances]
    #
    # @!attribute [rw] lambda_function
    #   The Lambda function recommendation details.
    #   @return [Types::LambdaFunction]
    #
    # @!attribute [rw] open_search_reserved_instances
    #   The OpenSearch reserved instances recommendation details.
    #   @return [Types::OpenSearchReservedInstances]
    #
    # @!attribute [rw] rds_reserved_instances
    #   The RDS reserved instances recommendation details.
    #   @return [Types::RdsReservedInstances]
    #
    # @!attribute [rw] redshift_reserved_instances
    #   The Redshift reserved instances recommendation details.
    #   @return [Types::RedshiftReservedInstances]
    #
    # @!attribute [rw] sage_maker_savings_plans
    #   The SageMaker Savings Plans recommendation details.
    #   @return [Types::SageMakerSavingsPlans]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :compute_savings_plans,
      :ebs_volume,
      :ec2_auto_scaling_group,
      :ec2_instance,
      :ec2_instance_savings_plans,
      :ec2_reserved_instances,
      :ecs_service,
      :elasti_cache_reserved_instances,
      :lambda_function,
      :open_search_reserved_instances,
      :rds_reserved_instances,
      :redshift_reserved_instances,
      :sage_maker_savings_plans,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ComputeSavingsPlans < ResourceDetails; end
      class EbsVolume < ResourceDetails; end
      class Ec2AutoScalingGroup < ResourceDetails; end
      class Ec2Instance < ResourceDetails; end
      class Ec2InstanceSavingsPlans < ResourceDetails; end
      class Ec2ReservedInstances < ResourceDetails; end
      class EcsService < ResourceDetails; end
      class ElastiCacheReservedInstances < ResourceDetails; end
      class LambdaFunction < ResourceDetails; end
      class OpenSearchReservedInstances < ResourceDetails; end
      class RdsReservedInstances < ResourceDetails; end
      class RedshiftReservedInstances < ResourceDetails; end
      class SageMakerSavingsPlans < ResourceDetails; end
      class Unknown < ResourceDetails; end
    end

    # The specified Amazon Resource Name (ARN) in the request doesn't
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains pricing information about the specified resource.
    #
    # @!attribute [rw] estimated_cost_after_discounts
    #   The savings estimate incorporating all discounts with Amazon Web
    #   Services, such as Reserved Instances and Savings Plans.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_cost_before_discounts
    #   The savings estimate using Amazon Web Services public pricing
    #   without incorporating any discounts.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_discounts
    #   The estimated discounts for a recommendation.
    #   @return [Types::EstimatedDiscounts]
    #
    # @!attribute [rw] estimated_net_unused_amortized_commitments
    #   The estimated net unused amortized commitment for the
    #   recommendation.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ResourcePricing AWS API Documentation
    #
    class ResourcePricing < Struct.new(
      :estimated_cost_after_discounts,
      :estimated_cost_before_discounts,
      :estimated_discounts,
      :estimated_net_unused_amortized_commitments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SageMaker Savings Plans recommendation details.
    #
    # @!attribute [rw] configuration
    #   The SageMaker Savings Plans configuration used for recommendations.
    #   @return [Types::SageMakerSavingsPlansConfiguration]
    #
    # @!attribute [rw] cost_calculation
    #   Cost impact of the Savings Plans purchase recommendation.
    #   @return [Types::SavingsPlansCostCalculation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/SageMakerSavingsPlans AWS API Documentation
    #
    class SageMakerSavingsPlans < Struct.new(
      :configuration,
      :cost_calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SageMaker Savings Plans configuration used for recommendations.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] hourly_commitment
    #   The hourly commitment for the Savings Plans type.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the commitment.
    #   @return [String]
    #
    # @!attribute [rw] term
    #   The Savings Plans recommendation term in years.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/SageMakerSavingsPlansConfiguration AWS API Documentation
    #
    class SageMakerSavingsPlansConfiguration < Struct.new(
      :account_scope,
      :hourly_commitment,
      :payment_option,
      :term)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cost impact of the purchase recommendation.
    #
    # @!attribute [rw] pricing
    #   Pricing details of the purchase recommendation.
    #   @return [Types::SavingsPlansPricing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/SavingsPlansCostCalculation AWS API Documentation
    #
    class SavingsPlansCostCalculation < Struct.new(
      :pricing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Pricing information about a Savings Plan.
    #
    # @!attribute [rw] estimated_monthly_commitment
    #   Estimated monthly commitment for the Savings Plan.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_on_demand_cost
    #   Estimated On-Demand cost you will pay after buying the Savings Plan.
    #   @return [Float]
    #
    # @!attribute [rw] monthly_savings_plans_eligible_cost
    #   The cost of paying for the recommended Savings Plan monthly.
    #   @return [Float]
    #
    # @!attribute [rw] savings_percentage
    #   Estimated savings as a percentage of your overall costs after buying
    #   the Savings Plan.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/SavingsPlansPricing AWS API Documentation
    #
    class SavingsPlansPricing < Struct.new(
      :estimated_monthly_commitment,
      :estimated_on_demand_cost,
      :monthly_savings_plans_eligible_cost,
      :savings_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The storage configuration used for recommendations.
    #
    # @!attribute [rw] size_in_gb
    #   The storage volume.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The storage type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/StorageConfiguration AWS API Documentation
    #
    class StorageConfiguration < Struct.new(
      :size_in_gb,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag structure that contains a tag key and value.
    #
    # @!attribute [rw] key
    #   The key that's associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that's associated with the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Tag AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_member_accounts
    #   Indicates whether to enroll member accounts of the organization if
    #   the account is the management account.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Sets the account status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/UpdateEnrollmentStatusRequest AWS API Documentation
    #
    class UpdateEnrollmentStatusRequest < Struct.new(
      :include_member_accounts,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The enrollment status of the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/UpdateEnrollmentStatusResponse AWS API Documentation
    #
    class UpdateEnrollmentStatusResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_discount_visibility
    #   Sets the "member account discount visibility" preference.
    #   @return [String]
    #
    # @!attribute [rw] savings_estimation_mode
    #   Sets the "savings estimation mode" preference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/UpdatePreferencesRequest AWS API Documentation
    #
    class UpdatePreferencesRequest < Struct.new(
      :member_account_discount_visibility,
      :savings_estimation_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_account_discount_visibility
    #   Shows the status of the "member account discount visibility"
    #   preference.
    #   @return [String]
    #
    # @!attribute [rw] savings_estimation_mode
    #   Shows the status of the "savings estimation mode" preference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/UpdatePreferencesResponse AWS API Documentation
    #
    class UpdatePreferencesResponse < Struct.new(
      :member_account_discount_visibility,
      :savings_estimation_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the usage.
    #
    # @!attribute [rw] operation
    #   The operation value.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The product code.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The usage unit.
    #   @return [String]
    #
    # @!attribute [rw] usage_amount
    #   The usage amount.
    #   @return [Float]
    #
    # @!attribute [rw] usage_type
    #   The usage type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/Usage AWS API Documentation
    #
    class Usage < Struct.new(
      :operation,
      :product_code,
      :unit,
      :usage_amount,
      :usage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] fields
    #   The list of fields that are invalid.
    #   @return [Array<Types::ValidationExceptionDetail>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :fields,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the Amazon Web
    # Services service in a specified field.
    #
    # @!attribute [rw] field_name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message with the reason for the validation exception error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ValidationExceptionDetail AWS API Documentation
    #
    class ValidationExceptionDetail < Struct.new(
      :field_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
