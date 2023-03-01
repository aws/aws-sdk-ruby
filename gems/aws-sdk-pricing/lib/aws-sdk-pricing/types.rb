# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pricing
  module Types

    # General authentication failure. The request wasn't signed correctly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values of a given attribute, such as `Throughput Optimized HDD` or
    # `Provisioned IOPS` for the `Amazon EC2` `volumeType` attribute.
    #
    # @!attribute [rw] value
    #   The specific value of an `attributeName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The code for the service whose information you want to retrieve,
    #   such as `AmazonEC2`. You can use the `ServiceCode` to filter the
    #   results in a `GetProducts` call. To retrieve a list of all services,
    #   leave this blank.
    #   @return [String]
    #
    # @!attribute [rw] format_version
    #   The format version that you want the response to be in.
    #
    #   Valid values are: `aws_v1`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want returned in the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/DescribeServicesRequest AWS API Documentation
    #
    class DescribeServicesRequest < Struct.new(
      :service_code,
      :format_version,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] services
    #   The service metadata for the service or services in the response.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] format_version
    #   The format version of the response. For example, `aws_v1`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next set of retrievable results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/DescribeServicesResponse AWS API Documentation
    #
    class DescribeServicesResponse < Struct.new(
      :services,
      :format_version,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pagination token expired. Try again without a pagination token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/ExpiredNextTokenException AWS API Documentation
    #
    class ExpiredNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The constraints that you want all returned products to match.
    #
    # @!attribute [rw] type
    #   The type of filter that you want to use.
    #
    #   Valid values are: `TERM_MATCH`. `TERM_MATCH` returns only products
    #   that match both the given filter field and the given value.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The product metadata field that you want to filter on. You can
    #   filter by just the service code to see all products for a specific
    #   service, filter by just the attribute name to see a specific
    #   attribute for multiple services, or use both a service code and an
    #   attribute name to retrieve only products that match both fields.
    #
    #   Valid values include: `ServiceCode`, and all attribute names
    #
    #   For example, you can filter by the `AmazonEC2` service code and the
    #   `volumeType` attribute name to get the prices for only Amazon EC2
    #   volumes.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The service code or attribute value that you want to filter by. If
    #   you're filtering by service code this is the actual service code,
    #   such as `AmazonEC2`. If you're filtering by attribute name, this is
    #   the attribute value that you want the returned products to match,
    #   such as a `Provisioned IOPS` volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :type,
      :field,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service code for the service whose attributes you want to
    #   retrieve. For example, if you want the retrieve an EC2 attribute,
    #   use `AmazonEC2`.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute that you want to retrieve the values for,
    #   such as `volumeType`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetAttributeValuesRequest AWS API Documentation
    #
    class GetAttributeValuesRequest < Struct.new(
      :service_code,
      :attribute_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attribute_values
    #   The list of values for an attribute. For example, `Throughput
    #   Optimized HDD` and `Provisioned IOPS` are two available values for
    #   the `AmazonEC2` `volumeType`.
    #   @return [Array<Types::AttributeValue>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetAttributeValuesResponse AWS API Documentation
    #
    class GetAttributeValuesResponse < Struct.new(
      :attribute_values,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] price_list_arn
    #   The unique identifier that maps to where your Price List files are
    #   located. `PriceListArn` can be obtained from the [ `ListPriceLists`
    #   ][1] response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   The format that you want to retrieve your Price List files in. The
    #   `FileFormat` can be obtained from the [ `ListPriceLists` ][1]
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetPriceListFileUrlRequest AWS API Documentation
    #
    class GetPriceListFileUrlRequest < Struct.new(
      :price_list_arn,
      :file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   The URL to download your Price List file from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetPriceListFileUrlResponse AWS API Documentation
    #
    class GetPriceListFileUrlResponse < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The code for the service whose products you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The list of filters that limit the returned products. only products
    #   that match all filters are returned.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] format_version
    #   The format version that you want the response to be in.
    #
    #   Valid values are: `aws_v1`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetProductsRequest AWS API Documentation
    #
    class GetProductsRequest < Struct.new(
      :service_code,
      :filters,
      :format_version,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] format_version
    #   The format version of the response. For example, aws\_v1.
    #   @return [String]
    #
    # @!attribute [rw] price_list
    #   The list of products that match your filters. The list contains both
    #   the product metadata and the price information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetProductsResponse AWS API Documentation
    #
    class GetProductsResponse < Struct.new(
      :format_version,
      :price_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error on the server occurred during the processing of your request.
    # Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/InternalErrorException AWS API Documentation
    #
    class InternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pagination token is invalid. Try again without a pagination token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters had an invalid value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service code or the Savings Plan service code for the attributes
    #   that you want to retrieve. For example, to get the list of
    #   applicable Amazon EC2 price lists, use `AmazonEC2`. For a full list
    #   of service codes containing On-Demand and Reserved Instance (RI)
    #   pricing, use the [ `DescribeServices` ][1] API.
    #
    #   To retrieve the Compute Savings Plan price lists, use
    #   `ComputeSavingsPlans`. To retrieve Machine Learning Savings Plans
    #   price lists, use `MachineLearningSavingsPlans`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_DescribeServices.html#awscostmanagement-pricing_DescribeServices-request-FormatVersion
    #   @return [String]
    #
    # @!attribute [rw] effective_date
    #   The date that the Price List file prices are effective from.
    #   @return [Time]
    #
    # @!attribute [rw] region_code
    #   This is used to filter the Price List by Amazon Web Services Region.
    #   For example, to get the price list only for the `US East (N.
    #   Virginia)` Region, use `us-east-1`. If nothing is specified, you
    #   retrieve price lists for all applicable Regions. The available
    #   `RegionCode` list can be retrieved from [ `GetAttributeValues` ][1]
    #   API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The three alphabetical character ISO-4217 currency code that the
    #   Price List files are denominated in.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/ListPriceListsRequest AWS API Documentation
    #
    class ListPriceListsRequest < Struct.new(
      :service_code,
      :effective_date,
      :region_code,
      :currency_code,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] price_lists
    #   The type of price list references that match your request.
    #   @return [Array<Types::PriceList>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/ListPriceListsResponse AWS API Documentation
    #
    class ListPriceListsResponse < Struct.new(
      :price_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # <i> <b>This feature is in preview release and is subject to change.
    # Your use of Amazon Web Services Price List API is subject to the Beta
    # Service Participation terms of the <a
    # href="https://aws.amazon.com/service-terms/">Amazon Web Services
    # Service Terms</a> (Section 1.10).</b> </i>
    #
    # This is the type of price list references that match your request.
    #
    # @!attribute [rw] price_list_arn
    #   The unique identifier that maps to where your Price List files are
    #   located. `PriceListArn` can be obtained from the [ `ListPriceList`
    #   ][1] response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html
    #   @return [String]
    #
    # @!attribute [rw] region_code
    #   This is used to filter the Price List by Amazon Web Services Region.
    #   For example, to get the price list only for the `US East (N.
    #   Virginia)` Region, use `us-east-1`. If nothing is specified, you
    #   retrieve price lists for all applicable Regions. The available
    #   `RegionCode` list can be retrieved from [ `GetAttributeValues` ][1]
    #   API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The three alphabetical character ISO-4217 currency code the Price
    #   List files are denominated in.
    #   @return [String]
    #
    # @!attribute [rw] file_formats
    #   The format you want to retrieve your Price List files. The
    #   `FileFormat` can be obtained from the [ `ListPriceList` ][1]
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/PriceList AWS API Documentation
    #
    class PriceList < Struct.new(
      :price_list_arn,
      :region_code,
      :currency_code,
      :file_formats)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata for a service, such as the service code and available
    # attribute names.
    #
    # @!attribute [rw] service_code
    #   The code for the Amazon Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   The attributes that are available for this service.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/Service AWS API Documentation
    #
    class Service < Struct.new(
      :service_code,
      :attribute_names)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
