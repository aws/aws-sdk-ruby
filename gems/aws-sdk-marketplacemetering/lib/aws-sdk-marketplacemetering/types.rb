# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceMetering
  module Types

    # A BatchMeterUsageRequest contains UsageRecords, which indicate
    # quantities of usage within your application.
    #
    # @note When making an API call, you may pass BatchMeterUsageRequest
    #   data as a hash:
    #
    #       {
    #         usage_records: [ # required
    #           {
    #             timestamp: Time.now, # required
    #             customer_identifier: "CustomerIdentifier", # required
    #             dimension: "UsageDimension", # required
    #             quantity: 1, # required
    #           },
    #         ],
    #         product_code: "ProductCode", # required
    #       }
    #
    # @!attribute [rw] usage_records
    #   The set of UsageRecords to submit. BatchMeterUsage accepts up to 25
    #   UsageRecords at a time.
    #   @return [Array<Types::UsageRecord>]
    #
    # @!attribute [rw] product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/BatchMeterUsageRequest AWS API Documentation
    #
    class BatchMeterUsageRequest < Struct.new(
      :usage_records,
      :product_code)
      include Aws::Structure
    end

    # Contains the UsageRecords processed by BatchMeterUsage and any records
    # that have failed due to transient error.
    #
    # @!attribute [rw] results
    #   Contains all UsageRecords processed by BatchMeterUsage. These
    #   records were either honored by AWS Marketplace Metering Service or
    #   were invalid.
    #   @return [Array<Types::UsageRecordResult>]
    #
    # @!attribute [rw] unprocessed_records
    #   Contains all UsageRecords that were not processed by
    #   BatchMeterUsage. This is a list of UsageRecords. You can retry the
    #   failed request by making another BatchMeterUsage call with this list
    #   as input in the BatchMeterUsageRequest.
    #   @return [Array<Types::UsageRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/BatchMeterUsageResult AWS API Documentation
    #
    class BatchMeterUsageResult < Struct.new(
      :results,
      :unprocessed_records)
      include Aws::Structure
    end

    # @note When making an API call, you may pass MeterUsageRequest
    #   data as a hash:
    #
    #       {
    #         product_code: "ProductCode", # required
    #         timestamp: Time.now, # required
    #         usage_dimension: "UsageDimension", # required
    #         usage_quantity: 1, # required
    #         dry_run: false, # required
    #       }
    #
    # @!attribute [rw] product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Timestamp of the hour, recorded in UTC. The seconds and milliseconds
    #   portions of the timestamp will be ignored.
    #   @return [Time]
    #
    # @!attribute [rw] usage_dimension
    #   It will be one of the fcp dimension name provided during the
    #   publishing of the product.
    #   @return [String]
    #
    # @!attribute [rw] usage_quantity
    #   Consumption value for the hour.
    #   @return [Integer]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the permissions required for the action, but
    #   does not make the request. If you have the permissions, the request
    #   returns DryRunOperation; otherwise, it returns
    #   UnauthorizedException.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsageRequest AWS API Documentation
    #
    class MeterUsageRequest < Struct.new(
      :product_code,
      :timestamp,
      :usage_dimension,
      :usage_quantity,
      :dry_run)
      include Aws::Structure
    end

    # @!attribute [rw] metering_record_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsageResult AWS API Documentation
    #
    class MeterUsageResult < Struct.new(
      :metering_record_id)
      include Aws::Structure
    end

    # Contains input to the ResolveCustomer operation.
    #
    # @note When making an API call, you may pass ResolveCustomerRequest
    #   data as a hash:
    #
    #       {
    #         registration_token: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] registration_token
    #   When a buyer visits your website during the registration process,
    #   the buyer submits a registration token through the browser. The
    #   registration token is resolved to obtain a CustomerIdentifier and
    #   product code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomerRequest AWS API Documentation
    #
    class ResolveCustomerRequest < Struct.new(
      :registration_token)
      include Aws::Structure
    end

    # The result of the ResolveCustomer operation. Contains the
    # CustomerIdentifier and product code.
    #
    # @!attribute [rw] customer_identifier
    #   The CustomerIdentifier is used to identify an individual customer in
    #   your application. Calls to BatchMeterUsage require
    #   CustomerIdentifiers for each UsageRecord.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The product code is returned to confirm that the buyer is
    #   registering for your product. Subsequent BatchMeterUsage calls
    #   should be made using this product code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomerResult AWS API Documentation
    #
    class ResolveCustomerResult < Struct.new(
      :customer_identifier,
      :product_code)
      include Aws::Structure
    end

    # A UsageRecord indicates a quantity of usage for a given product,
    # customer, dimension and time.
    #
    # Multiple requests with the same UsageRecords as input will be
    # deduplicated to prevent double charges.
    #
    # @note When making an API call, you may pass UsageRecord
    #   data as a hash:
    #
    #       {
    #         timestamp: Time.now, # required
    #         customer_identifier: "CustomerIdentifier", # required
    #         dimension: "UsageDimension", # required
    #         quantity: 1, # required
    #       }
    #
    # @!attribute [rw] timestamp
    #   Timestamp of the hour, recorded in UTC. The seconds and milliseconds
    #   portions of the timestamp will be ignored.
    #
    #   Your application can meter usage for up to one hour in the past.
    #   @return [Time]
    #
    # @!attribute [rw] customer_identifier
    #   The CustomerIdentifier is obtained through the ResolveCustomer
    #   operation and represents an individual buyer in your application.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   During the process of registering a product on AWS Marketplace, up
    #   to eight dimensions are specified. These represent different units
    #   of value in your application.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The quantity of usage consumed by the customer for the given
    #   dimension and time.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/UsageRecord AWS API Documentation
    #
    class UsageRecord < Struct.new(
      :timestamp,
      :customer_identifier,
      :dimension,
      :quantity)
      include Aws::Structure
    end

    # A UsageRecordResult indicates the status of a given UsageRecord
    # processed by BatchMeterUsage.
    #
    # @!attribute [rw] usage_record
    #   The UsageRecord that was part of the BatchMeterUsage request.
    #   @return [Types::UsageRecord]
    #
    # @!attribute [rw] metering_record_id
    #   The MeteringRecordId is a unique identifier for this metering event.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The UsageRecordResult Status indicates the status of an individual
    #   UsageRecord processed by BatchMeterUsage.
    #
    #   * *Success*- The UsageRecord was accepted and honored by
    #     BatchMeterUsage.
    #
    #   * *CustomerNotSubscribed*- The CustomerIdentifier specified is not
    #     subscribed to your product. The UsageRecord was not honored.
    #     Future UsageRecords for this customer will fail until the customer
    #     subscribes to your product.
    #
    #   * *DuplicateRecord*- Indicates that the UsageRecord was invalid and
    #     not honored. A previously metered UsageRecord had the same
    #     customer, dimension, and time, but a different quantity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/UsageRecordResult AWS API Documentation
    #
    class UsageRecordResult < Struct.new(
      :usage_record,
      :metering_record_id,
      :status)
      include Aws::Structure
    end

  end
end
