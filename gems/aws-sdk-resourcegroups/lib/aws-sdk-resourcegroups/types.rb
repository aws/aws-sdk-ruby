# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroups
  module Types

    # The Resource Groups settings for this Amazon Web Services account.
    #
    # @!attribute [rw] group_lifecycle_events_desired_status
    #   The desired target status of the group lifecycle events feature. If
    #   @return [String]
    #
    # @!attribute [rw] group_lifecycle_events_status
    #   The current status of the group lifecycle events feature.
    #   @return [String]
    #
    # @!attribute [rw] group_lifecycle_events_status_message
    #   The text of any error message occurs during an attempt to turn group
    #   lifecycle events on or off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/AccountSettings AWS API Documentation
    #
    class AccountSettings < Struct.new(
      :group_lifecycle_events_desired_status,
      :group_lifecycle_events_status,
      :group_lifecycle_events_status_message)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] name
    #   The name of the group, which is the identifier of the group in other
    #   operations. You can't change the name of a resource group after you
    #   create it. A resource group name can consist of letters, numbers,
    #   hyphens, periods, and underscores. The name cannot start with `AWS`
    #   or `aws`; these are reserved. A resource group name must be unique
    #   within each Amazon Web Services Region in your Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource group. Descriptions can consist of
    #   letters, numbers, hyphens, underscores, periods, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query that determines which Amazon Web Services
    #   resources are members of this group. For more information about
    #   resource queries, see [Create a tag-based group in Resource
    #   Groups][1].
    #
    #   <note markdown="1"> A resource group can contain either a `ResourceQuery` or a
    #   `Configuration`, but not both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag
    #   @return [Types::ResourceQuery]
    #
    # @!attribute [rw] tags
    #   The tags to add to the group. A tag is key-value pair string.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] configuration
    #   A configuration associates the resource group with an Amazon Web
    #   Services service and specifies how the service can interact with the
    #   resources in the group. A configuration is an array of
    #   GroupConfigurationItem elements. For details about the syntax of
    #   service configurations, see [Service configurations for Resource
    #   Groups][1].
    #
    #   <note markdown="1"> A resource group can contain either a `Configuration` or a
    #   `ResourceQuery`, but not both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
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
    #   The resource query associated with the group. For more information
    #   about resource queries, see [Create a tag-based group in Resource
    #   Groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag
    #   @return [Types::ResourceQuery]
    #
    # @!attribute [rw] tags
    #   The tags associated with the group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] group_configuration
    #   The service configuration associated with the resource group. For
    #   details about the syntax of a service configuration, see [Service
    #   configurations for Resource Groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
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

    # @!attribute [rw] group_name
    #   Deprecated - don't use this parameter. Use `Group` instead.
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

    # @!attribute [rw] account_settings
    #   The current settings for the optional features in Resource Groups.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetAccountSettingsOutput AWS API Documentation
    #
    class GetAccountSettingsOutput < Struct.new(
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name or the ARN of the resource group for which you want to
    #   retrive the service configuration.
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
    #   A structure that describes the service configuration attached with
    #   the specified group. For details about the service configuration
    #   syntax, see [Service configurations for Resource Groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #   @return [Types::GroupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupConfigurationOutput AWS API Documentation
    #
    class GetGroupConfigurationOutput < Struct.new(
      :group_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   Deprecated - don't use this parameter. Use `Group` instead.
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
    #   A structure that contains the metadata details for the specified
    #   resource group. Use GetGroupQuery and GetGroupConfiguration to get
    #   those additional details of the resource group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupOutput AWS API Documentation
    #
    class GetGroupOutput < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The resource query associated with the specified group. For more
    #   information about resource queries, see [Create a tag-based group in
    #   Resource Groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag
    #   @return [Types::GroupQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQueryOutput AWS API Documentation
    #
    class GetGroupQueryOutput < Struct.new(
      :group_query)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # A resource group that contains Amazon Web Services resources. You can
    # assign resources to the group by associating either of the following
    # elements with the group:
    #
    # * ResourceQuery - Use a resource query to specify a set of tag keys
    #   and values. All resources in the same Amazon Web Services Region and
    #   Amazon Web Services account that have those keys with the same
    #   values are included in the group. You can add a resource query when
    #   you create the group, or later by using the PutGroupConfiguration
    #   operation.
    #
    # * GroupConfiguration - Use a service configuration to associate the
    #   group with an Amazon Web Services service. The configuration
    #   specifies which resource types can be included in the group.
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
    # configuration options are determined by the Amazon Web Services
    # service that defines the `Type`, and specifies which resources can be
    # included in the group. You can add a service configuration when you
    # create the group by using CreateGroup, or later by using the
    # PutGroupConfiguration operation. For details about group service
    # configuration syntax, see [Service configurations for resource
    # groups][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
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

    # An item in a group configuration. A group service configuration can
    # have one or more items. For details about group service configuration
    # syntax, see [Service configurations for resource groups][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #
    # @!attribute [rw] type
    #   Specifies the type of group configuration item. Each item must have
    #   a unique value for `type`. For the list of types that you can
    #   specify for a configuration item, see [Supported resource types and
    #   parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A collection of parameters for this group configuration item. For
    #   the list of parameters that you can use with each configuration item
    #   type, see [Supported resource types and parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types
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

    # A parameter for a group configuration item. For details about group
    # service configuration syntax, see [Service configurations for resource
    # groups][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #
    # @!attribute [rw] name
    #   The name of the group configuration parameter. For the list of
    #   parameters that you can use with each configuration item type, see
    #   [Supported resource types and parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value or values to be used for the specified parameter. For the
    #   list of values you can use with each parameter, see [Supported
    #   resource types and parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types
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
    # Amazon Web Services resources that are members of the group.
    #
    # @!attribute [rw] group_name
    #   The name of the resource group that is associated with the specified
    #   resource query.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query that determines which Amazon Web Services
    #   resources are members of the associated resource group.
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

    # @!attribute [rw] group
    #   The name or the ARN of the resource group to add resources to.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The list of ARNs of the resources to be added to the group.
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
    #   A list of ARNs of the resources that this operation successfully
    #   added to the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failed
    #   A list of ARNs of any resources that this operation failed to add to
    #   the group.
    #   @return [Array<Types::FailedResource>]
    #
    # @!attribute [rw] pending
    #   A list of ARNs of any resources that this operation is still in the
    #   process adding to the group. These pending additions continue
    #   asynchronously. You can check the status of pending additions by
    #   using the ` ListGroupResources ` operation, and checking the
    #   `Resources` array in the response and the `Status` field of each
    #   object in that array.
    #   @return [Array<Types::PendingResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupResourcesOutput AWS API Documentation
    #
    class GroupResourcesOutput < Struct.new(
      :succeeded,
      :failed,
      :pending)
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

    # @!attribute [rw] group_name
    #   <i> <b>Deprecated - don't use this parameter. Use the
    #   <code>Group</code> request field instead.</b> </i>
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
    #   Resource Groups validates your filter resource types against the
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
    #   (tag-based or Amazon CloudFront stack-based queries).
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

    # A structure returned by the ListGroupResources operation that contains
    # identity and group membership status information for one of the
    # resources in the group.
    #
    # @!attribute [rw] identifier
    #   A structure that contains the ARN of a resource and its resource
    #   type.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] status
    #   A structure that contains the status of this resource's membership
    #   in the group.
    #
    #   <note markdown="1"> This field is present in the response only if the group is of type
    #   `AWS::EC2::HostManagement`.
    #
    #    </note>
    #   @return [Types::ResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResourcesItem AWS API Documentation
    #
    class ListGroupResourcesItem < Struct.new(
      :identifier,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   An array of resources from which you can determine each resource's
    #   identity, type, and group membership status.
    #   @return [Array<Types::ListGroupResourcesItem>]
    #
    # @!attribute [rw] resource_identifiers
    #   <b> <i>Deprecated - don't use this parameter. Use the
    #   <code>Resources</code> response field instead.</i> </b>
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
      :resources,
      :resource_identifiers,
      :next_token,
      :query_errors)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #     * `AWS::EC2::CapacityReservationPool`
    #
    #     * `AWS::EC2::HostManagement`
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
    #   <i> <b>Deprecated - don't use this field. Use the
    #   <code>GroupIdentifiers</code> response field instead.</b> </i>
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

    # A structure that identifies a resource that is currently pending
    # addition to the group as a member. Adding a resource to a resource
    # group happens asynchronously as a background task and this one isn't
    # completed yet.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon resource name (ARN) of the resource that's in a pending
    #   state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/PendingResource AWS API Documentation
    #
    class PendingResource < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name or ARN of the resource group with the configuration that
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The new configuration to associate with the specified group. A
    #   configuration associates the resource group with an Amazon Web
    #   Services service and specifies how the service can interact with the
    #   resources in the group. A configuration is an array of
    #   GroupConfigurationItem elements.
    #
    #   For information about the syntax of a service configuration, see
    #   [Service configurations for Resource Groups][1].
    #
    #   <note markdown="1"> A resource group can contain either a `Configuration` or a
    #   `ResourceQuery`, but not both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html
    #   @return [Array<Types::GroupConfigurationItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/PutGroupConfigurationInput AWS API Documentation
    #
    class PutGroupConfigurationInput < Struct.new(
      :group,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/PutGroupConfigurationOutput AWS API Documentation
    #
    class PutGroupConfigurationOutput < Aws::EmptyStructure; end

    # A two-part error structure that can occur in `ListGroupResources` or
    # `SearchResources` operations on CloudFront stack-based queries. The
    # error occurs if the CloudFront stack on which the query is based
    # either does not exist, or has a status that renders the stack
    # inactive. A `QueryError` occurrence does not necessarily mean that
    # Resource Groups could not complete the operation, but the resulting
    # group might have no member resources.
    #
    # @!attribute [rw] error_code
    #   Specifies the error code that was raised.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that explains the `ErrorCode` value. Messages might state
    #   that the specified CloudFront stack does not exist (or no longer
    #   exists). For `CLOUDFORMATION_STACK_INACTIVE`, the message typically
    #   states that the CloudFront stack has a status that is not (or no
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

    # A structure that contains the ARN of a resource and its resource type.
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

    # The query you can use to define a resource group or a search for
    # resources. A `ResourceQuery` specifies both a query `Type` and a
    # `Query` string as JSON string objects. See the examples section for
    # example JSON strings. For more information about creating a resource
    # group with a resource query, see [Build queries and groups in Resource
    # Groups][1] in the *Resource Groups User Guide*
    #
    # When you combine all of the elements together into a single string,
    # any double quotes that are embedded inside another double quote pair
    # must be escaped by preceding the embedded double quote with a
    # backslash character (\\). For example, a complete `ResourceQuery`
    # parameter must be formatted like the following CLI parameter example:
    #
    # `--resource-query
    # '\{"Type":"TAG_FILTERS_1_0","Query":"\{"ResourceTypeFilters":["AWS::AllSupported"],"TagFilters":[\{"Key":"Stage","Values":["Test"]\}]\}"\}'`
    #
    # In the preceding example, all of the double quote characters in the
    # value part of the `Query` element must be escaped because the value
    # itself is surrounded by double quotes. For more information, see
    # [Quoting strings][2] in the *Command Line Interface User Guide*.
    #
    # For the complete list of resource types that you can use in the array
    # value for `ResourceTypeFilters`, see [Resources you can use with
    # Resource Groups and Tag Editor][3] in the *Resource Groups User
    # Guide*. For example:
    #
    # `"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html
    # [2]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html
    # [3]: https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html
    #
    # @!attribute [rw] type
    #   The type of the query to perform. This can have one of two values:
    #
    #   * <i> <code>CLOUDFORMATION_STACK_1_0:</code> </i> Specifies that you
    #     want the group to contain the members of an CloudFormation stack.
    #     The `Query` contains a `StackIdentifier` element with an ARN for a
    #     CloudFormation stack.
    #
    #   * <i> <code>TAG_FILTERS_1_0:</code> </i> Specifies that you want the
    #     group to include resource that have tags that match the query.
    #   @return [String]
    #
    # @!attribute [rw] query
    #   The query that defines a group or a search. The contents depends on
    #   the value of the `Type` element.
    #
    #   * `ResourceTypeFilters` – Applies to all `ResourceQuery` objects of
    #     either `Type`. This element contains one of the following two
    #     items:
    #
    #     * The value `AWS::AllSupported`. This causes the ResourceQuery to
    #       match resources of any resource type that also match the query.
    #
    #     * A list (a JSON array) of resource type identifiers that limit
    #       the query to only resources of the specified types. For the
    #       complete list of resource types that you can use in the array
    #       value for `ResourceTypeFilters`, see [Resources you can use with
    #       Resource Groups and Tag Editor][1] in the *Resource Groups User
    #       Guide*.
    #
    #     Example: `"ResourceTypeFilters": ["AWS::AllSupported"]` or
    #     `"ResourceTypeFilters": ["AWS::EC2::Instance", "AWS::S3::Bucket"]`
    #
    #   * `TagFilters` – applicable only if `Type` = `TAG_FILTERS_1_0`. The
    #     `Query` contains a JSON string that represents a collection of
    #     simple tag filters. The JSON string uses a syntax similar to the `
    #     GetResources ` operation, but uses only the `  ResourceTypeFilters
    #     ` and ` TagFilters ` fields. If you specify more than one tag key,
    #     only resources that match all tag keys, and at least one value of
    #     each specified tag key, are returned in your query. If you specify
    #     more than one value for a tag key, a resource matches the filter
    #     if it has a tag key value that matches *any* of the specified
    #     values.
    #
    #     For example, consider the following sample query for resources
    #     that have two tags, `Stage` and `Version`, with two values each:
    #
    #     `[\{"Stage":["Test","Deploy"]\},\{"Version":["1","2"]\}]`
    #
    #     The results of this resource query could include the following.
    #
    #     * An Amazon EC2 instance that has the following two tags:
    #       `\{"Stage":"Deploy"\}`, and `\{"Version":"2"\}`
    #
    #     * An S3 bucket that has the following two tags:
    #       `\{"Stage":"Test"\}`, and `\{"Version":"1"\}`
    #
    #     The resource query results would *not* include the following items
    #     in the results, however.
    #
    #     * An Amazon EC2 instance that has only the following tag:
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
    #
    #     Example: `"TagFilters": [ \{ "Key": "Stage", "Values": [ "Gamma",
    #     "Beta" ] \}`
    #
    #   * `StackIdentifier` – applicable only if `Type` =
    #     `CLOUDFORMATION_STACK_1_0`. The value of this parameter is the
    #     Amazon Resource Name (ARN) of the CloudFormation stack whose
    #     resources you want included in the group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html
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

    # A structure that identifies the current group membership status for a
    # resource. Adding a resource to a resource group is performed
    # asynchronously as a background task. A `PENDING` status indicates, for
    # this resource, that the process isn't completed yet.
    #
    # @!attribute [rw] name
    #   The current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ResourceStatus AWS API Documentation
    #
    class ResourceStatus < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   contains `ErrorCode` and `Message` structures.
    #
    #   Possible values for `ErrorCode`:
    #
    #   * `CLOUDFORMATION_STACK_INACTIVE`
    #
    #   * `CLOUDFORMATION_STACK_NOT_EXISTING`
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
    #   A list of resources that were successfully removed from the group by
    #   this operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failed
    #   A list of any resources that failed to be removed from the group by
    #   this operation.
    #   @return [Array<Types::FailedResource>]
    #
    # @!attribute [rw] pending
    #   A list of any resources that are still in the process of being
    #   removed from the group by this operation. These pending removals
    #   continue asynchronously. You can check the status of pending
    #   removals by using the ` ListGroupResources ` operation. After the
    #   resource is successfully removed, it no longer appears in the
    #   response.
    #   @return [Array<Types::PendingResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UngroupResourcesOutput AWS API Documentation
    #
    class UngroupResourcesOutput < Struct.new(
      :succeeded,
      :failed,
      :pending)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] group_lifecycle_events_desired_status
    #   Specifies whether you want to turn [group lifecycle events][1] on or
    #   off.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateAccountSettingsInput AWS API Documentation
    #
    class UpdateAccountSettingsInput < Struct.new(
      :group_lifecycle_events_desired_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_settings
    #   A structure that displays the status of the optional features in the
    #   account.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateAccountSettingsOutput AWS API Documentation
    #
    class UpdateAccountSettingsOutput < Struct.new(
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] group_name
    #   Don't use this parameter. Use `Group` instead.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name or the ARN of the resource group to query.
    #   @return [String]
    #
    # @!attribute [rw] resource_query
    #   The resource query to determine which Amazon Web Services resources
    #   are members of this resource group.
    #
    #   <note markdown="1"> A resource group can contain either a `Configuration` or a
    #   `ResourceQuery`, but not both.
    #
    #    </note>
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
