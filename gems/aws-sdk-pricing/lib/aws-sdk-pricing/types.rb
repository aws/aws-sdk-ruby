# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pricing
  module Types

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeServicesRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "String",
    #         format_version: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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
    #   The pagination token for the next set of retreivable results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/DescribeServicesResponse AWS API Documentation
    #
    class DescribeServicesResponse < Struct.new(
      :services,
      :format_version,
      :next_token)
      include Aws::Structure
    end

    # The constraints that you want all returned products to match.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         type: "TERM_MATCH", # required, accepts TERM_MATCH
    #         field: "String", # required
    #         value: "String", # required
    #       }
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
    #   you are filtering by service code this is the actual service code,
    #   such as `AmazonEC2`. If you are filtering by attribute name, this is
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAttributeValuesRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "String", # required
    #         attribute_name: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProductsRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "String",
    #         filters: [
    #           {
    #             type: "TERM_MATCH", # required, accepts TERM_MATCH
    #             field: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         format_version: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # The metadata for a service, such as the service code and available
    # attribute names.
    #
    # @!attribute [rw] service_code
    #   The code for the AWS service.
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
      include Aws::Structure
    end

  end
end
