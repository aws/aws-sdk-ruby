# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceEntitlementService
  module Types

    # An entitlement represents capacity in a product owned by the customer.
    # For example, a customer might own some number of users or seats in an
    # SaaS application or some amount of data capacity in a multi-tenant
    # database.
    #
    # @!attribute [rw] product_code
    #   The product code for which the given entitlement applies. Product
    #   codes are provided by AWS Marketplace when the product listing is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The dimension for which the given entitlement applies. Dimensions
    #   represent categories of capacity in a product and are specified when
    #   the product is listed in AWS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] customer_identifier
    #   The customer identifier is a handle to each unique customer in an
    #   application. Customer identifiers are obtained through the
    #   ResolveCustomer operation in AWS Marketplace Metering Service.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The EntitlementValue represents the amount of capacity that the
    #   customer is entitled to for the product.
    #   @return [Types::EntitlementValue]
    #
    # @!attribute [rw] expiration_date
    #   The expiration date represents the minimum date through which this
    #   entitlement is expected to remain valid. For contractual products
    #   listed on AWS Marketplace, the expiration date is the date at which
    #   the customer will renew or cancel their contract. Customers who are
    #   opting to renew their contract will still have entitlements with an
    #   expiration date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entitlement.marketplace-2017-01-11/Entitlement AWS API Documentation
    #
    class Entitlement < Struct.new(
      :product_code,
      :dimension,
      :customer_identifier,
      :value,
      :expiration_date)
      include Aws::Structure
    end

    # The EntitlementValue represents the amount of capacity that the
    # customer is entitled to for the product.
    #
    # @!attribute [rw] integer_value
    #   The IntegerValue field will be populated with an integer value when
    #   the entitlement is an integer type. Otherwise, the field will not be
    #   set.
    #   @return [Integer]
    #
    # @!attribute [rw] double_value
    #   The DoubleValue field will be populated with a double value when the
    #   entitlement is a double type. Otherwise, the field will not be set.
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   The BooleanValue field will be populated with a boolean value when
    #   the entitlement is a boolean type. Otherwise, the field will not be
    #   set.
    #   @return [Boolean]
    #
    # @!attribute [rw] string_value
    #   The StringValue field will be populated with a string value when the
    #   entitlement is a string type. Otherwise, the field will not be set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entitlement.marketplace-2017-01-11/EntitlementValue AWS API Documentation
    #
    class EntitlementValue < Struct.new(
      :integer_value,
      :double_value,
      :boolean_value,
      :string_value)
      include Aws::Structure
    end

    # The GetEntitlementsRequest contains parameters for the GetEntitlements
    # operation.
    #
    # @note When making an API call, you may pass GetEntitlementsRequest
    #   data as a hash:
    #
    #       {
    #         product_code: "ProductCode", # required
    #         filter: {
    #           "CUSTOMER_IDENTIFIER" => ["FilterValue"],
    #         },
    #         next_token: "NonEmptyString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code will be provided by AWS Marketplace
    #   when the product listing is created.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filter is used to return entitlements for a specific customer or for
    #   a specific dimension. Filters are described as keys mapped to a
    #   lists of values. Filtered requests are *unioned* for each value in
    #   the value list, and then *intersected* for each filter key.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] next_token
    #   For paginated calls to GetEntitlements, pass the NextToken from the
    #   previous GetEntitlementsResult.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to retrieve from the GetEntitlements
    #   operation. For pagination, use the NextToken field in subsequent
    #   calls to GetEntitlements.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entitlement.marketplace-2017-01-11/GetEntitlementsRequest AWS API Documentation
    #
    class GetEntitlementsRequest < Struct.new(
      :product_code,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # The GetEntitlementsRequest contains results from the GetEntitlements
    # operation.
    #
    # @!attribute [rw] entitlements
    #   The set of entitlements found through the GetEntitlements operation.
    #   If the result contains an empty set of entitlements, NextToken might
    #   still be present and should be used.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] next_token
    #   For paginated results, use NextToken in subsequent calls to
    #   GetEntitlements. If the result contains an empty set of
    #   entitlements, NextToken might still be present and should be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entitlement.marketplace-2017-01-11/GetEntitlementsResult AWS API Documentation
    #
    class GetEntitlementsResult < Struct.new(
      :entitlements,
      :next_token)
      include Aws::Structure
    end

  end
end
