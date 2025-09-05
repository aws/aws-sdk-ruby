# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceMetering
  # This module contains the types returned by client operations.
  module Types

    # <p>A <code>BatchMeterUsageRequest</code> contains <code>UsageRecords</code>, which
    #             indicate quantities of usage within your application.</p>
    # @!attribute usage_records
    #   <p>The set of <code>UsageRecords</code> to submit. <code>BatchMeterUsage</code> accepts
    #               up to 25 <code>UsageRecords</code> at a time.</p>
    #   @return [Array<Types::UsageRecord>]
    # @!attribute product_code
    #   <p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code should
    #               be the same as the one used during the publishing of a new product.</p>
    #   @return [String]
    class BatchMeterUsageRequest < Struct.new(
      :usage_records,
      :product_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the <code>UsageRecords</code> processed by <code>BatchMeterUsage</code> and
    #             any records that have failed due to transient error.</p>
    # @!attribute results
    #   <p>Contains all <code>UsageRecords</code> processed by <code>BatchMeterUsage</code>.
    #               These records were either honored by Amazon Web Services Marketplace Metering Service or were invalid. Invalid
    #               records should be fixed before being resubmitted.</p>
    #   @return [Array<Types::UsageRecordResult>]
    # @!attribute unprocessed_records
    #   <p>Contains all <code>UsageRecords</code> that were not processed by
    #                   <code>BatchMeterUsage</code>. This is a list of <code>UsageRecords</code>. You can
    #               retry the failed request by making another <code>BatchMeterUsage</code> call with this
    #               list as input in the <code>BatchMeterUsageRequest</code>.</p>
    #   @return [Array<Types::UsageRecord>]
    class BatchMeterUsageResult < Struct.new(
      :results,
      :unprocessed_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown when the customer does not have a valid subscription for the
    #             product.</p>
    # @!attribute message
    #   @return [String]
    class CustomerNotEntitledException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The API is disabled in the Region.</p>
    # @!attribute message
    #   @return [String]
    class DisabledApiException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A metering record has already been emitted by the same EC2 instance, ECS task, or EKS
    #             pod for the given {<code>usageDimension</code>, <code>timestamp</code>} with a different
    #                 <code>usageQuantity</code>.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The submitted registration token has expired. This can happen if the buyer's browser
    #             takes too long to redirect to your page, the buyer has resubmitted the registration
    #             token, or your application has held on to the registration token for too long. Your SaaS
    #             registration website should redeem this token as soon as it is submitted by the buyer's
    #             browser.</p>
    # @!attribute message
    #   @return [String]
    class ExpiredTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error has occurred. Retry your request. If the problem persists, post a
    #             message with details on the Amazon Web Services forums.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have metered usage for a <code>CustomerIdentifier</code> that does not
    #             exist.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCustomerIdentifierException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint being called is in a Amazon Web Services Region different from your EC2 instance, ECS
    #             task, or EKS pod. The Region of the Metering Service endpoint and the Amazon Web Services Region of
    #             the resource must match.</p>
    # @!attribute message
    #   @return [String]
    class InvalidEndpointRegionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The product code passed does not match the product code used for publishing the
    #             product.</p>
    # @!attribute message
    #   @return [String]
    class InvalidProductCodeException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Public Key version is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPublicKeyVersionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <code>RegisterUsage</code> must be called in the same Amazon Web Services Region the ECS task was
    #             launched in. This prevents a container from hardcoding a Region (e.g.
    #             withRegion(“us-east-1”) when calling <code>RegisterUsage</code>.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRegionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tag is invalid, or the number of tags is greater than 5.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTagException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Registration token is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sum of allocated usage quantities is not equal to the usage quantity.</p>
    # @!attribute message
    #   @return [String]
    class InvalidUsageAllocationsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The usage dimension does not match one of the <code>UsageDimensions</code> associated
    #             with products.</p>
    # @!attribute message
    #   @return [String]
    class InvalidUsageDimensionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_code
    #   <p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code
    #               should be the same as the one used during the publishing of a new product.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>Timestamp, in UTC, for which the usage is being reported. Your application can meter
    #               usage for up to six hours in the past. Make sure the <code>timestamp</code> value is not
    #               before the start of the software usage.</p>
    #   @return [Time]
    # @!attribute usage_dimension
    #   <p>It will be one of the fcp dimension name provided during the publishing of the
    #               product.</p>
    #   @return [String]
    # @!attribute usage_quantity
    #   <p>Consumption value for the hour. Defaults to <code>0</code> if not specified.</p>
    #   @return [Integer]
    # @!attribute dry_run
    #   <p>Checks whether you have the permissions required for the action, but does not make the
    #               request. If you have the permissions, the request returns <code>DryRunOperation</code>;
    #               otherwise, it returns <code>UnauthorizedException</code>. Defaults to <code>false</code>
    #               if not specified.</p>
    #   @return [Boolean]
    # @!attribute usage_allocations
    #   <p>The set of <code>UsageAllocations</code> to submit.</p>
    #            <p>The sum of all <code>UsageAllocation</code> quantities must equal the
    #                   <code>UsageQuantity</code> of the <code>MeterUsage</code> request, and each
    #                   <code>UsageAllocation</code> must have a unique set of tags (include no
    #               tags).</p>
    #   @return [Array<Types::UsageAllocation>]
    class MeterUsageRequest < Struct.new(
      :product_code,
      :timestamp,
      :usage_dimension,
      :usage_quantity,
      :dry_run,
      :usage_allocations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metering_record_id
    #   <p>Metering record id.</p>
    #   @return [String]
    class MeterUsageResult < Struct.new(
      :metering_record_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Web Services Marketplace does not support metering usage from the underlying platform. Currently, Amazon ECS, Amazon EKS, and Fargate are supported.</p>
    # @!attribute message
    #   @return [String]
    class PlatformNotSupportedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_code
    #   <p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code should
    #               be the same as the one used during the publishing of a new product.</p>
    #   @return [String]
    # @!attribute public_key_version
    #   <p>Public Key Version provided by Amazon Web Services Marketplace</p>
    #   @return [Integer]
    # @!attribute nonce
    #   <p>(Optional) To scope down the registration to a specific running software instance and
    #               guard against replay attacks.</p>
    #   @return [String]
    class RegisterUsageRequest < Struct.new(
      :product_code,
      :public_key_version,
      :nonce,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key_rotation_timestamp
    #   <p>(Optional) Only included when public key version has expired</p>
    #   @return [Time]
    # @!attribute signature
    #   <p>JWT Token</p>
    #   @return [String]
    class RegisterUsageResult < Struct.new(
      :public_key_rotation_timestamp,
      :signature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains input to the <code>ResolveCustomer</code> operation.</p>
    # @!attribute registration_token
    #   <p>When a buyer visits your website during the registration process, the buyer submits a
    #               registration token through the browser. The registration token is resolved to obtain a
    #                   <code>CustomerIdentifier</code> along with the <code>CustomerAWSAccountId</code> and
    #                   <code>ProductCode</code>.</p>
    #   @return [String]
    class ResolveCustomerRequest < Struct.new(
      :registration_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of the <code>ResolveCustomer</code> operation. Contains the
    #                 <code>CustomerIdentifier</code> along with the <code>CustomerAWSAccountId</code> and
    #                 <code>ProductCode</code>.</p>
    # @!attribute customer_identifier
    #   <p>The <code>CustomerIdentifier</code> is used to identify an individual customer in your
    #               application. Calls to <code>BatchMeterUsage</code> require
    #                   <code>CustomerIdentifiers</code> for each <code>UsageRecord</code>.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The product code is returned to confirm that the buyer is registering for your
    #               product. Subsequent <code>BatchMeterUsage</code> calls should be made using this product
    #               code.</p>
    #   @return [String]
    # @!attribute customer_aws_account_id
    #   <p>The <code>CustomerAWSAccountId</code> provides the Amazon Web Services account ID associated with
    #               the <code>CustomerIdentifier</code> for the individual customer.</p>
    #   @return [String]
    class ResolveCustomerResult < Struct.new(
      :customer_identifier,
      :product_code,
      :customer_aws_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata assigned to an allocation. Each tag is made up of a <code>key</code> and a
    #                 <code>value</code>.</p>
    # @!attribute key
    #   <p>One part of a key-value pair that makes up a <code>tag</code>. A <code>key</code> is a
    #               label that acts like a category for the specific tag values.</p>
    #   @return [String]
    # @!attribute value
    #   <p>One part of a key-value pair that makes up a <code>tag</code>. A <code>value</code>
    #               acts as a descriptor within a tag category (key). The value can be empty or null.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The calls to the API are throttled.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>timestamp</code> value passed in the <code>UsageRecord</code> is out of
    #             allowed range.</p>
    #          <p>For <code>BatchMeterUsage</code>, if any of the records are outside of the allowed
    #             range, the entire batch is not processed. You must remove invalid records and try
    #             again.</p>
    # @!attribute message
    #   @return [String]
    class TimestampOutOfBoundsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Usage allocations allow you to split usage into buckets by tags.</p>
    #          <p>Each <code>UsageAllocation</code> indicates the usage quantity for a specific set of
    #             tags.</p>
    # @!attribute allocated_usage_quantity
    #   <p>The total quantity allocated to this bucket of usage.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The set of tags that define the bucket of usage. For the bucket of items with no tags,
    #               this parameter can be left out.</p>
    #   @return [Array<Types::Tag>]
    class UsageAllocation < Struct.new(
      :allocated_usage_quantity,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>UsageRecord</code> indicates a quantity of usage for a given product,
    #             customer, dimension and time.</p>
    #          <p>Multiple requests with the same <code>UsageRecords</code> as input will be
    #             de-duplicated to prevent double charges.</p>
    # @!attribute timestamp
    #   <p>Timestamp, in UTC, for which the usage is being reported.</p>
    #            <p>Your application can meter usage for up to one hour in the past. Make sure the
    #                   <code>timestamp</code> value is not before the start of the software usage.</p>
    #   @return [Time]
    # @!attribute customer_identifier
    #   <p>The <code>CustomerIdentifier</code> is obtained through the
    #                   <code>ResolveCustomer</code> operation and represents an individual buyer in your
    #               application.</p>
    #   @return [String]
    # @!attribute dimension
    #   <p>During the process of registering a product on Amazon Web Services Marketplace, dimensions are specified.
    #               These represent different units of value in your application.</p>
    #   @return [String]
    # @!attribute quantity
    #   <p>The quantity of usage consumed by the customer for the given dimension and time.
    #               Defaults to <code>0</code> if not specified.</p>
    #   @return [Integer]
    # @!attribute usage_allocations
    #   <p>The set of <code>UsageAllocations</code> to submit. The sum of all
    #                   <code>UsageAllocation</code> quantities must equal the Quantity of the
    #                   <code>UsageRecord</code>.</p>
    #   @return [Array<Types::UsageAllocation>]
    # @!attribute customer_aws_account_id
    #   <p>
    #               The <code>CustomerAWSAccountID</code> parameter specifies the AWS account ID of the buyer.
    #           </p>
    #   @return [String]
    class UsageRecord < Struct.new(
      :timestamp,
      :customer_identifier,
      :dimension,
      :quantity,
      :usage_allocations,
      :customer_aws_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:customer_identifier] = '' unless options.key?(:customer_identifier)
        super
      end
    end

    # <p>A <code>UsageRecordResult</code> indicates the status of a given
    #                 <code>UsageRecord</code> processed by <code>BatchMeterUsage</code>.</p>
    # @!attribute usage_record
    #   <p>The <code>UsageRecord</code> that was part of the <code>BatchMeterUsage</code>
    #               request.</p>
    #   @return [Types::UsageRecord]
    # @!attribute metering_record_id
    #   <p>The <code>MeteringRecordId</code> is a unique identifier for this metering
    #               event.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The <code>UsageRecordResult</code>
    #               <code>Status</code> indicates the status of an individual <code>UsageRecord</code>
    #               processed by <code>BatchMeterUsage</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>Success</i>- The <code>UsageRecord</code> was accepted and
    #                       honored by <code>BatchMeterUsage</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>CustomerNotSubscribed</i>- The <code>CustomerIdentifier</code>
    #                       specified is not able to use your product. The <code>UsageRecord</code> was not
    #                       honored. There are three causes for this result:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The customer identifier is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>The customer identifier provided in the metering record does not have
    #                               an active agreement or subscription with this product. Future
    #                                   <code>UsageRecords</code> for this customer will fail until the
    #                               customer subscribes to your product.</p>
    #                     </li>
    #                     <li>
    #                        <p>The customer's Amazon Web Services account was suspended.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>DuplicateRecord</i>- Indicates that the
    #                           <code>UsageRecord</code> was invalid and not honored. A previously metered
    #                           <code>UsageRecord</code> had the same customer, dimension, and time, but a
    #                       different quantity.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UsageRecordResult < Struct.new(
      :usage_record,
      :metering_record_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
