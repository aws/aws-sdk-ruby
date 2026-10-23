# frozen_string_literal: true

# This is generated code!

module Aws::Pricing
  # This module contains the types returned by client operations.
  module Types

    # <p>General authentication failure. The request wasn't signed correctly.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The values of a given attribute, such as <code>Throughput Optimized HDD</code> or <code>Provisioned
    #           IOPS</code> for the <code>Amazon EC2</code>
    #             <code>volumeType</code> attribute.</p>
    # @!attribute value
    #   <p>The specific value of an <code>attributeName</code>.</p>
    #   @return [String]
    class AttributeValue < Struct.new(
      nil,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>The code for the service whose information you want to retrieve, such as <code>AmazonEC2</code>.
    #             You can use 
    #            the <code>ServiceCode</code> to filter the results in a <code>GetProducts</code> call.
    #         To retrieve a list of all services, leave this blank.</p>
    #   @return [String]
    # @!attribute format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want returned in the response.</p>
    #   @return [Integer]
    class DescribeServicesRequest < Struct.new(
      nil,
      :service_code,
      :format_version,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute services
    #   <p>The service metadata for the service or services in the response.</p>
    #   @return [Array<Types::Service>]
    # @!attribute format_version
    #   <p>The format version of the response. For example, <code>aws_v1</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token for the next set of retrievable results.</p>
    #   @return [String]
    class DescribeServicesResponse < Struct.new(
      nil,
      :services,
      :format_version,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pagination token expired. Try again without a pagination token.</p>
    # @!attribute message
    #   @return [String]
    class ExpiredNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The constraints that you want all returned products to match.</p>
    # @!attribute type
    #   <p>The type of filter that you want to use.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERM_MATCH</code>: Returns only 
    #               products that match both the given filter field and the given value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EQUALS</code>: Returns products that have a field value exactly matching the provided value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTAINS</code>: Returns products where the field value contains the provided value as a substring.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ANY_OF</code>: Returns products where the field value is any of the provided values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE_OF</code>: Returns products where the field value is not any of the provided values.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute field
    #   <p>The product metadata field that you want to filter on. You can filter by just the 
    #            service code to see all products for a specific service, filter 
    #            by just the attribute name to see a specific attribute for multiple services, or use both a service code
    #            and an attribute name to retrieve only products that match both fields.</p>
    #            <p>Valid values include: <code>ServiceCode</code>, and all attribute names</p>
    #            <p>For example, you can filter by the <code>AmazonEC2</code> service code and the 
    #            <code>volumeType</code> attribute name to get the prices for only Amazon EC2 volumes.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The service code or attribute value that you want to filter by. If you're filtering
    #            by service code this is the actual service code, such as <code>AmazonEC2</code>. If you're
    #            filtering by attribute name, this is the attribute value that you want the returned
    #            products to match, such as a <code>Provisioned IOPS</code> volume.</p>
    #            <p>For <code>ANY_OF</code> and <code>NONE_OF</code> filter types, you can provide multiple values as a comma-separated string. For example, <code>t2.micro,t2.small,t2.medium</code> or <code>Compute optimized, GPU instance, Micro instances</code>.</p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :type,
      :field,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>The service code for the service whose attributes you want to retrieve. For example, if you want 
    #             the retrieve an EC2 attribute, use <code>AmazonEC2</code>.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the attribute that you want to retrieve the values for, such as <code>volumeType</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in response.</p>
    #   @return [Integer]
    class GetAttributeValuesRequest < Struct.new(
      nil,
      :service_code,
      :attribute_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_values
    #   <p>The list of values for an attribute. For example, <code>Throughput Optimized HDD</code> and 
    #         <code>Provisioned IOPS</code> are two available values for the <code>AmazonEC2</code>
    #               <code>volumeType</code>.</p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class GetAttributeValuesResponse < Struct.new(
      nil,
      :attribute_values,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute price_list_arn
    #   <p>The unique identifier that maps to where your Price List files are located.
    #               <code>PriceListArn</code> can be obtained from the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html">ListPriceLists</a> response. </p>
    #   @return [String]
    # @!attribute file_format
    #   <p>The format that you want to retrieve your Price List files in. The
    #               <code>FileFormat</code> can be obtained from the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html">ListPriceLists</a> response. </p>
    #   @return [String]
    class GetPriceListFileUrlRequest < Struct.new(
      nil,
      :price_list_arn,
      :file_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>The URL to download your Price List file from. </p>
    #   @return [String]
    class GetPriceListFileUrlResponse < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>The code for the service whose products you want to retrieve. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>The list of filters that limit the returned products. only products that match all filters
    #            are returned.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class GetProductsRequest < Struct.new(
      nil,
      :service_code,
      :filters,
      :format_version,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute format_version
    #   <p>The format version of the response. For example, aws_v1.</p>
    #   @return [String]
    # @!attribute price_list
    #   <p>The list of products that match your filters. The list contains both the product metadata and 
    #            the price information.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class GetProductsResponse < Struct.new(
      nil,
      :format_version,
      :price_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error on the server occurred during the processing of your request. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pagination token is invalid. Try again without a pagination token.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters had an invalid value.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>The service code or the Savings Plan service code for the attributes that
    #            you want to retrieve. For example, to get the list of applicable Amazon EC2 price
    #            lists, use <code>AmazonEC2</code>. For a full list of service codes containing On-Demand
    #            and Reserved Instance (RI) pricing, use the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_DescribeServices.html#awscostmanagement-pricing_DescribeServices-request-FormatVersion">DescribeServices</a> API.</p>
    #            <p>To retrieve the Reserved Instance and Compute Savings Plan price lists,
    #            use <code>ComputeSavingsPlans</code>. </p>
    #            <p>To retrieve Machine Learning Savings Plans price lists, use
    #               <code>MachineLearningSavingsPlans</code>. </p>
    #   @return [String]
    # @!attribute effective_date
    #   <p>The date that the Price List file prices are effective from. </p>
    #   @return [Time]
    # @!attribute region_code
    #   <p>This is used to filter the Price List by Amazon Web Services Region. For example, to get
    #            the price list only for the <code>US East (N. Virginia)</code> Region, use
    #               <code>us-east-1</code>. If nothing is specified, you retrieve price lists for all
    #            applicable Regions. The available <code>RegionCode</code> list can be retrieved from <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html">GetAttributeValues</a> API.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The three alphabetical character ISO-4217 currency code that the Price List files are
    #            denominated in. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.
    #         </p>
    #   @return [Integer]
    class ListPriceListsRequest < Struct.new(
      nil,
      :service_code,
      :effective_date,
      :region_code,
      :currency_code,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute price_lists
    #   <p>The type of price list references that match your request. </p>
    #   @return [Array<Types::PriceList>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve. </p>
    #   @return [String]
    class ListPriceListsResponse < Struct.new(
      nil,
      :price_lists,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <i>
    #                <b>This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Section 1.10).</b>
    #             </i>
    #          </p>
    #          <p>This is the type of price list references that match your request. </p>
    # @!attribute price_list_arn
    #   <p>The unique identifier that maps to where your Price List files are located.
    #               <code>PriceListArn</code> can be obtained from the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html">
    #                  <code>ListPriceList</code>
    #               </a> response. </p>
    #   @return [String]
    # @!attribute region_code
    #   <p>This is used to filter the Price List by Amazon Web Services Region. For example, to get
    #            the price list only for the <code>US East (N. Virginia)</code> Region, use
    #               <code>us-east-1</code>. If nothing is specified, you retrieve price lists for all
    #            applicable Regions. The available <code>RegionCode</code> list can be retrieved from <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html">
    #                  <code>GetAttributeValues</code>
    #               </a> API. </p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The three alphabetical character ISO-4217 currency code the Price List files are
    #            denominated in. </p>
    #   @return [String]
    # @!attribute file_formats
    #   <p>The format you want to retrieve your Price List files. The <code>FileFormat</code> can
    #            be obtained from the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html">
    #                  <code>ListPriceList</code>
    #               </a> response. </p>
    #   @return [Array<String>]
    class PriceList < Struct.new(
      nil,
      :price_list_arn,
      :region_code,
      :currency_code,
      :file_formats,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata for a service, such as the service code and available attribute names.</p>
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service.</p>
    #   @return [String]
    # @!attribute attribute_names
    #   <p>The attributes that are available for this service.</p>
    #   @return [Array<String>]
    class Service < Struct.new(
      nil,
      :service_code,
      :attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've made too many requests exceeding service quotas.
    #       </p>
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
