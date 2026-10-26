# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceEntitlementService
  # This module contains the types returned by client operations.
  module Types

    # <p>An entitlement represents capacity in a product owned by the customer. For example, a
    #       customer might own some number of users or seats in an SaaS application or  some amount of
    #       data capacity in a multi-tenant database.</p>
    # @!attribute product_code
    #   <p>The product code for which the given entitlement applies. Product codes are provided by
    #      AWS Marketplace when the product listing is created.</p>
    #   @return [String]
    # @!attribute dimension
    #   <p>The dimension for which the given entitlement applies. Dimensions represent categories of
    #         capacity in a product and are specified when the product is listed in AWS
    #         Marketplace.</p>
    #   @return [String]
    # @!attribute customer_identifier
    #   <p>The customer identifier is a handle to each unique customer in an application. Customer
    #      identifiers are obtained through the ResolveCustomer operation in AWS Marketplace Metering
    #      Service.</p>
    #   @return [String]
    # @!attribute customer_aws_account_id
    #   <p>
    #         The <code>CustomerAWSAccountId</code> parameter specifies the AWS account ID of the buyer.
    #       </p>
    #   @return [String]
    # @!attribute value
    #   <p>The EntitlementValue represents the amount of capacity that the customer is entitled to
    #      for the product.</p>
    #   @return [Types::EntitlementValue]
    # @!attribute expiration_date
    #   <p>The expiration date represents the minimum date through which this entitlement is
    #      expected to remain valid. For contractual products listed on AWS Marketplace, the expiration date
    #      is the date at which the customer will renew or cancel their contract. Customers who are opting
    #      to renew their contract will still have entitlements with an expiration date.</p>
    #   @return [Time]
    # @!attribute license_arn
    #   <p>The <code>LicenseArn</code> is a unique identifier for a specific granted license. These are used for software purchased through AWS Marketplace.</p>
    #   @return [String]
    class Entitlement < Struct.new(
      nil,
      :product_code,
      :dimension,
      :customer_identifier,
      :customer_aws_account_id,
      :value,
      :expiration_date,
      :license_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EntitlementValue represents the amount of capacity that the customer is entitled to
    #    for the product.</p>
    # @!attribute integer_value
    #   <p>The IntegerValue field will be populated with an integer value when the entitlement is an
    #      integer type. Otherwise, the field will not be set.</p>
    #   @return [Integer]
    # @!attribute double_value
    #   <p>The DoubleValue field will be populated with a double value when the entitlement is a
    #      double type. Otherwise, the field will not be set.</p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>The BooleanValue field will be populated with a boolean value when the entitlement is a
    #         boolean type. Otherwise, the field will not be set.</p>
    #   @return [Boolean]
    # @!attribute string_value
    #   <p>The StringValue field will be populated with a string value when the entitlement is a
    #      string type. Otherwise, the field will not be set.</p>
    #   @return [String]
    class EntitlementValue < Struct.new(
      nil,
      :integer_value,
      :double_value,
      :boolean_value,
      :string_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GetEntitlementsRequest contains parameters for the GetEntitlements
    #    operation.</p>
    # @!attribute product_code
    #   <p>Product code is used to uniquely identify a product in AWS Marketplace. The product code
    #      will be provided by AWS Marketplace when the product listing is created.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filter is used to return entitlements for a specific customer or for a specific
    #         dimension. Filters are described as keys mapped to a lists of values. Filtered requests are
    #           <i>unioned</i> for each value in the value list, and then
    #           <i>intersected</i> for each filter key.</p>
    #            <p>
    #               <code>CustomerIdentifier</code> and <code>CustomerAWSAccountId</code> are mutually exclusive parameters. You must use one or the other, but not both in the same request.
    #      </p>
    #            <note>
    #               <p>If you're migrating an existing integration, use <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/data-feed-account.html">Account Feeds</a> to map <code>CustomerIdentifier</code> to <code>CustomerAWSAccountId</code>, and <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/data-feed-agreements.html">Agreements Feeds</a> to map <code>CustomerAWSAccountId</code> and <code>LicenseArn</code>.</p>
    #            </note>
    #   @return [Hash<String, Array<String>>]
    # @!attribute next_token
    #   <p>For paginated calls to GetEntitlements, pass the NextToken from the previous
    #      GetEntitlementsResult.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to retrieve from the GetEntitlements operation. For
    #      pagination, use the NextToken field in subsequent calls to GetEntitlements.</p>
    #   @return [Integer]
    class GetEntitlementsRequest < Struct.new(
      nil,
      :product_code,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The GetEntitlementsRequest contains results from the GetEntitlements operation.</p>
    # @!attribute entitlements
    #   <p>The set of entitlements found through the GetEntitlements operation. If the result
    #         contains an empty set of entitlements, NextToken might still be present and should be
    #         used.</p>
    #   @return [Array<Types::Entitlement>]
    # @!attribute next_token
    #   <p>For paginated results, use NextToken in subsequent calls to GetEntitlements. If the
    #         result contains an empty set of entitlements, NextToken might still be present and should be
    #         used.</p>
    #   @return [String]
    class GetEntitlementsResult < Struct.new(
      nil,
      :entitlements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error has occurred. Retry your request. If the problem persists, post a
    #    message with details on the AWS forums.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters in your request was invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The calls to the GetEntitlements API are throttled.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
