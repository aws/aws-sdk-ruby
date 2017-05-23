# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroupsTaggingAPI
  module Types

    # Details of the common errors that all actions return.
    #
    # @!attribute [rw] status_code
    #   The HTTP status code of the common error.
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   The code of the common error. Valid values include
    #   `InternalServiceException`, `InvalidParameterException`, and any
    #   valid error code returned by the AWS service that hosts the resource
    #   that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message of the common error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/FailureInfo AWS API Documentation
    #
    class FailureInfo < Struct.new(
      :status_code,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcesInput
    #   data as a hash:
    #
    #       {
    #         pagination_token: "PaginationToken",
    #         tag_filters: [
    #           {
    #             key: "TagKey",
    #             values: ["TagValue"],
    #           },
    #         ],
    #         resources_per_page: 1,
    #         tags_per_page: 1,
    #         resource_type_filters: ["AmazonResourceType"],
    #       }
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that additional data is available. Leave
    #   this value empty for your initial request. If the response includes
    #   a `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #   @return [String]
    #
    # @!attribute [rw] tag_filters
    #   A list of tags (keys and values). A request can include up to 50
    #   keys, and each key can include up to 20 values.
    #
    #   If you specify multiple filters connected by an AND operator in a
    #   single request, the response returns only those resources that are
    #   associated with every specified filter.
    #
    #   If you specify multiple filters connected by an OR operator in a
    #   single request, the response returns all resources that are
    #   associated with at least one or possibly more of the specified
    #   filters.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] resources_per_page
    #   A limit that restricts the number of resources returned by
    #   GetResources in paginated output. You can set ResourcesPerPage to a
    #   minimum of 1 item and the maximum of 50 items.
    #   @return [Integer]
    #
    # @!attribute [rw] tags_per_page
    #   A limit that restricts the number of tags (key and value pairs)
    #   returned by GetResources in paginated output. A resource with no
    #   tags is counted as having one tag (one key and value pair).
    #
    #   `GetResources` does not split a resource and its associated tags
    #   across pages. If the specified `TagsPerPage` would cause such a
    #   break, a `PaginationToken` is returned in place of the affected
    #   resource and its tags. Use that token in another request to get the
    #   remaining data. For example, if you specify a `TagsPerPage` of `100`
    #   and the account has 22 resources with 10 tags each (meaning that
    #   each resource has 10 key and value pairs), the output will consist
    #   of 3 pages, with the first page displaying the first 10 resources,
    #   each with its 10 tags, the second page displaying the next 10
    #   resources each with its 10 tags, and the third page displaying the
    #   remaining 2 resources, each with its 10 tags.
    #
    #
    #
    #   You can set `TagsPerPage` to a minimum of 100 items and the maximum
    #   of 500 items.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_type_filters
    #   The constraints on the resources that you want returned. The format
    #   of each resource type is `service[:resourceType]`. For example,
    #   specifying a resource type of `ec2` returns all tagged Amazon EC2
    #   resources (which includes tagged EC2 instances). Specifying a
    #   resource type of `ec2:instance` returns only EC2 instances.
    #
    #   The string for each service name and resource type is the same as
    #   that embedded in a resource's Amazon Resource Name (ARN). Consult
    #   the *AWS General Reference* for the following:
    #
    #   * For a list of service name strings, see [AWS Service
    #     Namespaces][1].
    #
    #   * For resource type strings, see [Example ARNs][2].
    #
    #   * For more information about ARNs, see [Amazon Resource Names (ARNs)
    #     and AWS Service Namespaces][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax
    #   [3]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetResourcesInput AWS API Documentation
    #
    class GetResourcesInput < Struct.new(
      :pagination_token,
      :tag_filters,
      :resources_per_page,
      :tags_per_page,
      :resource_type_filters)
      include Aws::Structure
    end

    # @!attribute [rw] pagination_token
    #   A string that indicates that the response contains more data than
    #   can be returned in a single response. To receive additional data,
    #   specify this string for the `PaginationToken` value in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_mapping_list
    #   A list of resource ARNs and the tags (keys and values) associated
    #   with each.
    #   @return [Array<Types::ResourceTagMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetResourcesOutput AWS API Documentation
    #
    class GetResourcesOutput < Struct.new(
      :pagination_token,
      :resource_tag_mapping_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagKeysInput
    #   data as a hash:
    #
    #       {
    #         pagination_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that additional data is available. Leave
    #   this value empty for your initial request. If the response includes
    #   a PaginationToken, use that string for this value to request an
    #   additional page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagKeysInput AWS API Documentation
    #
    class GetTagKeysInput < Struct.new(
      :pagination_token)
      include Aws::Structure
    end

    # @!attribute [rw] pagination_token
    #   A string that indicates that the response contains more data than
    #   can be returned in a single response. To receive additional data,
    #   specify this string for the `PaginationToken` value in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of all tag keys in the AWS account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagKeysOutput AWS API Documentation
    #
    class GetTagKeysOutput < Struct.new(
      :pagination_token,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagValuesInput
    #   data as a hash:
    #
    #       {
    #         pagination_token: "PaginationToken",
    #         key: "TagKey", # required
    #       }
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that additional data is available. Leave
    #   this value empty for your initial request. If the response includes
    #   a PaginationToken, use that string for this value to request an
    #   additional page of data.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key for which you want to list all existing values in the
    #   specified region for the AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagValuesInput AWS API Documentation
    #
    class GetTagValuesInput < Struct.new(
      :pagination_token,
      :key)
      include Aws::Structure
    end

    # @!attribute [rw] pagination_token
    #   A string that indicates that the response contains more data than
    #   can be returned in a single response. To receive additional data,
    #   specify this string for the `PaginationToken` value in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of all tag values for the specified key in the AWS account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagValuesOutput AWS API Documentation
    #
    class GetTagValuesOutput < Struct.new(
      :pagination_token,
      :tag_values)
      include Aws::Structure
    end

    # A list of resource ARNs and the tags (keys and values) that are
    # associated with each.
    #
    # @!attribute [rw] resource_arn
    #   An array of resource ARN(s).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that have been applied to one or more AWS resources.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/ResourceTagMapping AWS API Documentation
    #
    class ResourceTagMapping < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # The metadata that you apply to AWS resources to help you categorize
    # and organize them. Each tag consists of a key and an optional value,
    # both of which you define. For more information, see [Tag Basics][1] in
    # the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-basics
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that make up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that make up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # A list of tags (keys and values) that are used to specify the
    # associated resources.
    #
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         values: ["TagValue"],
    #       }
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that make up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The optional part of a key-value pair that make up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourcesInput
    #   data as a hash:
    #
    #       {
    #         resource_arn_list: ["ResourceARN"], # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. You can specify a minimum of 1 and a maximum of 20 ARNs
    #   (resources) to tag. An ARN can be set to a maximum of 1600
    #   characters. For more information, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the specified resources. A tag
    #   consists of a key and a value that you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagResourcesInput AWS API Documentation
    #
    class TagResourcesInput < Struct.new(
      :resource_arn_list,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] failed_resources_map
    #   Details of resources that could not be tagged. An error code, status
    #   code, and error message are returned for each failed item.
    #   @return [Hash<String,Types::FailureInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagResourcesOutput AWS API Documentation
    #
    class TagResourcesOutput < Struct.new(
      :failed_resources_map)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourcesInput
    #   data as a hash:
    #
    #       {
    #         resource_arn_list: ["ResourceARN"], # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. You can specify a minimum of 1 and a maximum of 20 ARNs
    #   (resources) to untag. An ARN can be set to a maximum of 1600
    #   characters. For more information, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_keys
    #   A list of the tag keys that you want to remove from the specified
    #   resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/UntagResourcesInput AWS API Documentation
    #
    class UntagResourcesInput < Struct.new(
      :resource_arn_list,
      :tag_keys)
      include Aws::Structure
    end

    # @!attribute [rw] failed_resources_map
    #   Details of resources that could not be untagged. An error code,
    #   status code, and error message are returned for each failed item.
    #   @return [Hash<String,Types::FailureInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/UntagResourcesOutput AWS API Documentation
    #
    class UntagResourcesOutput < Struct.new(
      :failed_resources_map)
      include Aws::Structure
    end

  end
end
