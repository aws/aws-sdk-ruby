# frozen_string_literal: true

# This is generated code!

module Aws::BCMPricingCalculator
  # This module contains the types returned by client operations.
  module Types

    # <p> You do not have sufficient access to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an action to add a Reserved Instance to a bill scenario. </p>
    # @!attribute reserved_instances_offering_id
    #   <p> The ID of the Reserved Instance offering to add. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeReservedInstancesOfferings.html"> DescribeReservedInstancesOfferings</a>. </p>
    #   @return [String]
    # @!attribute instance_count
    #   <p> The number of instances to add for this Reserved Instance offering. </p>
    #   @return [Integer]
    class AddReservedInstanceAction < Struct.new(
      nil,
      :reserved_instances_offering_id,
      :instance_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an action to add a Savings Plan to a bill scenario. </p>
    # @!attribute savings_plan_offering_id
    #   <p> The ID of the Savings Plan offering to add. For more information, see <a href="https://docs.aws.amazon.com/savingsplans/latest/APIReference/API_DescribeSavingsPlansOfferings.html"> DescribeSavingsPlansOfferings</a>. </p>
    #   @return [String]
    # @!attribute commitment
    #   <p> The hourly commitment, in the same currency of the <code>savingsPlanOfferingId</code>. This is a value between 0.001 and 1 million. You cannot specify more than five digits after the decimal point. </p>
    #   @return [Float]
    class AddSavingsPlanAction < Struct.new(
      nil,
      :savings_plan_offering_id,
      :commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an entry object in the batch operation to create bill scenario commitment modifications. </p>
    # @!attribute key
    #   <p> A unique identifier for this entry in the batch operation. This can be any valid string. This key is useful to identify errors associated with any commitment entry as any error is returned with this key. </p>
    #   @return [String]
    # @!attribute group
    #   <p> An optional group identifier for the commitment modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID to which this commitment will be applied to. </p>
    #   @return [String]
    # @!attribute commitment_action
    #   <p> The specific commitment action to be taken (e.g., adding a Reserved Instance or Savings Plan). </p>
    #   @return [Types::BillScenarioCommitmentModificationAction]
    class BatchCreateBillScenarioCommitmentModificationEntry < Struct.new(
      nil,
      :key,
      :group,
      :usage_account_id,
      :commitment_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred during a batch create operation for bill scenario commitment modifications. </p>
    # @!attribute key
    #   <p> The key of the entry that caused the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> A descriptive message for the error that occurred. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The error code associated with the failed operation. </p>
    #   @return [String]
    class BatchCreateBillScenarioCommitmentModificationError < Struct.new(
      nil,
      :key,
      :error_message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a successfully created item in a batch operation for bill scenario commitment modifications. </p>
    # @!attribute key
    #   <p> The key of the successfully created entry. This can be any valid string. This key is useful to identify errors associated with any commitment entry as any error is returned with this key. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier assigned to the created commitment modification. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for the created commitment modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with the created commitment modification. </p>
    #   @return [String]
    # @!attribute commitment_action
    #   <p> The specific commitment action that was taken. </p>
    #   @return [Types::BillScenarioCommitmentModificationAction]
    class BatchCreateBillScenarioCommitmentModificationItem < Struct.new(
      nil,
      :key,
      :id,
      :group,
      :usage_account_id,
      :commitment_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to create the modeled commitment. </p>
    #   @return [String]
    # @!attribute commitment_modifications
    #   <p> List of commitments that you want to model in the Bill Scenario. </p>
    #   @return [Array<Types::BatchCreateBillScenarioCommitmentModificationEntry>]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    #   @return [String]
    class BatchCreateBillScenarioCommitmentModificationRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :commitment_modifications,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> Returns the list of successful commitment line items that were created for the Bill Scenario. </p>
    #   @return [Array<Types::BatchCreateBillScenarioCommitmentModificationItem>]
    # @!attribute errors
    #   <p> Returns the list of errors reason and the commitment item keys that cannot be created in the Bill Scenario. </p>
    #   @return [Array<Types::BatchCreateBillScenarioCommitmentModificationError>]
    class BatchCreateBillScenarioCommitmentModificationResponse < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an entry in a batch operation to create bill scenario usage modifications. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code for this usage modification. This identifies the specific Amazon Web Services service to the customer as a unique short abbreviation. For example, <code>AmazonEC2</code> and <code>AWSKMS</code>. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> Describes the usage details of the usage line item. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this usage modification. Describes the specific Amazon Web Services operation that this usage line models. For example, <code>RunInstances</code> indicates the operation of an Amazon EC2 instance. </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p> The Availability Zone that this usage line uses. </p>
    #   @return [String]
    # @!attribute key
    #   <p> A unique identifier for this entry in the batch operation. This can be any valid string. This key is useful to identify errors associated with any usage entry as any error is returned with this key. </p>
    #   @return [String]
    # @!attribute group
    #   <p> An optional group identifier for the usage modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID to which this usage will be applied to. </p>
    #   @return [String]
    # @!attribute amounts
    #   <p> The amount of usage you want to create for the service use you are modeling. </p>
    #   @return [Array<Types::UsageAmount>]
    # @!attribute historical_usage
    #   <p> Historical usage data associated with this modification, if available. </p>
    #   @return [Types::HistoricalUsageEntity]
    class BatchCreateBillScenarioUsageModificationEntry < Struct.new(
      nil,
      :service_code,
      :usage_type,
      :operation,
      :availability_zone,
      :key,
      :group,
      :usage_account_id,
      :amounts,
      :historical_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred during a batch create operation for bill scenario usage modifications. </p>
    # @!attribute key
    #   <p> The key of the entry that caused the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> A descriptive message for the error that occurred. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The error code associated with the failed operation. </p>
    #   @return [String]
    class BatchCreateBillScenarioUsageModificationError < Struct.new(
      nil,
      :key,
      :error_message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a successfully created item in a batch operation for bill scenario usage modifications. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code for this usage modification. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage that was modified. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this usage modification. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The location associated with this usage modification. </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p> The availability zone associated with this usage modification, if applicable. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier assigned to the created usage modification. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for the created usage modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with the created usage modification. </p>
    #   @return [String]
    # @!attribute quantities
    #   <p> The modified usage quantities. </p>
    #   @return [Array<Types::UsageQuantity>]
    # @!attribute historical_usage
    #   <p> Historical usage data associated with this modification, if available. </p>
    #   @return [Types::HistoricalUsageEntity]
    # @!attribute key
    #   <p> The key of the successfully created entry. </p>
    #   @return [String]
    class BatchCreateBillScenarioUsageModificationItem < Struct.new(
      nil,
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
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to create the modeled usage. </p>
    #   @return [String]
    # @!attribute usage_modifications
    #   <p> List of usage that you want to model in the Bill Scenario. </p>
    #   @return [Array<Types::BatchCreateBillScenarioUsageModificationEntry>]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    #   @return [String]
    class BatchCreateBillScenarioUsageModificationRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :usage_modifications,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> Returns the list of successful usage line items that were created for the Bill Scenario. </p>
    #   @return [Array<Types::BatchCreateBillScenarioUsageModificationItem>]
    # @!attribute errors
    #   <p> Returns the list of errors reason and the usage item keys that cannot be created in the Bill Scenario. </p>
    #   @return [Array<Types::BatchCreateBillScenarioUsageModificationError>]
    class BatchCreateBillScenarioUsageModificationResponse < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an entry in a batch operation to create workload estimate usage. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code for this usage estimate. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage being estimated. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this usage estimate. </p>
    #   @return [String]
    # @!attribute key
    #   <p> A unique identifier for this entry in the batch operation. </p>
    #   @return [String]
    # @!attribute group
    #   <p> An optional group identifier for the usage estimate. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with this usage estimate. </p>
    #   @return [String]
    # @!attribute amount
    #   <p> The estimated usage amount. </p>
    #   @return [Float]
    # @!attribute historical_usage
    #   <p> Historical usage data associated with this estimate, if available. </p>
    #   @return [Types::HistoricalUsageEntity]
    class BatchCreateWorkloadEstimateUsageEntry < Struct.new(
      nil,
      :service_code,
      :usage_type,
      :operation,
      :key,
      :group,
      :usage_account_id,
      :amount,
      :historical_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred during a batch create operation for workload estimate usage. </p>
    # @!attribute key
    #   <p> The key of the entry that caused the error. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The error code associated with the failed operation. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> A descriptive message for the error that occurred. </p>
    #   @return [String]
    class BatchCreateWorkloadEstimateUsageError < Struct.new(
      nil,
      :key,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a successfully created item in a batch operation for workload estimate usage. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code for this usage estimate. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage that was estimated. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this usage estimate. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The location associated with this usage estimate. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier assigned to the created usage estimate. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with the created usage estimate. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for the created usage estimate. </p>
    #   @return [String]
    # @!attribute quantity
    #   <p> The estimated usage quantity. </p>
    #   @return [Types::WorkloadEstimateUsageQuantity]
    # @!attribute cost
    #   <p> The estimated cost associated with this usage. </p>
    #   @return [Float]
    # @!attribute currency
    #   <p> The currency of the estimated cost. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the created usage estimate. </p>
    #   @return [String]
    # @!attribute historical_usage
    #   <p> Historical usage data associated with this estimate, if available. </p>
    #   @return [Types::HistoricalUsageEntity]
    # @!attribute key
    #   <p> The key of the successfully created entry. </p>
    #   @return [String]
    class BatchCreateWorkloadEstimateUsageItem < Struct.new(
      nil,
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
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_estimate_id
    #   <p> The ID of the Workload estimate for which you want to create the modeled usage. </p>
    #   @return [String]
    # @!attribute usage
    #   <p> List of usage that you want to model in the Workload estimate. </p>
    #   @return [Array<Types::BatchCreateWorkloadEstimateUsageEntry>]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    #   @return [String]
    class BatchCreateWorkloadEstimateUsageRequest < Struct.new(
      nil,
      :workload_estimate_id,
      :usage,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> Returns the list of successful usage line items that were created for the Workload estimate. </p>
    #   @return [Array<Types::BatchCreateWorkloadEstimateUsageItem>]
    # @!attribute errors
    #   <p> Returns the list of errors reason and the usage item keys that cannot be created in the Workload estimate. </p>
    #   @return [Array<Types::BatchCreateWorkloadEstimateUsageError>]
    class BatchCreateWorkloadEstimateUsageResponse < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred when deleting a commitment in a Bill Scenario. </p>
    # @!attribute id
    #   <p> The ID of the error. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The code associated with the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The message that describes the error. </p>
    #   @return [String]
    class BatchDeleteBillScenarioCommitmentModificationError < Struct.new(
      nil,
      :id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to delete the modeled commitment. </p>
    #   @return [String]
    # @!attribute ids
    #   <p> List of commitments that you want to delete from the Bill Scenario. </p>
    #   @return [Array<String>]
    class BatchDeleteBillScenarioCommitmentModificationRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p> Returns the list of errors reason and the commitment item keys that cannot be deleted from the Bill Scenario. </p>
    #   @return [Array<Types::BatchDeleteBillScenarioCommitmentModificationError>]
    class BatchDeleteBillScenarioCommitmentModificationResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred when deleting usage in a Bill Scenario. </p>
    # @!attribute id
    #   <p> The ID of the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The message that describes the error. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The code associated with the error. </p>
    #   @return [String]
    class BatchDeleteBillScenarioUsageModificationError < Struct.new(
      nil,
      :id,
      :error_message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to delete the modeled usage. </p>
    #   @return [String]
    # @!attribute ids
    #   <p> List of usage that you want to delete from the Bill Scenario. </p>
    #   @return [Array<String>]
    class BatchDeleteBillScenarioUsageModificationRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p> Returns the list of errors reason and the usage item keys that cannot be deleted from the Bill Scenario. </p>
    #   @return [Array<Types::BatchDeleteBillScenarioUsageModificationError>]
    class BatchDeleteBillScenarioUsageModificationResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred when deleting usage in a workload estimate. </p>
    # @!attribute id
    #   <p> The ID of the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The message that describes the error. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The code associated with the error. </p>
    #   @return [String]
    class BatchDeleteWorkloadEstimateUsageError < Struct.new(
      nil,
      :id,
      :error_message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_estimate_id
    #   <p> The ID of the Workload estimate for which you want to delete the modeled usage. </p>
    #   @return [String]
    # @!attribute ids
    #   <p> List of usage that you want to delete from the Workload estimate. </p>
    #   @return [Array<String>]
    class BatchDeleteWorkloadEstimateUsageRequest < Struct.new(
      nil,
      :workload_estimate_id,
      :ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p> Returns the list of errors reason and the usage item keys that cannot be deleted from the Workload estimate. </p>
    #   @return [Array<Types::BatchDeleteWorkloadEstimateUsageError>]
    class BatchDeleteWorkloadEstimateUsageResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an entry in a batch operation to update bill scenario commitment modifications. </p>
    # @!attribute id
    #   <p> The unique identifier of the commitment modification to update. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The updated group identifier for the commitment modification. </p>
    #   @return [String]
    class BatchUpdateBillScenarioCommitmentModificationEntry < Struct.new(
      nil,
      :id,
      :group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred when updating a commitment in a Bill Scenario. </p>
    # @!attribute id
    #   <p> The ID of the error. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The code associated with the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The message that describes the error. </p>
    #   @return [String]
    class BatchUpdateBillScenarioCommitmentModificationError < Struct.new(
      nil,
      :id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to modify the commitment group of a modeled commitment. </p>
    #   @return [String]
    # @!attribute commitment_modifications
    #   <p> List of commitments that you want to update in a Bill Scenario. </p>
    #   @return [Array<Types::BatchUpdateBillScenarioCommitmentModificationEntry>]
    class BatchUpdateBillScenarioCommitmentModificationRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :commitment_modifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> Returns the list of successful commitment line items that were updated for a Bill Scenario. </p>
    #   @return [Array<Types::BillScenarioCommitmentModificationItem>]
    # @!attribute errors
    #   <p> Returns the list of error reasons and commitment line item IDs that could not be updated for the Bill Scenario. </p>
    #   @return [Array<Types::BatchUpdateBillScenarioCommitmentModificationError>]
    class BatchUpdateBillScenarioCommitmentModificationResponse < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an entry in a batch operation to update bill scenario usage modifications. </p>
    # @!attribute id
    #   <p> The unique identifier of the usage modification to update. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The updated group identifier for the usage modification. </p>
    #   @return [String]
    # @!attribute amounts
    #   <p> The updated usage amounts for the modification. </p>
    #   @return [Array<Types::UsageAmount>]
    class BatchUpdateBillScenarioUsageModificationEntry < Struct.new(
      nil,
      :id,
      :group,
      :amounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred when updating usage in a Bill Scenario. </p>
    # @!attribute id
    #   <p> The ID of the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The message that describes the error. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The code associated with the error. </p>
    #   @return [String]
    class BatchUpdateBillScenarioUsageModificationError < Struct.new(
      nil,
      :id,
      :error_message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to modify the usage lines. </p>
    #   @return [String]
    # @!attribute usage_modifications
    #   <p> List of usage lines that you want to update in a Bill Scenario identified by the usage ID. </p>
    #   @return [Array<Types::BatchUpdateBillScenarioUsageModificationEntry>]
    class BatchUpdateBillScenarioUsageModificationRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :usage_modifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> Returns the list of successful usage line items that were updated for a Bill Scenario. </p>
    #   @return [Array<Types::BillScenarioUsageModificationItem>]
    # @!attribute errors
    #   <p> Returns the list of error reasons and usage line item IDs that could not be updated for the Bill Scenario. </p>
    #   @return [Array<Types::BatchUpdateBillScenarioUsageModificationError>]
    class BatchUpdateBillScenarioUsageModificationResponse < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an entry in a batch operation to update workload estimate usage. </p>
    # @!attribute id
    #   <p> The unique identifier of the usage estimate to update. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The updated group identifier for the usage estimate. </p>
    #   @return [String]
    # @!attribute amount
    #   <p> The updated estimated usage amount. </p>
    #   @return [Float]
    class BatchUpdateWorkloadEstimateUsageEntry < Struct.new(
      nil,
      :id,
      :group,
      :amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an error that occurred when updating usage in a workload estimate. </p>
    # @!attribute id
    #   <p> The ID of the error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The message that describes the error. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The code associated with the error. </p>
    #   @return [String]
    class BatchUpdateWorkloadEstimateUsageError < Struct.new(
      nil,
      :id,
      :error_message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_estimate_id
    #   <p> The ID of the Workload estimate for which you want to modify the usage lines. </p>
    #   @return [String]
    # @!attribute usage
    #   <p> List of usage line amounts and usage group that you want to update in a Workload estimate identified by the usage ID. </p>
    #   @return [Array<Types::BatchUpdateWorkloadEstimateUsageEntry>]
    class BatchUpdateWorkloadEstimateUsageRequest < Struct.new(
      nil,
      :workload_estimate_id,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> Returns the list of successful usage line items that were updated for a Workload estimate. </p>
    #   @return [Array<Types::WorkloadEstimateUsageItem>]
    # @!attribute errors
    #   <p> Returns the list of error reasons and usage line item IDs that could not be updated for the Workload estimate. </p>
    #   @return [Array<Types::BatchUpdateWorkloadEstimateUsageError>]
    class BatchUpdateWorkloadEstimateUsageResponse < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides a summary of commitment-related information for a bill estimate. </p>
    # @!attribute id
    #   <p> The unique identifier of the commitment. </p>
    #   @return [String]
    # @!attribute purchase_agreement_type
    #   <p> The type of purchase agreement (e.g., Reserved Instance, Savings Plan). </p>
    #   @return [String]
    # @!attribute offering_id
    #   <p> The identifier of the specific offering associated with this commitment. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with this commitment. </p>
    #   @return [String]
    # @!attribute region
    #   <p> The Amazon Web Services region associated with this commitment. </p>
    #   @return [String]
    # @!attribute term_length
    #   <p> The length of the commitment term. </p>
    #   @return [String]
    # @!attribute payment_option
    #   <p> The payment option chosen for this commitment (e.g., All Upfront, Partial Upfront, No Upfront). </p>
    #   @return [String]
    # @!attribute upfront_payment
    #   <p> The upfront payment amount for this commitment, if applicable. </p>
    #   @return [Types::CostAmount]
    # @!attribute monthly_payment
    #   <p> The monthly payment amount for this commitment, if applicable. </p>
    #   @return [Types::CostAmount]
    class BillEstimateCommitmentSummary < Struct.new(
      nil,
      :id,
      :purchase_agreement_type,
      :offering_id,
      :usage_account_id,
      :region,
      :term_length,
      :payment_option,
      :upfront_payment,
      :monthly_payment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides a summary of cost-related information for a bill estimate. </p>
    # @!attribute total_cost_difference
    #   <p> The total difference in cost between the estimated and historical costs. </p>
    #   @return [Types::CostDifference]
    # @!attribute service_cost_differences
    #   <p> A breakdown of cost differences by Amazon Web Services service. </p>
    #   @return [Hash<String, Types::CostDifference>]
    class BillEstimateCostSummary < Struct.new(
      nil,
      :total_cost_difference,
      :service_cost_differences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Summarizes an input commitment modification for a bill estimate. </p>
    # @!attribute id
    #   <p> The unique identifier of the commitment modification. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for the commitment modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with this commitment modification. </p>
    #   @return [String]
    # @!attribute commitment_action
    #   <p> The specific commitment action taken in this modification. </p>
    #   @return [Types::BillScenarioCommitmentModificationAction]
    class BillEstimateInputCommitmentModificationSummary < Struct.new(
      nil,
      :id,
      :group,
      :usage_account_id,
      :commitment_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Summarizes an input usage modification for a bill estimate. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code for this usage modification. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage being modified. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this usage modification. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The location associated with this usage modification. </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p> The availability zone associated with this usage modification, if applicable. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier of the usage modification. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for the usage modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with this usage modification. </p>
    #   @return [String]
    # @!attribute quantities
    #   <p> The modified usage quantities. </p>
    #   @return [Array<Types::UsageQuantity>]
    # @!attribute historical_usage
    #   <p> Historical usage data associated with this modification, if available. </p>
    #   @return [Types::HistoricalUsageEntity]
    class BillEstimateInputUsageModificationSummary < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides a summary of a line item in a bill estimate. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code associated with this line item. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage for this line item. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this line item. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The location associated with this line item. </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p> The availability zone associated with this line item, if applicable. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier of this line item. </p>
    #   @return [String]
    # @!attribute line_item_id
    #   <p> The line item identifier from the original bill. </p>
    #   @return [String]
    # @!attribute line_item_type
    #   <p> The type of this line item (e.g., Usage, Tax, Credit). </p>
    #   @return [String]
    # @!attribute payer_account_id
    #   <p> The Amazon Web Services account ID of the payer for this line item. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with the usage for this line item. </p>
    #   @return [String]
    # @!attribute estimated_usage_quantity
    #   <p> The estimated usage quantity for this line item. </p>
    #   @return [Types::UsageQuantityResult]
    # @!attribute estimated_cost
    #   <p> The estimated cost for this line item. </p>
    #   @return [Types::CostAmount]
    # @!attribute historical_usage_quantity
    #   <p> The historical usage quantity for this line item. </p>
    #   @return [Types::UsageQuantityResult]
    # @!attribute historical_cost
    #   <p> The historical cost for this line item. </p>
    #   @return [Types::CostAmount]
    # @!attribute savings_plan_arns
    #   <p> The Amazon Resource Names (ARNs) of any Savings Plans applied to this line item. </p>
    #   @return [Array<String>]
    class BillEstimateLineItemSummary < Struct.new(
      nil,
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
      :savings_plan_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides a summary of a bill estimate. </p>
    # @!attribute id
    #   <p> The unique identifier of the bill estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the bill estimate. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the bill estimate. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time period covered by the bill estimate. </p>
    #   @return [Types::BillInterval]
    # @!attribute created_at
    #   <p> The timestamp when the bill estimate was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the bill estimate will expire. </p>
    #   @return [Time]
    class BillEstimateSummary < Struct.new(
      nil,
      :id,
      :name,
      :status,
      :bill_interval,
      :created_at,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a time interval for a bill or estimate. </p>
    # @!attribute start
    #   <p> The start date and time of the interval. </p>
    #   @return [Time]
    # @!attribute end
    #   <p> The end date and time of the interval. </p>
    #   @return [Time]
    class BillInterval < Struct.new(
      nil,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an action to modify commitments in a bill scenario. </p>
    # @!attribute add_reserved_instance_action
    #   <p> Action to add a Reserved Instance to the scenario. </p>
    #   @return [Types::AddReservedInstanceAction]
    # @!attribute add_savings_plan_action
    #   <p> Action to add a Savings Plan to the scenario. </p>
    #   @return [Types::AddSavingsPlanAction]
    # @!attribute negate_reserved_instance_action
    #   <p> Action to remove a Reserved Instance from the scenario. </p>
    #   @return [Types::NegateReservedInstanceAction]
    # @!attribute negate_savings_plan_action
    #   <p> Action to remove a Savings Plan from the scenario. </p>
    #   @return [Types::NegateSavingsPlanAction]
    class BillScenarioCommitmentModificationAction < Struct.new(
      :add_reserved_instance_action,
      :add_savings_plan_action,
      :negate_reserved_instance_action,
      :negate_savings_plan_action,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AddReservedInstanceAction < BillScenarioCommitmentModificationAction; end
      class AddSavingsPlanAction < BillScenarioCommitmentModificationAction; end
      class NegateReservedInstanceAction < BillScenarioCommitmentModificationAction; end
      class NegateSavingsPlanAction < BillScenarioCommitmentModificationAction; end
      class Unknown < BillScenarioCommitmentModificationAction; end
    end

    # <p> Represents a commitment modification item in a bill scenario. </p>
    # @!attribute id
    #   <p> The unique identifier of the commitment modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with this commitment modification. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for the commitment modification. </p>
    #   @return [String]
    # @!attribute commitment_action
    #   <p> The specific commitment action taken in this modification. </p>
    #   @return [Types::BillScenarioCommitmentModificationAction]
    class BillScenarioCommitmentModificationItem < Struct.new(
      nil,
      :id,
      :usage_account_id,
      :group,
      :commitment_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides a summary of a bill scenario. </p>
    # @!attribute id
    #   <p> The unique identifier of the bill scenario. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the bill scenario. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time period covered by the bill scenario. </p>
    #   @return [Types::BillInterval]
    # @!attribute status
    #   <p> The current status of the bill scenario. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the bill scenario was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the bill scenario will expire. </p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p> An error message if the bill scenario creation or processing failed. </p>
    #   @return [String]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    class BillScenarioSummary < Struct.new(
      nil,
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a usage modification item in a bill scenario. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code for this usage modification. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage being modified. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this usage modification. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The location associated with this usage modification. </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p> The availability zone associated with this usage modification, if applicable. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier of the usage modification. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for the usage modification. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with this usage modification. </p>
    #   @return [String]
    # @!attribute quantities
    #   <p> The modified usage quantities. </p>
    #   @return [Array<Types::UsageQuantity>]
    # @!attribute historical_usage
    #   <p> Historical usage data associated with this modification, if available. </p>
    #   @return [Types::HistoricalUsageEntity]
    class BillScenarioUsageModificationItem < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The request could not be processed because of conflict in the current state of the resource. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier of the resource that was not found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the resource that was not found. </p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a monetary amount with associated currency. </p>
    # @!attribute amount
    #   <p> The numeric value of the cost. </p>
    #   @return [Float]
    # @!attribute currency
    #   <p> The currency code for the cost amount. </p>
    #   @return [String]
    class CostAmount < Struct.new(
      nil,
      :amount,
      :currency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the difference between historical and estimated costs. </p>
    # @!attribute historical_cost
    #   <p> The historical cost amount. </p>
    #   @return [Types::CostAmount]
    # @!attribute estimated_cost
    #   <p> The estimated cost amount. </p>
    #   @return [Types::CostAmount]
    class CostDifference < Struct.new(
      nil,
      :historical_cost,
      :estimated_cost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The ID of the Bill Scenario for which you want to create a Bill estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the Bill estimate that will be created. Names must be unique for an account. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> An optional list of tags to associate with the specified BillEstimate. You can use resource tags to control access to your BillEstimate using IAM policies. Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags: </p> <ul> <li> <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services. </p> </li> <li> <p>The maximum length of a key is 128 characters.</p> </li> <li> <p>The maximum length of a value is 256 characters.</p> </li> <li> <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>.</p> </li> <li> <p>Keys and values are case sensitive.</p> </li> <li> <p>Keys and values are trimmed for any leading or trailing whitespaces.</p> </li> <li> <p>Don't use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class CreateBillEstimateRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :name,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The unique identifier of your newly created Bill estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of your newly created Bill estimate. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of your newly created Bill estimate. Bill estimate creation can take anywhere between 8 to 12 hours. The status will allow you to identify when the Bill estimate is complete or has failed. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> This attribute provides the reason if a Bill estimate result generation fails. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The bill month start and end timestamp that was used to create the Bill estimate. This is set to the last complete anniversary bill month start and end timestamp. </p>
    #   @return [Types::BillInterval]
    # @!attribute cost_summary
    #   <p> Returns summary-level cost information once a Bill estimate is successfully generated. This summary includes: 1) the total cost difference, showing the pre-tax cost change for the consolidated billing family between the completed anniversary bill and the estimated bill, and 2) total cost differences per service, detailing the pre-tax cost of each service, comparing the completed anniversary bill to the estimated bill on a per-service basis. </p>
    #   @return [Types::BillEstimateCostSummary]
    # @!attribute created_at
    #   <p> The timestamp of when the Bill estimate create process was started (not when it successfully completed or failed). </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp of when the Bill estimate will expire. A Bill estimate becomes inaccessible after expiration. </p>
    #   @return [Time]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_effective_date
    #   <p>Timestamp of the effective date of the cost category used in the group sharing settings.</p>
    #   @return [Time]
    class CreateBillEstimateResponse < Struct.new(
      nil,
      :id,
      :name,
      :status,
      :failure_message,
      :bill_interval,
      :cost_summary,
      :created_at,
      :expires_at,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      :cost_category_group_sharing_preference_effective_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> A descriptive name for the bill scenario. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier to ensure idempotency of the request. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags to apply to the bill scenario. </p>
    #   @return [Hash<String, String>]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    class CreateBillScenarioRequest < Struct.new(
      nil,
      :name,
      :client_token,
      :tags,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The unique identifier for the created bill scenario. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the created bill scenario. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time period covered by the bill scenario. </p>
    #   @return [Types::BillInterval]
    # @!attribute status
    #   <p> The current status of the bill scenario. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the bill scenario was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the bill scenario will expire. </p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p> An error message if the bill scenario creation failed. </p>
    #   @return [String]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    class CreateBillScenarioResponse < Struct.new(
      nil,
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> A descriptive name for the workload estimate. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier to ensure idempotency of the request. </p>
    #   @return [String]
    # @!attribute rate_type
    #   <p> The type of pricing rates to use for the estimate. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags to apply to the workload estimate. </p>
    #   @return [Hash<String, String>]
    class CreateWorkloadEstimateRequest < Struct.new(
      nil,
      :name,
      :client_token,
      :rate_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin for common fields returned by CRUD APIs
    # @!attribute id
    #   <p> The unique identifier for the created workload estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the created workload estimate. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the workload estimate was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the workload estimate will expire. </p>
    #   @return [Time]
    # @!attribute rate_type
    #   <p> The type of pricing rates used for the estimate. </p>
    #   @return [String]
    # @!attribute rate_timestamp
    #   <p> The timestamp of the pricing rates used for the estimate. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The current status of the workload estimate. </p>
    #   @return [String]
    # @!attribute total_cost
    #   <p> The total estimated cost for the workload. </p>
    #   @return [Float]
    # @!attribute cost_currency
    #   <p> The currency of the estimated cost. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> An error message if the workload estimate creation failed. </p>
    #   @return [String]
    class CreateWorkloadEstimateResponse < Struct.new(
      nil,
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The requested data is currently unavailable. </p>
    # @!attribute message
    #   @return [String]
    class DataUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the bill estimate to delete. </p>
    #   @return [String]
    class DeleteBillEstimateRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteBillEstimateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the bill scenario to delete. </p>
    #   @return [String]
    class DeleteBillScenarioRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteBillScenarioResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the workload estimate to delete. </p>
    #   @return [String]
    class DeleteWorkloadEstimateRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkloadEstimateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a complex filtering expression for cost and usage data. </p>
    # @!attribute and
    #   <p> A list of expressions to be combined with AND logic. </p>
    #   @return [Array<Types::Expression>]
    # @!attribute or
    #   <p> A list of expressions to be combined with OR logic. </p>
    #   @return [Array<Types::Expression>]
    # @!attribute not
    #   <p> An expression to be negated. </p>
    #   @return [Types::Expression]
    # @!attribute cost_categories
    #   <p> Filters based on cost categories. </p>
    #   @return [Types::ExpressionFilter]
    # @!attribute dimensions
    #   <p> Filters based on dimensions (e.g., service, operation). </p>
    #   @return [Types::ExpressionFilter]
    # @!attribute tags
    #   <p> Filters based on resource tags. </p>
    #   @return [Types::ExpressionFilter]
    class Expression < Struct.new(
      nil,
      :and,
      :or,
      :not,
      :cost_categories,
      :dimensions,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a filter used within an expression. </p>
    # @!attribute key
    #   <p> The key or attribute to filter on. </p>
    #   @return [String]
    # @!attribute match_options
    #   <p> The match options for the filter (e.g., equals, contains). </p>
    #   @return [Array<String>]
    # @!attribute values
    #   <p> The values to match against. </p>
    #   @return [Array<String>]
    class ExpressionFilter < Struct.new(
      nil,
      :key,
      :match_options,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a time-based filter. </p>
    # @!attribute after_timestamp
    #   <p> Include results after this timestamp. </p>
    #   @return [Time]
    # @!attribute before_timestamp
    #   <p> Include results before this timestamp. </p>
    #   @return [Time]
    class FilterTimestamp < Struct.new(
      nil,
      :after_timestamp,
      :before_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the bill estimate to retrieve. </p>
    #   @return [String]
    class GetBillEstimateRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The unique identifier of the retrieved bill estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the retrieved bill estimate. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the bill estimate. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> An error message if the bill estimate retrieval failed. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time period covered by the bill estimate. </p>
    #   @return [Types::BillInterval]
    # @!attribute cost_summary
    #   <p> A summary of the estimated costs. </p>
    #   @return [Types::BillEstimateCostSummary]
    # @!attribute created_at
    #   <p> The timestamp when the bill estimate was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the bill estimate will expire. </p>
    #   @return [Time]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_effective_date
    #   <p>Timestamp of the effective date of the cost category used in the group sharing settings.</p>
    #   @return [Time]
    class GetBillEstimateResponse < Struct.new(
      nil,
      :id,
      :name,
      :status,
      :failure_message,
      :bill_interval,
      :cost_summary,
      :created_at,
      :expires_at,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      :cost_category_group_sharing_preference_effective_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the bill scenario to retrieve. </p>
    #   @return [String]
    class GetBillScenarioRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The unique identifier of the retrieved bill scenario. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the retrieved bill scenario. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time period covered by the bill scenario. </p>
    #   @return [Types::BillInterval]
    # @!attribute status
    #   <p> The current status of the bill scenario. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the bill scenario was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the bill scenario will expire. </p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p> An error message if the bill scenario retrieval failed. </p>
    #   @return [String]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    class GetBillScenarioResponse < Struct.new(
      nil,
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
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

    # @!attribute management_account_rate_type_selections
    #   <p> The preferred rate types for the management account. </p>
    #   @return [Array<String>]
    # @!attribute member_account_rate_type_selections
    #   <p> The preferred rate types for member accounts. </p>
    #   @return [Array<String>]
    # @!attribute standalone_account_rate_type_selections
    #   <p> The preferred rate types for a standalone account. </p>
    #   @return [Array<String>]
    class GetPreferencesResponse < Struct.new(
      nil,
      :management_account_rate_type_selections,
      :member_account_rate_type_selections,
      :standalone_account_rate_type_selections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the workload estimate to retrieve. </p>
    #   @return [String]
    class GetWorkloadEstimateRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin for common fields returned by CRUD APIs
    # @!attribute id
    #   <p> The unique identifier of the retrieved workload estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the retrieved workload estimate. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the workload estimate was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the workload estimate will expire. </p>
    #   @return [Time]
    # @!attribute rate_type
    #   <p> The type of pricing rates used for the estimate. </p>
    #   @return [String]
    # @!attribute rate_timestamp
    #   <p> The timestamp of the pricing rates used for the estimate. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The current status of the workload estimate. </p>
    #   @return [String]
    # @!attribute total_cost
    #   <p> The total estimated cost for the workload. </p>
    #   @return [Float]
    # @!attribute cost_currency
    #   <p> The currency of the estimated cost. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> An error message if the workload estimate retrieval failed. </p>
    #   @return [String]
    class GetWorkloadEstimateResponse < Struct.new(
      nil,
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents historical usage data for a specific entity. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code associated with the usage. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with the usage. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The location associated with the usage. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with the usage. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time interval for the historical usage data. </p>
    #   @return [Types::BillInterval]
    # @!attribute filter_expression
    #   <p> An optional filter expression to apply to the historical usage data. </p>
    #   @return [Types::Expression]
    class HistoricalUsageEntity < Struct.new(
      nil,
      :service_code,
      :usage_type,
      :operation,
      :location,
      :usage_account_id,
      :bill_interval,
      :filter_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An internal error has occurred. Retry your request, but if the problem persists, contact Amazon Web Services support. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p> An internal error has occurred. Retry your request, but if the problem persists, contact Amazon Web Services support. </p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list commitments for. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillEstimateCommitmentsRequest < Struct.new(
      nil,
      :bill_estimate_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of commitments associated with the bill estimate. </p>
    #   @return [Array<Types::BillEstimateCommitmentSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillEstimateCommitmentsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list input commitment modifications for. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillEstimateInputCommitmentModificationsRequest < Struct.new(
      nil,
      :bill_estimate_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of input commitment modifications associated with the bill estimate. </p>
    #   @return [Array<Types::BillEstimateInputCommitmentModificationSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillEstimateInputCommitmentModificationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list input usage modifications for. </p>
    #   @return [String]
    # @!attribute filters
    #   <p> Filters to apply to the list of input usage modifications. </p>
    #   @return [Array<Types::ListUsageFilter>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillEstimateInputUsageModificationsRequest < Struct.new(
      nil,
      :bill_estimate_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of input usage modifications associated with the bill estimate. </p>
    #   @return [Array<Types::BillEstimateInputUsageModificationSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillEstimateInputUsageModificationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a filter for listing bill estimate line items. </p>
    # @!attribute name
    #   <p> The name of the filter attribute. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The values to filter by. </p>
    #   @return [Array<String>]
    # @!attribute match_option
    #   <p> The match option for the filter (e.g., equals, contains). </p>
    #   @return [String]
    class ListBillEstimateLineItemsFilter < Struct.new(
      nil,
      :name,
      :values,
      :match_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_estimate_id
    #   <p> The unique identifier of the bill estimate to list line items for. </p>
    #   @return [String]
    # @!attribute filters
    #   <p> Filters to apply to the list of line items. </p>
    #   @return [Array<Types::ListBillEstimateLineItemsFilter>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillEstimateLineItemsRequest < Struct.new(
      nil,
      :bill_estimate_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of line items associated with the bill estimate. </p>
    #   @return [Array<Types::BillEstimateLineItemSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillEstimateLineItemsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a filter for listing bill estimates. </p>
    # @!attribute name
    #   <p> The name of the filter attribute. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The values to filter by. </p>
    #   @return [Array<String>]
    # @!attribute match_option
    #   <p> The match option for the filter (e.g., equals, contains). </p>
    #   @return [String]
    class ListBillEstimatesFilter < Struct.new(
      nil,
      :name,
      :values,
      :match_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> Filters to apply to the list of bill estimates. </p>
    #   @return [Array<Types::ListBillEstimatesFilter>]
    # @!attribute created_at_filter
    #   <p> Filter bill estimates based on the creation date. </p>
    #   @return [Types::FilterTimestamp]
    # @!attribute expires_at_filter
    #   <p> Filter bill estimates based on the expiration date. </p>
    #   @return [Types::FilterTimestamp]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillEstimatesRequest < Struct.new(
      nil,
      :filters,
      :created_at_filter,
      :expires_at_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of bill estimates for the account. </p>
    #   @return [Array<Types::BillEstimateSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillEstimatesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The unique identifier of the bill scenario to list commitment modifications for. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillScenarioCommitmentModificationsRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of commitment modifications associated with the bill scenario. </p>
    #   @return [Array<Types::BillScenarioCommitmentModificationItem>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillScenarioCommitmentModificationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bill_scenario_id
    #   <p> The unique identifier of the bill scenario to list usage modifications for. </p>
    #   @return [String]
    # @!attribute filters
    #   <p> Filters to apply to the list of usage modifications. </p>
    #   @return [Array<Types::ListUsageFilter>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillScenarioUsageModificationsRequest < Struct.new(
      nil,
      :bill_scenario_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of usage modifications associated with the bill scenario. </p>
    #   @return [Array<Types::BillScenarioUsageModificationItem>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillScenarioUsageModificationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a filter for listing bill scenarios. </p>
    # @!attribute name
    #   <p> The name of the filter attribute. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The values to filter by. </p>
    #   @return [Array<String>]
    # @!attribute match_option
    #   <p> The match option for the filter (e.g., equals, contains). </p>
    #   @return [String]
    class ListBillScenariosFilter < Struct.new(
      nil,
      :name,
      :values,
      :match_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> Filters to apply to the list of bill scenarios. </p>
    #   @return [Array<Types::ListBillScenariosFilter>]
    # @!attribute created_at_filter
    #   <p> Filter bill scenarios based on the creation date. </p>
    #   @return [Types::FilterTimestamp]
    # @!attribute expires_at_filter
    #   <p> Filter bill scenarios based on the expiration date. </p>
    #   @return [Types::FilterTimestamp]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListBillScenariosRequest < Struct.new(
      nil,
      :filters,
      :created_at_filter,
      :expires_at_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of bill scenarios for the account. </p>
    #   @return [Array<Types::BillScenarioSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListBillScenariosResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the resource to list tags for. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The list of tags associated with the specified resource. </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a filter for listing usage data. </p>
    # @!attribute name
    #   <p> The name of the filter attribute. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The values to filter by. </p>
    #   @return [Array<String>]
    # @!attribute match_option
    #   <p> The match option for the filter (e.g., equals, contains). </p>
    #   @return [String]
    class ListUsageFilter < Struct.new(
      nil,
      :name,
      :values,
      :match_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_estimate_id
    #   <p> The unique identifier of the workload estimate to list usage for. </p>
    #   @return [String]
    # @!attribute filters
    #   <p> Filters to apply to the list of usage items. </p>
    #   @return [Array<Types::ListUsageFilter>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListWorkloadEstimateUsageRequest < Struct.new(
      nil,
      :workload_estimate_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of usage items associated with the workload estimate. </p>
    #   @return [Array<Types::WorkloadEstimateUsageItem>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListWorkloadEstimateUsageResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a filter for listing workload estimates. </p>
    # @!attribute name
    #   <p> The name of the filter attribute. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The values to filter by. </p>
    #   @return [Array<String>]
    # @!attribute match_option
    #   <p> The match option for the filter (e.g., equals, contains). </p>
    #   @return [String]
    class ListWorkloadEstimatesFilter < Struct.new(
      nil,
      :name,
      :values,
      :match_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at_filter
    #   <p> Filter workload estimates based on the creation date. </p>
    #   @return [Types::FilterTimestamp]
    # @!attribute expires_at_filter
    #   <p> Filter workload estimates based on the expiration date. </p>
    #   @return [Types::FilterTimestamp]
    # @!attribute filters
    #   <p> Filters to apply to the list of workload estimates. </p>
    #   @return [Array<Types::ListWorkloadEstimatesFilter>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per page. </p>
    #   @return [Integer]
    class ListWorkloadEstimatesRequest < Struct.new(
      nil,
      :created_at_filter,
      :expires_at_filter,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> The list of workload estimates for the account. </p>
    #   @return [Array<Types::WorkloadEstimateSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next page of results, if any. </p>
    #   @return [String]
    class ListWorkloadEstimatesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an action to remove a Reserved Instance from a bill scenario. </p> <p> This is the ID of an existing Reserved Instance in your account. </p>
    # @!attribute reserved_instances_id
    #   <p> The ID of the Reserved Instance to remove. </p>
    #   @return [String]
    class NegateReservedInstanceAction < Struct.new(
      nil,
      :reserved_instances_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an action to remove a Savings Plan from a bill scenario. </p> <p> This is the ID of an existing Savings Plan in your account. </p>
    # @!attribute savings_plan_id
    #   <p> The ID of the Savings Plan to remove. </p>
    #   @return [String]
    class NegateSavingsPlanAction < Struct.new(
      nil,
      :savings_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified resource was not found. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier of the resource that was not found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the resource that was not found. </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The request would cause you to exceed your service quota. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier of the resource that exceeded quota. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the resource that exceeded quota. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p> The service code that exceeded quota. </p>
    #   @return [String]
    # @!attribute quota_code
    #   <p> The quota code that was exceeded. </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the resource to add tags to. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags to add to the resource. </p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code that exceeded the throttling limit.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code that exceeded the throttling limit.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The service code that exceeded the throttling limit. Retry your request, but if the problem persists, contact Amazon Web Services support.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the resource to remove tags from. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> The keys of the tags to remove from the resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the bill estimate to update. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The new name for the bill estimate. </p>
    #   @return [String]
    # @!attribute expires_at
    #   <p> The new expiration date for the bill estimate. </p>
    #   @return [Time]
    class UpdateBillEstimateRequest < Struct.new(
      nil,
      :identifier,
      :name,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The unique identifier of the updated bill estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The updated name of the bill estimate. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the updated bill estimate. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> An error message if the bill estimate update failed. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time period covered by the updated bill estimate. </p>
    #   @return [Types::BillInterval]
    # @!attribute cost_summary
    #   <p> A summary of the updated estimated costs. </p>
    #   @return [Types::BillEstimateCostSummary]
    # @!attribute created_at
    #   <p> The timestamp when the bill estimate was originally created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The updated expiration timestamp for the bill estimate. </p>
    #   @return [Time]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_effective_date
    #   <p>Timestamp of the effective date of the cost category used in the group sharing settings.</p>
    #   @return [Time]
    class UpdateBillEstimateResponse < Struct.new(
      nil,
      :id,
      :name,
      :status,
      :failure_message,
      :bill_interval,
      :cost_summary,
      :created_at,
      :expires_at,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      :cost_category_group_sharing_preference_effective_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the bill scenario to update. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The new name for the bill scenario. </p>
    #   @return [String]
    # @!attribute expires_at
    #   <p> The new expiration date for the bill scenario. </p>
    #   @return [Time]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    class UpdateBillScenarioRequest < Struct.new(
      nil,
      :identifier,
      :name,
      :expires_at,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The unique identifier of the updated bill scenario. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The updated name of the bill scenario. </p>
    #   @return [String]
    # @!attribute bill_interval
    #   <p> The time period covered by the updated bill scenario. </p>
    #   @return [Types::BillInterval]
    # @!attribute status
    #   <p> The current status of the updated bill scenario. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the bill scenario was originally created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The updated expiration timestamp for the bill scenario. </p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p> An error message if the bill scenario update failed. </p>
    #   @return [String]
    # @!attribute group_sharing_preference
    #   <p>The setting for the reserved instance and savings plan group sharing used in this estimate.</p>
    #   @return [String]
    # @!attribute cost_category_group_sharing_preference_arn
    #   <p>The arn of the cost category used in the reserved and prioritized group sharing.</p>
    #   @return [String]
    class UpdateBillScenarioResponse < Struct.new(
      nil,
      :id,
      :name,
      :bill_interval,
      :status,
      :created_at,
      :expires_at,
      :failure_message,
      :group_sharing_preference,
      :cost_category_group_sharing_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute management_account_rate_type_selections
    #   <p> The updated preferred rate types for the management account. </p>
    #   @return [Array<String>]
    # @!attribute member_account_rate_type_selections
    #   <p> The updated preferred rate types for member accounts. </p>
    #   @return [Array<String>]
    # @!attribute standalone_account_rate_type_selections
    #   <p> The updated preferred rate types for a standalone account. </p>
    #   @return [Array<String>]
    class UpdatePreferencesRequest < Struct.new(
      nil,
      :management_account_rate_type_selections,
      :member_account_rate_type_selections,
      :standalone_account_rate_type_selections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute management_account_rate_type_selections
    #   <p> The updated preferred rate types for the management account. </p>
    #   @return [Array<String>]
    # @!attribute member_account_rate_type_selections
    #   <p> The updated preferred rate types for member accounts. </p>
    #   @return [Array<String>]
    # @!attribute standalone_account_rate_type_selections
    #   <p> The updated preferred rate types for a standalone account. </p>
    #   @return [Array<String>]
    class UpdatePreferencesResponse < Struct.new(
      nil,
      :management_account_rate_type_selections,
      :member_account_rate_type_selections,
      :standalone_account_rate_type_selections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> The unique identifier of the workload estimate to update. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The new name for the workload estimate. </p>
    #   @return [String]
    # @!attribute expires_at
    #   <p> The new expiration date for the workload estimate. </p>
    #   @return [Time]
    class UpdateWorkloadEstimateRequest < Struct.new(
      nil,
      :identifier,
      :name,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin for common fields returned by CRUD APIs
    # @!attribute id
    #   <p> The unique identifier of the updated workload estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The updated name of the workload estimate. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the workload estimate was originally created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The updated expiration timestamp for the workload estimate. </p>
    #   @return [Time]
    # @!attribute rate_type
    #   <p> The type of pricing rates used for the updated estimate. </p>
    #   @return [String]
    # @!attribute rate_timestamp
    #   <p> The timestamp of the pricing rates used for the updated estimate. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The current status of the updated workload estimate. </p>
    #   @return [String]
    # @!attribute total_cost
    #   <p> The updated total estimated cost for the workload. </p>
    #   @return [Float]
    # @!attribute cost_currency
    #   <p> The currency of the updated estimated cost. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> An error message if the workload estimate update failed. </p>
    #   @return [String]
    class UpdateWorkloadEstimateResponse < Struct.new(
      nil,
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a usage amount for a specific time period. </p>
    # @!attribute start_hour
    #   <p> The start hour of the usage period. </p>
    #   @return [Time]
    # @!attribute amount
    #   <p> The usage amount for the period. </p>
    #   @return [Float]
    class UsageAmount < Struct.new(
      nil,
      :start_hour,
      :amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a usage quantity with associated unit and time period. </p>
    # @!attribute start_hour
    #   <p> The start hour of the usage period. </p>
    #   @return [Time]
    # @!attribute unit
    #   <p> The unit of measurement for the usage quantity. </p>
    #   @return [String]
    # @!attribute amount
    #   <p> The numeric value of the usage quantity. </p>
    #   @return [Float]
    class UsageQuantity < Struct.new(
      nil,
      :start_hour,
      :unit,
      :amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the result of a usage quantity calculation. </p>
    # @!attribute amount
    #   <p> The numeric value of the usage quantity result. </p>
    #   @return [Float]
    # @!attribute unit
    #   <p> The unit of measurement for the usage quantity result. </p>
    #   @return [String]
    class UsageQuantityResult < Struct.new(
      nil,
      :amount,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The input provided fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p> The reason for the validation exception. </p>
    #   @return [String]
    # @!attribute field_list
    #   <p> The list of fields that are invalid. </p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a field that failed validation in a request. </p>
    # @!attribute name
    #   <p> The name of the field that failed validation. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The error message describing why the field failed validation. </p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides a summary of a workload estimate. </p>
    # @!attribute id
    #   <p> The unique identifier of the workload estimate. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the workload estimate. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the workload estimate was created. </p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p> The timestamp when the workload estimate will expire. </p>
    #   @return [Time]
    # @!attribute rate_type
    #   <p> The type of pricing rates used for the estimate. </p>
    #   @return [String]
    # @!attribute rate_timestamp
    #   <p> The timestamp of the pricing rates used for the estimate. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The current status of the workload estimate. </p>
    #   @return [String]
    # @!attribute total_cost
    #   <p> The total estimated cost for the workload. </p>
    #   @return [Float]
    # @!attribute cost_currency
    #   <p> The currency of the estimated cost. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> An error message if the workload estimate creation or processing failed. </p>
    #   @return [String]
    class WorkloadEstimateSummary < Struct.new(
      nil,
      :id,
      :name,
      :created_at,
      :expires_at,
      :rate_type,
      :rate_timestamp,
      :status,
      :total_cost,
      :cost_currency,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a usage item in a workload estimate. </p>
    # @!attribute service_code
    #   <p> The Amazon Web Services service code associated with this usage item. </p>
    #   @return [String]
    # @!attribute usage_type
    #   <p> The type of usage for this item. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> The specific operation associated with this usage item. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The location associated with this usage item. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier of this usage item. </p>
    #   @return [String]
    # @!attribute usage_account_id
    #   <p> The Amazon Web Services account ID associated with this usage item. </p>
    #   @return [String]
    # @!attribute group
    #   <p> The group identifier for this usage item. </p>
    #   @return [String]
    # @!attribute quantity
    #   <p> The estimated usage quantity for this item. </p>
    #   @return [Types::WorkloadEstimateUsageQuantity]
    # @!attribute cost
    #   <p> The estimated cost for this usage item. </p>
    #   @return [Float]
    # @!attribute currency
    #   <p> The currency of the estimated cost. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of this usage item. </p>
    #   @return [String]
    # @!attribute historical_usage
    #   <p> Historical usage data associated with this item, if available. </p>
    #   @return [Types::HistoricalUsageEntity]
    class WorkloadEstimateUsageItem < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a usage quantity for a workload estimate. </p>
    # @!attribute unit
    #   <p> The unit of measurement for the usage quantity. </p>
    #   @return [String]
    # @!attribute amount
    #   <p> The numeric value of the usage quantity. </p>
    #   @return [Float]
    class WorkloadEstimateUsageQuantity < Struct.new(
      nil,
      :unit,
      :amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
