# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticInference
  module Types

    # The details of an Elastic Inference Accelerator type.
    #
    # @!attribute [rw] accelerator_type_name
    #   The name of the Elastic Inference Accelerator type.
    #   @return [String]
    #
    # @!attribute [rw] memory_info
    #   The memory information of the Elastic Inference Accelerator type.
    #   @return [Types::MemoryInfo]
    #
    # @!attribute [rw] throughput_info
    #   The throughput information of the Elastic Inference Accelerator
    #   type.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/AcceleratorType AWS API Documentation
    #
    class AcceleratorType < Struct.new(
      :accelerator_type_name,
      :memory_info,
      :throughput_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The offering for an Elastic Inference Accelerator type.
    #
    # @!attribute [rw] accelerator_type
    #   The name of the Elastic Inference Accelerator type.
    #   @return [String]
    #
    # @!attribute [rw] location_type
    #   The location type for the offering. It can assume the following
    #   values: region: defines that the offering is at the regional level.
    #   availability-zone: defines that the offering is at the availability
    #   zone level. availability-zone-id: defines that the offering is at
    #   the availability zone level, defined by the availability zone id.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location for the offering. It will return either the region,
    #   availability zone or availability zone id for the offering depending
    #   on the locationType value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/AcceleratorTypeOffering AWS API Documentation
    #
    class AcceleratorTypeOffering < Struct.new(
      :accelerator_type,
      :location_type,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a malformed input has been provided to the API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAcceleratorOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         location_type: "region", # required, accepts region, availability-zone, availability-zone-id
    #         accelerator_types: ["AcceleratorTypeName"],
    #       }
    #
    # @!attribute [rw] location_type
    #   The location type that you want to describe accelerator type
    #   offerings for. It can assume the following values: region: will
    #   return the accelerator type offering at the regional level.
    #   availability-zone: will return the accelerator type offering at the
    #   availability zone level. availability-zone-id: will return the
    #   accelerator type offering at the availability zone level returning
    #   the availability zone id.
    #   @return [String]
    #
    # @!attribute [rw] accelerator_types
    #   The list of accelerator types to describe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/DescribeAcceleratorOfferingsRequest AWS API Documentation
    #
    class DescribeAcceleratorOfferingsRequest < Struct.new(
      :location_type,
      :accelerator_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_type_offerings
    #   The list of accelerator type offerings for a specific location.
    #   @return [Array<Types::AcceleratorTypeOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/DescribeAcceleratorOfferingsResponse AWS API Documentation
    #
    class DescribeAcceleratorOfferingsResponse < Struct.new(
      :accelerator_type_offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/DescribeAcceleratorTypesRequest AWS API Documentation
    #
    class DescribeAcceleratorTypesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] accelerator_types
    #   The available accelerator types.
    #   @return [Array<Types::AcceleratorType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/DescribeAcceleratorTypesResponse AWS API Documentation
    #
    class DescribeAcceleratorTypesResponse < Struct.new(
      :accelerator_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAcceleratorsRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_ids: ["AcceleratorId"],
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] accelerator_ids
    #   The IDs of the accelerators to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters. Filter names and values are case-sensitive.
    #   Valid filter names are: accelerator-types: can provide a list of
    #   accelerator type names to filter for. instance-id: can provide a
    #   list of EC2 instance ids to filter for.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return in the command's output. If the
    #   total number of items available is more than the value specified, a
    #   NextToken is provided in the command's output. To resume
    #   pagination, provide the NextToken value in the starting-token
    #   argument of a subsequent command. Do not use the NextToken response
    #   element directly outside of the AWS CLI.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/DescribeAcceleratorsRequest AWS API Documentation
    #
    class DescribeAcceleratorsRequest < Struct.new(
      :accelerator_ids,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_set
    #   The details of the Elastic Inference Accelerators.
    #   @return [Array<Types::ElasticInferenceAccelerator>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/DescribeAcceleratorsResponse AWS API Documentation
    #
    class DescribeAcceleratorsResponse < Struct.new(
      :accelerator_set,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Elastic Inference Accelerator.
    #
    # @!attribute [rw] accelerator_health
    #   The health of the Elastic Inference Accelerator.
    #   @return [Types::ElasticInferenceAcceleratorHealth]
    #
    # @!attribute [rw] accelerator_type
    #   The type of the Elastic Inference Accelerator.
    #   @return [String]
    #
    # @!attribute [rw] accelerator_id
    #   The ID of the Elastic Inference Accelerator.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone where the Elastic Inference Accelerator is
    #   present.
    #   @return [String]
    #
    # @!attribute [rw] attached_resource
    #   The ARN of the resource that the Elastic Inference Accelerator is
    #   attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/ElasticInferenceAccelerator AWS API Documentation
    #
    class ElasticInferenceAccelerator < Struct.new(
      :accelerator_health,
      :accelerator_type,
      :accelerator_id,
      :availability_zone,
      :attached_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # The health details of an Elastic Inference Accelerator.
    #
    # @!attribute [rw] status
    #   The health status of the Elastic Inference Accelerator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/ElasticInferenceAcceleratorHealth AWS API Documentation
    #
    class ElasticInferenceAcceleratorHealth < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter expression for the Elastic Inference Accelerator list.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "FilterName",
    #         values: ["String"],
    #       }
    #
    # @!attribute [rw] name
    #   The filter name for the Elastic Inference Accelerator list. It can
    #   assume the following values: accelerator-type: the type of Elastic
    #   Inference Accelerator to filter for. instance-id: an EC2 instance id
    #   to filter for.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the filter of the Elastic Inference Accelerator list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when an unexpected error occurred during request processing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A throughput entry for an Elastic Inference Accelerator type.
    #
    # @!attribute [rw] key
    #   The throughput value of the Elastic Inference Accelerator type. It
    #   can assume the following values: TFLOPS16bit: the throughput
    #   expressed in 16bit TeraFLOPS. TFLOPS32bit: the throughput expressed
    #   in 32bit TeraFLOPS.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The throughput value of the Elastic Inference Accelerator type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/KeyValuePair AWS API Documentation
    #
    class KeyValuePair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Elastic Inference Accelerator to list the tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags of the Elastic Inference Accelerator.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The memory information of an Elastic Inference Accelerator type.
    #
    # @!attribute [rw] size_in_mi_b
    #   The size in mebibytes of the Elastic Inference Accelerator type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/MemoryInfo AWS API Documentation
    #
    class MemoryInfo < Struct.new(
      :size_in_mi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when the requested resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Elastic Inference Accelerator to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the Elastic Inference Accelerator.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Elastic Inference Accelerator to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tags to remove from the Elastic Inference Accelerator.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

  end
end
