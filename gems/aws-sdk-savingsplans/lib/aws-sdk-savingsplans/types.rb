# frozen_string_literal: true

# This is generated code!

module Aws::Savingsplans
  # This module contains the types returned by client operations.
  module Types

    # @!attribute savings_plan_offering_id
    #   <p>The ID of the offering.</p>
    #   @return [String]
    # @!attribute commitment
    #   <p>The hourly commitment, in the same currency of the <code>savingsPlanOfferingId</code>.
    #            This is a value between 0.001 and 1 million. You cannot specify more than five digits after
    #            the decimal point.</p>
    #   @return [String]
    # @!attribute upfront_payment_amount
    #   <p>The up-front payment amount. This is a whole number between 50 and 99 percent of the
    #            total value of the Savings Plan. This parameter is only supported if the
    #            payment option is <code>Partial Upfront</code>.</p>
    #   @return [String]
    # @!attribute purchase_time
    #   <p>The purchase time of the Savings Plan in UTC format
    #            (YYYY-MM-DDTHH:MM:SSZ).</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Hash<String, String>]
    class CreateSavingsPlanRequest < Struct.new(
      :savings_plan_offering_id,
      :commitment,
      :upfront_payment_amount,
      :purchase_time,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #   @return [String]
    class CreateSavingsPlanResponse < Struct.new(
      :savings_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #   @return [String]
    class DeleteQueuedSavingsPlanRequest < Struct.new(
      :savings_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQueuedSavingsPlanResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters.</p>
    #   @return [Array<Types::SavingsPlanRateFilter>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    #   @return [Integer]
    class DescribeSavingsPlanRatesRequest < Struct.new(
      :savings_plan_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #   @return [String]
    # @!attribute search_results
    #   <p>Information about the Savings Plan rates.</p>
    #   @return [Array<Types::SavingsPlanRate>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class DescribeSavingsPlanRatesResponse < Struct.new(
      :savings_plan_id,
      :search_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_offering_ids
    #   <p>The IDs of the offerings.</p>
    #   @return [Array<String>]
    # @!attribute savings_plan_payment_options
    #   <p>The payment options.</p>
    #   @return [Array<String>]
    # @!attribute savings_plan_types
    #   <p>The plan types.</p>
    #   @return [Array<String>]
    # @!attribute products
    #   <p>The Amazon Web Services products.</p>
    #   @return [Array<String>]
    # @!attribute service_codes
    #   <p>The services.</p>
    #   @return [Array<String>]
    # @!attribute usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    #   @return [Array<String>]
    # @!attribute operations
    #   <p>The specific Amazon Web Services operation for the line item in the billing
    #            report.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>The filters.</p>
    #   @return [Array<Types::SavingsPlanOfferingRateFilterElement>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    #   @return [Integer]
    class DescribeSavingsPlansOfferingRatesRequest < Struct.new(
      :savings_plan_offering_ids,
      :savings_plan_payment_options,
      :savings_plan_types,
      :products,
      :service_codes,
      :usage_types,
      :operations,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_results
    #   <p>Information about the Savings Plans offering rates.</p>
    #   @return [Array<Types::SavingsPlanOfferingRate>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class DescribeSavingsPlansOfferingRatesResponse < Struct.new(
      :search_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute offering_ids
    #   <p>The IDs of the offerings.</p>
    #   @return [Array<String>]
    # @!attribute payment_options
    #   <p>The payment options.</p>
    #   @return [Array<String>]
    # @!attribute product_type
    #   <p>The product type.</p>
    #   @return [String]
    # @!attribute plan_types
    #   <p>The plan types.</p>
    #   @return [Array<String>]
    # @!attribute durations
    #   <p>The duration, in seconds.</p>
    #   @return [Array<Integer>]
    # @!attribute currencies
    #   <p>The currencies.</p>
    #   @return [Array<String>]
    # @!attribute descriptions
    #   <p>The descriptions.</p>
    #   @return [Array<String>]
    # @!attribute service_codes
    #   <p>The services.</p>
    #   @return [Array<String>]
    # @!attribute usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    #   @return [Array<String>]
    # @!attribute operations
    #   <p>The specific Amazon Web Services operation for the line item in the billing
    #            report.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>The filters.</p>
    #   @return [Array<Types::SavingsPlanOfferingFilterElement>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    #   @return [Integer]
    class DescribeSavingsPlansOfferingsRequest < Struct.new(
      :offering_ids,
      :payment_options,
      :product_type,
      :plan_types,
      :durations,
      :currencies,
      :descriptions,
      :service_codes,
      :usage_types,
      :operations,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_results
    #   <p>Information about the Savings Plans offerings.</p>
    #   @return [Array<Types::SavingsPlanOffering>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class DescribeSavingsPlansOfferingsResponse < Struct.new(
      :search_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_arns
    #   <p>The Amazon Resource Names (ARN) of the Savings Plans.</p>
    #   @return [Array<String>]
    # @!attribute savings_plan_ids
    #   <p>The IDs of the Savings Plans.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    #   @return [Integer]
    # @!attribute states
    #   <p>The current states of the Savings Plans.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>The filters.</p>
    #   @return [Array<Types::SavingsPlanFilter>]
    class DescribeSavingsPlansRequest < Struct.new(
      :savings_plan_arns,
      :savings_plan_ids,
      :next_token,
      :max_results,
      :states,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plans
    #   <p>Information about the Savings Plans.</p>
    #   @return [Array<Types::SavingsPlan>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class DescribeSavingsPlansResponse < Struct.new(
      :savings_plans,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan offering.</p>
    # @!attribute offering_id
    #   <p>The ID of the offering.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option.</p>
    #   @return [String]
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The duration, in seconds.</p>
    #   @return [Integer]
    # @!attribute currency
    #   <p>The currency.</p>
    #   @return [String]
    # @!attribute plan_description
    #   <p>The description.</p>
    #   @return [String]
    class ParentSavingsPlanOffering < Struct.new(
      :offering_id,
      :payment_option,
      :plan_type,
      :duration_seconds,
      :currency,
      :plan_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration_seconds] = 0 unless options.key?(:duration_seconds)
        super
      end
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class ReturnSavingsPlanRequest < Struct.new(
      :savings_plan_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #   @return [String]
    class ReturnSavingsPlanResponse < Struct.new(
      :savings_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan.</p>
    # @!attribute offering_id
    #   <p>The ID of the offering.</p>
    #   @return [String]
    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #   @return [String]
    # @!attribute savings_plan_arn
    #   <p>The Amazon Resource Name (ARN) of the Savings Plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute start
    #   <p>The start time.</p>
    #   @return [String]
    # @!attribute end
    #   <p>The end time.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute ec2_instance_family
    #   <p>The EC2 instance family.</p>
    #   @return [String]
    # @!attribute savings_plan_type
    #   <p>The plan type.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option.</p>
    #   @return [String]
    # @!attribute product_types
    #   <p>The product types.</p>
    #   @return [Array<String>]
    # @!attribute currency
    #   <p>The currency.</p>
    #   @return [String]
    # @!attribute commitment
    #   <p>The hourly commitment amount in the specified currency.</p>
    #   @return [String]
    # @!attribute upfront_payment_amount
    #   <p>The up-front payment amount.</p>
    #   @return [String]
    # @!attribute recurring_payment_amount
    #   <p>The recurring payment amount.</p>
    #   @return [String]
    # @!attribute term_duration_in_seconds
    #   <p>The duration of the term, in seconds.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute returnable_until
    #   <p>The time until when a return for the Savings Plan can be requested. If the
    #               Savings Plan is not returnable, the field reflects the Savings Plan start time.</p>
    #   @return [String]
    class SavingsPlan < Struct.new(
      :offering_id,
      :savings_plan_id,
      :savings_plan_arn,
      :description,
      :start,
      :end,
      :state,
      :region,
      :ec2_instance_family,
      :savings_plan_type,
      :payment_option,
      :product_types,
      :currency,
      :commitment,
      :upfront_payment_amount,
      :recurring_payment_amount,
      :term_duration_in_seconds,
      :tags,
      :returnable_until,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:term_duration_in_seconds] = 0 unless options.key?(:term_duration_in_seconds)
        super
      end
    end

    # <p>Information about a Savings Plan filter.</p>
    # @!attribute name
    #   <p>The filter name.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter value.</p>
    #   @return [Array<String>]
    class SavingsPlanFilter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan offering.</p>
    # @!attribute offering_id
    #   <p>The ID of the offering.</p>
    #   @return [String]
    # @!attribute product_types
    #   <p>The product type.</p>
    #   @return [Array<String>]
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option.</p>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The duration, in seconds.</p>
    #   @return [Integer]
    # @!attribute currency
    #   <p>The currency.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The usage details of the line item in the billing report.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The specific Amazon Web Services operation for the line item in the billing
    #            report.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties.</p>
    #   @return [Array<Types::SavingsPlanOfferingProperty>]
    class SavingsPlanOffering < Struct.new(
      :offering_id,
      :product_types,
      :plan_type,
      :description,
      :payment_option,
      :duration_seconds,
      :currency,
      :service_code,
      :usage_type,
      :operation,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration_seconds] = 0 unless options.key?(:duration_seconds)
        super
      end
    end

    # <p>Information about a Savings Plan offering filter.</p>
    # @!attribute name
    #   <p>The filter name.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter values.</p>
    #   @return [Array<String>]
    class SavingsPlanOfferingFilterElement < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan offering property.</p>
    # @!attribute name
    #   <p>The property name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The property value.</p>
    #   @return [String]
    class SavingsPlanOfferingProperty < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan offering rate.</p>
    # @!attribute savings_plan_offering
    #   <p>The Savings Plan offering.</p>
    #   @return [Types::ParentSavingsPlanOffering]
    # @!attribute rate
    #   <p>The Savings Plan rate.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The product type.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The usage details of the line item in the billing report.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The specific Amazon Web Services operation for the line item in the billing
    #            report.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties.</p>
    #   @return [Array<Types::SavingsPlanOfferingRateProperty>]
    class SavingsPlanOfferingRate < Struct.new(
      :savings_plan_offering,
      :rate,
      :unit,
      :product_type,
      :service_code,
      :usage_type,
      :operation,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan offering rate filter.</p>
    # @!attribute name
    #   <p>The filter name.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter values.</p>
    #   @return [Array<String>]
    class SavingsPlanOfferingRateFilterElement < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan offering rate property.</p>
    # @!attribute name
    #   <p>The property name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The property value.</p>
    #   @return [String]
    class SavingsPlanOfferingRateProperty < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan rate.</p>
    # @!attribute rate
    #   <p>The rate.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The product type.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The usage details of the line item in the billing report.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The specific Amazon Web Services operation for the line item in the billing
    #            report.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties.</p>
    #   @return [Array<Types::SavingsPlanRateProperty>]
    class SavingsPlanRate < Struct.new(
      :rate,
      :currency,
      :unit,
      :product_type,
      :service_code,
      :usage_type,
      :operation,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan rate filter.</p>
    # @!attribute name
    #   <p>The filter name.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter values.</p>
    #   @return [Array<String>]
    class SavingsPlanRateFilter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Savings Plan rate property.</p>
    # @!attribute name
    #   <p>The property name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The property value.</p>
    #   @return [String]
    class SavingsPlanRateProperty < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A service quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
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

    # <p>One of the input parameters is not valid.</p>
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
