# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BCMPricingCalculator
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an action to add a Reserved Instance to a bill scenario.
    #
    # @!attribute [rw] reserved_instances_offering_id
    #   The ID of the Reserved Instance offering to add. For more
    #   information, see [ DescribeReservedInstancesOfferings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeReservedInstancesOfferings.html
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances to add for this Reserved Instance offering.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/AddReservedInstanceAction AWS API Documentation
    #
    class AddReservedInstanceAction < Struct.new(
      :reserved_instances_offering_id,
      :instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an action to add a Savings Plan to a bill scenario.
    #
    # @!attribute [rw] savings_plan_offering_id
    #   The ID of the Savings Plan offering to add. For more information,
    #   see [ DescribeSavingsPlansOfferings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/savingsplans/latest/APIReference/API_DescribeSavingsPlansOfferings.html
    #   @return [String]
    #
    # @!attribute [rw] commitment
    #   The hourly commitment, in the same currency of the
    #   `savingsPlanOfferingId`. This is a value between 0.001 and 1
    #   million. You cannot specify more than five digits after the decimal
    #   point.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/AddSavingsPlanAction AWS API Documentation
    #
    class AddSavingsPlanAction < Struct.new(
      :savings_plan_offering_id,
      :commitment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entry object in the batch operation to create bill
    # scenario commitment modifications.
    #
    # @!attribute [rw] key
    #   A unique identifier for this entry in the batch operation. This can
    #   be any valid string. This key is useful to identify errors
    #   associated with any commitment entry as any error is returned with
    #   this key.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   An optional group identifier for the commitment modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID to which this commitment will be
    #   applied to.
    #   @return [String]
    #
    # @!attribute [rw] commitment_action
    #   The specific commitment action to be taken (e.g., adding a Reserved
    #   Instance or Savings Plan).
    #   @return [Types::BillScenarioCommitmentModificationAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioCommitmentModificationEntry AWS API Documentation
    #
    class BatchCreateBillScenarioCommitmentModificationEntry < Struct.new(
      :key,
      :group,
      :usage_account_id,
      :commitment_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred during a batch create operation for
    # bill scenario commitment modifications.
    #
    # @!attribute [rw] key
    #   The key of the entry that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A descriptive message for the error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the failed operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioCommitmentModificationError AWS API Documentation
    #
    class BatchCreateBillScenarioCommitmentModificationError < Struct.new(
      :key,
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a successfully created item in a batch operation for bill
    # scenario commitment modifications.
    #
    # @!attribute [rw] key
    #   The key of the successfully created entry. This can be any valid
    #   string. This key is useful to identify errors associated with any
    #   commitment entry as any error is returned with this key.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier assigned to the created commitment
    #   modification.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for the created commitment modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with the created
    #   commitment modification.
    #   @return [String]
    #
    # @!attribute [rw] commitment_action
    #   The specific commitment action that was taken.
    #   @return [Types::BillScenarioCommitmentModificationAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioCommitmentModificationItem AWS API Documentation
    #
    class BatchCreateBillScenarioCommitmentModificationItem < Struct.new(
      :key,
      :id,
      :group,
      :usage_account_id,
      :commitment_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The ID of the Bill Scenario for which you want to create the modeled
    #   commitment.
    #   @return [String]
    #
    # @!attribute [rw] commitment_modifications
    #   List of commitments that you want to model in the Bill Scenario.
    #   @return [Array<Types::BatchCreateBillScenarioCommitmentModificationEntry>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioCommitmentModificationRequest AWS API Documentation
    #
    class BatchCreateBillScenarioCommitmentModificationRequest < Struct.new(
      :bill_scenario_id,
      :commitment_modifications,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Returns the list of successful commitment line items that were
    #   created for the Bill Scenario.
    #   @return [Array<Types::BatchCreateBillScenarioCommitmentModificationItem>]
    #
    # @!attribute [rw] errors
    #   Returns the list of errors reason and the commitment item keys that
    #   cannot be created in the Bill Scenario.
    #   @return [Array<Types::BatchCreateBillScenarioCommitmentModificationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioCommitmentModificationResponse AWS API Documentation
    #
    class BatchCreateBillScenarioCommitmentModificationResponse < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entry in a batch operation to create bill scenario usage
    # modifications.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code for this usage modification.
    #   This identifies the specific Amazon Web Services service to the
    #   customer as a unique short abbreviation. For example, `AmazonEC2`
    #   and `AWSKMS`.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   Describes the usage details of the usage line item.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this usage modification.
    #   Describes the specific Amazon Web Services operation that this usage
    #   line models. For example, `RunInstances` indicates the operation of
    #   an Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that this usage line uses.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   A unique identifier for this entry in the batch operation. This can
    #   be any valid string. This key is useful to identify errors
    #   associated with any usage entry as any error is returned with this
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   An optional group identifier for the usage modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID to which this usage will be
    #   applied to.
    #   @return [String]
    #
    # @!attribute [rw] amounts
    #   The amount of usage you want to create for the service use you are
    #   modeling.
    #   @return [Array<Types::UsageAmount>]
    #
    # @!attribute [rw] historical_usage
    #   Historical usage data associated with this modification, if
    #   available.
    #   @return [Types::HistoricalUsageEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioUsageModificationEntry AWS API Documentation
    #
    class BatchCreateBillScenarioUsageModificationEntry < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :availability_zone,
      :key,
      :group,
      :usage_account_id,
      :amounts,
      :historical_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred during a batch create operation for
    # bill scenario usage modifications.
    #
    # @!attribute [rw] key
    #   The key of the entry that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A descriptive message for the error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the failed operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioUsageModificationError AWS API Documentation
    #
    class BatchCreateBillScenarioUsageModificationError < Struct.new(
      :key,
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a successfully created item in a batch operation for bill
    # scenario usage modifications.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code for this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage that was modified.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location associated with this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone associated with this usage modification, if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier assigned to the created usage modification.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for the created usage modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with the created usage
    #   modification.
    #   @return [String]
    #
    # @!attribute [rw] quantities
    #   The modified usage quantities.
    #   @return [Array<Types::UsageQuantity>]
    #
    # @!attribute [rw] historical_usage
    #   Historical usage data associated with this modification, if
    #   available.
    #   @return [Types::HistoricalUsageEntity]
    #
    # @!attribute [rw] key
    #   The key of the successfully created entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioUsageModificationItem AWS API Documentation
    #
    class BatchCreateBillScenarioUsageModificationItem < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :location,
      :availability_zone,
      :id,
      :group,
      :usage_account_id,
      :quantities,
      :historical_usage,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The ID of the Bill Scenario for which you want to create the modeled
    #   usage.
    #   @return [String]
    #
    # @!attribute [rw] usage_modifications
    #   List of usage that you want to model in the Bill Scenario.
    #   @return [Array<Types::BatchCreateBillScenarioUsageModificationEntry>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioUsageModificationRequest AWS API Documentation
    #
    class BatchCreateBillScenarioUsageModificationRequest < Struct.new(
      :bill_scenario_id,
      :usage_modifications,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Returns the list of successful usage line items that were created
    #   for the Bill Scenario.
    #   @return [Array<Types::BatchCreateBillScenarioUsageModificationItem>]
    #
    # @!attribute [rw] errors
    #   Returns the list of errors reason and the usage item keys that
    #   cannot be created in the Bill Scenario.
    #   @return [Array<Types::BatchCreateBillScenarioUsageModificationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioUsageModificationResponse AWS API Documentation
    #
    class BatchCreateBillScenarioUsageModificationResponse < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entry in a batch operation to create workload estimate
    # usage.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code for this usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage being estimated.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   A unique identifier for this entry in the batch operation.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   An optional group identifier for the usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with this usage
    #   estimate.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The estimated usage amount.
    #   @return [Float]
    #
    # @!attribute [rw] historical_usage
    #   Historical usage data associated with this estimate, if available.
    #   @return [Types::HistoricalUsageEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateWorkloadEstimateUsageEntry AWS API Documentation
    #
    class BatchCreateWorkloadEstimateUsageEntry < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :key,
      :group,
      :usage_account_id,
      :amount,
      :historical_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred during a batch create operation for
    # workload estimate usage.
    #
    # @!attribute [rw] key
    #   The key of the entry that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the failed operation.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A descriptive message for the error that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateWorkloadEstimateUsageError AWS API Documentation
    #
    class BatchCreateWorkloadEstimateUsageError < Struct.new(
      :key,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a successfully created item in a batch operation for
    # workload estimate usage.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code for this usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage that was estimated.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location associated with this usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier assigned to the created usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with the created usage
    #   estimate.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for the created usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The estimated usage quantity.
    #   @return [Types::WorkloadEstimateUsageQuantity]
    #
    # @!attribute [rw] cost
    #   The estimated cost associated with this usage.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The currency of the estimated cost.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the created usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] historical_usage
    #   Historical usage data associated with this estimate, if available.
    #   @return [Types::HistoricalUsageEntity]
    #
    # @!attribute [rw] key
    #   The key of the successfully created entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateWorkloadEstimateUsageItem AWS API Documentation
    #
    class BatchCreateWorkloadEstimateUsageItem < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :location,
      :id,
      :usage_account_id,
      :group,
      :quantity,
      :cost,
      :currency,
      :status,
      :historical_usage,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_estimate_id
    #   The ID of the Workload estimate for which you want to create the
    #   modeled usage.
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   List of usage that you want to model in the Workload estimate.
    #   @return [Array<Types::BatchCreateWorkloadEstimateUsageEntry>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateWorkloadEstimateUsageRequest AWS API Documentation
    #
    class BatchCreateWorkloadEstimateUsageRequest < Struct.new(
      :workload_estimate_id,
      :usage,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Returns the list of successful usage line items that were created
    #   for the Workload estimate.
    #   @return [Array<Types::BatchCreateWorkloadEstimateUsageItem>]
    #
    # @!attribute [rw] errors
    #   Returns the list of errors reason and the usage item keys that
    #   cannot be created in the Workload estimate.
    #   @return [Array<Types::BatchCreateWorkloadEstimateUsageError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateWorkloadEstimateUsageResponse AWS API Documentation
    #
    class BatchCreateWorkloadEstimateUsageResponse < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred when deleting a commitment in a Bill
    # Scenario.
    #
    # @!attribute [rw] id
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioCommitmentModificationError AWS API Documentation
    #
    class BatchDeleteBillScenarioCommitmentModificationError < Struct.new(
      :id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The ID of the Bill Scenario for which you want to delete the modeled
    #   commitment.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   List of commitments that you want to delete from the Bill Scenario.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioCommitmentModificationRequest AWS API Documentation
    #
    class BatchDeleteBillScenarioCommitmentModificationRequest < Struct.new(
      :bill_scenario_id,
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Returns the list of errors reason and the commitment item keys that
    #   cannot be deleted from the Bill Scenario.
    #   @return [Array<Types::BatchDeleteBillScenarioCommitmentModificationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioCommitmentModificationResponse AWS API Documentation
    #
    class BatchDeleteBillScenarioCommitmentModificationResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred when deleting usage in a Bill
    # Scenario.
    #
    # @!attribute [rw] id
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message that describes the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioUsageModificationError AWS API Documentation
    #
    class BatchDeleteBillScenarioUsageModificationError < Struct.new(
      :id,
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The ID of the Bill Scenario for which you want to delete the modeled
    #   usage.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   List of usage that you want to delete from the Bill Scenario.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioUsageModificationRequest AWS API Documentation
    #
    class BatchDeleteBillScenarioUsageModificationRequest < Struct.new(
      :bill_scenario_id,
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Returns the list of errors reason and the usage item keys that
    #   cannot be deleted from the Bill Scenario.
    #   @return [Array<Types::BatchDeleteBillScenarioUsageModificationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioUsageModificationResponse AWS API Documentation
    #
    class BatchDeleteBillScenarioUsageModificationResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred when deleting usage in a workload
    # estimate.
    #
    # @!attribute [rw] id
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message that describes the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteWorkloadEstimateUsageError AWS API Documentation
    #
    class BatchDeleteWorkloadEstimateUsageError < Struct.new(
      :id,
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_estimate_id
    #   The ID of the Workload estimate for which you want to delete the
    #   modeled usage.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   List of usage that you want to delete from the Workload estimate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteWorkloadEstimateUsageRequest AWS API Documentation
    #
    class BatchDeleteWorkloadEstimateUsageRequest < Struct.new(
      :workload_estimate_id,
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Returns the list of errors reason and the usage item keys that
    #   cannot be deleted from the Workload estimate.
    #   @return [Array<Types::BatchDeleteWorkloadEstimateUsageError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteWorkloadEstimateUsageResponse AWS API Documentation
    #
    class BatchDeleteWorkloadEstimateUsageResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entry in a batch operation to update bill scenario
    # commitment modifications.
    #
    # @!attribute [rw] id
    #   The unique identifier of the commitment modification to update.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The updated group identifier for the commitment modification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioCommitmentModificationEntry AWS API Documentation
    #
    class BatchUpdateBillScenarioCommitmentModificationEntry < Struct.new(
      :id,
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred when updating a commitment in a Bill
    # Scenario.
    #
    # @!attribute [rw] id
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioCommitmentModificationError AWS API Documentation
    #
    class BatchUpdateBillScenarioCommitmentModificationError < Struct.new(
      :id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The ID of the Bill Scenario for which you want to modify the
    #   commitment group of a modeled commitment.
    #   @return [String]
    #
    # @!attribute [rw] commitment_modifications
    #   List of commitments that you want to update in a Bill Scenario.
    #   @return [Array<Types::BatchUpdateBillScenarioCommitmentModificationEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioCommitmentModificationRequest AWS API Documentation
    #
    class BatchUpdateBillScenarioCommitmentModificationRequest < Struct.new(
      :bill_scenario_id,
      :commitment_modifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Returns the list of successful commitment line items that were
    #   updated for a Bill Scenario.
    #   @return [Array<Types::BillScenarioCommitmentModificationItem>]
    #
    # @!attribute [rw] errors
    #   Returns the list of error reasons and commitment line item IDs that
    #   could not be updated for the Bill Scenario.
    #   @return [Array<Types::BatchUpdateBillScenarioCommitmentModificationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioCommitmentModificationResponse AWS API Documentation
    #
    class BatchUpdateBillScenarioCommitmentModificationResponse < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entry in a batch operation to update bill scenario usage
    # modifications.
    #
    # @!attribute [rw] id
    #   The unique identifier of the usage modification to update.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The updated group identifier for the usage modification.
    #   @return [String]
    #
    # @!attribute [rw] amounts
    #   The updated usage amounts for the modification.
    #   @return [Array<Types::UsageAmount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioUsageModificationEntry AWS API Documentation
    #
    class BatchUpdateBillScenarioUsageModificationEntry < Struct.new(
      :id,
      :group,
      :amounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred when updating usage in a Bill
    # Scenario.
    #
    # @!attribute [rw] id
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message that describes the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioUsageModificationError AWS API Documentation
    #
    class BatchUpdateBillScenarioUsageModificationError < Struct.new(
      :id,
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The ID of the Bill Scenario for which you want to modify the usage
    #   lines.
    #   @return [String]
    #
    # @!attribute [rw] usage_modifications
    #   List of usage lines that you want to update in a Bill Scenario
    #   identified by the usage ID.
    #   @return [Array<Types::BatchUpdateBillScenarioUsageModificationEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioUsageModificationRequest AWS API Documentation
    #
    class BatchUpdateBillScenarioUsageModificationRequest < Struct.new(
      :bill_scenario_id,
      :usage_modifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Returns the list of successful usage line items that were updated
    #   for a Bill Scenario.
    #   @return [Array<Types::BillScenarioUsageModificationItem>]
    #
    # @!attribute [rw] errors
    #   Returns the list of error reasons and usage line item IDs that could
    #   not be updated for the Bill Scenario.
    #   @return [Array<Types::BatchUpdateBillScenarioUsageModificationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioUsageModificationResponse AWS API Documentation
    #
    class BatchUpdateBillScenarioUsageModificationResponse < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entry in a batch operation to update workload estimate
    # usage.
    #
    # @!attribute [rw] id
    #   The unique identifier of the usage estimate to update.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The updated group identifier for the usage estimate.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The updated estimated usage amount.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateWorkloadEstimateUsageEntry AWS API Documentation
    #
    class BatchUpdateWorkloadEstimateUsageEntry < Struct.new(
      :id,
      :group,
      :amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an error that occurred when updating usage in a workload
    # estimate.
    #
    # @!attribute [rw] id
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message that describes the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateWorkloadEstimateUsageError AWS API Documentation
    #
    class BatchUpdateWorkloadEstimateUsageError < Struct.new(
      :id,
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_estimate_id
    #   The ID of the Workload estimate for which you want to modify the
    #   usage lines.
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   List of usage line amounts and usage group that you want to update
    #   in a Workload estimate identified by the usage ID.
    #   @return [Array<Types::BatchUpdateWorkloadEstimateUsageEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateWorkloadEstimateUsageRequest AWS API Documentation
    #
    class BatchUpdateWorkloadEstimateUsageRequest < Struct.new(
      :workload_estimate_id,
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Returns the list of successful usage line items that were updated
    #   for a Workload estimate.
    #   @return [Array<Types::WorkloadEstimateUsageItem>]
    #
    # @!attribute [rw] errors
    #   Returns the list of error reasons and usage line item IDs that could
    #   not be updated for the Workload estimate.
    #   @return [Array<Types::BatchUpdateWorkloadEstimateUsageError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateWorkloadEstimateUsageResponse AWS API Documentation
    #
    class BatchUpdateWorkloadEstimateUsageResponse < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of commitment-related information for a bill
    # estimate.
    #
    # @!attribute [rw] id
    #   The unique identifier of the commitment.
    #   @return [String]
    #
    # @!attribute [rw] purchase_agreement_type
    #   The type of purchase agreement (e.g., Reserved Instance, Savings
    #   Plan).
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   The identifier of the specific offering associated with this
    #   commitment.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with this commitment.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services region associated with this commitment.
    #   @return [String]
    #
    # @!attribute [rw] term_length
    #   The length of the commitment term.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option chosen for this commitment (e.g., All Upfront,
    #   Partial Upfront, No Upfront).
    #   @return [String]
    #
    # @!attribute [rw] upfront_payment
    #   The upfront payment amount for this commitment, if applicable.
    #   @return [Types::CostAmount]
    #
    # @!attribute [rw] monthly_payment
    #   The monthly payment amount for this commitment, if applicable.
    #   @return [Types::CostAmount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillEstimateCommitmentSummary AWS API Documentation
    #
    class BillEstimateCommitmentSummary < Struct.new(
      :id,
      :purchase_agreement_type,
      :offering_id,
      :usage_account_id,
      :region,
      :term_length,
      :payment_option,
      :upfront_payment,
      :monthly_payment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of cost-related information for a bill estimate.
    #
    # @!attribute [rw] total_cost_difference
    #   The total difference in cost between the estimated and historical
    #   costs.
    #   @return [Types::CostDifference]
    #
    # @!attribute [rw] service_cost_differences
    #   A breakdown of cost differences by Amazon Web Services service.
    #   @return [Hash<String,Types::CostDifference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillEstimateCostSummary AWS API Documentation
    #
    class BillEstimateCostSummary < Struct.new(
      :total_cost_difference,
      :service_cost_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes an input commitment modification for a bill estimate.
    #
    # @!attribute [rw] id
    #   The unique identifier of the commitment modification.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for the commitment modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with this commitment
    #   modification.
    #   @return [String]
    #
    # @!attribute [rw] commitment_action
    #   The specific commitment action taken in this modification.
    #   @return [Types::BillScenarioCommitmentModificationAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillEstimateInputCommitmentModificationSummary AWS API Documentation
    #
    class BillEstimateInputCommitmentModificationSummary < Struct.new(
      :id,
      :group,
      :usage_account_id,
      :commitment_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes an input usage modification for a bill estimate.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code for this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage being modified.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location associated with this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone associated with this usage modification, if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the usage modification.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for the usage modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with this usage
    #   modification.
    #   @return [String]
    #
    # @!attribute [rw] quantities
    #   The modified usage quantities.
    #   @return [Array<Types::UsageQuantity>]
    #
    # @!attribute [rw] historical_usage
    #   Historical usage data associated with this modification, if
    #   available.
    #   @return [Types::HistoricalUsageEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillEstimateInputUsageModificationSummary AWS API Documentation
    #
    class BillEstimateInputUsageModificationSummary < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :location,
      :availability_zone,
      :id,
      :group,
      :usage_account_id,
      :quantities,
      :historical_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a line item in a bill estimate.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code associated with this line item.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage for this line item.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this line item.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location associated with this line item.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone associated with this line item, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of this line item.
    #   @return [String]
    #
    # @!attribute [rw] line_item_id
    #   The line item identifier from the original bill.
    #   @return [String]
    #
    # @!attribute [rw] line_item_type
    #   The type of this line item (e.g., Usage, Tax, Credit).
    #   @return [String]
    #
    # @!attribute [rw] payer_account_id
    #   The Amazon Web Services account ID of the payer for this line item.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with the usage for
    #   this line item.
    #   @return [String]
    #
    # @!attribute [rw] estimated_usage_quantity
    #   The estimated usage quantity for this line item.
    #   @return [Types::UsageQuantityResult]
    #
    # @!attribute [rw] estimated_cost
    #   The estimated cost for this line item.
    #   @return [Types::CostAmount]
    #
    # @!attribute [rw] historical_usage_quantity
    #   The historical usage quantity for this line item.
    #   @return [Types::UsageQuantityResult]
    #
    # @!attribute [rw] historical_cost
    #   The historical cost for this line item.
    #   @return [Types::CostAmount]
    #
    # @!attribute [rw] savings_plan_arns
    #   The Amazon Resource Names (ARNs) of any Savings Plans applied to
    #   this line item.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillEstimateLineItemSummary AWS API Documentation
    #
    class BillEstimateLineItemSummary < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :location,
      :availability_zone,
      :id,
      :line_item_id,
      :line_item_type,
      :payer_account_id,
      :usage_account_id,
      :estimated_usage_quantity,
      :estimated_cost,
      :historical_usage_quantity,
      :historical_cost,
      :savings_plan_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a bill estimate.
    #
    # @!attribute [rw] id
    #   The unique identifier of the bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time period covered by the bill estimate.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the bill estimate was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the bill estimate will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillEstimateSummary AWS API Documentation
    #
    class BillEstimateSummary < Struct.new(
      :id,
      :name,
      :status,
      :bill_interval,
      :created_at,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a time interval for a bill or estimate.
    #
    # @!attribute [rw] start
    #   The start date and time of the interval.
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end date and time of the interval.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillInterval AWS API Documentation
    #
    class BillInterval < Struct.new(
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an action to modify commitments in a bill scenario.
    #
    # @note BillScenarioCommitmentModificationAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note BillScenarioCommitmentModificationAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of BillScenarioCommitmentModificationAction corresponding to the set member.
    #
    # @!attribute [rw] add_reserved_instance_action
    #   Action to add a Reserved Instance to the scenario.
    #   @return [Types::AddReservedInstanceAction]
    #
    # @!attribute [rw] add_savings_plan_action
    #   Action to add a Savings Plan to the scenario.
    #   @return [Types::AddSavingsPlanAction]
    #
    # @!attribute [rw] negate_reserved_instance_action
    #   Action to remove a Reserved Instance from the scenario.
    #   @return [Types::NegateReservedInstanceAction]
    #
    # @!attribute [rw] negate_savings_plan_action
    #   Action to remove a Savings Plan from the scenario.
    #   @return [Types::NegateSavingsPlanAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillScenarioCommitmentModificationAction AWS API Documentation
    #
    class BillScenarioCommitmentModificationAction < Struct.new(
      :add_reserved_instance_action,
      :add_savings_plan_action,
      :negate_reserved_instance_action,
      :negate_savings_plan_action,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AddReservedInstanceAction < BillScenarioCommitmentModificationAction; end
      class AddSavingsPlanAction < BillScenarioCommitmentModificationAction; end
      class NegateReservedInstanceAction < BillScenarioCommitmentModificationAction; end
      class NegateSavingsPlanAction < BillScenarioCommitmentModificationAction; end
      class Unknown < BillScenarioCommitmentModificationAction; end
    end

    # Represents a commitment modification item in a bill scenario.
    #
    # @!attribute [rw] id
    #   The unique identifier of the commitment modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with this commitment
    #   modification.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for the commitment modification.
    #   @return [String]
    #
    # @!attribute [rw] commitment_action
    #   The specific commitment action taken in this modification.
    #   @return [Types::BillScenarioCommitmentModificationAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillScenarioCommitmentModificationItem AWS API Documentation
    #
    class BillScenarioCommitmentModificationItem < Struct.new(
      :id,
      :usage_account_id,
      :group,
      :commitment_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a bill scenario.
    #
    # @!attribute [rw] id
    #   The unique identifier of the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time period covered by the bill scenario.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] status
    #   The current status of the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the bill scenario was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the bill scenario will expire.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   An error message if the bill scenario creation or processing failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillScenarioSummary AWS API Documentation
    #
    class BillScenarioSummary < Struct.new(
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage modification item in a bill scenario.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code for this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage being modified.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location associated with this usage modification.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone associated with this usage modification, if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the usage modification.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for the usage modification.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with this usage
    #   modification.
    #   @return [String]
    #
    # @!attribute [rw] quantities
    #   The modified usage quantities.
    #   @return [Array<Types::UsageQuantity>]
    #
    # @!attribute [rw] historical_usage
    #   Historical usage data associated with this modification, if
    #   available.
    #   @return [Types::HistoricalUsageEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BillScenarioUsageModificationItem AWS API Documentation
    #
    class BillScenarioUsageModificationItem < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :location,
      :availability_zone,
      :id,
      :group,
      :usage_account_id,
      :quantities,
      :historical_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a monetary amount with associated currency.
    #
    # @!attribute [rw] amount
    #   The numeric value of the cost.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The currency code for the cost amount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CostAmount AWS API Documentation
    #
    class CostAmount < Struct.new(
      :amount,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the difference between historical and estimated costs.
    #
    # @!attribute [rw] historical_cost
    #   The historical cost amount.
    #   @return [Types::CostAmount]
    #
    # @!attribute [rw] estimated_cost
    #   The estimated cost amount.
    #   @return [Types::CostAmount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CostDifference AWS API Documentation
    #
    class CostDifference < Struct.new(
      :historical_cost,
      :estimated_cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The ID of the Bill Scenario for which you want to create a Bill
    #   estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Bill estimate that will be created. Names must be
    #   unique for an account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional list of tags to associate with the specified
    #   BillEstimate. You can use resource tags to control access to your
    #   BillEstimate using IAM policies. Each tag consists of a key and a
    #   value, and each key must be unique for the resource. The following
    #   restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can
    #     assign a maximum of 50 user-tags to one resource. The remaining
    #     are reserved for Amazon Web Services.
    #
    #   * The maximum length of a key is 128 characters.
    #
    #   * The maximum length of a value is 256 characters.
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`.
    #
    #   * Keys and values are case sensitive.
    #
    #   * Keys and values are trimmed for any leading or trailing
    #     whitespaces.
    #
    #   * Don't use `aws:` as a prefix for your keys. This prefix is
    #     reserved for Amazon Web Services.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateBillEstimateRequest AWS API Documentation
    #
    class CreateBillEstimateRequest < Struct.new(
      :bill_scenario_id,
      :name,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of your newly created Bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of your newly created Bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your newly created Bill estimate. Bill estimate
    #   creation can take anywhere between 8 to 12 hours. The status will
    #   allow you to identify when the Bill estimate is complete or has
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   This attribute provides the reason if a Bill estimate result
    #   generation fails.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The bill month start and end timestamp that was used to create the
    #   Bill estimate. This is set to the last complete anniversary bill
    #   month start and end timestamp.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] cost_summary
    #   Returns summary-level cost information once a Bill estimate is
    #   successfully generated. This summary includes: 1) the total cost
    #   difference, showing the pre-tax cost change for the consolidated
    #   billing family between the completed anniversary bill and the
    #   estimated bill, and 2) total cost differences per service, detailing
    #   the pre-tax cost of each service, comparing the completed
    #   anniversary bill to the estimated bill on a per-service basis.
    #   @return [Types::BillEstimateCostSummary]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the Bill estimate create process was started
    #   (not when it successfully completed or failed).
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp of when the Bill estimate will expire. A Bill estimate
    #   becomes inaccessible after expiration.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateBillEstimateResponse AWS API Documentation
    #
    class CreateBillEstimateResponse < Struct.new(
      :id,
      :name,
      :status,
      :failure_message,
      :bill_interval,
      :cost_summary,
      :created_at,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive name for the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the bill scenario.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateBillScenarioRequest AWS API Documentation
    #
    class CreateBillScenarioRequest < Struct.new(
      :name,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the created bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the created bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time period covered by the bill scenario.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] status
    #   The current status of the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the bill scenario was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the bill scenario will expire.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   An error message if the bill scenario creation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateBillScenarioResponse AWS API Documentation
    #
    class CreateBillScenarioResponse < Struct.new(
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive name for the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] rate_type
    #   The type of pricing rates to use for the estimate.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the workload estimate.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateWorkloadEstimateRequest AWS API Documentation
    #
    class CreateWorkloadEstimateRequest < Struct.new(
      :name,
      :client_token,
      :rate_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mixin for common fields returned by CRUD APIs
    #
    # @!attribute [rw] id
    #   The unique identifier for the created workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the created workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workload estimate was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the workload estimate will expire.
    #   @return [Time]
    #
    # @!attribute [rw] rate_type
    #   The type of pricing rates used for the estimate.
    #   @return [String]
    #
    # @!attribute [rw] rate_timestamp
    #   The timestamp of the pricing rates used for the estimate.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] total_cost
    #   The total estimated cost for the workload.
    #   @return [Float]
    #
    # @!attribute [rw] cost_currency
    #   The currency of the estimated cost.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message if the workload estimate creation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateWorkloadEstimateResponse AWS API Documentation
    #
    class CreateWorkloadEstimateResponse < Struct.new(
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested data is currently unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DataUnavailableException AWS API Documentation
    #
    class DataUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the bill estimate to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteBillEstimateRequest AWS API Documentation
    #
    class DeleteBillEstimateRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteBillEstimateResponse AWS API Documentation
    #
    class DeleteBillEstimateResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The unique identifier of the bill scenario to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteBillScenarioRequest AWS API Documentation
    #
    class DeleteBillScenarioRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteBillScenarioResponse AWS API Documentation
    #
    class DeleteBillScenarioResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The unique identifier of the workload estimate to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteWorkloadEstimateRequest AWS API Documentation
    #
    class DeleteWorkloadEstimateRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteWorkloadEstimateResponse AWS API Documentation
    #
    class DeleteWorkloadEstimateResponse < Aws::EmptyStructure; end

    # Represents a complex filtering expression for cost and usage data.
    #
    # @!attribute [rw] and
    #   A list of expressions to be combined with AND logic.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] or
    #   A list of expressions to be combined with OR logic.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] not
    #   An expression to be negated.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] cost_categories
    #   Filters based on cost categories.
    #   @return [Types::ExpressionFilter]
    #
    # @!attribute [rw] dimensions
    #   Filters based on dimensions (e.g., service, operation).
    #   @return [Types::ExpressionFilter]
    #
    # @!attribute [rw] tags
    #   Filters based on resource tags.
    #   @return [Types::ExpressionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/Expression AWS API Documentation
    #
    class Expression < Struct.new(
      :and,
      :or,
      :not,
      :cost_categories,
      :dimensions,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a filter used within an expression.
    #
    # @!attribute [rw] key
    #   The key or attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] match_options
    #   The match options for the filter (e.g., equals, contains).
    #   @return [Array<String>]
    #
    # @!attribute [rw] values
    #   The values to match against.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ExpressionFilter AWS API Documentation
    #
    class ExpressionFilter < Struct.new(
      :key,
      :match_options,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a time-based filter.
    #
    # @!attribute [rw] after_timestamp
    #   Include results after this timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] before_timestamp
    #   Include results before this timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/FilterTimestamp AWS API Documentation
    #
    class FilterTimestamp < Struct.new(
      :after_timestamp,
      :before_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the bill estimate to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetBillEstimateRequest AWS API Documentation
    #
    class GetBillEstimateRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the retrieved bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the retrieved bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message if the bill estimate retrieval failed.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time period covered by the bill estimate.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] cost_summary
    #   A summary of the estimated costs.
    #   @return [Types::BillEstimateCostSummary]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the bill estimate was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the bill estimate will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetBillEstimateResponse AWS API Documentation
    #
    class GetBillEstimateResponse < Struct.new(
      :id,
      :name,
      :status,
      :failure_message,
      :bill_interval,
      :cost_summary,
      :created_at,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the bill scenario to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetBillScenarioRequest AWS API Documentation
    #
    class GetBillScenarioRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the retrieved bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the retrieved bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time period covered by the bill scenario.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] status
    #   The current status of the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the bill scenario was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the bill scenario will expire.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   An error message if the bill scenario retrieval failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetBillScenarioResponse AWS API Documentation
    #
    class GetBillScenarioResponse < Struct.new(
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetPreferencesRequest AWS API Documentation
    #
    class GetPreferencesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] management_account_rate_type_selections
    #   The preferred rate types for the management account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] member_account_rate_type_selections
    #   The preferred rate types for member accounts.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetPreferencesResponse AWS API Documentation
    #
    class GetPreferencesResponse < Struct.new(
      :management_account_rate_type_selections,
      :member_account_rate_type_selections)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the workload estimate to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetWorkloadEstimateRequest AWS API Documentation
    #
    class GetWorkloadEstimateRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mixin for common fields returned by CRUD APIs
    #
    # @!attribute [rw] id
    #   The unique identifier of the retrieved workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the retrieved workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workload estimate was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the workload estimate will expire.
    #   @return [Time]
    #
    # @!attribute [rw] rate_type
    #   The type of pricing rates used for the estimate.
    #   @return [String]
    #
    # @!attribute [rw] rate_timestamp
    #   The timestamp of the pricing rates used for the estimate.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] total_cost
    #   The total estimated cost for the workload.
    #   @return [Float]
    #
    # @!attribute [rw] cost_currency
    #   The currency of the estimated cost.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message if the workload estimate retrieval failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetWorkloadEstimateResponse AWS API Documentation
    #
    class GetWorkloadEstimateResponse < Struct.new(
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents historical usage data for a specific entity.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code associated with the usage.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with the usage.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location associated with the usage.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with the usage.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time interval for the historical usage data.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] filter_expression
    #   An optional filter expression to apply to the historical usage data.
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/HistoricalUsageEntity AWS API Documentation
    #
    class HistoricalUsageEntity < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :location,
      :usage_account_id,
      :bill_interval,
      :filter_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred. Retry your request, but if the problem
    # persists, contact Amazon Web Services support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   An internal error has occurred. Retry your request, but if the
    #   problem persists, contact Amazon Web Services support.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_estimate_id
    #   The unique identifier of the bill estimate to list commitments for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateCommitmentsRequest AWS API Documentation
    #
    class ListBillEstimateCommitmentsRequest < Struct.new(
      :bill_estimate_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of commitments associated with the bill estimate.
    #   @return [Array<Types::BillEstimateCommitmentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateCommitmentsResponse AWS API Documentation
    #
    class ListBillEstimateCommitmentsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_estimate_id
    #   The unique identifier of the bill estimate to list input commitment
    #   modifications for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateInputCommitmentModificationsRequest AWS API Documentation
    #
    class ListBillEstimateInputCommitmentModificationsRequest < Struct.new(
      :bill_estimate_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of input commitment modifications associated with the bill
    #   estimate.
    #   @return [Array<Types::BillEstimateInputCommitmentModificationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateInputCommitmentModificationsResponse AWS API Documentation
    #
    class ListBillEstimateInputCommitmentModificationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_estimate_id
    #   The unique identifier of the bill estimate to list input usage
    #   modifications for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply to the list of input usage modifications.
    #   @return [Array<Types::ListUsageFilter>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateInputUsageModificationsRequest AWS API Documentation
    #
    class ListBillEstimateInputUsageModificationsRequest < Struct.new(
      :bill_estimate_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of input usage modifications associated with the bill
    #   estimate.
    #   @return [Array<Types::BillEstimateInputUsageModificationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateInputUsageModificationsResponse AWS API Documentation
    #
    class ListBillEstimateInputUsageModificationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a filter for listing bill estimate line items.
    #
    # @!attribute [rw] name
    #   The name of the filter attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to filter by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_option
    #   The match option for the filter (e.g., equals, contains).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateLineItemsFilter AWS API Documentation
    #
    class ListBillEstimateLineItemsFilter < Struct.new(
      :name,
      :values,
      :match_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_estimate_id
    #   The unique identifier of the bill estimate to list line items for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply to the list of line items.
    #   @return [Array<Types::ListBillEstimateLineItemsFilter>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateLineItemsRequest AWS API Documentation
    #
    class ListBillEstimateLineItemsRequest < Struct.new(
      :bill_estimate_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of line items associated with the bill estimate.
    #   @return [Array<Types::BillEstimateLineItemSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateLineItemsResponse AWS API Documentation
    #
    class ListBillEstimateLineItemsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a filter for listing bill estimates.
    #
    # @!attribute [rw] name
    #   The name of the filter attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to filter by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_option
    #   The match option for the filter (e.g., equals, contains).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimatesFilter AWS API Documentation
    #
    class ListBillEstimatesFilter < Struct.new(
      :name,
      :values,
      :match_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters to apply to the list of bill estimates.
    #   @return [Array<Types::ListBillEstimatesFilter>]
    #
    # @!attribute [rw] created_at_filter
    #   Filter bill estimates based on the creation date.
    #   @return [Types::FilterTimestamp]
    #
    # @!attribute [rw] expires_at_filter
    #   Filter bill estimates based on the expiration date.
    #   @return [Types::FilterTimestamp]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimatesRequest AWS API Documentation
    #
    class ListBillEstimatesRequest < Struct.new(
      :filters,
      :created_at_filter,
      :expires_at_filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of bill estimates for the account.
    #   @return [Array<Types::BillEstimateSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimatesResponse AWS API Documentation
    #
    class ListBillEstimatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The unique identifier of the bill scenario to list commitment
    #   modifications for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenarioCommitmentModificationsRequest AWS API Documentation
    #
    class ListBillScenarioCommitmentModificationsRequest < Struct.new(
      :bill_scenario_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of commitment modifications associated with the bill
    #   scenario.
    #   @return [Array<Types::BillScenarioCommitmentModificationItem>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenarioCommitmentModificationsResponse AWS API Documentation
    #
    class ListBillScenarioCommitmentModificationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bill_scenario_id
    #   The unique identifier of the bill scenario to list usage
    #   modifications for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply to the list of usage modifications.
    #   @return [Array<Types::ListUsageFilter>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenarioUsageModificationsRequest AWS API Documentation
    #
    class ListBillScenarioUsageModificationsRequest < Struct.new(
      :bill_scenario_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of usage modifications associated with the bill scenario.
    #   @return [Array<Types::BillScenarioUsageModificationItem>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenarioUsageModificationsResponse AWS API Documentation
    #
    class ListBillScenarioUsageModificationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a filter for listing bill scenarios.
    #
    # @!attribute [rw] name
    #   The name of the filter attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to filter by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_option
    #   The match option for the filter (e.g., equals, contains).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenariosFilter AWS API Documentation
    #
    class ListBillScenariosFilter < Struct.new(
      :name,
      :values,
      :match_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters to apply to the list of bill scenarios.
    #   @return [Array<Types::ListBillScenariosFilter>]
    #
    # @!attribute [rw] created_at_filter
    #   Filter bill scenarios based on the creation date.
    #   @return [Types::FilterTimestamp]
    #
    # @!attribute [rw] expires_at_filter
    #   Filter bill scenarios based on the expiration date.
    #   @return [Types::FilterTimestamp]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenariosRequest AWS API Documentation
    #
    class ListBillScenariosRequest < Struct.new(
      :filters,
      :created_at_filter,
      :expires_at_filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of bill scenarios for the account.
    #   @return [Array<Types::BillScenarioSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenariosResponse AWS API Documentation
    #
    class ListBillScenariosResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a filter for listing usage data.
    #
    # @!attribute [rw] name
    #   The name of the filter attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to filter by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_option
    #   The match option for the filter (e.g., equals, contains).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListUsageFilter AWS API Documentation
    #
    class ListUsageFilter < Struct.new(
      :name,
      :values,
      :match_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_estimate_id
    #   The unique identifier of the workload estimate to list usage for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply to the list of usage items.
    #   @return [Array<Types::ListUsageFilter>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListWorkloadEstimateUsageRequest AWS API Documentation
    #
    class ListWorkloadEstimateUsageRequest < Struct.new(
      :workload_estimate_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of usage items associated with the workload estimate.
    #   @return [Array<Types::WorkloadEstimateUsageItem>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListWorkloadEstimateUsageResponse AWS API Documentation
    #
    class ListWorkloadEstimateUsageResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a filter for listing workload estimates.
    #
    # @!attribute [rw] name
    #   The name of the filter attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to filter by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_option
    #   The match option for the filter (e.g., equals, contains).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListWorkloadEstimatesFilter AWS API Documentation
    #
    class ListWorkloadEstimatesFilter < Struct.new(
      :name,
      :values,
      :match_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at_filter
    #   Filter workload estimates based on the creation date.
    #   @return [Types::FilterTimestamp]
    #
    # @!attribute [rw] expires_at_filter
    #   Filter workload estimates based on the expiration date.
    #   @return [Types::FilterTimestamp]
    #
    # @!attribute [rw] filters
    #   Filters to apply to the list of workload estimates.
    #   @return [Array<Types::ListWorkloadEstimatesFilter>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListWorkloadEstimatesRequest AWS API Documentation
    #
    class ListWorkloadEstimatesRequest < Struct.new(
      :created_at_filter,
      :expires_at_filter,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of workload estimates for the account.
    #   @return [Array<Types::WorkloadEstimateSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListWorkloadEstimatesResponse AWS API Documentation
    #
    class ListWorkloadEstimatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an action to remove a Reserved Instance from a bill
    # scenario.
    #
    # This is the ID of an existing Reserved Instance in your account.
    #
    # @!attribute [rw] reserved_instances_id
    #   The ID of the Reserved Instance to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/NegateReservedInstanceAction AWS API Documentation
    #
    class NegateReservedInstanceAction < Struct.new(
      :reserved_instances_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an action to remove a Savings Plan from a bill scenario.
    #
    # This is the ID of an existing Savings Plan in your account.
    #
    # @!attribute [rw] savings_plan_id
    #   The ID of the Savings Plan to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/NegateSavingsPlanAction AWS API Documentation
    #
    class NegateSavingsPlanAction < Struct.new(
      :savings_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause you to exceed your service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code that exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code that was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code that exceeded the throttling limit.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code that exceeded the throttling limit.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The service code that exceeded the throttling limit. Retry your
    #   request, but if the problem persists, contact Amazon Web Services
    #   support.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The unique identifier of the bill estimate to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The new expiration date for the bill estimate.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateBillEstimateRequest AWS API Documentation
    #
    class UpdateBillEstimateRequest < Struct.new(
      :identifier,
      :name,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the updated bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated bill estimate.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message if the bill estimate update failed.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time period covered by the updated bill estimate.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] cost_summary
    #   A summary of the updated estimated costs.
    #   @return [Types::BillEstimateCostSummary]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the bill estimate was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The updated expiration timestamp for the bill estimate.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateBillEstimateResponse AWS API Documentation
    #
    class UpdateBillEstimateResponse < Struct.new(
      :id,
      :name,
      :status,
      :failure_message,
      :bill_interval,
      :cost_summary,
      :created_at,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the bill scenario to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The new expiration date for the bill scenario.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateBillScenarioRequest AWS API Documentation
    #
    class UpdateBillScenarioRequest < Struct.new(
      :identifier,
      :name,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the updated bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] bill_interval
    #   The time period covered by the updated bill scenario.
    #   @return [Types::BillInterval]
    #
    # @!attribute [rw] status
    #   The current status of the updated bill scenario.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the bill scenario was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The updated expiration timestamp for the bill scenario.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   An error message if the bill scenario update failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateBillScenarioResponse AWS API Documentation
    #
    class UpdateBillScenarioResponse < Struct.new(
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] management_account_rate_type_selections
    #   The updated preferred rate types for the management account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] member_account_rate_type_selections
    #   The updated preferred rate types for member accounts.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdatePreferencesRequest AWS API Documentation
    #
    class UpdatePreferencesRequest < Struct.new(
      :management_account_rate_type_selections,
      :member_account_rate_type_selections)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] management_account_rate_type_selections
    #   The updated preferred rate types for the management account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] member_account_rate_type_selections
    #   The updated preferred rate types for member accounts.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdatePreferencesResponse AWS API Documentation
    #
    class UpdatePreferencesResponse < Struct.new(
      :management_account_rate_type_selections,
      :member_account_rate_type_selections)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the workload estimate to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The new expiration date for the workload estimate.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateWorkloadEstimateRequest AWS API Documentation
    #
    class UpdateWorkloadEstimateRequest < Struct.new(
      :identifier,
      :name,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mixin for common fields returned by CRUD APIs
    #
    # @!attribute [rw] id
    #   The unique identifier of the updated workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workload estimate was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The updated expiration timestamp for the workload estimate.
    #   @return [Time]
    #
    # @!attribute [rw] rate_type
    #   The type of pricing rates used for the updated estimate.
    #   @return [String]
    #
    # @!attribute [rw] rate_timestamp
    #   The timestamp of the pricing rates used for the updated estimate.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] total_cost
    #   The updated total estimated cost for the workload.
    #   @return [Float]
    #
    # @!attribute [rw] cost_currency
    #   The currency of the updated estimated cost.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message if the workload estimate update failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateWorkloadEstimateResponse AWS API Documentation
    #
    class UpdateWorkloadEstimateResponse < Struct.new(
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage amount for a specific time period.
    #
    # @!attribute [rw] start_hour
    #   The start hour of the usage period.
    #   @return [Time]
    #
    # @!attribute [rw] amount
    #   The usage amount for the period.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UsageAmount AWS API Documentation
    #
    class UsageAmount < Struct.new(
      :start_hour,
      :amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage quantity with associated unit and time period.
    #
    # @!attribute [rw] start_hour
    #   The start hour of the usage period.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the usage quantity.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The numeric value of the usage quantity.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UsageQuantity AWS API Documentation
    #
    class UsageQuantity < Struct.new(
      :start_hour,
      :unit,
      :amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the result of a usage quantity calculation.
    #
    # @!attribute [rw] amount
    #   The numeric value of the usage quantity result.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the usage quantity result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UsageQuantityResult AWS API Documentation
    #
    class UsageQuantityResult < Struct.new(
      :amount,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input provided fails to satisfy the constraints specified by an
    # Amazon Web Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of fields that are invalid.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a field that failed validation in a request.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a workload estimate.
    #
    # @!attribute [rw] id
    #   The unique identifier of the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workload estimate was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the workload estimate will expire.
    #   @return [Time]
    #
    # @!attribute [rw] rate_type
    #   The type of pricing rates used for the estimate.
    #   @return [String]
    #
    # @!attribute [rw] rate_timestamp
    #   The timestamp of the pricing rates used for the estimate.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the workload estimate.
    #   @return [String]
    #
    # @!attribute [rw] total_cost
    #   The total estimated cost for the workload.
    #   @return [Float]
    #
    # @!attribute [rw] cost_currency
    #   The currency of the estimated cost.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message if the workload estimate creation or processing
    #   failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/WorkloadEstimateSummary AWS API Documentation
    #
    class WorkloadEstimateSummary < Struct.new(
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage item in a workload estimate.
    #
    # @!attribute [rw] service_code
    #   The Amazon Web Services service code associated with this usage
    #   item.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage for this item.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The specific operation associated with this usage item.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location associated with this usage item.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of this usage item.
    #   @return [String]
    #
    # @!attribute [rw] usage_account_id
    #   The Amazon Web Services account ID associated with this usage item.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group identifier for this usage item.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The estimated usage quantity for this item.
    #   @return [Types::WorkloadEstimateUsageQuantity]
    #
    # @!attribute [rw] cost
    #   The estimated cost for this usage item.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The currency of the estimated cost.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this usage item.
    #   @return [String]
    #
    # @!attribute [rw] historical_usage
    #   Historical usage data associated with this item, if available.
    #   @return [Types::HistoricalUsageEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/WorkloadEstimateUsageItem AWS API Documentation
    #
    class WorkloadEstimateUsageItem < Struct.new(
      :service_code,
      :usage_type,
      :operation,
      :location,
      :id,
      :usage_account_id,
      :group,
      :quantity,
      :cost,
      :currency,
      :status,
      :historical_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage quantity for a workload estimate.
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the usage quantity.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The numeric value of the usage quantity.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/WorkloadEstimateUsageQuantity AWS API Documentation
    #
    class WorkloadEstimateUsageQuantity < Struct.new(
      :unit,
      :amount)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

