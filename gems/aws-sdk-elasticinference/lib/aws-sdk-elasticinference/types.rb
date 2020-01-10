# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticInference
  module Types

    # Raised when a malformed input has been provided to the API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elastic-inference-2017-07-25/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

  end
end
