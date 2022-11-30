# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceMetering
  module Types

    # A `BatchMeterUsageRequest` contains `UsageRecords`, which indicate
    # quantities of usage within your application.
    #
    # @!attribute [rw] usage_records
    #   The set of `UsageRecords` to submit. `BatchMeterUsage` accepts up to
    #   25 `UsageRecords` at a time.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the `UsageRecords` processed by `BatchMeterUsage` and any
    # records that have failed due to transient error.
    #
    # @!attribute [rw] results
    #   Contains all `UsageRecords` processed by `BatchMeterUsage`. These
    #   records were either honored by AWS Marketplace Metering Service or
    #   were invalid. Invalid records should be fixed before being
    #   resubmitted.
    #   @return [Array<Types::UsageRecordResult>]
    #
    # @!attribute [rw] unprocessed_records
    #   Contains all `UsageRecords` that were not processed by
    #   `BatchMeterUsage`. This is a list of `UsageRecords`. You can retry
    #   the failed request by making another `BatchMeterUsage` call with
    #   this list as input in the `BatchMeterUsageRequest`.
    #   @return [Array<Types::UsageRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/BatchMeterUsageResult AWS API Documentation
    #
    class BatchMeterUsageResult < Struct.new(
      :results,
      :unprocessed_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown when the customer does not have a valid subscription
    # for the product.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/CustomerNotEntitledException AWS API Documentation
    #
    class CustomerNotEntitledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API is disabled in the Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/DisabledApiException AWS API Documentation
    #
    class DisabledApiException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metering record has already been emitted by the same EC2 instance,
    # ECS task, or EKS pod for the given \\\{`usageDimension`,
    # `timestamp`\\} with a different `usageQuantity`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/DuplicateRequestException AWS API Documentation
    #
    class DuplicateRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The submitted registration token has expired. This can happen if the
    # buyer's browser takes too long to redirect to your page, the buyer
    # has resubmitted the registration token, or your application has held
    # on to the registration token for too long. Your SaaS registration
    # website should redeem this token as soon as it is submitted by the
    # buyer's browser.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ExpiredTokenException AWS API Documentation
    #
    class ExpiredTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred. Retry your request. If the problem
    # persists, post a message with details on the AWS forums.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have metered usage for a `CustomerIdentifier` that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidCustomerIdentifierException AWS API Documentation
    #
    class InvalidCustomerIdentifierException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint being called is in a AWS Region different from your EC2
    # instance, ECS task, or EKS pod. The Region of the Metering Service
    # endpoint and the AWS Region of the resource must match.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidEndpointRegionException AWS API Documentation
    #
    class InvalidEndpointRegionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The product code passed does not match the product code used for
    # publishing the product.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidProductCodeException AWS API Documentation
    #
    class InvalidProductCodeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Public Key version is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidPublicKeyVersionException AWS API Documentation
    #
    class InvalidPublicKeyVersionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # `RegisterUsage` must be called in the same AWS Region the ECS task was
    # launched in. This prevents a container from hardcoding a Region (e.g.
    # withRegion(“us-east-1”) when calling `RegisterUsage`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidRegionException AWS API Documentation
    #
    class InvalidRegionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag is invalid, or the number of tags is greater than 5.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidTagException AWS API Documentation
    #
    class InvalidTagException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Registration token is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidTokenException AWS API Documentation
    #
    class InvalidTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The usage allocation objects are invalid, or the number of allocations
    # is greater than 500 for a single usage record.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidUsageAllocationsException AWS API Documentation
    #
    class InvalidUsageAllocationsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The usage dimension does not match one of the `UsageDimensions`
    # associated with products.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/InvalidUsageDimensionException AWS API Documentation
    #
    class InvalidUsageDimensionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Timestamp, in UTC, for which the usage is being reported. Your
    #   application can meter usage for up to one hour in the past. Make
    #   sure the `timestamp` value is not before the start of the software
    #   usage.
    #   @return [Time]
    #
    # @!attribute [rw] usage_dimension
    #   It will be one of the fcp dimension name provided during the
    #   publishing of the product.
    #   @return [String]
    #
    # @!attribute [rw] usage_quantity
    #   Consumption value for the hour. Defaults to `0` if not specified.
    #   @return [Integer]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the permissions required for the action, but
    #   does not make the request. If you have the permissions, the request
    #   returns `DryRunOperation`; otherwise, it returns
    #   `UnauthorizedException`. Defaults to `false` if not specified.
    #   @return [Boolean]
    #
    # @!attribute [rw] usage_allocations
    #   The set of `UsageAllocations` to submit.
    #
    #   The sum of all `UsageAllocation` quantities must equal the
    #   `UsageQuantity` of the `MeterUsage` request, and each
    #   `UsageAllocation` must have a unique set of tags (include no tags).
    #   @return [Array<Types::UsageAllocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsageRequest AWS API Documentation
    #
    class MeterUsageRequest < Struct.new(
      :product_code,
      :timestamp,
      :usage_dimension,
      :usage_quantity,
      :dry_run,
      :usage_allocations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metering_record_id
    #   Metering record id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsageResult AWS API Documentation
    #
    class MeterUsageResult < Struct.new(
      :metering_record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Marketplace does not support metering usage from the underlying
    # platform. Currently, Amazon ECS, Amazon EKS, and AWS Fargate are
    # supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/PlatformNotSupportedException AWS API Documentation
    #
    class PlatformNotSupportedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #   @return [String]
    #
    # @!attribute [rw] public_key_version
    #   Public Key Version provided by AWS Marketplace
    #   @return [Integer]
    #
    # @!attribute [rw] nonce
    #   (Optional) To scope down the registration to a specific running
    #   software instance and guard against replay attacks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/RegisterUsageRequest AWS API Documentation
    #
    class RegisterUsageRequest < Struct.new(
      :product_code,
      :public_key_version,
      :nonce)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key_rotation_timestamp
    #   (Optional) Only included when public key version has expired
    #   @return [Time]
    #
    # @!attribute [rw] signature
    #   JWT Token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/RegisterUsageResult AWS API Documentation
    #
    class RegisterUsageResult < Struct.new(
      :public_key_rotation_timestamp,
      :signature)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains input to the `ResolveCustomer` operation.
    #
    # @!attribute [rw] registration_token
    #   When a buyer visits your website during the registration process,
    #   the buyer submits a registration token through the browser. The
    #   registration token is resolved to obtain a `CustomerIdentifier`
    #   along with the `CustomerAWSAccountId` and `ProductCode`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomerRequest AWS API Documentation
    #
    class ResolveCustomerRequest < Struct.new(
      :registration_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of the `ResolveCustomer` operation. Contains the
    # `CustomerIdentifier` along with the `CustomerAWSAccountId` and
    # `ProductCode`.
    #
    # @!attribute [rw] customer_identifier
    #   The `CustomerIdentifier` is used to identify an individual customer
    #   in your application. Calls to `BatchMeterUsage` require
    #   `CustomerIdentifiers` for each `UsageRecord`.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The product code is returned to confirm that the buyer is
    #   registering for your product. Subsequent `BatchMeterUsage` calls
    #   should be made using this product code.
    #   @return [String]
    #
    # @!attribute [rw] customer_aws_account_id
    #   The `CustomerAWSAccountId` provides the AWS account ID associated
    #   with the `CustomerIdentifier` for the individual customer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomerResult AWS API Documentation
    #
    class ResolveCustomerResult < Struct.new(
      :customer_identifier,
      :product_code,
      :customer_aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata assigned to an allocation. Each tag is made up of a `key` and
    # a `value`.
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that makes up a `tag`. A `key` is a
    #   label that acts like a category for the specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   One part of a key-value pair that makes up a `tag`. A `value` acts
    #   as a descriptor within a tag category (key). The value can be empty
    #   or null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The calls to the API are throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `timestamp` value passed in the `UsageRecord` is out of allowed
    # range.
    #
    # For `BatchMeterUsage`, if any of the records are outside of the
    # allowed range, the entire batch is not processed. You must remove
    # invalid records and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/TimestampOutOfBoundsException AWS API Documentation
    #
    class TimestampOutOfBoundsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Usage allocations allow you to split usage into buckets by tags.
    #
    # Each `UsageAllocation` indicates the usage quantity for a specific set
    # of tags.
    #
    # @!attribute [rw] allocated_usage_quantity
    #   The total quantity allocated to this bucket of usage.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The set of tags that define the bucket of usage. For the bucket of
    #   items with no tags, this parameter can be left out.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/UsageAllocation AWS API Documentation
    #
    class UsageAllocation < Struct.new(
      :allocated_usage_quantity,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `UsageRecord` indicates a quantity of usage for a given product,
    # customer, dimension and time.
    #
    # Multiple requests with the same `UsageRecords` as input will be
    # de-duplicated to prevent double charges.
    #
    # @!attribute [rw] timestamp
    #   Timestamp, in UTC, for which the usage is being reported.
    #
    #   Your application can meter usage for up to one hour in the past.
    #   Make sure the `timestamp` value is not before the start of the
    #   software usage.
    #   @return [Time]
    #
    # @!attribute [rw] customer_identifier
    #   The `CustomerIdentifier` is obtained through the `ResolveCustomer`
    #   operation and represents an individual buyer in your application.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   During the process of registering a product on AWS Marketplace,
    #   dimensions are specified. These represent different units of value
    #   in your application.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The quantity of usage consumed by the customer for the given
    #   dimension and time. Defaults to `0` if not specified.
    #   @return [Integer]
    #
    # @!attribute [rw] usage_allocations
    #   The set of `UsageAllocations` to submit. The sum of all
    #   `UsageAllocation` quantities must equal the Quantity of the
    #   `UsageRecord`.
    #   @return [Array<Types::UsageAllocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/UsageRecord AWS API Documentation
    #
    class UsageRecord < Struct.new(
      :timestamp,
      :customer_identifier,
      :dimension,
      :quantity,
      :usage_allocations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `UsageRecordResult` indicates the status of a given `UsageRecord`
    # processed by `BatchMeterUsage`.
    #
    # @!attribute [rw] usage_record
    #   The `UsageRecord` that was part of the `BatchMeterUsage` request.
    #   @return [Types::UsageRecord]
    #
    # @!attribute [rw] metering_record_id
    #   The `MeteringRecordId` is a unique identifier for this metering
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The `UsageRecordResult` `Status` indicates the status of an
    #   individual `UsageRecord` processed by `BatchMeterUsage`.
    #
    #   * *Success*- The `UsageRecord` was accepted and honored by
    #     `BatchMeterUsage`.
    #
    #   * *CustomerNotSubscribed*- The `CustomerIdentifier` specified is not
    #     able to use your product. The `UsageRecord` was not honored. There
    #     are three causes for this result:
    #
    #     * The customer identifier is invalid.
    #
    #     * The customer identifier provided in the metering record does not
    #       have an active agreement or subscription with this product.
    #       Future `UsageRecords` for this customer will fail until the
    #       customer subscribes to your product.
    #
    #     * The customer's AWS account was suspended.
    #
    #   * *DuplicateRecord*- Indicates that the `UsageRecord` was invalid
    #     and not honored. A previously metered `UsageRecord` had the same
    #     customer, dimension, and time, but a different quantity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/UsageRecordResult AWS API Documentation
    #
    class UsageRecordResult < Struct.new(
      :usage_record,
      :metering_record_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
