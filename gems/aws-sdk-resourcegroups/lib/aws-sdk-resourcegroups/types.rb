# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroups
  module Types

    # The request does not comply with validation rules that are defined for
    # the request parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupInput
    #   data as a hash:
    #
    #       {
    #         name: "GroupName", # required
    #         description: "GroupDescription",
    #         resource_query: { # required
    #           type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #           query: "Query", # required
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the group, which is the identifier of the group in other
    #   operations. A resource group name cannot be updated after it is
    #   created. A resource group name can have a maximum of 128 characters,
    #   including letters, numbers, hyphens, dots, and underscores. The name
    #   cannot start with `AWS` or `aws`; these are reserved. A resource
    #   group name must be unique within your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource group. Descriptions can have a
    #   maximum of 511 characters, including letters, numbers, hyphens,
    #   underscores, punctuation, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query that determines which AWS resources are members
    #   of this group.
    #   @return [Types::ResourceQuery]
    #
    # @!attribute [rw] tags
    #   The tags to add to the group. A tag is a string-to-string map of
    #   key-value pairs. Tag keys can have a maximum character length of 128
    #   characters, and tag values can have a maximum length of 256
    #   characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroupInput AWS API Documentation
    #
    class CreateGroupInput < Struct.new(
      :name,
      :description,
      :resource_query,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   A full description of the resource group after it is created.
    #   @return [Types::Group]
    #
    # @!attribute [rw] resource_query
    #   The resource query associated with the group.
    #   @return [Types::ResourceQuery]
    #
    # @!attribute [rw] tags
    #   The tags associated with the group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroupOutput AWS API Documentation
    #
    class CreateGroupOutput < Struct.new(
      :group,
      :resource_query,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the resource group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/DeleteGroupInput AWS API Documentation
    #
    class DeleteGroupInput < Struct.new(
      :group_name)
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   A full description of the deleted resource group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/DeleteGroupOutput AWS API Documentation
    #
    class DeleteGroupOutput < Struct.new(
      :group)
      include Aws::Structure
    end

    # The caller is not authorized to make the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupInput AWS API Documentation
    #
    class GetGroupInput < Struct.new(
      :group_name)
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   A full description of the resource group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupOutput AWS API Documentation
    #
    class GetGroupOutput < Struct.new(
      :group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupQueryInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQueryInput AWS API Documentation
    #
    class GetGroupQueryInput < Struct.new(
      :group_name)
      include Aws::Structure
    end

    # @!attribute [rw] group_query
    #   The resource query associated with the specified group.
    #   @return [Types::GroupQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQueryOutput AWS API Documentation
    #
    class GetGroupQueryOutput < Struct.new(
      :group_query)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagsInput
    #   data as a hash:
    #
    #       {
    #         arn: "GroupArn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the resource group for which you want a list of tags. The
    #   resource must exist within the account you are using.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetTagsInput AWS API Documentation
    #
    class GetTagsInput < Struct.new(
      :arn)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the tagged resource group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the specified resource group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetTagsOutput AWS API Documentation
    #
    class GetTagsOutput < Struct.new(
      :arn,
      :tags)
      include Aws::Structure
    end

    # A resource group.
    #
    # @!attribute [rw] group_arn
    #   The ARN of a resource group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a resource group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Group AWS API Documentation
    #
    class Group < Struct.new(
      :group_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # A filter name and value pair that is used to obtain more specific
    # results from a list of groups.
    #
    # @note When making an API call, you may pass GroupFilter
    #   data as a hash:
    #
    #       {
    #         name: "resource-type", # required, accepts resource-type
    #         values: ["GroupFilterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more filter values. Allowed filter values vary by group
    #   filter name, and are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupFilter AWS API Documentation
    #
    class GroupFilter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # The ARN and group name of a group.
    #
    # @!attribute [rw] group_name
    #   The name of a resource group.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN of a resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupIdentifier AWS API Documentation
    #
    class GroupIdentifier < Struct.new(
      :group_name,
      :group_arn)
      include Aws::Structure
    end

    # The underlying resource query of a resource group. Resources that
    # match query results are part of the group.
    #
    # @!attribute [rw] group_name
    #   The name of a resource group that is associated with a specific
    #   resource query.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query which determines which AWS resources are members
    #   of the associated resource group.
    #   @return [Types::ResourceQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupQuery AWS API Documentation
    #
    class GroupQuery < Struct.new(
      :group_name,
      :resource_query)
      include Aws::Structure
    end

    # An internal error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupResourcesInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         filters: [
    #           {
    #             name: "resource-type", # required, accepts resource-type
    #             values: ["ResourceFilterValue"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters, formatted as ResourceFilter objects, that you want to apply
    #   to a ListGroupResources operation.
    #
    #   * `resource-type` - Filter resources by their type. Specify up to
    #     five resource types in the format AWS::ServiceCode::ResourceType.
    #     For example, AWS::EC2::Instance, or AWS::S3::Bucket.
    #
    #   ^
    #   @return [Array<Types::ResourceFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of group member ARNs that are returned in a
    #   single call by ListGroupResources, in paginated output. By default,
    #   this number is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The NextToken value that is returned in a paginated
    #   ListGroupResources request. To get the next page of results, run the
    #   call again, add the NextToken parameter, and specify the NextToken
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResourcesInput AWS API Documentation
    #
    class ListGroupResourcesInput < Struct.new(
      :group_name,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifiers
    #   The ARNs and resource types of resources that are members of the
    #   group that you specified.
    #   @return [Array<Types::ResourceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The NextToken value to include in a subsequent `ListGroupResources`
    #   request, to get more results.
    #   @return [String]
    #
    # @!attribute [rw] query_errors
    #   A list of `QueryError` objects. Each error is an object that
    #   contains `ErrorCode` and `Message` structures. Possible values for
    #   `ErrorCode` are `CLOUDFORMATION_STACK_INACTIVE` and
    #   `CLOUDFORMATION_STACK_NOT_EXISTING`.
    #   @return [Array<Types::QueryError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResourcesOutput AWS API Documentation
    #
    class ListGroupResourcesOutput < Struct.new(
      :resource_identifiers,
      :next_token,
      :query_errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsInput
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "resource-type", # required, accepts resource-type
    #             values: ["GroupFilterValue"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters, formatted as GroupFilter objects, that you want to apply to
    #   a ListGroups operation.
    #
    #   * `resource-type` - Filter groups by resource type. Specify up to
    #     five resource types in the format AWS::ServiceCode::ResourceType.
    #     For example, AWS::EC2::Instance, or AWS::S3::Bucket.
    #
    #   ^
    #   @return [Array<Types::GroupFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource group results that are returned by
    #   ListGroups in paginated output. By default, this number is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The NextToken value that is returned in a paginated `ListGroups`
    #   request. To get the next page of results, run the call again, add
    #   the NextToken parameter, and specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupsInput AWS API Documentation
    #
    class ListGroupsInput < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] group_identifiers
    #   A list of GroupIdentifier objects. Each identifier is an object that
    #   contains both the GroupName and the GroupArn.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] groups
    #   A list of resource groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   The NextToken value to include in a subsequent `ListGroups` request,
    #   to get more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupsOutput AWS API Documentation
    #
    class ListGroupsOutput < Struct.new(
      :group_identifiers,
      :groups,
      :next_token)
      include Aws::Structure
    end

    # The request uses an HTTP method which is not allowed for the specified
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/MethodNotAllowedException AWS API Documentation
    #
    class MethodNotAllowedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # One or more resources specified in the request do not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A two-part error structure that can occur in `ListGroupResources` or
    # `SearchResources` operations on CloudFormation stack-based queries.
    # The error occurs if the CloudFormation stack on which the query is
    # based either does not exist, or has a status that renders the stack
    # inactive. A `QueryError` occurrence does not necessarily mean that AWS
    # Resource Groups could not complete the operation, but the resulting
    # group might have no member resources.
    #
    # @!attribute [rw] error_code
    #   Possible values are `CLOUDFORMATION_STACK_INACTIVE` and
    #   `CLOUDFORMATION_STACK_NOT_EXISTING`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that explains the `ErrorCode` value. Messages might state
    #   that the specified CloudFormation stack does not exist (or no longer
    #   exists). For `CLOUDFORMATION_STACK_INACTIVE`, the message typically
    #   states that the CloudFormation stack has a status that is not (or no
    #   longer) active, such as `CREATE_FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/QueryError AWS API Documentation
    #
    class QueryError < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # A filter name and value pair that is used to obtain more specific
    # results from a list of resources.
    #
    # @note When making an API call, you may pass ResourceFilter
    #   data as a hash:
    #
    #       {
    #         name: "resource-type", # required, accepts resource-type
    #         values: ["ResourceFilterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more filter values. Allowed filter values vary by resource
    #   filter name, and are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ResourceFilter AWS API Documentation
    #
    class ResourceFilter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # The ARN of a resource, and its resource type.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of a resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of a resource, such as `AWS::EC2::Instance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ResourceIdentifier AWS API Documentation
    #
    class ResourceIdentifier < Struct.new(
      :resource_arn,
      :resource_type)
      include Aws::Structure
    end

    # The query that is used to define a resource group or a search for
    # resources.
    #
    # @note When making an API call, you may pass ResourceQuery
    #   data as a hash:
    #
    #       {
    #         type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #         query: "Query", # required
    #       }
    #
    # @!attribute [rw] type
    #   The type of the query. The valid values in this release are
    #   `TAG_FILTERS_1_0` and `CLOUDFORMATION_STACK_1_0`.
    #
    #   <i> <code>TAG_FILTERS_1_0:</code> </i> A JSON syntax that lets you
    #   specify a collection of simple tag filters for resource types and
    #   tags, as supported by the AWS Tagging API [GetResources][1]
    #   operation. If you specify more than one tag key, only resources that
    #   match all tag keys, and at least one value of each specified tag
    #   key, are returned in your query. If you specify more than one value
    #   for a tag key, a resource matches the filter if it has a tag key
    #   value that matches *any* of the specified values.
    #
    #   For example, consider the following sample query for resources that
    #   have two tags, `Stage` and `Version`, with two values each.
    #   (`[\{"Key":"Stage","Values":["Test","Deploy"]\},\{"Key":"Version","Values":["1","2"]\}]`)
    #   The results of this query might include the following.
    #
    #   * An EC2 instance that has the following two tags:
    #     `\{"Key":"Stage","Value":"Deploy"\}`, and
    #     `\{"Key":"Version","Value":"2"\}`
    #
    #   * An S3 bucket that has the following two tags:
    #     \\\{"Key":"Stage","Value":"Test"\\}, and
    #     \\\{"Key":"Version","Value":"1"\\}
    #
    #   The query would not return the following results, however. The
    #   following EC2 instance does not have all tag keys specified in the
    #   filter, so it is rejected. The RDS database has all of the tag keys,
    #   but no values that match at least one of the specified tag key
    #   values in the filter.
    #
    #   * An EC2 instance that has only the following tag:
    #     `\{"Key":"Stage","Value":"Deploy"\}`.
    #
    #   * An RDS database that has the following two tags:
    #     `\{"Key":"Stage","Value":"Archived"\}`, and
    #     `\{"Key":"Version","Value":"4"\}`
    #
    #   <i> <code>CLOUDFORMATION_STACK_1_0:</code> </i> A JSON syntax that
    #   lets you specify a CloudFormation stack ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html
    #   @return [String]
    #
    # @!attribute [rw] query
    #   The query that defines a group or a search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ResourceQuery AWS API Documentation
    #
    class ResourceQuery < Struct.new(
      :type,
      :query)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchResourcesInput
    #   data as a hash:
    #
    #       {
    #         resource_query: { # required
    #           type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #           query: "Query", # required
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_query
    #   The search query, using the same formats that are supported for
    #   resource group definition.
    #   @return [Types::ResourceQuery]
    #
    # @!attribute [rw] max_results
    #   The maximum number of group member ARNs returned by
    #   `SearchResources` in paginated output. By default, this number is
    #   50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The NextToken value that is returned in a paginated
    #   `SearchResources` request. To get the next page of results, run the
    #   call again, add the NextToken parameter, and specify the NextToken
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/SearchResourcesInput AWS API Documentation
    #
    class SearchResourcesInput < Struct.new(
      :resource_query,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifiers
    #   The ARNs and resource types of resources that are members of the
    #   group that you specified.
    #   @return [Array<Types::ResourceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The NextToken value to include in a subsequent `SearchResources`
    #   request, to get more results.
    #   @return [String]
    #
    # @!attribute [rw] query_errors
    #   A list of `QueryError` objects. Each error is an object that
    #   contains `ErrorCode` and `Message` structures. Possible values for
    #   `ErrorCode` are `CLOUDFORMATION_STACK_INACTIVE` and
    #   `CLOUDFORMATION_STACK_NOT_EXISTING`.
    #   @return [Array<Types::QueryError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/SearchResourcesOutput AWS API Documentation
    #
    class SearchResourcesOutput < Struct.new(
      :resource_identifiers,
      :next_token,
      :query_errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagInput
    #   data as a hash:
    #
    #       {
    #         arn: "GroupArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the resource to which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the specified resource. A tag is a
    #   string-to-string map of key-value pairs. Tag keys can have a maximum
    #   character length of 128 characters, and tag values can have a
    #   maximum length of 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/TagInput AWS API Documentation
    #
    class TagInput < Struct.new(
      :arn,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the tagged resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that have been added to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/TagOutput AWS API Documentation
    #
    class TagOutput < Struct.new(
      :arn,
      :tags)
      include Aws::Structure
    end

    # The caller has exceeded throttling limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request has not been applied because it lacks valid authentication
    # credentials for the target resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagInput
    #   data as a hash:
    #
    #       {
    #         arn: "GroupArn", # required
    #         keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the resource from which to remove tags.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UntagInput AWS API Documentation
    #
    class UntagInput < Struct.new(
      :arn,
      :keys)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource from which tags have been removed.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The keys of tags that have been removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UntagOutput AWS API Documentation
    #
    class UntagOutput < Struct.new(
      :arn,
      :keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         description: "GroupDescription",
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the resource group for which you want to update its
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource group. Descriptions can have a
    #   maximum of 511 characters, including letters, numbers, hyphens,
    #   underscores, punctuation, and spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupInput AWS API Documentation
    #
    class UpdateGroupInput < Struct.new(
      :group_name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The full description of the resource group after it has been
    #   updated.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupOutput AWS API Documentation
    #
    class UpdateGroupOutput < Struct.new(
      :group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupQueryInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         resource_query: { # required
    #           type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #           query: "Query", # required
    #         },
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the resource group for which you want to edit the query.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query that determines which AWS resources are members
    #   of the resource group.
    #   @return [Types::ResourceQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQueryInput AWS API Documentation
    #
    class UpdateGroupQueryInput < Struct.new(
      :group_name,
      :resource_query)
      include Aws::Structure
    end

    # @!attribute [rw] group_query
    #   The resource query associated with the resource group after the
    #   update.
    #   @return [Types::GroupQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQueryOutput AWS API Documentation
    #
    class UpdateGroupQueryOutput < Struct.new(
      :group_query)
      include Aws::Structure
    end

  end
end
