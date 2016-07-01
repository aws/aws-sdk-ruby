# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module MarketplaceMetering
    module Types

      # @note When making an API call, pass MeterUsageRequest
      #   data as a hash:
      #
      #       {
      #         product_code: "ProductCode", # required
      #         timestamp: Time.now, # required
      #         usage_dimension: "UsageDimension", # required
      #         usage_quantity: 1, # required
      #         dry_run: false, # required
      #       }
      class MeterUsageRequest < Aws::Structure.new(
        :product_code,
        :timestamp,
        :usage_dimension,
        :usage_quantity,
        :dry_run)

        # @!attribute [rw] product_code
        #   Product code is used to uniquely identify a product in AWS
        #   Marketplace. The product code should be the same as the one used
        #   during the publishing of a new product.
        #   @return [String]

        # @!attribute [rw] timestamp
        #   Timestamp of the hour, recorded in UTC. The seconds and milliseconds
        #   portions of the timestamp will be ignored.
        #   @return [Time]

        # @!attribute [rw] usage_dimension
        #   It will be one of the \'fcp dimension name\' provided during the
        #   publishing of the product.
        #   @return [String]

        # @!attribute [rw] usage_quantity
        #   Consumption value for the hour.
        #   @return [Integer]

        # @!attribute [rw] dry_run
        #   Checks whether you have the permissions required for the action, but
        #   does not make the request. If you have the permissions, the request
        #   returns DryRunOperation; otherwise, it returns
        #   UnauthorizedException.
        #   @return [Boolean]

      end

      class MeterUsageResult < Aws::Structure.new(
        :metering_record_id)

        # @!attribute [rw] metering_record_id
        #   @return [String]

      end

    end
  end
end
