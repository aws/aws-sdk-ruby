# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroups
  module Types

    # The request includes one or more parameters that violate validation
    # rules.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupInput
    #   data as a hash:
    #
    #       {
    #         name: "GroupName", # required
    #         description: "Description",
    #         resource_query: {
    #           type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #           query: "Query", # required
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         configuration: [
    #           {
    #             type: "GroupConfigurationType", # required
    #             parameters: [
    #               {
    #                 name: "GroupConfigurationParameterName", # required
    #                 values: ["GroupConfigurationParameterValue"],
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the group, which is the identifier of the group in other
    #   operations. You can't change the name of a resource group after you
    #   create it. A resource group name can consist of letters, numbers,
    #   hyphens, periods, and underscores. The name cannot start with `AWS`
    #   or `aws`; these are reserved. A resource group name must be unique
    #   within each AWS Region in your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource group. Descriptions can consist of
    #   letters, numbers, hyphens, underscores, periods, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query that determines which AWS resources are members
    #   of this group.
    #
    #   <note markdown="1"> You can specify either a `ResourceQuery` or a `Configuration`, but
    #   not both.
    #
    #    </note>
    #   @return [Types::ResourceQuery]
    #
    # @!attribute [rw] tags
    #   The tags to add to the group. A tag is key-value pair string.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] configuration
    #   A configuration associates the resource group with an AWS service
    #   and specifies how the service can interact with the resources in the
    #   group. A configuration is an array of GroupConfigurationItem
    #   elements.
    #
    #   <note markdown="1"> You can specify either a `Configuration` or a `ResourceQuery` in a
    #   group, but not both.
    #
    #    </note>
    #   @return [Array<Types::GroupConfigurationItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroupInput AWS API Documentation
    #
    class CreateGroupInput < Struct.new(
      :name,
      :description,
      :resource_query,
      :tags,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The description of the resource group.
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
    # @!attribute [rw] group_configuration
    #   The service configuration associated with the resource group. AWS
    #   Resource Groups supports adding service configurations for the
    #   following resource group types:
    #
    #   * `AWS::EC2::CapacityReservationPool` - Amazon EC2 capacity
    #     reservation pools. For more information, see [Working with
    #     capacity reservation groups][1] in the *EC2 Users Guide*.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group
    #   @return [Types::GroupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroupOutput AWS API Documentation
    #
    class CreateGroupOutput < Struct.new(
      :group,
      :resource_query,
      :tags,
      :group_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group: "GroupString",
    #       }
    #
    # @!attribute [rw] group_name
    #   Don't use this parameter. Use `Group` instead.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/DeleteGroupInput AWS API Documentation
    #
    class DeleteGroupInput < Struct.new(
      :group_name,
      :group)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that failed to be added to or removed from a group.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that failed to be added or removed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message text associated with the failure.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/FailedResource AWS API Documentation
    #
    class FailedResource < Struct.new(
      :resource_arn,
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller isn't authorized to make the request. Check permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupConfigurationInput
    #   data as a hash:
    #
    #       {
    #         group: "GroupString",
    #       }
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupConfigurationInput AWS API Documentation
    #
    class GetGroupConfigurationInput < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_configuration
    #   The configuration associated with the specified group.
    #   @return [Types::GroupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupConfigurationOutput AWS API Documentation
    #
    class GetGroupConfigurationOutput < Struct.new(
      :group_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group: "GroupString",
    #       }
    #
    # @!attribute [rw] group_name
    #   Don't use this parameter. Use `Group` instead.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupInput AWS API Documentation
    #
    class GetGroupInput < Struct.new(
      :group_name,
      :group)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupQueryInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group: "GroupString",
    #       }
    #
    # @!attribute [rw] group_name
    #   Don't use this parameter. Use `Group` instead.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQueryInput AWS API Documentation
    #
    class GetGroupQueryInput < Struct.new(
      :group_name,
      :group)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The ARN of the resource group whose tags you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetTagsInput AWS API Documentation
    #
    class GetTagsInput < Struct.new(
      :arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource group that contains AWS resources. You can assign resources
    # to the group by associating either of the following elements with the
    # group:
    #
    # * ResourceQuery - Use a resource query to specify a set of tag keys
    #   and values. All resources in the same AWS Region and AWS account
    #   that have those keys with the same values are included in the group.
    #   You can add a resource query when you create the group.
    #
    # * GroupConfiguration - Use a service configuration to associate the
    #   group with an AWS service. The configuration specifies which
    #   resource types can be included in the group.
    #
    # @!attribute [rw] group_arn
    #   The ARN of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource group.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A service configuration associated with a resource group. The
    # configuration options are determined by the AWS service that defines
    # the `Type`, and specifies which resources can be included in the
    # group. You can add a service configuration when you create the group.
    #
    # @!attribute [rw] configuration
    #   The configuration currently associated with the group and in effect.
    #   @return [Array<Types::GroupConfigurationItem>]
    #
    # @!attribute [rw] proposed_configuration
    #   If present, the new configuration that is in the process of being
    #   applied to the group.
    #   @return [Array<Types::GroupConfigurationItem>]
    #
    # @!attribute [rw] status
    #   The current status of an attempt to update the group configuration.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If present, the reason why a request to update the group
    #   configuration failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupConfiguration AWS API Documentation
    #
    class GroupConfiguration < Struct.new(
      :configuration,
      :proposed_configuration,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An item in a group configuration. A group configuration can have one
    # or more items.
    #
    # @note When making an API call, you may pass GroupConfigurationItem
    #   data as a hash:
    #
    #       {
    #         type: "GroupConfigurationType", # required
    #         parameters: [
    #           {
    #             name: "GroupConfigurationParameterName", # required
    #             values: ["GroupConfigurationParameterValue"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] type
    #   Specifies the type of group configuration item. Each item must have
    #   a unique value for `type`.
    #
    #   You can specify the following string values:
    #
    #   * `AWS::EC2::CapacityReservationPool`
    #
    #     For more information about EC2 capacity reservation groups, see
    #     [Working with capacity reservation groups][1] in the *EC2 Users
    #     Guide*.
    #
    #   * `AWS::ResourceGroups::Generic` - Supports parameters that
    #     configure the behavior of resource groups of any type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A collection of parameters for this group configuration item.
    #   @return [Array<Types::GroupConfigurationParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupConfigurationItem AWS API Documentation
    #
    class GroupConfigurationItem < Struct.new(
      :type,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter for a group configuration item.
    #
    # @note When making an API call, you may pass GroupConfigurationParameter
    #   data as a hash:
    #
    #       {
    #         name: "GroupConfigurationParameterName", # required
    #         values: ["GroupConfigurationParameterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the group configuration parameter.
    #
    #   You can specify the following string values:
    #
    #   * For configuration item type `AWS::ResourceGroups::Generic`\:
    #
    #     * `allowed-resource-types`
    #
    #       Specifies the types of resources that you can add to this group
    #       by using the GroupResources operation.
    #
    #   * For configuration item type `AWS::EC2::CapacityReservationPool`\:
    #
    #     * None - This configuration item type doesn't support any
    #       parameters.
    #
    #     ^
    #
    #     For more information about EC2 capacity reservation groups, see
    #     [Working with capacity reservation groups][1] in the *EC2 Users
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of for this parameter.
    #
    #   You can specify the following string value:
    #
    #   * For item type `allowed-resource-types`\: the only supported
    #     parameter value is `AWS::EC2::CapacityReservation`.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupConfigurationParameter AWS API Documentation
    #
    class GroupConfigurationParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter collection that you can use to restrict the results from a
    # `List` operation to only those you want to include.
    #
    # @note When making an API call, you may pass GroupFilter
    #   data as a hash:
    #
    #       {
    #         name: "resource-type", # required, accepts resource-type, configuration-type
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The unique identifiers for a resource group.
    #
    # @!attribute [rw] group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupIdentifier AWS API Documentation
    #
    class GroupIdentifier < Struct.new(
      :group_name,
      :group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A mapping of a query attached to a resource group that determines the
    # AWS resources that are members of the group.
    #
    # @!attribute [rw] group_name
    #   The name of the resource group that is associated with the specified
    #   resource query.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query that determines which AWS resources are members
    #   of the associated resource group.
    #   @return [Types::ResourceQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupQuery AWS API Documentation
    #
    class GroupQuery < Struct.new(
      :group_name,
      :resource_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GroupResourcesInput
    #   data as a hash:
    #
    #       {
    #         group: "GroupString", # required
    #         resource_arns: ["ResourceArn"], # required
    #       }
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group to add resources to.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The list of ARNs for resources to be added to the group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupResourcesInput AWS API Documentation
    #
    class GroupResourcesInput < Struct.new(
      :group,
      :resource_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] succeeded
    #   The ARNs of the resources that were successfully added to the group
    #   by this operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failed
    #   The ARNs of the resources that failed to be added to the group by
    #   this operation.
    #   @return [Array<Types::FailedResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupResourcesOutput AWS API Documentation
    #
    class GroupResourcesOutput < Struct.new(
      :succeeded,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred while processing the request. Try again
    # later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupResourcesInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group: "GroupString",
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
    #   Don't use this parameter. Use `Group` instead.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters, formatted as ResourceFilter objects, that you want to apply
    #   to a `ListGroupResources` operation. Filters the results to include
    #   only those of the specified resource types.
    #
    #   * `resource-type` - Filter resources by their type. Specify up to
    #     five resource types in the format
    #     `AWS::ServiceCode::ResourceType`. For example,
    #     `AWS::EC2::Instance`, or `AWS::S3::Bucket`.
    #
    #   ^
    #
    #   When you specify a `resource-type` filter for `ListGroupResources`,
    #   AWS Resource Groups validates your filter resource types against the
    #   types that are defined in the query associated with the group. For
    #   example, if a group contains only S3 buckets because its query
    #   specifies only that resource type, but your `resource-type` filter
    #   includes EC2 instances, AWS Resource Groups does not filter for EC2
    #   instances. In this case, a `ListGroupResources` request returns a
    #   `BadRequestException` error with a message similar to the following:
    #
    #   `The resource types specified as filters in the request are not
    #   valid.`
    #
    #   The error includes a list of resource types that failed the
    #   validation because they are not part of the query associated with
    #   the group. This validation doesn't occur when the group query
    #   specifies `AWS::AllSupported`, because a group based on such a query
    #   can contain any of the allowed resource types for the query type
    #   (tag-based or AWS CloudFormation stack-based queries).
    #   @return [Array<Types::ResourceFilter>]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that the service might return
    #   fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResourcesInput AWS API Documentation
    #
    class ListGroupResourcesInput < Struct.new(
      :group_name,
      :group,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifiers
    #   The ARNs and resource types of resources that are members of the
    #   group that you specified.
    #   @return [Array<Types::ResourceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsInput
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "resource-type", # required, accepts resource-type, configuration-type
    #             values: ["GroupFilterValue"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters, formatted as GroupFilter objects, that you want to apply to
    #   a `ListGroups` operation.
    #
    #   * `resource-type` - Filter the results to include only those of the
    #     specified resource types. Specify up to five resource types in the
    #     format `AWS::ServiceCode::ResourceType `. For example,
    #     `AWS::EC2::Instance`, or `AWS::S3::Bucket`.
    #
    #   * `configuration-type` - Filter the results to include only those
    #     groups that have the specified configuration types attached. The
    #     current supported values are:
    #
    #     * AWS:EC2::CapacityReservationPool
    #
    #     ^
    #   @return [Array<Types::GroupFilter>]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that the service might return
    #   fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupsInput AWS API Documentation
    #
    class ListGroupsInput < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_identifiers
    #   A list of GroupIdentifier objects. Each identifier is an object that
    #   contains both the `Name` and the `GroupArn`.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] groups
    #   This output element is deprecated and shouldn't be used. Refer to
    #   `GroupIdentifiers` instead.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupsOutput AWS API Documentation
    #
    class ListGroupsOutput < Struct.new(
      :group_identifiers,
      :groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request uses an HTTP method that isn't allowed for the specified
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/MethodNotAllowedException AWS API Documentation
    #
    class MethodNotAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the specified resources don't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The query that is used to define a resource group or a search for
    # resources. A query specifies both a query type and a query string as a
    # JSON object. See the examples section for example JSON strings.
    #
    # The examples that follow are shown as standard JSON strings. If you
    # include such a string as a parameter to the AWS CLI or an SDK API, you
    # might need to 'escape' the string into a single line. For example,
    # see the [Quoting strings][1] in the *AWS CLI User Guide*.
    #
    # **Example 1**
    #
    # The following generic example shows a resource query JSON string that
    # includes only resources that meet the following criteria:
    #
    # * The resource type must be either `resource_type1` or
    #   `resource_type2`.
    #
    # * The resource must have a tag `Key1` with a value of either `ValueA`
    #   or `ValueB`.
    #
    # * The resource must have a tag `Key2` with a value of either `ValueC`
    #   or `ValueD`.
    #
    # `\{ "Type": "TAG_FILTERS_1_0", "Query": \{ "ResourceTypeFilters": [
    # "resource_type1", "resource_type2"], "TagFilters": [ \{ "Key": "Key1",
    # "Values": ["ValueA","ValueB"] \}, \{ "Key":"Key2",
    # "Values":["ValueC","ValueD"] \} ] \} \}`
    #
    # This has the equivalent "shortcut" syntax of the following:
    #
    # `\{ "Type": "TAG_FILTERS_1_0", "Query": \{ "ResourceTypeFilters": [
    # "resource_type1", "resource_type2"], "TagFilters": [ \{ "Key1":
    # ["ValueA","ValueB"] \}, \{ "Key2": ["ValueC","ValueD"] \} ] \} \}`
    #
    # **Example 2**
    #
    # The following example shows a resource query JSON string that includes
    # only Amazon EC2 instances that are tagged `Stage` with a value of
    # `Test`.
    #
    # `\{ "Type": "TAG_FILTERS_1_0", "Query": "\{ "ResourceTypeFilters":
    # "AWS::EC2::Instance", "TagFilters": \{ "Stage": "Test" \} \} \}`
    #
    # **Example 3**
    #
    # The following example shows a resource query JSON string that includes
    # resource of any supported type as long as it is tagged `Stage` with a
    # value of `Prod`.
    #
    # `\{ "Type": "TAG_FILTERS_1_0", "Query": \{ "ResourceTypeFilters":
    # "AWS::AllSupported", "TagFilters": \{ "Stage": "Prod" \} \} \}`
    #
    # **Example 4**
    #
    # The following example shows a resource query JSON string that includes
    # only Amazon EC2 instances and Amazon S3 buckets that are part of the
    # specified AWS CloudFormation stack.
    #
    # `\{ "Type": "CLOUDFORMATION_STACK_1_0", "Query": \{
    # "ResourceTypeFilters": [ "AWS::EC2::Instance", "AWS::S3::Bucket" ],
    # "StackIdentifier":
    # "arn:aws:cloudformation:us-west-2:123456789012:stack/AWStestuseraccount/fb0d5000-aba8-00e8-aa9e-50d5cEXAMPLE"
    # \} \}`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html
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
    #   The type of the query. You can use the following values:
    #
    #   * <i> <code>CLOUDFORMATION_STACK_1_0:</code> </i>Specifies that the
    #     `Query` contains an ARN for a CloudFormation stack.
    #
    #   * <i> <code>TAG_FILTERS_1_0:</code> </i>Specifies that the `Query`
    #     parameter contains a JSON string that represents a collection of
    #     simple tag filters for resource types and tags. The JSON string
    #     uses a syntax similar to the ` GetResources ` operation, but uses
    #     only the `  ResourceTypeFilters ` and ` TagFilters ` fields. If
    #     you specify more than one tag key, only resources that match all
    #     tag keys, and at least one value of each specified tag key, are
    #     returned in your query. If you specify more than one value for a
    #     tag key, a resource matches the filter if it has a tag key value
    #     that matches *any* of the specified values.
    #
    #     For example, consider the following sample query for resources
    #     that have two tags, `Stage` and `Version`, with two values each:
    #
    #     `[\{"Stage":["Test","Deploy"]\},\{"Version":["1","2"]\}]`
    #
    #     The results of this query could include the following.
    #
    #     * An EC2 instance that has the following two tags:
    #       `\{"Stage":"Deploy"\}`, and `\{"Version":"2"\}`
    #
    #     * An S3 bucket that has the following two tags:
    #       `\{"Stage":"Test"\}`, and `\{"Version":"1"\}`
    #
    #     The query would not include the following items in the results,
    #     however.
    #
    #     * An EC2 instance that has only the following tag:
    #       `\{"Stage":"Deploy"\}`.
    #
    #       The instance does not have **all** of the tag keys specified in
    #       the filter, so it is excluded from the results.
    #
    #     * An RDS database that has the following two tags:
    #       `\{"Stage":"Archived"\}` and `\{"Version":"4"\}`
    #
    #       The database has all of the tag keys, but none of those keys has
    #       an associated value that matches at least one of the specified
    #       values in the filter.
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
      SENSITIVE = []
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
    #   resource group definition. For more information, see CreateGroup.
    #   @return [Types::ResourceQuery]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that the service might return
    #   fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/SearchResourcesInput AWS API Documentation
    #
    class SearchResourcesInput < Struct.new(
      :resource_query,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifiers
    #   The ARNs and resource types of resources that are members of the
    #   group that you specified.
    #   @return [Array<Types::ResourceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
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
      SENSITIVE = []
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
    #   The ARN of the resource group to which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the specified resource group. A tag is a
    #   string-to-string map of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/TagInput AWS API Documentation
    #
    class TagInput < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the tagged resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that have been added to the specified resource group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/TagOutput AWS API Documentation
    #
    class TagOutput < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've exceeded throttling limits by making too many requests in a
    # period of time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it doesn't have valid credentials
    # for the target resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UngroupResourcesInput
    #   data as a hash:
    #
    #       {
    #         group: "GroupString", # required
    #         resource_arns: ["ResourceArn"], # required
    #       }
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group from which to remove the
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The ARNs of the resources to be removed from the group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UngroupResourcesInput AWS API Documentation
    #
    class UngroupResourcesInput < Struct.new(
      :group,
      :resource_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] succeeded
    #   The ARNs of the resources that were successfully removed from the
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failed
    #   The resources that failed to be removed from the group.
    #   @return [Array<Types::FailedResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UngroupResourcesOutput AWS API Documentation
    #
    class UngroupResourcesOutput < Struct.new(
      :succeeded,
      :failed)
      SENSITIVE = []
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
    #   The ARN of the resource group from which to remove tags. The command
    #   removed both the specified keys and any values associated with those
    #   keys.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource group from which tags have been removed.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The keys of the tags that were removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UntagOutput AWS API Documentation
    #
    class UntagOutput < Struct.new(
      :arn,
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group: "GroupString",
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] group_name
    #   Don't use this parameter. Use `Group` instead.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group to modify.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description that you want to update the resource group with.
    #   Descriptions can contain letters, numbers, hyphens, underscores,
    #   periods, and spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupInput AWS API Documentation
    #
    class UpdateGroupInput < Struct.new(
      :group_name,
      :group,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The update description of the resource group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupOutput AWS API Documentation
    #
    class UpdateGroupOutput < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupQueryInput
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group: "GroupString",
    #         resource_query: { # required
    #           type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #           query: "Query", # required
    #         },
    #       }
    #
    # @!attribute [rw] group_name
    #   Don't use this parameter. Use `Group` instead.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group to query.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query to determine which AWS resources are members of
    #   this resource group.
    #   @return [Types::ResourceQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQueryInput AWS API Documentation
    #
    class UpdateGroupQueryInput < Struct.new(
      :group_name,
      :group,
      :resource_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_query
    #   The updated resource query associated with the resource group after
    #   the update.
    #   @return [Types::GroupQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQueryOutput AWS API Documentation
    #
    class UpdateGroupQueryOutput < Struct.new(
      :group_query)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
